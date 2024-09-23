.class public Lhuawei/android/security/securityprofile/PolicyExtractor;
.super Ljava/lang/Object;
.source "PolicyExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;,
        Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;
    }
.end annotation


# static fields
.field private static final APK_SECURITY_POLICY_BLOCK_ID:I = 0x48415649

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final HUAWEI_BLOCK_MAGIC_HI:J = 0x7963696c6f506365L

.field private static final HUAWEI_BLOCK_MAGIC_LO:J = 0x5320696577617548L

.field private static final TAG:Ljava/lang/String; = "PolicyExtractor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 329
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 332
    return-void

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
        }
    .end annotation

    .line 288
    invoke-static {p0}, Lhuawei/android/security/securityprofile/PolicyExtractor;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 295
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Lhuawei/android/security/securityprofile/PolicyExtractor;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 297
    .local v0, "pairs":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 298
    .local v2, "entryCount":I
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 299
    add-int/lit8 v2, v2, 0x1

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v1, :cond_3

    .line 304
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 305
    .local v3, "lenLong":J
    const-wide/16 v5, 0x4

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    .line 310
    long-to-int v5, v3

    .line 311
    .local v5, "len":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    .line 312
    .local v6, "nextEntryPos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-gt v5, v7, :cond_1

    .line 317
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 318
    .local v7, "id":I
    if-ne v7, p1, :cond_0

    .line 319
    add-int/lit8 v1, v5, -0x4

    invoke-static {v0, v1}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 321
    :cond_0
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    .end local v3    # "lenLong":J
    .end local v5    # "len":I
    .end local v6    # "nextEntryPos":I
    .end local v7    # "id":I
    goto :goto_0

    .line 313
    .restart local v3    # "lenLong":J
    .restart local v5    # "len":I
    .restart local v6    # "nextEntryPos":I
    :cond_1
    new-instance v1, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

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

    .line 315
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v5    # "len":I
    .end local v6    # "nextEntryPos":I
    :cond_2
    new-instance v1, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

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

    invoke-direct {v1, v5}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    .end local v3    # "lenLong":J
    :cond_3
    new-instance v1, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_4
    new-instance v1, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    const-string v3, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v1, v3}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findApkSigningBlock(Ljava/io/RandomAccessFile;JJJ)Landroid/util/Pair;
    .locals 15
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .param p3, "hi"    # J
    .param p5, "lo"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "JJJ)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v1, p1

    .line 243
    const-wide/16 v3, 0x20

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4

    .line 251
    const/16 v3, 0x18

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 252
    .local v3, "footer":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, v1, v4

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 254
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 255
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, p5

    if-nez v4, :cond_3

    const/16 v4, 0x10

    .line 256
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-nez v4, :cond_3

    .line 261
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v7

    .line 262
    .local v7, "apkSigBlockSizeInFooter":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_2

    const-wide/32 v9, 0x7ffffff7

    cmp-long v5, v7, v9

    if-gtz v5, :cond_2

    .line 267
    const-wide/16 v9, 0x8

    add-long/2addr v9, v7

    long-to-int v5, v9

    .line 268
    .local v5, "totalSize":I
    int-to-long v9, v5

    sub-long v9, v1, v9

    .line 269
    .local v9, "apkSigBlockOffset":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-ltz v11, :cond_1

    .line 273
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 274
    .local v11, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 276
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    move-object v13, v3

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .end local v3    # "footer":Ljava/nio/ByteBuffer;
    .local v13, "footer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v12, v4, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 277
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    .line 278
    .local v3, "apkSigBlockSizeInHeader":J
    cmp-long v12, v3, v7

    if-nez v12, :cond_0

    .line 283
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    .line 279
    :cond_0
    new-instance v12, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v14, v5

    const-string v5, "APK Signing Block sizes in header and footer do not match: "

    .end local v5    # "totalSize":I
    .local v14, "totalSize":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 270
    .end local v11    # "apkSigBlock":Ljava/nio/ByteBuffer;
    .end local v13    # "footer":Ljava/nio/ByteBuffer;
    .end local v14    # "totalSize":I
    .local v3, "footer":Ljava/nio/ByteBuffer;
    .restart local v5    # "totalSize":I
    :cond_1
    move-object v13, v3

    move v14, v5

    .end local v3    # "footer":Ljava/nio/ByteBuffer;
    .end local v5    # "totalSize":I
    .restart local v13    # "footer":Ljava/nio/ByteBuffer;
    .restart local v14    # "totalSize":I
    new-instance v0, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK Signing Block offset out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    .end local v9    # "apkSigBlockOffset":J
    .end local v13    # "footer":Ljava/nio/ByteBuffer;
    .end local v14    # "totalSize":I
    .restart local v3    # "footer":Ljava/nio/ByteBuffer;
    :cond_2
    move-object v13, v3

    .end local v3    # "footer":Ljava/nio/ByteBuffer;
    .restart local v13    # "footer":Ljava/nio/ByteBuffer;
    new-instance v0, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK Signing Block size out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    .end local v7    # "apkSigBlockSizeInFooter":J
    .end local v13    # "footer":Ljava/nio/ByteBuffer;
    .restart local v3    # "footer":Ljava/nio/ByteBuffer;
    :cond_3
    move-object v13, v3

    .end local v3    # "footer":Ljava/nio/ByteBuffer;
    .restart local v13    # "footer":Ljava/nio/ByteBuffer;
    new-instance v0, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    const-string v3, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v0, v3}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    .end local v13    # "footer":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance v0, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getApkInfo(Ljava/lang/String;)Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;
    .locals 13
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;-><init>(Lhuawei/android/security/securityprofile/PolicyExtractor$1;)V

    .line 90
    .local v0, "info":Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 91
    .local v2, "apk":Ljava/io/RandomAccessFile;
    nop

    .line 92
    :try_start_1
    invoke-static {v2}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v3

    .line 93
    .local v3, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iput-object v4, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->eocdBuffer:Ljava/nio/ByteBuffer;

    .line 94
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->eocdOffset:J

    .line 96
    iget-wide v4, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->eocdOffset:J

    invoke-static {v2, v4, v5}, Lhuawei/android/security/securityprofile/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    iget-object v4, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->eocdBuffer:Ljava/nio/ByteBuffer;

    iget-wide v5, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->eocdOffset:J

    invoke-static {v4, v5, v6}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    iput-wide v4, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->centralDirOffset:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    move-object v11, v1

    .line 103
    .local v11, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    :try_start_2
    iget-wide v5, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->centralDirOffset:J

    const-wide v7, 0x3234206b636f6c42L    # 7.465385175170059E-67

    const-wide v9, 0x20676953204b5041L

    .line 104
    move-object v4, v2

    invoke-static/range {v4 .. v10}, Lhuawei/android/security/securityprofile/PolicyExtractor;->findApkSigningBlock(Ljava/io/RandomAccessFile;JJJ)Landroid/util/Pair;

    move-result-object v4
    :try_end_2
    .catch Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v11    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .local v4, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    goto :goto_0

    .line 105
    .end local v4    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .restart local v11    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 106
    .local v12, "e":Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
    :try_start_3
    iget-wide v5, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->centralDirOffset:J

    const-wide v7, 0x7963696c6f506365L    # 5.376653919817192E276

    const-wide v9, 0x5320696577617548L    # 2.674498600501825E92

    .line 107
    move-object v4, v2

    invoke-static/range {v4 .. v10}, Lhuawei/android/security/securityprofile/PolicyExtractor;->findApkSigningBlock(Ljava/io/RandomAccessFile;JJJ)Landroid/util/Pair;

    move-result-object v4

    .line 109
    .end local v11    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v12    # "e":Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
    .restart local v4    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    :goto_0
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    iput-object v5, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->signingBlockBuffer:Ljava/nio/ByteBuffer;

    .line 110
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->signingBlockOffset:J

    .line 111
    iget-object v5, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->signingBlockBuffer:Ljava/nio/ByteBuffer;

    const v6, 0x48415649

    invoke-static {v5, v6}, Lhuawei/android/security/securityprofile/PolicyExtractor;->findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 112
    .local v5, "policyBlockBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    iput-object v6, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->policyBlock:[B

    .line 113
    iget-object v6, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->policyBlock:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-static {v2}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    iput-object v6, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->originalEocdBuffer:Ljava/nio/ByteBuffer;

    .line 115
    iget-object v6, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->originalEocdBuffer:Ljava/nio/ByteBuffer;

    iget-wide v7, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->signingBlockOffset:J

    invoke-static {v6, v7, v8}, Lhuawei/android/security/securityprofile/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    .line 116
    iget-object v6, v0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->originalEocdBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    nop

    .line 118
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 117
    return-object v0

    .line 97
    .end local v4    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v5    # "policyBlockBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_5
    new-instance v4, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    const-string v5, "ZIP64 APK not supported"

    invoke-direct {v4, v5}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    .end local v3    # "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 90
    :catch_1
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 118
    :goto_1
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_8
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :goto_2
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .end local v2    # "apk":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    throw v1
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

    .line 204
    if-ltz p1, :cond_1

    .line 207
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 208
    .local v0, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 209
    .local v1, "position":I
    add-int v2, v1, p1

    .line 210
    .local v2, "limit":I
    if-lt v2, v1, :cond_0

    if-gt v2, v0, :cond_0

    .line 213
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 216
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    nop

    .line 220
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 218
    return-object v3

    .line 220
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v3

    .line 211
    :cond_0
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 205
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
            Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
        }
    .end annotation

    .line 145
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 146
    .local v0, "centralDirOffset":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_1

    .line 151
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 152
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 157
    return-wide v0

    .line 153
    :cond_0
    new-instance v4, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    const-string v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    .end local v2    # "centralDirSize":J
    :cond_1
    new-instance v2, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

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

    invoke-direct {v2, v3}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDigest(Ljava/lang/String;[B)Lhuawei/android/security/securityprofile/ApkDigest;
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "policyBlock"    # [B

    .line 50
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 55
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 56
    .local v1, "policyBlockString":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 58
    return-object v0

    .line 60
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 61
    .local v3, "policyString":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, "policy":Lorg/json/JSONObject;
    const-string v5, "domains"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 63
    .local v5, "domainPolicy":Lorg/json/JSONObject;
    const-string v6, "apk_digest"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 64
    .local v6, "apkDigest":Lorg/json/JSONObject;
    const-string v7, "signature_scheme"

    const-string v8, "v2"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "apkSignatureScheme":Ljava/lang/String;
    const-string v8, "digest_algorithm"

    const-string v9, "SHA-256"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "digestAlgorithm":Ljava/lang/String;
    const-string v9, "digest"

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "base64Digest":Ljava/lang/String;
    new-instance v10, Lhuawei/android/security/securityprofile/ApkDigest;

    invoke-direct {v10, v7, v8, v9}, Lhuawei/android/security/securityprofile/ApkDigest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 71
    .end local v1    # "policyBlockString":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "policyString":Ljava/lang/String;
    .end local v4    # "policy":Lorg/json/JSONObject;
    .end local v5    # "domainPolicy":Lorg/json/JSONObject;
    .end local v6    # "apkDigest":Lorg/json/JSONObject;
    .end local v7    # "apkSignatureScheme":Ljava/lang/String;
    .end local v8    # "digestAlgorithm":Ljava/lang/String;
    .end local v9    # "base64Digest":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PolicyExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getDigest err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "PolicyExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getDigest err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v0

    .line 51
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_0
    const-string v1, "PolicyExtractor"

    const-string v2, "getDigest err,package name or policyBlock is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-object v0
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
            Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
        }
    .end annotation

    .line 133
    nop

    .line 134
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    .line 135
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 139
    return-object v0

    .line 136
    :cond_0
    new-instance v1, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;

    const-string v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getPolicy(Ljava/lang/String;)[B
    .locals 7
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
        }
    .end annotation

    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string v0, "PolicyExtractor"

    const-string v1, "getPolicy err,apkFile is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 83
    .local v0, "t":J
    invoke-static {p0}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getApkInfo(Ljava/lang/String;)Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;

    move-result-object v2

    .line 84
    .local v2, "info":Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;
    const-string v3, "PolicyExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPolicy took"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, v2, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->policyBlock:[B

    return-object v3
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 167
    if-ltz p1, :cond_2

    .line 170
    if-lt p2, p1, :cond_1

    .line 173
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 174
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 178
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 180
    .local v2, "originalPosition":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 182
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 184
    .local v4, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    nop

    .line 187
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    return-object v4

    .line 187
    .end local v4    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4

    .line 175
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

    .line 171
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

    .line 168
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
