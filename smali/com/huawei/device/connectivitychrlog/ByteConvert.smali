.class public Lcom/huawei/device/connectivitychrlog/ByteConvert;
.super Ljava/lang/Object;
.source "ByteConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .line 74
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static bytesToLong([B)J
    .locals 8
    .param p0, "array"    # [B

    .line 34
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    const/4 v5, 0x1

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    const/4 v5, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    const/4 v5, 0x4

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    const/4 v5, 0x6

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    const/4 v5, 0x7

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public static bytesToShort([B)S
    .locals 2
    .param p0, "b"    # [B

    .line 102
    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static convertDecimalToHex(I)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "hexValue":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 136
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static intToBytes(I)[B
    .locals 3
    .param p0, "n"    # I

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 61
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 62
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 63
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 64
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 65
    return-object v0
.end method

.method public static littleEndianBytesToBigEndianBytes([BI)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "len"    # I

    .line 125
    new-array v0, p1, [B

    .line 126
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 127
    sub-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static littleEndianBytesToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .line 79
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static littleEndianBytesToShort([B)S
    .locals 2
    .param p0, "b"    # [B

    .line 106
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static littleEndianBytesToString([BI)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B
    .param p1, "len"    # I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "data":I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 112
    const/4 v1, 0x0

    aget-byte v0, p0, v1

    goto :goto_0

    .line 113
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 114
    invoke-static {p0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->littleEndianBytesToShort([B)S

    move-result v0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x4

    if-ne v1, p1, :cond_2

    .line 116
    invoke-static {p0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->littleEndianBytesToInt([B)I

    move-result v0

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x0

    .line 121
    :goto_0
    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->convertDecimalToHex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static littleEndianbytesToLong([B)J
    .locals 10
    .param p0, "array"    # [B

    .line 44
    const/4 v0, 0x7

    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    const/4 v5, 0x6

    aget-byte v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v1, v6

    const/16 v6, 0x8

    aget-byte v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v1, v7

    aget-byte v0, p0, v0

    int-to-long v7, v0

    and-long/2addr v7, v3

    const/16 v0, 0x20

    shl-long/2addr v7, v0

    or-long v0, v1, v7

    aget-byte v2, p0, v5

    int-to-long v7, v2

    and-long/2addr v7, v3

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v7, v2

    and-long/2addr v7, v3

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v7, v2

    and-long/2addr v7, v3

    shl-long v5, v7, v6

    or-long/2addr v0, v5

    const/4 v2, 0x0

    aget-byte v5, p0, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static longToBytes(J)[B
    .locals 6
    .param p0, "n"    # J

    .line 16
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 17
    .local v1, "b":[B
    const-wide/16 v2, 0xff

    and-long v4, p0, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x7

    aput-byte v4, v1, v5

    .line 18
    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x6

    aput-byte v0, v1, v4

    .line 19
    const/16 v0, 0x10

    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x5

    aput-byte v0, v1, v4

    .line 20
    const/16 v0, 0x18

    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x4

    aput-byte v0, v1, v4

    .line 21
    const/16 v0, 0x20

    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x3

    aput-byte v0, v1, v4

    .line 22
    const/16 v0, 0x28

    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x2

    aput-byte v0, v1, v4

    .line 23
    const/16 v0, 0x30

    shr-long v4, p0, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    .line 24
    const/16 v0, 0x38

    shr-long v4, p0, v0

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 25
    return-object v1
.end method

.method public static shortToBytes(S)[B
    .locals 3
    .param p0, "n"    # S

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 91
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 92
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 93
    return-object v0
.end method
