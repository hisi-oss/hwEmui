.class public Landroid/rms/iaware/ComponentRecoManager;
.super Ljava/lang/Object;
.source "ComponentRecoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;
    }
.end annotation


# static fields
.field public static final BAD_FUNC:Ljava/lang/String; = "badFunc"

.field public static final BAD_FUNC_BAD:I = 0x1

.field public static final BAD_FUNC_DEFAULT:I = 0x0

.field private static final CLOUD_FILE_PATH:Ljava/lang/String; = "/data/system/iaware/"

.field public static final COMPONENT_CLOUD_UPDATE_ACTION:Ljava/lang/String; = "COMPONENT_CLOUD_UPDATE_ACTION"

.field private static final COMPONENT_DATA_FILE:Ljava/lang/String; = "component.data"

.field private static final COMPONENT_DATA_PATH:Ljava/lang/String; = "iaware/data/"

.field public static final COMP_NAME:Ljava/lang/String; = "compName"

.field public static final COMP_TYPE:Ljava/lang/String; = "compType"

.field private static final DATA_HEAD:Ljava/lang/String; = "{\"version\":"

.field private static final DEFAULT_DATA_VERION:I = 0x0

.field public static final GOOD_FUNC:Ljava/lang/String; = "goodFunc"

.field private static final SINGLE_LINE_MAX_COUNT:I = 0x800

.field private static final TAG:Ljava/lang/String; = "ComponentRecoManager"

.field private static final TOTAL_LINE_COUNT:I = 0x4e20

.field private static mComponentRecoManager:Landroid/rms/iaware/ComponentRecoManager;


# instance fields
.field private final mComponentMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReady:Z

.field private mWorkingVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    sput-object v0, Landroid/rms/iaware/ComponentRecoManager;->mComponentRecoManager:Landroid/rms/iaware/ComponentRecoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/rms/iaware/ComponentRecoManager;->mIsReady:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/rms/iaware/ComponentRecoManager;->mWorkingVersion:I

    .line 112
    return-void
.end method

.method private buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 465
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 466
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 467
    .local v3, "c":C
    invoke-static {v3}, Landroid/rms/iaware/ComponentRecoManager;->isValidFatFilenameChar(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 470
    :cond_1
    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/rms/iaware/ComponentRecoManager;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 462
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string v0, "(invalid)"

    return-object v0
.end method

.method private closeStream(Ljava/io/InputStreamReader;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "reader"    # Ljava/io/InputStreamReader;
    .param p2, "fis"    # Ljava/io/InputStream;

    .line 229
    if-eqz p1, :cond_1

    .line 230
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 235
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ComponentRecoManager"

    const-string v2, "close reader failed!"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz p2, :cond_2

    .line 237
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 235
    :goto_0
    nop

    .line 236
    if-eqz p2, :cond_0

    .line 237
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 239
    :catch_1
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ComponentRecoManager"

    const-string v3, "close fis failed!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 241
    :cond_0
    :goto_1
    throw v0

    .line 236
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 237
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 239
    :catch_2
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "ComponentRecoManager"

    const-string v2, "close fis failed!"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 241
    :cond_2
    :goto_3
    nop

    .line 243
    :goto_4
    return-void
.end method

.method private decryptAndReadFile(Landroid/content/Context;Landroid/util/ArrayMap;Ljava/io/File;)I
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;",
            ">;",
            "Ljava/io/File;",
            ")I"
        }
    .end annotation

    .line 192
    .local p2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;>;"
    const/4 v0, 0x0

    .line 193
    .local v0, "reader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 195
    .local v1, "fis":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ComponentRecoManager"

    const-string v4, "read the data from base!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 197
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v3, :cond_0

    .line 198
    nop

    .line 223
    invoke-direct {p0, v0, v1}, Landroid/rms/iaware/ComponentRecoManager;->closeStream(Ljava/io/InputStreamReader;Ljava/io/InputStream;)V

    .line 198
    return v2

    .line 200
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Landroid/rms/iaware/ComponentRecoManager;->isNormalPreset(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const-string v3, "ComponentRecoManager"

    const-string v4, "not decrypted data!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 204
    :cond_1
    const-string v3, "ComponentRecoManager"

    const-string v4, "decrypted data!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p1, v1}, Landroid/rms/iaware/IAwareDecrypt;->decryptInputStream(Landroid/content/Context;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .local v3, "dis":Ljava/io/InputStream;
    if-nez v3, :cond_2

    .line 207
    nop

    .line 223
    invoke-direct {p0, v0, v1}, Landroid/rms/iaware/ComponentRecoManager;->closeStream(Ljava/io/InputStreamReader;Ljava/io/InputStream;)V

    .line 207
    return v2

    .line 209
    :cond_2
    :try_start_2
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    .local v4, "gis":Ljava/util/zip/GZIPInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v5

    .line 212
    .end local v3    # "dis":Ljava/io/InputStream;
    .end local v4    # "gis":Ljava/util/zip/GZIPInputStream;
    :goto_0
    invoke-direct {p0, v0, p2}, Landroid/rms/iaware/ComponentRecoManager;->parseComponentData(Ljava/io/InputStreamReader;Landroid/util/ArrayMap;)I

    move-result v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    invoke-direct {p0, v0, v1}, Landroid/rms/iaware/ComponentRecoManager;->closeStream(Ljava/io/InputStreamReader;Ljava/io/InputStream;)V

    .line 212
    return v3

    .line 223
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 219
    :catch_0
    move-exception v3

    .line 220
    .local v3, "re":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v4, "ComponentRecoManager"

    const-string v5, "parse file runtime exception!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    nop

    .line 223
    invoke-direct {p0, v0, v1}, Landroid/rms/iaware/ComponentRecoManager;->closeStream(Ljava/io/InputStreamReader;Ljava/io/InputStream;)V

    .line 221
    return v2

    .line 216
    .end local v3    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 217
    .local v3, "ie":Ljava/io/IOException;
    :try_start_4
    const-string v4, "ComponentRecoManager"

    const-string v5, "parse file io error!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    nop

    .line 223
    invoke-direct {p0, v0, v1}, Landroid/rms/iaware/ComponentRecoManager;->closeStream(Ljava/io/InputStreamReader;Ljava/io/InputStream;)V

    .line 218
    return v2

    .line 213
    .end local v3    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 214
    .local v3, "fe":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "ComponentRecoManager"

    const-string v5, "file not found!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    nop

    .line 223
    invoke-direct {p0, v0, v1}, Landroid/rms/iaware/ComponentRecoManager;->closeStream(Ljava/io/InputStreamReader;Ljava/io/InputStream;)V

    .line 215
    return v2

    .line 223
    .end local v3    # "fe":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/rms/iaware/ComponentRecoManager;->closeStream(Ljava/io/InputStreamReader;Ljava/io/InputStream;)V

    throw v2
.end method

.method private generateFileNameWithMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;

    .line 408
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "tmp":[Ljava/lang/String;
    const-string v1, "ComponentRecoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle filename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 411
    const-string v1, "ComponentRecoManager"

    const-string v3, "can\'t get filename without suffix"

    invoke-static {v1, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-object v2

    .line 415
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 416
    .local v1, "realFileName":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 417
    .local v3, "fileNameSuffix":Ljava/lang/String;
    if-eqz v1, :cond_6

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 422
    :cond_1
    const-string v4, "ro.product.model"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "modelId":Ljava/lang/String;
    const-string v5, "ro.product.locale.region"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "regionId":Ljava/lang/String;
    const-string v6, "ro.huawei.build.version.incremental"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, "hwIncVersion":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ro.build.version.incremental"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v6

    .line 428
    .local v7, "incVersion":Ljava/lang/String;
    :goto_0
    const-string v8, "ro.build.version.release"

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 430
    .local v8, "releaseVer":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 435
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .local v9, "fileBuilder":Ljava/lang/StringBuilder;
    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    .line 438
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    .line 440
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    .line 444
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    const-string v12, "_"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, "tempFileId":Ljava/lang/String;
    invoke-direct {p0, v10}, Landroid/rms/iaware/ComponentRecoManager;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 448
    .local v11, "targetFileId":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x5b

    if-le v12, v13, :cond_4

    .line 449
    const-string v12, "ComponentRecoManager"

    const-string v13, "File id too long, no need set file id!"

    invoke-static {v12, v13}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-object v2

    .line 453
    :cond_4
    return-object v11

    .line 431
    .end local v9    # "fileBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "tempFileId":Ljava/lang/String;
    .end local v11    # "targetFileId":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v9, "ComponentRecoManager"

    const-string v10, "Illegal system info, no need set file id!"

    invoke-static {v9, v10}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-object v2

    .line 418
    .end local v4    # "modelId":Ljava/lang/String;
    .end local v5    # "regionId":Ljava/lang/String;
    .end local v6    # "hwIncVersion":Ljava/lang/String;
    .end local v7    # "incVersion":Ljava/lang/String;
    .end local v8    # "releaseVer":Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v4, "ComponentRecoManager"

    const-string v5, "can\'t get filename without suffix and suffix name"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-object v2
.end method

.method private getFirstLine(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 5
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    .local v0, "s":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 330
    .local v1, "count":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 331
    int-to-char v2, v3

    .line 332
    .local v2, "c":C
    add-int/lit8 v1, v1, 0x1

    .line 333
    const/16 v4, 0x800

    if-lt v1, v4, :cond_1

    .line 334
    const/4 v4, 0x0

    return-object v4

    .line 336
    :cond_1
    const/16 v4, 0xd

    if-eq v2, v4, :cond_3

    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 337
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 344
    .end local v2    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized getInstance()Landroid/rms/iaware/ComponentRecoManager;
    .locals 2

    const-class v0, Landroid/rms/iaware/ComponentRecoManager;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Landroid/rms/iaware/ComponentRecoManager;->mComponentRecoManager:Landroid/rms/iaware/ComponentRecoManager;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Landroid/rms/iaware/ComponentRecoManager;

    invoke-direct {v1}, Landroid/rms/iaware/ComponentRecoManager;-><init>()V

    sput-object v1, Landroid/rms/iaware/ComponentRecoManager;->mComponentRecoManager:Landroid/rms/iaware/ComponentRecoManager;

    .line 108
    :cond_0
    sget-object v1, Landroid/rms/iaware/ComponentRecoManager;->mComponentRecoManager:Landroid/rms/iaware/ComponentRecoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private insertData(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 317
    .local p2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "compName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "compName":Ljava/lang/String;
    const-string v2, "compType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 320
    .local v2, "compType":I
    const-string v3, "goodFunc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 321
    .local v3, "goodFunc":I
    const-string v4, "badFunc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 322
    .local v4, "badFunc":I
    new-instance v5, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;

    invoke-direct {v5, v2, v3, v4}, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;-><init>(III)V

    invoke-virtual {p2, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-void
.end method

.method private isNormalPreset(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "buff":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 351
    .local v1, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 352
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 353
    .local v2, "reader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 354
    invoke-direct {p0, v0}, Landroid/rms/iaware/ComponentRecoManager;->getFirstLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 356
    const-string v4, "{\"version\":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    nop

    .line 363
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    goto :goto_0

    .line 364
    :catch_0
    move-exception v5

    .line 365
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "ComponentRecoManager"

    const-string v7, "isNormalPreset BufferedReader IOException!"

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 370
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 373
    goto :goto_1

    .line 371
    :catch_1
    move-exception v5

    .line 372
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v6, "ComponentRecoManager"

    const-string v7, "isNormalPreset fis IOException!"

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return v4

    .line 361
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    nop

    .line 363
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 366
    goto :goto_2

    .line 364
    :catch_2
    move-exception v2

    .line 365
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ComponentRecoManager"

    const-string v4, "isNormalPreset BufferedReader IOException!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 370
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 373
    :goto_3
    goto :goto_5

    .line 371
    :catch_3
    move-exception v2

    .line 372
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "ComponentRecoManager"

    const-string v4, "isNormalPreset fis IOException!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 361
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 358
    :catch_4
    move-exception v2

    .line 359
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v3, "ComponentRecoManager"

    const-string v4, "isNormalPreset IOException!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 361
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 363
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 366
    goto :goto_4

    .line 364
    :catch_5
    move-exception v2

    .line 365
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "ComponentRecoManager"

    const-string v4, "isNormalPreset BufferedReader IOException!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    if-eqz v1, :cond_2

    .line 370
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 376
    :cond_2
    :goto_5
    const/4 v2, 0x0

    return v2

    .line 361
    :goto_6
    if-eqz v0, :cond_3

    .line 363
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 366
    goto :goto_7

    .line 364
    :catch_6
    move-exception v3

    .line 365
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "ComponentRecoManager"

    const-string v5, "isNormalPreset BufferedReader IOException!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_7
    if-eqz v1, :cond_4

    .line 370
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 373
    goto :goto_8

    .line 371
    :catch_7
    move-exception v3

    .line 372
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "ComponentRecoManager"

    const-string v5, "isNormalPreset fis IOException!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_8
    throw v2
.end method

.method private static isValidFatFilenameChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 492
    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    .line 493
    return v0

    .line 495
    :cond_0
    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x5c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 508
    const/4 v0, 0x1

    return v0

    .line 506
    :cond_1
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private loadComponentInfo(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string v0, "ComponentRecoManager"

    const-string v1, "wrong parameter!"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/iaware/ComponentRecoManager;->mWorkingVersion:I

    .line 153
    const-string v0, "component.data"

    invoke-direct {p0, v0}, Landroid/rms/iaware/ComponentRecoManager;->loadPresetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 154
    .local v0, "custFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 155
    .local v1, "custVersion":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 156
    .local v2, "custMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-direct {p0, p1, v2, v0}, Landroid/rms/iaware/ComponentRecoManager;->decryptAndReadFile(Landroid/content/Context;Landroid/util/ArrayMap;Ljava/io/File;)I

    move-result v1

    .line 160
    :cond_1
    const-string v3, "component.data"

    invoke-direct {p0, v3}, Landroid/rms/iaware/ComponentRecoManager;->generateFileNameWithMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/iaware/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "cloudFile":Ljava/io/File;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 163
    .local v5, "cloudMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;>;"
    const/4 v6, 0x0

    .line 164
    .local v6, "cloudVersion":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    invoke-direct {p0, p1, v5, v4}, Landroid/rms/iaware/ComponentRecoManager;->decryptAndReadFile(Landroid/content/Context;Landroid/util/ArrayMap;Ljava/io/File;)I

    move-result v6

    .line 168
    :cond_2
    if-le v6, v1, :cond_3

    .line 169
    iget-object v7, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 170
    :try_start_0
    iget-object v8, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 171
    iget-object v8, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 172
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 174
    :cond_3
    iget-object v7, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 175
    :try_start_1
    iget-object v8, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 176
    iget-object v8, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 177
    monitor-exit v7

    .line 179
    :goto_0
    return-void

    .line 177
    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8
.end method

.method private loadPresetFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iaware/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 183
    .local v0, "cfg":Ljava/io/File;
    if-nez v0, :cond_0

    .line 184
    const-string v1, "ComponentRecoManager"

    const-string v2, "not find component data file"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    return-object v1

    .line 187
    :cond_0
    const-string v1, "ComponentRecoManager"

    const-string v2, "find component data file ok."

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object v0
.end method

.method private parseComponentData(Ljava/io/InputStreamReader;Landroid/util/ArrayMap;)I
    .locals 8
    .param p1, "reader"    # Ljava/io/InputStreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStreamReader;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;",
            ">;)I"
        }
    .end annotation

    .line 246
    .local p2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;>;"
    const/4 v0, 0x0

    .line 248
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 251
    invoke-direct {p0, v0}, Landroid/rms/iaware/ComponentRecoManager;->getFirstLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 256
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    .local v3, "entry":Lorg/json/JSONObject;
    const-string v4, "version"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 258
    .local v4, "dataVersion":I
    iget v5, p0, Landroid/rms/iaware/ComponentRecoManager;->mWorkingVersion:I

    if-lt v5, v4, :cond_1

    .line 259
    const-string v5, "ComponentRecoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "component data version is the latest! version is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/rms/iaware/ComponentRecoManager;->mWorkingVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    nop

    .line 273
    nop

    .line 275
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v5

    .line 277
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "ComponentRecoManager"

    const-string v7, "parsePresetData close buffered reader failed!"

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 262
    :cond_1
    :try_start_2
    invoke-direct {p0, v0, p2}, Landroid/rms/iaware/ComponentRecoManager;->parseReader(Ljava/io/BufferedReader;Landroid/util/ArrayMap;)V

    .line 263
    const-string v5, "ComponentRecoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "working version is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/rms/iaware/ComponentRecoManager;->mWorkingVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";new dataVersion is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput v4, p0, Landroid/rms/iaware/ComponentRecoManager;->mWorkingVersion:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    nop

    .line 273
    nop

    .line 275
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 278
    goto :goto_1

    .line 276
    :catch_1
    move-exception v1

    .line 277
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "ComponentRecoManager"

    const-string v6, "parsePresetData close buffered reader failed!"

    invoke-static {v5, v6}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v4

    .line 253
    .end local v3    # "entry":Lorg/json/JSONObject;
    .end local v4    # "dataVersion":I
    :cond_2
    :goto_2
    :try_start_4
    const-string v3, "ComponentRecoManager"

    const-string v4, "component data first line is null!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    nop

    .line 273
    nop

    .line 275
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 278
    goto :goto_3

    .line 276
    :catch_2
    move-exception v3

    .line 277
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "ComponentRecoManager"

    const-string v5, "parsePresetData close buffered reader failed!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    return v1

    .line 273
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 269
    :catch_3
    move-exception v2

    .line 270
    .local v2, "jse":Lorg/json/JSONException;
    :try_start_6
    const-string v3, "ComponentRecoManager"

    const-string v4, "json format error"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 271
    nop

    .line 273
    if-eqz v0, :cond_3

    .line 275
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 278
    goto :goto_4

    .line 276
    :catch_4
    move-exception v3

    .line 277
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "ComponentRecoManager"

    const-string v5, "parsePresetData close buffered reader failed!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    return v1

    .line 266
    .end local v2    # "jse":Lorg/json/JSONException;
    :catch_5
    move-exception v2

    .line 267
    .local v2, "ie":Ljava/io/IOException;
    :try_start_8
    const-string v3, "ComponentRecoManager"

    const-string v4, "read file exception."

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 268
    nop

    .line 273
    if-eqz v0, :cond_4

    .line 275
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 278
    goto :goto_5

    .line 276
    :catch_6
    move-exception v3

    .line 277
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "ComponentRecoManager"

    const-string v5, "parsePresetData close buffered reader failed!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    return v1

    .line 273
    .end local v2    # "ie":Ljava/io/IOException;
    :goto_6
    if-eqz v0, :cond_5

    .line 275
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 278
    goto :goto_7

    .line 276
    :catch_7
    move-exception v2

    .line 277
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ComponentRecoManager"

    const-string v4, "parsePresetData close buffered reader failed!"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    throw v1
.end method

.method private parseReader(Ljava/io/BufferedReader;Landroid/util/ArrayMap;)V
    .locals 8
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 284
    .local p2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;>;"
    const/4 v0, 0x0

    .line 286
    .local v0, "count":I
    const/4 v1, 0x0

    .line 288
    .local v1, "lineCount":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 289
    .local v2, "s":Ljava/lang/StringBuffer;
    const/16 v3, 0x800

    .line 290
    .local v3, "singleLineMaxCount":I
    const/16 v4, 0x4e20

    .line 291
    .local v4, "total":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->read()I

    move-result v5

    move v6, v5

    .local v6, "result":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_5

    .line 292
    int-to-char v5, v6

    .line 293
    .local v5, "c":C
    add-int/lit8 v0, v0, 0x1

    .line 294
    if-lt v0, v3, :cond_1

    .line 295
    return-void

    .line 297
    :cond_1
    const/16 v7, 0xd

    if-eq v5, v7, :cond_3

    const/16 v7, 0xa

    if-ne v5, v7, :cond_2

    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 298
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 301
    if-lt v1, v4, :cond_4

    .line 302
    return-void

    .line 304
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Landroid/rms/iaware/ComponentRecoManager;->insertData(Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 305
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 311
    .end local v5    # "c":C
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Landroid/rms/iaware/ComponentRecoManager;->insertData(Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 314
    :cond_6
    return-void
.end method

.method private static trimFilename(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "res"    # Ljava/lang/StringBuilder;
    .param p1, "maxBytes"    # I

    .line 480
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 481
    .local v0, "raw":[B
    array-length v1, v0

    if-le v1, p1, :cond_1

    .line 482
    add-int/lit8 p1, p1, -0x3

    .line 483
    :goto_0
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 484
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string v2, "..."

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_1
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .line 126
    iget-object v0, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    monitor-enter p0

    .line 130
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/rms/iaware/ComponentRecoManager;->mIsReady:Z

    .line 131
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    const-string v0, "ComponentRecoManager"

    const-string v1, "deinit."

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 128
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public dumpBadComponent(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 391
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 392
    .local v0, "badComponentSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v2, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 394
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;

    invoke-virtual {v4}, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;->getBadFunc()I

    move-result v4

    .line 395
    .local v4, "badFunc":I
    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 396
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;>;"
    .end local v4    # "badFunc":I
    :cond_0
    goto :goto_0

    .line 399
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "component recg bad component:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    return-void

    .line 399
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getComponentBadFunc(Ljava/lang/String;)I
    .locals 3
    .param p1, "compName"    # Ljava/lang/String;

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "info":Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;
    iget-object v1, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v2, p0, Landroid/rms/iaware/ComponentRecoManager;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;

    move-object v0, v2

    .line 383
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    if-nez v0, :cond_0

    .line 385
    const/4 v1, 0x0

    return v1

    .line 387
    :cond_0
    invoke-virtual {v0}, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;->getBadFunc()I

    move-result v1

    return v1

    .line 383
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public handleCloudUpdate(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .line 136
    invoke-direct {p0, p1}, Landroid/rms/iaware/ComponentRecoManager;->loadComponentInfo(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    monitor-enter p0

    .line 115
    :try_start_0
    const-string v0, "ComponentRecoManager"

    const-string v1, "init begin."

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/rms/iaware/ComponentRecoManager;->mIsReady:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Landroid/rms/iaware/ComponentRecoManager;->loadComponentInfo(Landroid/content/Context;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/rms/iaware/ComponentRecoManager;->mIsReady:Z

    .line 122
    const-string v0, "ComponentRecoManager"

    const-string v1, "init end."

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ComponentRecoManager"

    const-string v1, "no need to init"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 114
    .end local p1    # "ctx":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/rms/iaware/ComponentRecoManager;
    throw p1
.end method
