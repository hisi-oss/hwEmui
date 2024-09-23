.class public Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;
.super Ljava/lang/Object;
.source "HwaaPackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/fileprotect/HwaaPackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final ALGORITHM_SHA256:Ljava/lang/String; = "SHA-256"

.field private static final ENCODING_UTF8:Ljava/lang/String; = "utf-8"

.field private static final ESCAPE_REGEX:Ljava/lang/String; = "\\\\"

.field private static final HEX_MASK:I = 0xff

.field private static final HEX_MULTIPLY:I = 0x2


# instance fields
.field private mAppId:I

.field private mPackageName:Ljava/lang/String;

.field private mProtectPolicys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mAppId:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mProtectPolicys:Ljava/util/List;

    return-void
.end method

.method private byte2Hex([B)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # [B

    .line 194
    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v0, "result":Ljava/lang/StringBuilder;
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, p1, v4

    .line 200
    .local v5, "b":B
    const-string v6, "%02x"

    new-array v7, v1, [Ljava/lang/Object;

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "byteStr":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .end local v5    # "b":B
    .end local v6    # "byteStr":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 195
    .end local v0    # "result":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private generatePolicys(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 154
    .local p1, "policys":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 157
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;

    .line 158
    .local v1, "policy":Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;
    if-nez v1, :cond_1

    .line 159
    return-object v0

    .line 162
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 164
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "path"

    invoke-static {v1}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->access$200(Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v2, "ext"

    invoke-static {v1}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->access$300(Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    invoke-static {v1}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->access$400(Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    const-string v2, "true"

    goto :goto_0

    :cond_2
    const-string v2, "false"

    .line 168
    .local v2, "subDirStr":Ljava/lang/String;
    :goto_0
    const-string v3, "subdirs"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2    # "subDirStr":Ljava/lang/String;
    goto :goto_1

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "ex":Lorg/json/JSONException;
    const-string v3, "HwaaPackageInfo"

    const-string v4, "Json constuct falied!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v2    # "ex":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 155
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "policy":Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;
    :cond_3
    :goto_2
    return-object v0
.end method

.method private getSHA256String(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    return-object v1

    .line 181
    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 182
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 183
    .local v2, "buffer":[B
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 184
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->byte2Hex([B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 187
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "buffer":[B
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, "HwaaPackageInfo"

    const-string v3, "encoding not supported for utf-8"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "HwaaPackageInfo"

    const-string v3, "NoSuchAlgorithm for getSHA"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 190
    :goto_0
    return-object v1
.end method


# virtual methods
.method public addDefaultPolicy(Ljava/lang/String;)Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;
    .locals 2
    .param p1, "dataDir"    # Ljava/lang/String;

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    return-object p0

    .line 136
    :cond_0
    new-instance v0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;-><init>(Ljava/lang/String;Lhuawei/android/security/fileprotect/HwaaPackageInfo$1;)V

    .line 137
    .local v0, "policy":Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;
    iget-object v1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mProtectPolicys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object p0
.end method

.method public build()Lhuawei/android/security/fileprotect/HwaaPackageInfo;
    .locals 10

    .line 147
    iget-object v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->getSHA256String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "pkgNameSHA":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mSharedUserId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->getSHA256String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "sharedUidSHA":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mProtectPolicys:Ljava/util/List;

    invoke-direct {p0, v1}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->generatePolicys(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "protectPolicys":Ljava/lang/String;
    new-instance v9, Lhuawei/android/security/fileprotect/HwaaPackageInfo;

    iget v2, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mAppId:I

    const/4 v6, 0x0

    move-object v1, v9

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lhuawei/android/security/fileprotect/HwaaPackageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhuawei/android/security/fileprotect/HwaaPackageInfo$1;)V

    return-object v9
.end method

.method public setAppId(I)Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;
    .locals 0
    .param p1, "appId"    # I

    .line 97
    iput p1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mAppId:I

    .line 98
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iput-object p1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 112
    return-object p0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid packageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSharedUserId(Ljava/lang/String;)Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;
    .locals 0
    .param p1, "sharedUserId"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;->mSharedUserId:Ljava/lang/String;

    .line 123
    return-object p0
.end method
