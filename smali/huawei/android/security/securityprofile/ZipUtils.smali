.class abstract Lhuawei/android/security/securityprofile/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final UINT16_MAX_VALUE:I = 0xffff

.field private static final ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER:I = 0x504b0607

.field private static final ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field private static final ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 250
    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p0, "zipContents"    # Ljava/nio/ByteBuffer;

    .line 146
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 158
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 159
    .local v0, "archiveSize":I
    const/4 v1, -0x1

    const/16 v2, 0x16

    if-ge v0, v2, :cond_0

    .line 160
    return v1

    .line 162
    :cond_0
    add-int/lit8 v2, v0, -0x16

    .line 163
    .local v2, "maxCommentLength":I
    const v3, 0xffff

    if-le v2, v3, :cond_1

    .line 164
    const v2, 0xffff

    .line 166
    :cond_1
    add-int/lit8 v3, v0, -0x16

    .line 167
    .local v3, "eocdWithEmptyCommentStartPosition":I
    const/4 v4, 0x0

    .local v4, "expectedCommentLength":I
    :goto_0
    if-gt v4, v2, :cond_3

    .line 169
    sub-int v5, v3, v4

    .line 170
    .local v5, "eocdStartPos":I
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x6054b50

    if-ne v6, v7, :cond_2

    .line 171
    add-int/lit8 v6, v5, 0x14

    .line 172
    invoke-static {p0, v6}, Lhuawei/android/security/securityprofile/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 174
    .local v6, "actualCommentLength":I
    if-ne v6, v4, :cond_2

    .line 175
    return v5

    .line 168
    .end local v5    # "eocdStartPos":I
    .end local v6    # "actualCommentLength":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "expectedCommentLength":I
    :cond_3
    return v1
.end method

.method static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 4
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 66
    .local v0, "fileSize":J
    const-wide/16 v2, 0x16

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 67
    const/4 v2, 0x0

    return-object v2

    .line 73
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lhuawei/android/security/securityprofile/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    .line 74
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_1

    .line 75
    return-object v2

    .line 81
    :cond_1
    const v3, 0xffff

    invoke-static {p0, v3}, Lhuawei/android/security/securityprofile/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;
    .locals 10
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "maxCommentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    if-ltz p1, :cond_3

    const v0, 0xffff

    if-gt p1, v0, :cond_3

    .line 112
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 113
    .local v0, "fileSize":J
    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 115
    return-object v5

    .line 118
    :cond_0
    int-to-long v6, p1

    sub-long v8, v0, v2

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    .line 119
    sub-long v2, v0, v2

    long-to-int p1, v2

    .line 122
    :cond_1
    const/16 v2, 0x16

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 123
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, v0, v3

    .line 125
    .local v3, "bufOffsetInFile":J
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 126
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 127
    invoke-static {v2}, Lhuawei/android/security/securityprofile/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 128
    .local v6, "eocdOffsetInBuf":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 130
    return-object v5

    .line 133
    :cond_2
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 135
    .local v5, "eocd":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 136
    int-to-long v7, v6

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    .line 109
    .end local v0    # "fileSize":J
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "bufOffsetInFile":J
    .end local v5    # "eocd":Ljava/nio/ByteBuffer;
    .end local v6    # "eocdOffsetInBuf":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCommentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 253
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 257
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    .line 214
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 215
    nop

    .line 217
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 215
    invoke-static {p0, v0}, Lhuawei/android/security/securityprofile/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    .line 240
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 241
    nop

    .line 243
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    .line 241
    invoke-static {p0, v0}, Lhuawei/android/security/securityprofile/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z
    .locals 5
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "zipEndOfCentralDirectoryPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const-wide/16 v0, 0x14

    sub-long v0, p1, v0

    .line 198
    .local v0, "locatorPosition":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 199
    return v3

    .line 202
    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 205
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const v4, 0x504b0607

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    return v3
.end method

.method private static setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 261
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 265
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uint32 value of out range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .locals 1
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J

    .line 227
    invoke-static {p0}, Lhuawei/android/security/securityprofile/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 228
    nop

    .line 230
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 228
    invoke-static {p0, v0, p1, p2}, Lhuawei/android/security/securityprofile/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    .line 232
    return-void
.end method
