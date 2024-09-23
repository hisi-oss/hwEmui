.class public final Landroid/encrypt/AES128_ECB_HEX;
.super Ljava/lang/Object;
.source "AES128_ECB_HEX.java"


# static fields
.field static final C2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/encrypt/AES128_ECB_HEX;->C2:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0xet
        0x24t
        -0x42t
        0x4bt
        0x30t
        0x2bt
        0x5bt
        0x20t
        0x3et
        0x7at
        0x37t
        -0x45t
        -0x70t
        -0x51t
        0x3ct
        -0x5at
        -0x7bt
        -0x3ct
        0x71t
        0x19t
        0x65t
        -0x65t
        0x0t
        -0x1bt
        -0x6at
        0x69t
        0x6et
        0x7bt
        -0x4t
        -0x79t
        0x2ft
        0x4dt
        -0x65t
        -0x8t
        0x36t
        -0x33t
        0x4bt
        0x49t
        0x3dt
        0x1dt
        -0x71t
        0x27t
        -0x3et
        0x32t
        0x25t
        -0x63t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static decode(Ljava/lang/String;[BI)[B
    .locals 2
    .param p0, "stHex"    # Ljava/lang/String;
    .param p1, "btKey"    # [B
    .param p2, "iKeyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Landroid/encrypt/HEX;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/encrypt/AES128_ECB;->decode([BI[BI)[B

    move-result-object v0

    return-object v0
.end method
