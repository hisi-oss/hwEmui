.class public Lcom/huawei/device/connectivitychrlog/SHAUtils;
.super Ljava/lang/Object;
.source "SHAUtils.java"


# static fields
.field private static final SHA256:Ljava/lang/String; = "SHA-256"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sha(Ljava/lang/String;)[B
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, "sha256":[B
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 27
    :goto_0
    goto :goto_1

    .line 25
    :catch_0
    move-exception v1

    goto :goto_1

    .line 23
    :catch_1
    move-exception v1

    goto :goto_0

    .line 28
    :goto_1
    return-object v0
.end method

.method public static shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/huawei/device/connectivitychrlog/SHAUtils;->sha(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/Base64Coder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
