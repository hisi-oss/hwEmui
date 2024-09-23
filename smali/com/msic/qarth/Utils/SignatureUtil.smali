.class public final Lcom/msic/qarth/Utils/SignatureUtil;
.super Ljava/lang/Object;
.source "SignatureUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SignatureUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static checkApkSignatureIsPlatform(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/msic/qarth/Utils/SignatureUtil;->getApkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "apkSign":Ljava/lang/String;
    invoke-static {p0}, Lcom/msic/qarth/Utils/SignatureUtil;->getPlatformSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "platformSign":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 43
    .end local v1    # "apkSign":Ljava/lang/String;
    .end local v2    # "platformSign":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method public static checkApkSignatureIsQarth(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/msic/qarth/Utils/SignatureUtil;->getApkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "apkSign":Ljava/lang/String;
    invoke-static {p0}, Lcom/msic/qarth/Utils/SignatureUtil;->getQarthSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "qarthSign":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 55
    .end local v1    # "apkSign":Ljava/lang/String;
    .end local v2    # "qarthSign":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method public static checkPackageSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lcom/msic/qarth/Utils/SignatureUtil;->getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "s1":Ljava/lang/String;
    invoke-static {p0}, Lcom/msic/qarth/Utils/SignatureUtil;->getPlatformSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "s2":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 67
    .end local v1    # "s1":Ljava/lang/String;
    .end local v2    # "s2":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method public static checkSignature(Landroid/content/Context;Lcom/msic/qarth/PatchFile;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchFile"    # Lcom/msic/qarth/PatchFile;

    .line 32
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/msic/qarth/Utils/SignatureUtil;->checkApkSignatureIsQarth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkVersionName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 146
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 147
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v3, 0x80

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "apkVersionName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 151
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 154
    :cond_1
    const-string v4, "qarth.versionname"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "platformVersionName":Ljava/lang/String;
    const-string v5, "SignatureUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apkVersionName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v5, "SignatureUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "platformVersionName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0

    .line 142
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "apkVersionName":Ljava/lang/String;
    .end local v4    # "platformVersionName":Ljava/lang/String;
    :cond_3
    :goto_0
    return v0
.end method

.method private static getApkSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "apkPath"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    move-object v1, v0

    .line 81
    .local v1, "signDetail":Landroid/content/pm/PackageParser$SigningDetails;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 85
    nop

    .line 86
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "signStrBuilder":Ljava/lang/StringBuilder;
    iget-object v2, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 92
    .local v5, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .end local v5    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 87
    .end local v0    # "signStrBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v2, "SignatureUtil"

    const-string v3, "get qarth file signature is null"

    invoke-static {v2, v3}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "ex":Landroid/content/pm/PackageParser$PackageParserException;
    const-string v3, "SignatureUtil"

    const-string v4, "verify the qarth file signature exception"

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method private static getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 99
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    move-object v2, v1

    .line 101
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SignatureUtil"

    const-string v5, "get package signature NameNotFoundException"

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v2, :cond_0

    .line 106
    return-object v1

    .line 108
    :cond_0
    invoke-static {v2}, Lcom/msic/qarth/Utils/SignatureUtil;->getSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "sign":Ljava/lang/String;
    return-object v1
.end method

.method private static getPlatformSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    const-string v0, "android"

    invoke-static {p0, v0}, Lcom/msic/qarth/Utils/SignatureUtil;->getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "sign":Ljava/lang/String;
    return-object v0
.end method

.method private static getQarthSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    const-string v0, "com.qihoo.qarth"

    invoke-static {p0, v0}, Lcom/msic/qarth/Utils/SignatureUtil;->getPackageSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 118
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 119
    return-object v0

    .line 121
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 122
    .local v1, "signatures":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "signSB":Ljava/lang/StringBuilder;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 127
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .end local v4    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 123
    .end local v0    # "signSB":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    return-object v0
.end method
