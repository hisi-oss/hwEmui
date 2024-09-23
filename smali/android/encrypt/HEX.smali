.class public Landroid/encrypt/HEX;
.super Ljava/lang/Object;
.source "HEX.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14
    .param p0, "stData"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "l_btData":[B
    const/4 v1, 0x0

    .line 50
    .local v1, "l_btTmp":[B
    const/4 v2, 0x0

    .line 57
    .local v2, "l_stData":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 58
    return-object v3

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 63
    .local v4, "l_iLen":I
    rem-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    .line 64
    return-object v3

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 69
    const/4 v5, 0x0

    move v6, v5

    .local v6, "ii":I
    :goto_0
    const/16 v7, 0x46

    const/16 v8, 0x41

    const/16 v9, 0x30

    if-ge v6, v4, :cond_5

    .line 70
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 72
    .local v10, "l_cTmp":C
    if-gt v9, v10, :cond_2

    const/16 v9, 0x39

    if-le v10, v9, :cond_3

    :cond_2
    if-gt v8, v10, :cond_4

    if-le v10, v7, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    :cond_4
    :goto_1
    return-object v3

    .line 77
    .end local v10    # "l_cTmp":C
    :cond_5
    const/4 v3, 0x2

    div-int/2addr v4, v3

    .line 79
    new-array v0, v4, [B

    .line 81
    new-array v1, v3, [B

    .line 83
    const/4 v6, 0x0

    const/4 v10, 0x0

    .local v10, "jj":I
    move v11, v10

    move v10, v6

    move v6, v5

    .local v6, "kk":I
    .local v10, "ii":I
    .local v11, "jj":I
    :goto_2
    if-ge v10, v4, :cond_8

    .line 84
    add-int/lit8 v12, v11, 0x1

    .local v12, "jj":I
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .end local v11    # "jj":I
    int-to-byte v11, v11

    aput-byte v11, v1, v5

    .line 85
    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "jj":I
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .end local v12    # "jj":I
    int-to-byte v12, v12

    const/4 v13, 0x1

    aput-byte v12, v1, v13

    .line 87
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_7

    .line 88
    aget-byte v12, v1, v6

    if-gt v8, v12, :cond_6

    aget-byte v12, v1, v6

    if-gt v12, v7, :cond_6

    .line 89
    aget-byte v12, v1, v6

    add-int/lit8 v12, v12, -0x37

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    goto :goto_4

    .line 91
    :cond_6
    aget-byte v12, v1, v6

    sub-int/2addr v12, v9

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    .line 87
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 95
    :cond_7
    aget-byte v12, v1, v5

    shl-int/lit8 v12, v12, 0x4

    aget-byte v13, v1, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v0, v10

    .line 83
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 98
    :cond_8
    return-object v0
.end method

.method public static encode([BI)Ljava/lang/String;
    .locals 5
    .param p0, "btData"    # [B
    .param p1, "iLen"    # I

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "l_stTmp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v1, "l_stHex":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 22
    const/4 v2, 0x0

    return-object v2

    .line 25
    :cond_0
    if-lez p1, :cond_1

    array-length v2, p0

    if-le p1, v2, :cond_2

    .line 26
    :cond_1
    array-length p1, p0

    .line 29
    :cond_2
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    if-ge v2, p1, :cond_4

    .line 30
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
