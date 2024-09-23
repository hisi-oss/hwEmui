.class public Lcom/huawei/device/connectivitychrlog/LogString;
.super Ljava/lang/Object;
.source "LogString.java"


# static fields
.field static CHARSET:Ljava/lang/String; = null

.field static EMPTY_STRING:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "LogString"


# instance fields
.field private length:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-string v0, "UTF-8"

    sput-object v0, Lcom/huawei/device/connectivitychrlog/LogString;->CHARSET:Ljava/lang/String;

    .line 9
    const-string v0, ""

    sput-object v0, Lcom/huawei/device/connectivitychrlog/LogString;->EMPTY_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    .line 63
    invoke-direct {p0, p1}, Lcom/huawei/device/connectivitychrlog/LogString;->getEmptyString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->value:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private getEmptyString(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 24
    sget-object v2, Lcom/huawei/device/connectivitychrlog/LogString;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setByByteArray([BIZ)V
    .locals 3
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .param p3, "bIsLittleEndian"    # Z

    .line 46
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    if-eq v0, p2, :cond_0

    .line 47
    const-string v0, "LogString"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray failed ,not support len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/huawei/device/connectivitychrlog/LogString;->CHARSET:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->value:Ljava/lang/String;

    .line 51
    const-string v0, "LogString"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogString;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, "LogString"

    const-string v2, "setByByteArray UnsupportedEncodingException"

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 38
    if-nez p1, :cond_0

    .line 39
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    invoke-direct {p0, v0}, Lcom/huawei/device/connectivitychrlog/LogString;->getEmptyString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->value:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/huawei/device/connectivitychrlog/LogString;->value:Ljava/lang/String;

    .line 43
    :goto_0
    return-void
.end method

.method public toByteArray()[B
    .locals 6

    .line 77
    :try_start_0
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    new-array v0, v0, [B

    .line 78
    .local v0, "byteArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    .local v1, "bytebuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogString;->value:Ljava/lang/String;

    sget-object v3, Lcom/huawei/device/connectivitychrlog/LogString;->CHARSET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 80
    .local v2, "subValueBytes":[B
    array-length v3, v2

    iget v4, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    if-le v3, v4, :cond_0

    .line 81
    const/4 v3, 0x0

    iget v4, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 82
    const-string v3, "LogString"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toByteArray length error, subValueBytes.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 88
    .end local v0    # "byteArray":[B
    .end local v1    # "bytebuf":Ljava/nio/ByteBuffer;
    .end local v2    # "subValueBytes":[B
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget v1, p0, Lcom/huawei/device/connectivitychrlog/LogString;->length:I

    new-array v1, v1, [B

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogString;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
