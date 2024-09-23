.class public Lcom/huawei/device/connectivitychrlog/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field static final base64_alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/16 v0, 0x41

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/device/connectivitychrlog/Base64Coder;->base64_alphabet:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x24s
        0x3ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 14
    .param p0, "data"    # [B

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .line 61
    .local v2, "enCode":I
    array-length v3, p0

    .line 62
    .local v3, "mLength":I
    const/4 v4, 0x4

    new-array v5, v4, [B

    .line 63
    .local v5, "char_array_4":[B
    const/4 v6, 0x3

    new-array v7, v6, [B

    .line 65
    .local v7, "char_array_3":[B
    new-array v8, v3, [B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 68
    .local v8, "retContent":Ljava/nio/ByteBuffer;
    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-lez v3, :cond_3

    aget-byte v12, p0, v2

    int-to-char v12, v12

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_3

    aget-byte v12, p0, v2

    int-to-char v12, v12

    .line 69
    invoke-static {v12}, Lcom/huawei/device/connectivitychrlog/Base64Coder;->isBase64(C)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 70
    add-int/lit8 v3, v3, -0x1

    .line 71
    add-int/lit8 v12, v0, 0x1

    .local v12, "i":I
    add-int/lit8 v13, v2, 0x1

    .local v13, "enCode":I
    aget-byte v2, p0, v2

    .end local v2    # "enCode":I
    aput-byte v2, v5, v0

    .line 72
    .end local v0    # "i":I
    if-ne v12, v4, :cond_2

    .line 73
    const/4 v0, 0x0

    .end local v12    # "i":I
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_0

    .line 74
    aget-byte v2, v5, v0

    int-to-char v2, v2

    invoke-static {v2}, Lcom/huawei/device/connectivitychrlog/Base64Coder;->findChar(C)B

    move-result v2

    aput-byte v2, v5, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_0
    aget-byte v2, v5, v9

    shl-int/2addr v2, v10

    aget-byte v12, v5, v11

    and-int/lit8 v12, v12, 0x30

    shr-int/2addr v12, v4

    add-int/2addr v2, v12

    int-to-byte v2, v2

    aput-byte v2, v7, v9

    .line 77
    aget-byte v2, v5, v11

    and-int/lit8 v2, v2, 0xf

    shl-int/2addr v2, v4

    aget-byte v9, v5, v10

    and-int/lit8 v9, v9, 0x3c

    shr-int/2addr v9, v10

    add-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v7, v11

    .line 78
    aget-byte v2, v5, v10

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x6

    aget-byte v9, v5, v6

    add-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v7, v10

    .line 80
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_1

    .line 81
    aget-byte v2, v7, v0

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    .line 65
    .end local v0    # "i":I
    .restart local v12    # "i":I
    :cond_2
    move v0, v12

    .end local v12    # "i":I
    .end local v13    # "enCode":I
    .restart local v0    # "i":I
    .restart local v2    # "enCode":I
    :goto_3
    move v2, v13

    goto :goto_0

    .line 88
    :cond_3
    if-lez v0, :cond_6

    .line 89
    move v1, v0

    :goto_4
    if-ge v1, v4, :cond_4

    .line 90
    aput-byte v9, v5, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 92
    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_5

    .line 93
    aget-byte v12, v5, v1

    int-to-char v12, v12

    invoke-static {v12}, Lcom/huawei/device/connectivitychrlog/Base64Coder;->findChar(C)B

    move-result v12

    aput-byte v12, v5, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 95
    :cond_5
    aget-byte v12, v5, v9

    shl-int/2addr v12, v10

    aget-byte v13, v5, v11

    and-int/lit8 v13, v13, 0x30

    shr-int/2addr v13, v4

    add-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v7, v9

    .line 96
    aget-byte v12, v5, v11

    and-int/lit8 v12, v12, 0xf

    shl-int/lit8 v4, v12, 0x4

    aget-byte v12, v5, v10

    and-int/lit8 v12, v12, 0x3c

    shr-int/2addr v12, v10

    add-int/2addr v4, v12

    int-to-byte v4, v4

    aput-byte v4, v7, v11

    .line 97
    aget-byte v4, v5, v10

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x6

    aget-byte v6, v5, v6

    add-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v7, v10

    .line 99
    const/4 v1, 0x0

    :goto_6
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_6

    .line 100
    aget-byte v4, v7, v1

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 103
    :cond_6
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 105
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v4, v4, [B

    .line 106
    .local v4, "retArray":[B
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v8, v4, v9, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 107
    return-object v4
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 14
    .param p0, "data"    # [B

    .line 15
    array-length v0, p0

    .line 16
    .local v0, "length":I
    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 17
    .local v2, "char_array_3":[B
    const/4 v3, 0x4

    new-array v4, v3, [B

    fill-array-data v4, :array_1

    .line 18
    .local v4, "char_array_4":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v5, "retContent":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 21
    .local v6, "i":I
    const/4 v7, 0x0

    .line 22
    .local v7, "j":I
    const/4 v8, 0x0

    move v9, v6

    move v6, v0

    move v0, v8

    .line 23
    .local v0, "reversePos":I
    .local v6, "length":I
    .local v9, "i":I
    :goto_0
    const/4 v10, 0x2

    const/4 v11, 0x1

    if-lez v6, :cond_2

    .line 24
    add-int/lit8 v6, v6, -0x1

    .line 25
    add-int/lit8 v12, v9, 0x1

    .local v12, "i":I
    add-int/lit8 v13, v0, 0x1

    .local v13, "reversePos":I
    aget-byte v0, p0, v0

    .end local v0    # "reversePos":I
    aput-byte v0, v2, v9

    .line 26
    .end local v9    # "i":I
    if-ne v12, v1, :cond_1

    .line 27
    aget-byte v0, v2, v8

    and-int/lit16 v0, v0, 0xfc

    shr-int/2addr v0, v10

    int-to-byte v0, v0

    aput-byte v0, v4, v8

    .line 28
    aget-byte v0, v2, v8

    and-int/2addr v0, v1

    shl-int/2addr v0, v3

    aget-byte v9, v2, v11

    and-int/lit16 v9, v9, 0xf0

    shr-int/2addr v9, v3

    add-int/2addr v0, v9

    int-to-byte v0, v0

    aput-byte v0, v4, v11

    .line 29
    aget-byte v0, v2, v11

    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v10

    aget-byte v9, v2, v10

    and-int/lit16 v9, v9, 0xc0

    shr-int/lit8 v9, v9, 0x6

    add-int/2addr v0, v9

    int-to-byte v0, v0

    aput-byte v0, v4, v10

    .line 30
    aget-byte v0, v2, v10

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    .line 31
    const/4 v0, 0x0

    .end local v12    # "i":I
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 32
    sget-object v9, Lcom/huawei/device/connectivitychrlog/Base64Coder;->base64_alphabet:[C

    aget-byte v10, v4, v0

    aget-char v9, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_0
    const/4 v9, 0x0

    .end local v0    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 22
    .end local v9    # "i":I
    .restart local v12    # "i":I
    :cond_1
    move v9, v12

    .end local v12    # "i":I
    .end local v13    # "reversePos":I
    .local v0, "reversePos":I
    .restart local v9    # "i":I
    :goto_2
    move v0, v13

    goto :goto_0

    .line 39
    :cond_2
    if-lez v9, :cond_5

    .line 40
    move v7, v9

    :goto_3
    if-ge v7, v1, :cond_3

    .line 41
    aput-byte v8, v2, v7

    .line 40
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 43
    :cond_3
    aget-byte v12, v2, v8

    and-int/lit16 v12, v12, 0xfc

    shr-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, v4, v8

    .line 44
    aget-byte v8, v2, v8

    and-int/2addr v8, v1

    shl-int/2addr v8, v3

    aget-byte v12, v2, v11

    and-int/lit16 v12, v12, 0xf0

    shr-int/lit8 v3, v12, 0x4

    add-int/2addr v8, v3

    int-to-byte v3, v8

    aput-byte v3, v4, v11

    .line 45
    aget-byte v3, v2, v11

    and-int/lit8 v3, v3, 0xf

    shl-int/2addr v3, v10

    aget-byte v8, v2, v10

    and-int/lit16 v8, v8, 0xc0

    shr-int/lit8 v8, v8, 0x6

    add-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v4, v10

    .line 46
    aget-byte v3, v2, v10

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    .line 48
    const/4 v3, 0x0

    .end local v7    # "j":I
    .local v3, "j":I
    move v7, v3

    .end local v3    # "j":I
    .restart local v7    # "j":I
    :goto_4
    add-int/lit8 v3, v9, 0x1

    if-ge v7, v3, :cond_4

    .line 49
    sget-object v3, Lcom/huawei/device/connectivitychrlog/Base64Coder;->base64_alphabet:[C

    aget-byte v8, v4, v7

    aget-char v3, v3, v8

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 51
    :cond_4
    :goto_5
    add-int/lit8 v3, v9, 0x1

    .local v3, "i":I
    if-ge v9, v1, :cond_6

    .line 53
    .end local v9    # "i":I
    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    move v9, v3

    goto :goto_5

    .line 56
    .end local v3    # "i":I
    .restart local v9    # "i":I
    :cond_5
    move v3, v9

    .end local v9    # "i":I
    .restart local v3    # "i":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x3dt
        0x3dt
        0x3dt
        0x3dt
    .end array-data
.end method

.method public static findChar(C)B
    .locals 3
    .param p0, "x"    # C

    .line 123
    const/16 v0, 0x40

    .line 124
    .local v0, "index":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 125
    sget-object v2, Lcom/huawei/device/connectivitychrlog/Base64Coder;->base64_alphabet:[C

    aget-char v2, v2, v1

    if-ne p0, v2, :cond_0

    .line 126
    int-to-byte v0, v1

    .line 127
    goto :goto_1

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public static isBase64(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "base64":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 114
    sget-object v2, Lcom/huawei/device/connectivitychrlog/Base64Coder;->base64_alphabet:[C

    aget-char v2, v2, v1

    if-ne p0, v2, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 116
    goto :goto_1

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method
