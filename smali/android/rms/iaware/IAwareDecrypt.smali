.class public Landroid/rms/iaware/IAwareDecrypt;
.super Ljava/lang/Object;
.source "IAwareDecrypt.java"


# static fields
.field private static final AES128_KEY_LEN:I = 0x10

.field private static final COMPONENT:[B

.field private static final COMPONENT2:[B

.field private static final COMPONENT3:[B

.field private static final COMPONENT_NAME_1:Ljava/lang/String; = "iaware_c.dat"

.field private static final COMPONENT_NAME_2:Ljava/lang/String; = "iaware_cm.dat"

.field private static final ENCYPTION_SCHEME:Ljava/lang/String; = "AES"

.field private static final PKG_NAME:Ljava/lang/String; = "com.huawei.iaware"

.field private static final STREAM_READ_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "IAwareDecrypt"

.field private static final UTF8_BOM_HEAD:[B

.field private static final UTF8_BOM_HEAD_LEN:I = 0x3

.field private static final XML_HEAD:Ljava/lang/String; = "<?xml"

.field private static final XML_HEAD_LEN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/rms/iaware/IAwareDecrypt;->COMPONENT:[B

    .line 59
    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/rms/iaware/IAwareDecrypt;->COMPONENT2:[B

    .line 61
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/rms/iaware/IAwareDecrypt;->COMPONENT3:[B

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/rms/iaware/IAwareDecrypt;->UTF8_BOM_HEAD:[B

    return-void

    :array_0
    .array-data 1
        -0x76t
        0x50t
        -0x21t
        -0x67t
        0x64t
        0x65t
        0x7dt
        -0x23t
        -0x1ct
        -0x2et
        -0x42t
        -0xft
        -0x24t
        0x5t
        -0x4ft
        0x73t
    .end array-data

    :array_1
    .array-data 1
        -0x5bt
        0x37t
        0x57t
        -0x2et
        0x40t
        -0xat
        0x18t
        0x3at
        0x32t
        -0x80t
        -0x2at
        -0x4dt
        -0x3et
        0x76t
        0x70t
        0x1dt
        -0x3ct
        0x10t
        -0x5et
        -0x23t
        0x11t
        0x2et
        0x44t
        -0x50t
        0x28t
        -0x3at
        -0x19t
        -0x5at
        -0x5t
        0x24t
        -0x54t
        0x1bt
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0xdt
        0x11t
        0x7t
        -0x42t
        -0x61t
        0x37t
        -0x5ft
        0x55t
        -0x19t
        0x4at
        0x38t
        0x60t
        0x70t
        -0x7at
        0x42t
    .end array-data

    :array_3
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static XORBytes([B[BI)[B
    .locals 5
    .param p0, "c1"    # [B
    .param p1, "c2"    # [B
    .param p2, "len"    # I

    .line 294
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 295
    .local v1, "zeroByte":[B
    if-eqz p0, :cond_4

    array-length v2, p0

    if-eq v2, p2, :cond_0

    goto :goto_2

    .line 298
    :cond_0
    if-eqz p1, :cond_3

    array-length v2, p1

    if-eq v2, p2, :cond_1

    goto :goto_1

    .line 301
    :cond_1
    new-array v2, p2, [B

    .line 302
    .local v2, "ret":[B
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 303
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "i":I
    :cond_2
    return-object v2

    .line 299
    .end local v2    # "ret":[B
    :cond_3
    :goto_1
    return-object v1

    .line 296
    :cond_4
    :goto_2
    return-object v1
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/Closeable;

    .line 205
    if-eqz p0, :cond_0

    .line 207
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IAwareDecrypt"

    const-string v2, "close inputStream error!"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static cutByteArray([B)[B
    .locals 4
    .param p0, "res"    # [B

    .line 327
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 328
    .local v1, "zeroByte":[B
    if-eqz p0, :cond_2

    array-length v2, p0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 332
    :cond_0
    new-array v2, v3, [B

    .line 333
    .local v2, "dst":[B
    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 335
    array-length v0, v2

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0

    .line 329
    .end local v2    # "dst":[B
    :cond_2
    :goto_1
    return-object v1
.end method

.method public static decryptInputStream(Landroid/content/Context;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ins"    # Ljava/io/InputStream;

    .line 73
    if-eqz p1, :cond_8

    if-nez p0, :cond_0

    goto/16 :goto_4

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, "start":J
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    invoke-static {p1}, Landroid/rms/iaware/IAwareDecrypt;->getByteArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v2

    .local v2, "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 83
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1
    move-object v2, p1

    .line 85
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 86
    return-object v3

    .line 89
    :cond_2
    invoke-static {v2}, Landroid/rms/iaware/IAwareDecrypt;->isNormalXml(Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    return-object v2

    .line 93
    :cond_3
    const/4 v4, 0x0

    .line 94
    .local v4, "ret":Ljava/io/InputStream;
    move-object v5, v3

    .line 96
    .local v5, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :try_start_0
    invoke-static {v2}, Landroid/rms/iaware/IAwareDecrypt;->isStreamAvailable(Ljava/io/InputStream;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_4

    .line 97
    nop

    .line 122
    invoke-static {v5}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v2}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 97
    return-object v3

    .line 100
    :cond_4
    :try_start_1
    invoke-static {p0, v2}, Landroid/rms/iaware/IAwareDecrypt;->getCipher(Landroid/content/Context;Ljava/io/InputStream;)Ljavax/crypto/Cipher;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .local v6, "cipher":Ljavax/crypto/Cipher;
    if-nez v6, :cond_5

    .line 102
    nop

    .line 122
    invoke-static {v5}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v2}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 102
    return-object v3

    .line 105
    :cond_5
    const-wide/16 v7, 0x10

    :try_start_2
    invoke-virtual {v2, v7, v8}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v7, v9, v7

    if-eqz v7, :cond_6

    .line 106
    nop

    .line 122
    invoke-static {v5}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v2}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 106
    return-object v3

    .line 108
    :cond_6
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v7, v3, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object v5, v7

    .line 110
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 112
    .local v7, "buffer":[B
    :goto_1
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "r":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_7

    .line 113
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_1

    .line 115
    :cond_7
    invoke-static {v5}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 116
    const/4 v5, 0x0

    .line 118
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v8

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "buffer":[B
    .end local v9    # "r":I
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 119
    :catch_0
    move-exception v3

    .line 120
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "IAwareDecrypt"

    const-string v7, "decryptFile IOException!"

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v5}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v2}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 124
    nop

    .line 126
    const-string v3, "IAwareDecrypt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decryptInputStream decrypt spend "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v4

    .line 122
    :goto_3
    invoke-static {v5}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v2}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .line 74
    .end local v0    # "start":J
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "ret":Ljava/io/InputStream;
    .end local v5    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :cond_8
    :goto_4
    return-object p1
.end method

.method private static generateKey([B[B)[B
    .locals 4
    .param p0, "c1"    # [B
    .param p1, "c2"    # [B

    .line 265
    sget-object v0, Landroid/rms/iaware/IAwareDecrypt;->COMPONENT:[B

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, v3}, Landroid/rms/iaware/IAwareDecrypt;->gression([BIZI)[B

    move-result-object v0

    .line 266
    .local v0, "bytes":[B
    invoke-static {v0}, Landroid/rms/iaware/IAwareDecrypt;->hashCompoent([B)[B

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/rms/iaware/IAwareDecrypt;->cutByteArray([B)[B

    move-result-object v0

    .line 268
    invoke-static {v0, p0, v2}, Landroid/rms/iaware/IAwareDecrypt;->XORBytes([B[BI)[B

    move-result-object v0

    .line 269
    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/rms/iaware/IAwareDecrypt;->gression([BIZI)[B

    move-result-object v0

    .line 270
    invoke-static {v0, p1, v2}, Landroid/rms/iaware/IAwareDecrypt;->XORBytes([B[BI)[B

    move-result-object v0

    .line 271
    invoke-static {v0}, Landroid/rms/iaware/IAwareDecrypt;->hashCompoent([B)[B

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/rms/iaware/IAwareDecrypt;->cutByteArray([B)[B

    move-result-object v0

    .line 273
    return-object v0
.end method

.method private static getByteArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 131
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 135
    .local v1, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "r":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {p0}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 138
    return-object v2

    .line 142
    .end local v3    # "r":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "IAwareDecrypt"

    const-string v4, "getByteArrayInputStream IOException!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {p0}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 143
    nop

    .line 145
    const/4 v2, 0x0

    return-object v2

    .line 142
    :goto_1
    invoke-static {p0}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static getCipher(Landroid/content/Context;Ljava/io/InputStream;)Ljavax/crypto/Cipher;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-static {p0}, Landroid/rms/iaware/IAwareDecrypt;->parseCodeFormate(Landroid/content/Context;)[B

    move-result-object v0

    .line 199
    .local v0, "codeFormate":[B
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Landroid/rms/iaware/IAwareDecrypt;->parseComponent(Ljava/io/InputStream;II)[B

    move-result-object v1

    .line 201
    .local v1, "iv":[B
    invoke-static {v0, v1}, Landroid/rms/iaware/IAwareDecrypt;->initAESCipher([B[B)Ljavax/crypto/Cipher;

    move-result-object v2

    return-object v2
.end method

.method private static getComponentFromAssets(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 346
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 347
    .local v0, "zeroByte":[B
    const/4 v1, 0x0

    .line 349
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 350
    if-nez v1, :cond_0

    .line 351
    nop

    .line 361
    invoke-static {v1}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 351
    return-object v0

    .line 354
    :cond_0
    const/16 v2, 0x10

    :try_start_1
    new-array v3, v2, [B

    .line 355
    .local v3, "buffer":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v2, :cond_1

    .line 356
    nop

    .line 361
    invoke-static {v1}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 356
    return-object v3

    .line 361
    .end local v3    # "buffer":[B
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "IAwareDecrypt"

    const-string v4, "Assets Exception!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    invoke-static {v1}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    .line 362
    nop

    .line 363
    return-object v0

    .line 361
    :goto_0
    invoke-static {v1}, Landroid/rms/iaware/IAwareDecrypt;->closeStream(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 367
    const-string v0, "com.huawei.iaware"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    return-object p0

    .line 372
    :cond_0
    :try_start_0
    const-string v0, "com.huawei.iaware"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "IAwareDecrypt"

    const-string v2, "getContex NameNotFoundException!"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRootComponent(Landroid/content/Context;)[B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 232
    invoke-static {p0}, Landroid/rms/iaware/IAwareDecrypt;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 233
    .local v0, "otherContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 234
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 237
    :cond_0
    const-string v1, "iaware_c.dat"

    invoke-static {v0, v1}, Landroid/rms/iaware/IAwareDecrypt;->getComponentFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 238
    .local v1, "c1":[B
    const-string v2, "iaware_cm.dat"

    invoke-static {v0, v2}, Landroid/rms/iaware/IAwareDecrypt;->getComponentFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 240
    .local v2, "c2":[B
    invoke-static {v1, v2}, Landroid/rms/iaware/IAwareDecrypt;->generateKey([B[B)[B

    move-result-object v3

    return-object v3
.end method

.method private static gression([BIZI)[B
    .locals 3
    .param p0, "component"    # [B
    .param p1, "len"    # I
    .param p2, "leftShift"    # Z
    .param p3, "bit"    # I

    .line 277
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-eq v1, p1, :cond_0

    goto :goto_2

    .line 281
    :cond_0
    new-array v1, p1, [B

    .line 282
    .local v1, "ret":[B
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 283
    if-eqz p2, :cond_1

    .line 284
    aget-byte v2, p0, v0

    shl-int/2addr v2, p3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_1

    .line 286
    :cond_1
    aget-byte v2, p0, v0

    shr-int/2addr v2, p3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 282
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "i":I
    :cond_2
    return-object v1

    .line 278
    .end local v1    # "ret":[B
    :cond_3
    :goto_2
    new-array v0, v0, [B

    return-object v0
.end method

.method private static hashCompoent([B)[B
    .locals 4
    .param p0, "component"    # [B

    .line 310
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 311
    .local v0, "zeroByte":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 317
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 318
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 319
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "IAwareDecrypt"

    const-string v3, "No SHA-256 algorithm found!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0

    .line 312
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static initAESCipher([B[B)Ljavax/crypto/Cipher;
    .locals 5
    .param p0, "codeFormate"    # [B
    .param p1, "iv"    # [B

    .line 173
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    .line 178
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 179
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 180
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-object v2

    .line 190
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "IAwareDecrypt"

    const-string v3, "initAESCipher IllegalArgumentException!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 188
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v2, "IAwareDecrypt"

    const-string v3, "initAESCipher InvalidAlgorithmParameterException!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    goto :goto_0

    .line 186
    :catch_2
    move-exception v1

    .line 187
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v2, "IAwareDecrypt"

    const-string v3, "initAESCipher InvalidKeyException!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 184
    :catch_3
    move-exception v1

    .line 185
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v2, "IAwareDecrypt"

    const-string v3, "initAESCipher NoSuchPaddingException!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 182
    :catch_4
    move-exception v1

    .line 183
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "IAwareDecrypt"

    const-string v3, "initAESCipher NoSuchAlgorithmException!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    nop

    .line 194
    :goto_1
    return-object v0

    .line 174
    :cond_1
    :goto_2
    return-object v0
.end method

.method private static isNormalXml(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 149
    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 151
    .local v1, "head":[B
    const/4 v2, 0x1

    const/4 v3, 0x3

    :try_start_0
    new-array v4, v3, [B

    .line 152
    .local v4, "bomHead":[B
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 153
    .local v5, "len":I
    if-ne v5, v3, :cond_0

    sget-object v3, Landroid/rms/iaware/IAwareDecrypt;->UTF8_BOM_HEAD:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 157
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 158
    .local v3, "r":I
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 159
    if-ne v3, v0, :cond_2

    const-string v0, "<?xml"

    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 160
    .end local v3    # "r":I
    .end local v4    # "bomHead":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "IAwareDecrypt"

    const-string v4, "isNormalXml IOException!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return v2
.end method

.method private static isStreamAvailable(Ljava/io/InputStream;)Z
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parseCodeFormate(Landroid/content/Context;)[B
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 215
    invoke-static {p0}, Landroid/rms/iaware/IAwareDecrypt;->getRootComponent(Landroid/content/Context;)[B

    move-result-object v0

    .line 216
    .local v0, "component":[B
    sget-object v1, Landroid/rms/iaware/IAwareDecrypt;->COMPONENT3:[B

    invoke-static {v0, v1}, Landroid/rms/iaware/IAwareDecrypt;->initAESCipher([B[B)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 217
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 218
    new-array v2, v2, [B

    return-object v2

    .line 221
    :cond_0
    :try_start_0
    sget-object v3, Landroid/rms/iaware/IAwareDecrypt;->COMPONENT2:[B

    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    const-string v4, "IAwareDecrypt"

    const-string v5, "parseCodeFormate BadPaddingException!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    goto :goto_0

    .line 222
    :catch_1
    move-exception v3

    .line 223
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v4, "IAwareDecrypt"

    const-string v5, "parseCodeFormate IllegalBlockSizeException!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    nop

    .line 228
    :goto_0
    new-array v2, v2, [B

    return-object v2
.end method

.method private static parseComponent(Ljava/io/InputStream;II)[B
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "start"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 250
    .local v1, "zeroByte":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 251
    new-array v2, p2, [B

    .line 252
    .local v2, "buffer":[B
    int-to-long v3, p1

    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 254
    return-object v2

    .line 256
    :cond_0
    invoke-virtual {p0, v2, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 257
    move-object v2, v1

    .line 259
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 261
    return-object v2
.end method
