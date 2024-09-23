.class public Lhuawei/android/security/securityprofile/DigestMatcher;
.super Ljava/lang/Object;
.source "DigestMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field public static final CALCULATE_APKDIGEST:Z

.field public static final CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field public static final CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field private static final SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field private static final SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field private static final SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field private static final SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field private static final SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102

.field private static final TAG:Ljava/lang/String; = "SecurityProfileDigestMatcher"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 133
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 80
    const-string v0, "true"

    const-string v1, "ro.config.iseapp_calculate_apkdigest"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/security/securityprofile/DigestMatcher;->CALCULATE_APKDIGEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateManifestDigest(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "digestAlgorithm"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "jarFile":Landroid/util/jar/StrictJarFile;
    const/4 v1, 0x0

    move-object v2, v1

    .line 86
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Landroid/util/jar/StrictJarFile;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v4}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v3

    .line 88
    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v3}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 89
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v0, v3}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 91
    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 92
    .local v4, "b":[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 93
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v2, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "ignore":Ljava/io/IOException;
    const-string v7, "SecurityProfileDigestMatcher"

    const-string v8, "close inputStream exception!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ignore":Ljava/io/IOException;
    goto :goto_1

    .line 109
    :cond_0
    :goto_0
    nop

    .line 112
    :goto_1
    nop

    .line 113
    :try_start_2
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 115
    :catch_1
    move-exception v1

    .line 116
    .restart local v1    # "ignore":Ljava/io/IOException;
    const-string v7, "SecurityProfileDigestMatcher"

    const-string v8, "close jar file counter exception!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ignore":Ljava/io/IOException;
    goto :goto_3

    .line 117
    :goto_2
    nop

    .line 94
    :goto_3
    return-object v6

    .line 96
    .end local v4    # "b":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    :cond_1
    :try_start_3
    const-string v4, "SecurityProfileDigestMatcher"

    const-string v5, "ZipEntry is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_2

    .line 105
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 107
    :catch_2
    move-exception v3

    .line 108
    .local v3, "ignore":Ljava/io/IOException;
    const-string v4, "SecurityProfileDigestMatcher"

    const-string v5, "close inputStream exception!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ignore":Ljava/io/IOException;
    goto :goto_5

    .line 109
    :cond_2
    :goto_4
    nop

    .line 112
    :goto_5
    nop

    .line 113
    :try_start_5
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 115
    :catch_3
    move-exception v3

    .line 116
    .restart local v3    # "ignore":Ljava/io/IOException;
    const-string v4, "SecurityProfileDigestMatcher"

    const-string v5, "close jar file counter exception!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v3    # "ignore":Ljava/io/IOException;
    goto :goto_b

    .line 117
    :cond_3
    :goto_6
    goto :goto_b

    .line 103
    :catchall_0
    move-exception v1

    goto :goto_c

    .line 100
    :catch_4
    move-exception v3

    .line 101
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    const-string v4, "SecurityProfileDigestMatcher"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_4

    .line 105
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    .line 107
    :catch_5
    move-exception v3

    .line 108
    .local v3, "ignore":Ljava/io/IOException;
    const-string v4, "SecurityProfileDigestMatcher"

    const-string v5, "close inputStream exception!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ignore":Ljava/io/IOException;
    goto :goto_8

    .line 109
    :cond_4
    :goto_7
    nop

    .line 112
    :goto_8
    if-eqz v0, :cond_3

    .line 113
    :try_start_8
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 98
    :catch_6
    move-exception v3

    .line 99
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_9
    const-string v4, "SecurityProfileDigestMatcher"

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 104
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz v2, :cond_5

    .line 105
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    .line 107
    :catch_7
    move-exception v3

    .line 108
    .local v3, "ignore":Ljava/io/IOException;
    const-string v4, "SecurityProfileDigestMatcher"

    const-string v5, "close inputStream exception!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ignore":Ljava/io/IOException;
    goto :goto_a

    .line 109
    :cond_5
    :goto_9
    nop

    .line 112
    :goto_a
    if-eqz v0, :cond_3

    .line 113
    :try_start_b
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_6

    .line 119
    :goto_b
    return-object v1

    .line 103
    :goto_c
    nop

    .line 104
    if-eqz v2, :cond_6

    .line 105
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_d

    .line 107
    :catch_8
    move-exception v3

    .line 108
    .restart local v3    # "ignore":Ljava/io/IOException;
    const-string v4, "SecurityProfileDigestMatcher"

    const-string v5, "close inputStream exception!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ignore":Ljava/io/IOException;
    goto :goto_e

    .line 109
    :cond_6
    :goto_d
    nop

    .line 112
    :goto_e
    if-eqz v0, :cond_7

    .line 113
    :try_start_d
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_f

    .line 115
    :catch_9
    move-exception v3

    .line 116
    .restart local v3    # "ignore":Ljava/io/IOException;
    const-string v4, "SecurityProfileDigestMatcher"

    const-string v5, "close jar file counter exception!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ignore":Ljava/io/IOException;
    nop

    .line 117
    :cond_7
    :goto_f
    throw v1
.end method

.method public static calculateV1ApkDigest(Ljava/lang/String;)Lhuawei/android/security/securityprofile/ApkDigest;
    .locals 5
    .param p0, "apkPath"    # Ljava/lang/String;

    .line 502
    const-string v0, "v1_manifest"

    .line 503
    .local v0, "apkSignatureScheme":Ljava/lang/String;
    const-string v1, "SHA-256"

    .line 504
    .local v1, "digestAlgorithm":Ljava/lang/String;
    invoke-static {p0, v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->calculateManifestDigest(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 505
    .local v2, "manifestDigest":[B
    if-nez v2, :cond_0

    .line 506
    const-string v3, "SecurityProfileDigestMatcher"

    const-string v4, "calculateV1ApkDigest got null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v3, 0x0

    return-object v3

    .line 509
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "base64Digest":Ljava/lang/String;
    new-instance v4, Lhuawei/android/security/securityprofile/ApkDigest;

    invoke-direct {v4, v0, v1, v3}, Lhuawei/android/security/securityprofile/ApkDigest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static calculateV2ApkDigest(Ljava/lang/String;)Lhuawei/android/security/securityprofile/ApkDigest;
    .locals 6
    .param p0, "apkPath"    # Ljava/lang/String;

    .line 514
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 515
    .local v1, "apk":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->findSignatureBlock(Ljava/io/RandomAccessFile;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 516
    .local v2, "signatureBlock":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lhuawei/android/security/securityprofile/DigestMatcher;->findDigestInline(Ljava/nio/ByteBuffer;)Lhuawei/android/security/securityprofile/ApkDigest;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    .local v3, "apkDigest":Lhuawei/android/security/securityprofile/ApkDigest;
    nop

    .line 518
    :try_start_2
    invoke-static {v0, v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 517
    return-object v3

    .line 518
    .end local v2    # "signatureBlock":Ljava/nio/ByteBuffer;
    .end local v3    # "apkDigest":Lhuawei/android/security/securityprofile/ApkDigest;
    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 518
    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_0
    :try_start_4
    invoke-static {v3, v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 522
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityProfileDigestMatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateV2ApkDigest Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 520
    :catch_2
    move-exception v1

    .line 521
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SecurityProfileDigestMatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateV2ApkDigest IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 518
    :catch_3
    move-exception v1

    .line 519
    .local v1, "e":Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
    const-string v2, "SecurityProfileDigestMatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateV2ApkDigest SignatureNotFound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v1    # "e":Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
    :goto_1
    nop

    .line 525
    :goto_2
    return-object v0
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 487
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 490
    return-void

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lhuawei/android/security/securityprofile/DigestMatcher;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 453
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Lhuawei/android/security/securityprofile/DigestMatcher;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 455
    .local v0, "pairs":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 456
    .local v2, "entryCount":I
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    add-int/lit8 v2, v2, 0x1

    .line 458
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v1, :cond_3

    .line 462
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 463
    .local v3, "lenLong":J
    const-wide/16 v5, 0x4

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    .line 468
    long-to-int v5, v3

    .line 469
    .local v5, "len":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    .line 470
    .local v6, "nextEntryPos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-gt v5, v7, :cond_1

    .line 475
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 476
    .local v7, "id":I
    const v8, 0x7109871a

    if-ne v7, v8, :cond_0

    .line 477
    add-int/lit8 v1, v5, -0x4

    invoke-static {v0, v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 479
    :cond_0
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 480
    .end local v3    # "lenLong":J
    .end local v5    # "len":I
    .end local v6    # "nextEntryPos":I
    .end local v7    # "id":I
    goto :goto_0

    .line 471
    .restart local v3    # "lenLong":J
    .restart local v5    # "len":I
    .restart local v6    # "nextEntryPos":I
    :cond_1
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK Signing Block entry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " size out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    .end local v5    # "len":I
    .end local v6    # "nextEntryPos":I
    :cond_2
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APK Signing Block entry #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " size out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    .end local v3    # "lenLong":J
    :cond_3
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_4
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    const-string v3, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v1, v3}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .locals 12
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
        }
    .end annotation

    .line 401
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    .line 409
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 410
    .local v0, "footer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 411
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 412
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 413
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x20676953204b5041L

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/16 v1, 0x10

    .line 414
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 419
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 420
    .local v2, "apkSigBlockSizeInFooter":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 425
    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    long-to-int v4, v4

    .line 426
    .local v4, "totalSize":I
    int-to-long v5, v4

    sub-long v5, p1, v5

    .line 427
    .local v5, "apkSigBlockOffset":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    .line 431
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 432
    .local v7, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 433
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 434
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 435
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 436
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v1, v8, v2

    if-nez v1, :cond_0

    .line 441
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 437
    :cond_0
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " vs "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    .end local v7    # "apkSigBlock":Ljava/nio/ByteBuffer;
    .end local v8    # "apkSigBlockSizeInHeader":J
    :cond_1
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK Signing Block offset out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    .end local v4    # "totalSize":I
    .end local v5    # "apkSigBlockOffset":J
    :cond_2
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK Signing Block size out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    .end local v2    # "apkSigBlockSizeInFooter":J
    :cond_3
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    const-string v2, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v1, v2}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    .end local v0    # "footer":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance v0, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findDigest(Ljava/io/RandomAccessFile;Ljava/lang/String;)[B
    .locals 2
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "digestAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lhuawei/android/security/securityprofile/DigestMatcher;->findSignatureBlock(Ljava/io/RandomAccessFile;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
    .local v0, "signatureBlock":Ljava/nio/ByteBuffer;
    invoke-static {v0, p1}, Lhuawei/android/security/securityprofile/DigestMatcher;->findDigest(Ljava/nio/ByteBuffer;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static findDigest(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "digestAlgorithm"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    .local v1, "apk":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v1, p1}, Lhuawei/android/security/securityprofile/DigestMatcher;->findDigest(Ljava/io/RandomAccessFile;Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    invoke-static {v0, v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    return-object v2

    .line 133
    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_0
    :try_start_4
    invoke-static {v3, v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 135
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    return-object v0

    .line 133
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 134
    .local v1, "e":Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
    return-object v0
.end method

.method private static findDigest(Ljava/nio/ByteBuffer;Ljava/lang/String;)[B
    .locals 6
    .param p0, "signatureBlock"    # Ljava/nio/ByteBuffer;
    .param p1, "jcaDigestAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    .line 171
    .local v0, "signerCount":I
    :try_start_0
    invoke-static {p0}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    .local v1, "signers":Ljava/nio/ByteBuffer;
    nop

    .line 173
    :goto_0
    nop

    .line 175
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    :try_start_1
    invoke-static {v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 179
    .local v2, "signer":Ljava/nio/ByteBuffer;
    invoke-static {v2, p1}, Lhuawei/android/security/securityprofile/DigestMatcher;->findMatchingContentDigest(Ljava/nio/ByteBuffer;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .local v3, "contentDigest":[B
    if-eqz v3, :cond_0

    .line 181
    return-object v3

    .line 187
    .end local v2    # "signer":Ljava/nio/ByteBuffer;
    .end local v3    # "contentDigest":[B
    :cond_0
    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse/verify signer #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " block"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 189
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 172
    .end local v1    # "signers":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Failed to read list of signers"

    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static findDigestInline(Ljava/nio/ByteBuffer;)Lhuawei/android/security/securityprofile/ApkDigest;
    .locals 12
    .param p0, "signatureBlock"    # Ljava/nio/ByteBuffer;

    .line 536
    const/4 v0, 0x0

    .line 539
    .local v0, "signerCount":I
    :try_start_0
    invoke-static {p0}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 542
    .local v1, "signers":Ljava/nio/ByteBuffer;
    nop

    .line 541
    :goto_0
    nop

    .line 543
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 544
    add-int/lit8 v0, v0, 0x1

    .line 546
    :try_start_1
    const-string v2, "v2"

    .line 547
    .local v2, "signatureScheme":Ljava/lang/String;
    const-string v3, ""

    .line 548
    .local v3, "jcaDigestAlgorithm":Ljava/lang/String;
    const/4 v4, 0x0

    .line 550
    .local v4, "digestData":[B
    invoke-static {v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 556
    .local v5, "signer":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 558
    .local v6, "signedData":Ljava/nio/ByteBuffer;
    invoke-static {v6}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 559
    .local v7, "digests":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 560
    invoke-static {v7}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 561
    .local v8, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v10, 0x8

    if-lt v9, v10, :cond_1

    .line 564
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 565
    .local v9, "sigAlgorithm":I
    invoke-static {v9}, Lhuawei/android/security/securityprofile/DigestMatcher;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v10

    invoke-static {v10}, Lhuawei/android/security/securityprofile/DigestMatcher;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 566
    invoke-static {v8}, Lhuawei/android/security/securityprofile/DigestMatcher;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v10

    move-object v4, v10

    .line 567
    if-eqz v4, :cond_0

    .line 568
    new-instance v10, Lhuawei/android/security/securityprofile/ApkDigest;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v2, v3, v11}, Lhuawei/android/security/securityprofile/ApkDigest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 570
    .end local v8    # "digest":Ljava/nio/ByteBuffer;
    .end local v9    # "sigAlgorithm":I
    :cond_0
    goto :goto_1

    .line 562
    .restart local v8    # "digest":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Record too short"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    .end local v2    # "signatureScheme":Ljava/lang/String;
    .end local v3    # "jcaDigestAlgorithm":Ljava/lang/String;
    .end local v4    # "digestData":[B
    .end local v5    # "signer":Ljava/nio/ByteBuffer;
    .end local v6    # "signedData":Ljava/nio/ByteBuffer;
    .end local v7    # "digests":Ljava/nio/ByteBuffer;
    .end local v8    # "digest":Ljava/nio/ByteBuffer;
    :cond_2
    goto :goto_0

    .line 571
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse/verify signer #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " block"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 577
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    return-object v2

    .line 540
    .end local v1    # "signers":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v1

    .line 541
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Failed to read list of signers"

    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static findMatchingContentDigest(Ljava/nio/ByteBuffer;Ljava/lang/String;)[B
    .locals 5
    .param p0, "signerBlock"    # Ljava/nio/ByteBuffer;
    .param p1, "jcaDigestAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-static {p0}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 196
    .local v0, "signedData":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 197
    .local v1, "digests":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    :try_start_0
    invoke-static {v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 200
    .local v2, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 203
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 204
    .local v3, "sigAlgorithm":I
    invoke-static {v3}, Lhuawei/android/security/securityprofile/DigestMatcher;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v4

    invoke-static {v4}, Lhuawei/android/security/securityprofile/DigestMatcher;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-static {v2}, Lhuawei/android/security/securityprofile/DigestMatcher;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    return-object v4

    .line 209
    .end local v2    # "digest":Ljava/nio/ByteBuffer;
    .end local v3    # "sigAlgorithm":I
    :cond_0
    goto :goto_0

    .line 201
    .restart local v2    # "digest":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Record too short"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v2    # "digest":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to parse digest record "

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 211
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static findSignatureBlock(Ljava/io/RandomAccessFile;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
        }
    .end annotation

    .line 148
    invoke-static {p0}, Lhuawei/android/security/securityprofile/DigestMatcher;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    .line 149
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 150
    .local v1, "eocd":Ljava/nio/ByteBuffer;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 151
    .local v2, "eocdOffset":J
    invoke-static {p0, v2, v3}, Lhuawei/android/security/securityprofile/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    invoke-static {v1, v2, v3}, Lhuawei/android/security/securityprofile/DigestMatcher;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 157
    .local v4, "centralDirOffset":J
    nop

    .line 158
    invoke-static {p0, v4, v5}, Lhuawei/android/security/securityprofile/DigestMatcher;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    move-result-object v6

    .line 159
    .local v6, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 162
    .local v7, "apkSigningBlock":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Lhuawei/android/security/securityprofile/DigestMatcher;->findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    return-object v8

    .line 152
    .end local v4    # "centralDirOffset":J
    .end local v6    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v7    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v4, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    const-string v5, "ZIP64 APK not supported"

    invoke-direct {v4, v5}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getApkDigest(Ljava/lang/String;)Lhuawei/android/security/securityprofile/ApkDigest;
    .locals 1
    .param p0, "apkPath"    # Ljava/lang/String;

    .line 493
    invoke-static {p0}, Lhuawei/android/security/securityprofile/DigestMatcher;->calculateV2ApkDigest(Ljava/lang/String;)Lhuawei/android/security/securityprofile/ApkDigest;

    move-result-object v0

    .line 494
    .local v0, "digest":Lhuawei/android/security/securityprofile/ApkDigest;
    if-nez v0, :cond_0

    .line 495
    invoke-static {p0}, Lhuawei/android/security/securityprofile/DigestMatcher;->calculateV1ApkDigest(Ljava/lang/String;)Lhuawei/android/security/securityprofile/ApkDigest;

    move-result-object v0

    .line 497
    :cond_0
    return-object v0
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 336
    if-ltz p1, :cond_1

    .line 339
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 340
    .local v0, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 341
    .local v1, "position":I
    add-int v2, v1, p1

    .line 342
    .local v2, "limit":I
    if-lt v2, v1, :cond_0

    if-gt v2, v0, :cond_0

    .line 345
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 347
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 348
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 349
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    nop

    .line 352
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 350
    return-object v3

    .line 352
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v3

    .line 343
    :cond_0
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 337
    .end local v0    # "originalLimit":I
    .end local v1    # "position":I
    .end local v2    # "limit":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 6
    .param p0, "eocd"    # Ljava/nio/ByteBuffer;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
        }
    .end annotation

    .line 234
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 235
    .local v0, "centralDirOffset":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_1

    .line 240
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 241
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 246
    return-wide v0

    .line 242
    :cond_0
    new-instance v4, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    const-string v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v2    # "centralDirSize":J
    :cond_1
    new-instance v2, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZIP Central Directory offset out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ". ZIP End of Central Directory offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .locals 3
    .param p0, "digestAlgorithm"    # I

    .line 280
    packed-switch p0, :pswitch_data_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_0
    const-string v0, "SHA-512"

    return-object v0

    .line 282
    :pswitch_1
    const-string v0, "SHA-256"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;
        }
    .end annotation

    .line 222
    nop

    .line 223
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    .line 224
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 228
    return-object v0

    .line 225
    :cond_0
    new-instance v1, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;

    const-string v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Lhuawei/android/security/securityprofile/DigestMatcher$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 362
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 363
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 365
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 369
    invoke-static {p0, v0}, Lhuawei/android/security/securityprofile/DigestMatcher;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 366
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    .end local v0    # "len":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSignatureAlgorithmContentDigestAlgorithm(I)I
    .locals 3
    .param p0, "sigAlgorithm"    # I

    .line 262
    const/16 v0, 0x301

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 267
    :cond_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static packageMatchesDigest(Ljava/lang/String;Lhuawei/android/security/securityprofile/ApkDigest;)Z
    .locals 3
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "apkDigest"    # Lhuawei/android/security/securityprofile/ApkDigest;

    .line 123
    iget-object v0, p1, Lhuawei/android/security/securityprofile/ApkDigest;->apkSignatureScheme:Ljava/lang/String;

    const-string v1, "v1_manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lhuawei/android/security/securityprofile/ApkDigest;->digestAlgorithm:Ljava/lang/String;

    invoke-static {p0, v0}, Lhuawei/android/security/securityprofile/DigestMatcher;->calculateManifestDigest(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lhuawei/android/security/securityprofile/ApkDigest;->digestAlgorithm:Ljava/lang/String;

    invoke-static {p0, v0}, Lhuawei/android/security/securityprofile/DigestMatcher;->findDigest(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    .local v0, "calculatedDigest":[B
    :goto_0
    if-nez v0, :cond_1

    .line 125
    const/4 v1, 0x0

    return v1

    .line 127
    :cond_1
    iget-object v1, p1, Lhuawei/android/security/securityprofile/ApkDigest;->base64Digest:Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 374
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 380
    new-array v1, v0, [B

    .line 381
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 382
    return-object v1

    .line 377
    .end local v1    # "result":[B
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 299
    if-ltz p1, :cond_2

    .line 302
    if-lt p2, p1, :cond_1

    .line 305
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 306
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 310
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 312
    .local v2, "originalPosition":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 314
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 316
    .local v4, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    nop

    .line 319
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 321
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 317
    return-object v4

    .line 319
    .end local v4    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 321
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4

    .line 307
    .end local v1    # "originalLimit":I
    .end local v2    # "originalPosition":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end > capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    .end local v0    # "capacity":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end < start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
