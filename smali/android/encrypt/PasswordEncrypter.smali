.class public Landroid/encrypt/PasswordEncrypter;
.super Ljava/lang/Object;
.source "PasswordEncrypter.java"


# static fields
.field private static final C3:[B

.field private static final MASTER_PASSWORD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/encrypt/PasswordEncrypter;->C3:[B

    .line 17
    sget-object v0, Landroid/encrypt/AES128_ECB;->C1:[B

    sget-object v1, Landroid/encrypt/AES128_ECB_HEX;->C2:[B

    sget-object v2, Landroid/encrypt/PasswordEncrypter;->C3:[B

    invoke-static {v0, v1, v2}, Landroid/encrypt/PasswordEncrypter;->getKey([B[B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/encrypt/PasswordEncrypter;->MASTER_PASSWORD:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x2bt
        0x42t
        -0x6t
        -0x2ct
        -0x4et
        0x4ct
        0x3bt
        0x3et
        0x47t
        0x34t
        0x1ct
        -0x9t
        -0x40t
        -0x1ft
        0x42t
        0x39t
        0x32t
        -0x13t
        0x22t
        -0x40t
        0x5bt
        0x5bt
        0x78t
        0x33t
        0x4at
        0x76t
        0x21t
        -0x7t
        0x47t
        -0x51t
        0x6et
        -0x55t
        -0xbt
        -0x5bt
        0x49t
        0x1ct
        -0xet
        -0x4t
        0x1et
        0x6ct
        -0x77t
        -0x55t
        0x7dt
        0x30t
        -0x57t
        0x18t
        -0x1dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static XOR([B[B)[B
    .locals 4
    .param p0, "m"    # [B
    .param p1, "n"    # [B

    .line 68
    array-length v0, p0

    new-array v0, v0, [B

    .line 69
    .local v0, "temp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 71
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static decrypter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "password"    # Ljava/lang/String;

    .line 85
    move-object v0, p0

    .line 89
    .local v0, "string":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Landroid/encrypt/PasswordEncrypter;->MASTER_PASSWORD:Ljava/lang/String;

    invoke-static {v2}, Landroid/encrypt/HwPasswordUtil;->getSecretKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/encrypt/AES128_ECB_HEX;->decode(Ljava/lang/String;[BI)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 110
    :goto_0
    goto :goto_1

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 104
    :catch_1
    move-exception v1

    .line 106
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 101
    :catch_2
    move-exception v1

    .line 103
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 98
    :catch_3
    move-exception v1

    .line 100
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 95
    :catch_4
    move-exception v1

    .line 97
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    goto :goto_0

    .line 92
    :catch_5
    move-exception v1

    .line 94
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 111
    :goto_1
    return-object v0
.end method

.method public static getKey([B[B[B)Ljava/lang/String;
    .locals 5
    .param p0, "c1"    # [B
    .param p1, "c2"    # [B
    .param p2, "c3"    # [B

    .line 30
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/encrypt/PasswordEncrypter;->left([BI)[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/encrypt/PasswordEncrypter;->XOR([B[B)[B

    move-result-object v0

    .line 31
    .local v0, "T1":[B
    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/encrypt/PasswordEncrypter;->left([BI)[B

    move-result-object v1

    invoke-static {p0, v1}, Landroid/encrypt/PasswordEncrypter;->XOR([B[B)[B

    move-result-object v1

    .line 32
    .local v1, "T2":[B
    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/encrypt/PasswordEncrypter;->right([BI)[B

    move-result-object v2

    .line 33
    .local v2, "result":[B
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v3
.end method

.method private static left([BI)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "count"    # I

    .line 53
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 54
    .local v0, "temp":[B
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 56
    aget-byte v3, v0, v1

    .line 57
    .local v3, "m":B
    move v4, v1

    .local v4, "j":I
    :goto_1
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 59
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v0, v5

    aput-byte v5, v0, v4

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    .end local v4    # "j":I
    :cond_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-byte v3, v0, v4

    .line 54
    .end local v3    # "m":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static right([BI)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "count"    # I

    .line 38
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 39
    .local v0, "temp":[B
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 41
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    .line 42
    .local v3, "m":B
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-lez v4, :cond_0

    .line 44
    add-int/lit8 v5, v4, -0x1

    aget-byte v5, v0, v5

    aput-byte v5, v0, v4

    .line 42
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 46
    .end local v4    # "j":I
    :cond_0
    aput-byte v3, v0, v1

    .line 39
    .end local v3    # "m":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method
