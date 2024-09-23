.class public final Landroid/encrypt/AES128_ECB;
.super Ljava/lang/Object;
.source "AES128_ECB.java"


# static fields
.field private static final AES_128_KEY_LEN:I = 0x10

.field static final C1:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/encrypt/AES128_ECB;->C1:[B

    return-void

    :array_0
    .array-data 1
        0x2bt
        0x20t
        0xdt
        0x3bt
        -0x79t
        0x54t
        0x5ct
        -0x3t
        -0x2ct
        -0x3t
        -0x2at
        -0x54t
        0x78t
        -0x7bt
        -0xdt
        0x68t
        -0x43t
        -0x6ct
        0x65t
        0x38t
        0x6at
        0x34t
        -0x20t
        -0x4et
        0x65t
        0x10t
        0x3ct
        -0x29t
        -0x5ct
        0x67t
        -0x6t
        -0x1ft
        0x30t
        -0x2ct
        -0x72t
        0x59t
        0xat
        0x35t
        0x4t
        0x7ft
        -0x33t
        0x3ct
        -0x48t
        -0x7dt
        -0x29t
        -0x47t
        0x27t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static decode([BI[BI)[B
    .locals 1
    .param p0, "btCipher"    # [B
    .param p1, "iLen"    # I
    .param p2, "btKey"    # [B
    .param p3, "iKeyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/encrypt/AES128_ECB;->encode_decode([BI[BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static encode_decode([BI[BII)[B
    .locals 8
    .param p0, "btData"    # [B
    .param p1, "iLen"    # I
    .param p2, "btKey"    # [B
    .param p3, "iKeyLen"    # I
    .param p4, "iFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "l_btKey":[B
    const/4 v1, 0x0

    .line 53
    .local v1, "l_oCipher":Ljavax/crypto/Cipher;
    if-eqz p0, :cond_9

    if-nez p2, :cond_0

    goto :goto_3

    .line 57
    :cond_0
    if-lez p1, :cond_1

    array-length v2, p0

    if-le p1, v2, :cond_2

    .line 58
    :cond_1
    array-length p1, p0

    .line 61
    :cond_2
    if-lez p3, :cond_3

    array-length v2, p2

    if-le p3, v2, :cond_4

    .line 62
    :cond_3
    array-length p3, p2

    .line 65
    :cond_4
    const/16 v2, 0x10

    if-le p3, v2, :cond_5

    .line 67
    const/16 p3, 0x10

    .line 70
    :cond_5
    new-array v0, v2, [B

    .line 72
    const/4 v3, 0x0

    move v4, v3

    .local v4, "ii":I
    :goto_0
    if-ge v4, v2, :cond_6

    .line 73
    aput-byte v3, v0, v4

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-ge v4, p3, :cond_7

    .line 77
    aget-byte v5, p2, v4

    aput-byte v5, v0, v4

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_7
    const-string v5, "AES/ECB/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 82
    if-nez p4, :cond_8

    .line 83
    const/4 v5, 0x1

    .local v5, "l_iMode":I
    goto :goto_2

    .line 85
    .end local v5    # "l_iMode":I
    :cond_8
    const/4 v5, 0x2

    .line 88
    .restart local v5    # "l_iMode":I
    :goto_2
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v0, v3, v2, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 90
    invoke-virtual {v1, p0, v3, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    return-object v2

    .line 54
    .end local v4    # "ii":I
    .end local v5    # "l_iMode":I
    :cond_9
    :goto_3
    const/4 v2, 0x0

    return-object v2
.end method
