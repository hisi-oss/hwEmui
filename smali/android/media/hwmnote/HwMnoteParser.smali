.class Landroid/media/hwmnote/HwMnoteParser;
.super Ljava/lang/Object;
.source "HwMnoteParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;,
        Landroid/media/hwmnote/HwMnoteParser$IfdEvent;
    }
.end annotation


# static fields
.field private static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field private static final DEBUG:Z = false

.field private static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_END:I = 0x3

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field private static final HW_MNOTE_HEADER:[B

.field private static final HW_MNOTE_TAG_FACE_IFD:S

.field private static final HW_MNOTE_TAG_SCENE_IFD:S

.field private static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final OFFSET_4:I = 0x4

.field private static final OFFSET_8:I = 0x8

.field private static final OFFSET_SIZE:I = 0x2

.field private static final OPTION_HW_MNOTE_IFD_0:I = 0x1

.field private static final OPTION_HW_MNOTE_IFD_FACE:I = 0x8

.field private static final OPTION_HW_MNOTE_IFD_SCENE:I = 0x2

.field private static final SHIFT_0:I = 0x0

.field private static final SHIFT_1:I = 0x1

.field private static final SHIFT_2:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HwMnoteParser"

.field private static final TAG_SIZE:I = 0xc

.field private static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final UNSIGNED_DWORD:J = 0xffffffffL

.field private static final UNSIGNED_WORD:I = 0xffff

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mContainHwMnoteData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private final mInterface:Landroid/media/hwmnote/HwMnoteInterfaceImpl;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private final mOptions:I

.field private mTag:Landroid/media/hwmnote/HwMnoteTag;

.field private final mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/hwmnote/HwMnoteParser;->HW_MNOTE_HEADER:[B

    .line 87
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/hwmnote/HwMnoteParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 97
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_IFD:I

    invoke-static {v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/hwmnote/HwMnoteParser;->HW_MNOTE_TAG_SCENE_IFD:S

    .line 100
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_IFD:I

    invoke-static {v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/hwmnote/HwMnoteParser;->HW_MNOTE_TAG_FACE_IFD:S

    return-void

    :array_0
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x57t
        0x45t
        0x49t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/io/InputStream;ILandroid/media/hwmnote/HwMnoteInterfaceImpl;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # I
    .param p3, "iRef"    # Landroid/media/hwmnote/HwMnoteInterfaceImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdStartOffset:I

    .line 109
    iput v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mNumOfTagInIfd:I

    .line 117
    iput-boolean v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mContainHwMnoteData:Z

    .line 123
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 127
    if-eqz p1, :cond_4

    .line 133
    iput-object p3, p0, Landroid/media/hwmnote/HwMnoteParser;->mInterface:Landroid/media/hwmnote/HwMnoteInterfaceImpl;

    .line 134
    invoke-direct {p0, p1}, Landroid/media/hwmnote/HwMnoteParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mContainHwMnoteData:Z

    .line 135
    new-instance v1, Landroid/media/hwmnote/CountedDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/hwmnote/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    .line 136
    iput p2, p0, Landroid/media/hwmnote/HwMnoteParser;->mOptions:I

    .line 137
    iget-boolean v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mContainHwMnoteData:Z

    if-nez v1, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteParser;->parseTiffHeader()V

    .line 142
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/hwmnote/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    .line 143
    .local v1, "offset":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 146
    iput v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdType:I

    .line 147
    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Landroid/media/hwmnote/HwMnoteParser;->registerIfd(IJ)V

    .line 149
    const-wide/16 v3, 0x8

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 150
    long-to-int v0, v1

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mDataAboveIfd0:[B

    .line 151
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mDataAboveIfd0:[B

    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteParser;->readInternal([B)I

    .line 154
    :cond_2
    return-void

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    .end local v1    # "offset":J
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null argument inputStream to HwMnoteParser"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkAllowed(II)Z
    .locals 2
    .param p1, "ifd"    # I
    .param p2, "tagId"    # I

    .line 460
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mInterface:Landroid/media/hwmnote/HwMnoteInterfaceImpl;

    invoke-virtual {v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 461
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 462
    const/4 v1, 0x0

    return v1

    .line 464
    :cond_0
    invoke-static {v0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->isIfdAllowed(II)Z

    move-result v1

    return v1
.end method

.method private checkOffsetTag(Landroid/media/hwmnote/HwMnoteTag;)V
    .locals 5
    .param p1, "tag"    # Landroid/media/hwmnote/HwMnoteTag;

    .line 439
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 440
    return-void

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v0

    .line 443
    .local v0, "tid":S
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getIfd()I

    move-result v1

    .line 444
    .local v1, "ifd":I
    sget-short v2, Landroid/media/hwmnote/HwMnoteParser;->HW_MNOTE_TAG_SCENE_IFD:S

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    sget v2, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_IFD:I

    invoke-direct {p0, v1, v2}, Landroid/media/hwmnote/HwMnoteParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/media/hwmnote/HwMnoteParser;->isIfdRequested(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 446
    invoke-virtual {p1, v3}, Landroid/media/hwmnote/HwMnoteTag;->getValueAt(I)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/media/hwmnote/HwMnoteParser;->registerIfd(IJ)V

    goto :goto_0

    .line 448
    :cond_1
    sget-short v2, Landroid/media/hwmnote/HwMnoteParser;->HW_MNOTE_TAG_FACE_IFD:S

    if-ne v0, v2, :cond_2

    sget v2, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_IFD:I

    invoke-direct {p0, v1, v2}, Landroid/media/hwmnote/HwMnoteParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/hwmnote/HwMnoteParser;->isIfdRequested(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    invoke-virtual {p1, v3}, Landroid/media/hwmnote/HwMnoteTag;->getValueAt(I)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/media/hwmnote/HwMnoteParser;->registerIfd(IJ)V

    .line 457
    :cond_2
    :goto_0
    return-void
.end method

.method private doEndOfTags()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdType:I

    if-eqz v0, :cond_2

    .line 251
    const/4 v0, 0x4

    .line 253
    .local v0, "offsetSize":I
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 254
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v2}, Landroid/media/hwmnote/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 256
    :cond_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 257
    const-string v1, "HwMnoteParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of link to next IFD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteParser;->readUnsignedLong()J

    move-result-wide v1

    .line 260
    .local v1, "ifdOffset":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 261
    const-string v3, "HwMnoteParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid link to next IFD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "offsetSize":I
    .end local v1    # "ifdOffset":J
    :cond_2
    :goto_0
    return-void
.end method

.method private doIfdEvent(Ljava/util/Map$Entry;Landroid/media/hwmnote/HwMnoteParser$IfdEvent;)Ljava/lang/Integer;
    .locals 1
    .param p2, "event"    # Landroid/media/hwmnote/HwMnoteParser$IfdEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/media/hwmnote/HwMnoteParser$IfdEvent;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 269
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p2}, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->access$200(Landroid/media/hwmnote/HwMnoteParser$IfdEvent;)I

    move-result v0

    iput v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdType:I

    .line 270
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/hwmnote/CountedDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mNumOfTagInIfd:I

    .line 271
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdStartOffset:I

    .line 273
    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 274
    invoke-static {p2}, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->access$300(Landroid/media/hwmnote/HwMnoteParser$IfdEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteParser;->skipRemainingTagsInCurrentIfd()V

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method private doTagValueOverlaps(Landroid/media/hwmnote/HwMnoteTag;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Landroid/media/hwmnote/HwMnoteTag;
    .param p2, "event"    # Ljava/lang/Object;

    .line 511
    instance-of v0, p2, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "HwMnoteParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ifd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    check-cast v2, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;

    invoke-static {v2}, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->access$200(Landroid/media/hwmnote/HwMnoteParser$IfdEvent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " overlaps value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :cond_0
    instance-of v0, p2, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;

    if-eqz v0, :cond_1

    .line 514
    const-string v0, "HwMnoteParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    check-cast v2, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;

    invoke-static {v2}, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;->access$000(Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " overlaps value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_1
    const-string v0, "HwMnoteParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ifd overlaps value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_0
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/hwmnote/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 520
    .local v0, "size":I
    const-string v1, "HwMnoteParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " setting count to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p1, v0}, Landroid/media/hwmnote/HwMnoteTag;->forceSetComponentCount(I)V

    .line 522
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 3
    .param p1, "ifdType"    # I

    .line 157
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 167
    return v1

    .line 163
    :pswitch_0
    iget v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 161
    :pswitch_1
    iget v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 159
    :pswitch_2
    iget v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mOptions:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isValidHwMnote(S)Z
    .locals 1
    .param p1, "type"    # S

    .line 506
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 3

    .line 310
    iget v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 320
    return v1

    .line 318
    :pswitch_0
    return v1

    .line 315
    :pswitch_1
    return v1

    .line 312
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/hwmnote/HwMnoteParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    nop

    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;Landroid/media/hwmnote/HwMnoteInterfaceImpl;)Landroid/media/hwmnote/HwMnoteParser;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "iRef"    # Landroid/media/hwmnote/HwMnoteInterfaceImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/media/hwmnote/HwMnoteParser;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, p1}, Landroid/media/hwmnote/HwMnoteParser;-><init>(Ljava/io/InputStream;ILandroid/media/hwmnote/HwMnoteInterfaceImpl;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/hwmnote/CountedDataInputStream;->readShort()S

    move-result v0

    .line 526
    .local v0, "byteOrder":S
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 527
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/hwmnote/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 528
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_2

    .line 529
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/hwmnote/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 534
    :goto_0
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/hwmnote/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1

    .line 537
    return-void

    .line 535
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readInternal([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0, p1}, Landroid/media/hwmnote/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method private readTag()Landroid/media/hwmnote/HwMnoteTag;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/hwmnote/CountedDataInputStream;->readShort()S

    move-result v0

    .line 395
    .local v0, "tagId":S
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/hwmnote/CountedDataInputStream;->readShort()S

    move-result v7

    .line 396
    .local v7, "dataFormat":S
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/hwmnote/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 397
    .local v8, "numOfComp":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v8, v10

    if-gtz v1, :cond_6

    .line 401
    invoke-static {v7}, Landroid/media/hwmnote/HwMnoteTag;->isValidType(S)Z

    move-result v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v1, :cond_1

    .line 402
    const-string v1, "HwMnoteParser"

    const-string v2, "Tag %04x: Invalid data type %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/media/hwmnote/CountedDataInputStream;->skip(J)J

    move-result-wide v4

    .line 404
    .local v4, "skipLength":J
    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 405
    const-string v1, "HwMnoteParser"

    const-string v2, "Can\'t skip 4 bytes"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 409
    .end local v4    # "skipLength":J
    :cond_1
    new-instance v14, Landroid/media/hwmnote/HwMnoteTag;

    long-to-int v4, v8

    iget v5, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdType:I

    long-to-int v1, v8

    if-eqz v1, :cond_2

    move v6, v12

    goto :goto_0

    :cond_2
    move v6, v13

    :goto_0
    move-object v1, v14

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/hwmnote/HwMnoteTag;-><init>(SSIIZ)V

    .line 411
    .local v1, "tag":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v1}, Landroid/media/hwmnote/HwMnoteTag;->getDataSize()I

    move-result v2

    .line 412
    .local v2, "dataSize":I
    const/4 v3, 0x4

    if-le v2, v3, :cond_4

    .line 413
    iget-object v3, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v3}, Landroid/media/hwmnote/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 414
    .local v3, "offset":J
    cmp-long v5, v3, v10

    if-gtz v5, :cond_3

    .line 417
    long-to-int v5, v3

    invoke-virtual {v1, v5}, Landroid/media/hwmnote/HwMnoteTag;->setOffset(I)V

    .line 418
    .end local v3    # "offset":J
    goto :goto_1

    .line 415
    .restart local v3    # "offset":J
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 419
    .end local v3    # "offset":J
    :cond_4
    invoke-virtual {v1}, Landroid/media/hwmnote/HwMnoteTag;->hasDefinedCount()Z

    move-result v4

    .line 421
    .local v4, "defCount":Z
    invoke-virtual {v1, v13}, Landroid/media/hwmnote/HwMnoteTag;->setHasDefinedCount(Z)V

    .line 422
    invoke-virtual {p0, v1}, Landroid/media/hwmnote/HwMnoteParser;->readFullTagValue(Landroid/media/hwmnote/HwMnoteTag;)V

    .line 423
    invoke-virtual {v1, v4}, Landroid/media/hwmnote/HwMnoteTag;->setHasDefinedCount(Z)V

    .line 424
    iget-object v5, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    rsub-int/lit8 v6, v2, 0x4

    int-to-long v10, v6

    invoke-virtual {v5, v10, v11}, Landroid/media/hwmnote/CountedDataInputStream;->skip(J)J

    move-result-wide v5

    .line 425
    .local v5, "skipLength":J
    rsub-int/lit8 v10, v2, 0x4

    int-to-long v10, v10

    cmp-long v10, v5, v10

    if-eqz v10, :cond_5

    .line 426
    const-string v10, "HwMnoteParser"

    const-string v11, "Can\'t skip %d byte(s)"

    new-array v12, v12, [Ljava/lang/Object;

    rsub-int/lit8 v14, v2, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_5
    iget-object v10, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v10}, Landroid/media/hwmnote/CountedDataInputStream;->getReadByteCount()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v1, v10}, Landroid/media/hwmnote/HwMnoteTag;->setOffset(I)V

    .line 430
    .end local v4    # "defCount":Z
    .end local v5    # "skipLength":J
    :goto_1
    return-object v1

    .line 398
    .end local v1    # "tag":Landroid/media/hwmnote/HwMnoteTag;
    .end local v2    # "dataSize":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerIfd(IJ)V
    .locals 4
    .param p1, "ifdType"    # I
    .param p2, "offset"    # J

    .line 390
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;

    invoke-direct {p0, p1}, Landroid/media/hwmnote/HwMnoteParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    new-instance v0, Landroid/media/hwmnote/CountedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/hwmnote/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 542
    .local v0, "dataStream":Landroid/media/hwmnote/CountedDataInputStream;
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 544
    .local v2, "header":[B
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/hwmnote/CountedDataInputStream;->read([BII)I

    move-result v4

    .line 546
    .local v4, "len":I
    if-ge v4, v1, :cond_0

    .line 547
    return v3

    .line 550
    :cond_0
    sget-object v1, Landroid/media/hwmnote/HwMnoteParser;->HW_MNOTE_HEADER:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    const/4 v1, 0x1

    return v1

    .line 553
    :cond_1
    const-string v1, "HwMnoteParser"

    const-string v5, "Invalid Huawei Maker Note."

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return v3
.end method

.method private skipTo(I)V
    .locals 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/hwmnote/CountedDataInputStream;->skipTo(J)V

    .line 368
    :goto_0
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 369
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 672
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/hwmnote/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .line 363
    iget v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdType:I

    return v0
.end method

.method protected getTag()Landroid/media/hwmnote/HwMnoteTag;
    .locals 1

    .line 343
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    return-object v0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 1

    .line 351
    iget v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mNumOfTagInIfd:I

    return v0
.end method

.method protected next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    iget-boolean v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mContainHwMnoteData:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 200
    return v1

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/hwmnote/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 203
    .local v0, "offset":I
    iget v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    const/16 v4, 0xc

    iget v5, p0, Landroid/media/hwmnote/HwMnoteParser;->mNumOfTagInIfd:I

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 204
    .local v2, "endOfTags":I
    if-ge v0, v2, :cond_3

    .line 205
    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteParser;->readTag()Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    iput-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    .line 206
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    if-nez v1, :cond_1

    .line 207
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteParser;->next()I

    move-result v1

    return v1

    .line 209
    :cond_1
    iget-boolean v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    invoke-direct {p0, v1}, Landroid/media/hwmnote/HwMnoteParser;->checkOffsetTag(Landroid/media/hwmnote/HwMnoteTag;)V

    .line 212
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 213
    :cond_3
    if-ne v0, v2, :cond_4

    .line 215
    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteParser;->doEndOfTags()V

    goto :goto_0

    .line 217
    :cond_4
    const-string v4, "HwMnoteParser"

    const-string v5, "offset bigger than endOfTags"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    iget-object v4, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-eqz v4, :cond_9

    .line 220
    iget-object v4, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v4

    .line 221
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 223
    .local v5, "event":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/media/hwmnote/HwMnoteParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 229
    instance-of v6, v5, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;

    if-eqz v6, :cond_6

    .line 230
    move-object v6, v5

    check-cast v6, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;

    invoke-direct {p0, v4, v6}, Landroid/media/hwmnote/HwMnoteParser;->doIfdEvent(Ljava/util/Map$Entry;Landroid/media/hwmnote/HwMnoteParser$IfdEvent;)Ljava/lang/Integer;

    move-result-object v6

    .line 231
    .local v6, "x":Ljava/lang/Integer;
    if-eqz v6, :cond_5

    .line 232
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 234
    .end local v6    # "x":Ljava/lang/Integer;
    :cond_5
    goto :goto_1

    .line 235
    :cond_6
    move-object v6, v5

    check-cast v6, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;

    .line 236
    .local v6, "tagEvent":Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;
    invoke-static {v6}, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;->access$000(Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v7

    iput-object v7, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    .line 237
    iget-object v7, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    invoke-virtual {v7}, Landroid/media/hwmnote/HwMnoteTag;->getDataType()S

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_7

    .line 238
    iget-object v7, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    invoke-virtual {p0, v7}, Landroid/media/hwmnote/HwMnoteParser;->readFullTagValue(Landroid/media/hwmnote/HwMnoteTag;)V

    .line 239
    iget-object v7, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    invoke-direct {p0, v7}, Landroid/media/hwmnote/HwMnoteParser;->checkOffsetTag(Landroid/media/hwmnote/HwMnoteTag;)V

    .line 241
    :cond_7
    invoke-static {v6}, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;->access$100(Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 242
    return v3

    .line 245
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v5    # "event":Ljava/lang/Object;
    .end local v6    # "tagEvent":Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;
    :cond_8
    :goto_1
    goto :goto_0

    .line 224
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v5    # "event":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 225
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "HwMnoteParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to skip to data at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", the file may be broken."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    goto/16 :goto_0

    .line 246
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v5    # "event":Ljava/lang/Object;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_9
    return v1
.end method

.method protected read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0, p1}, Landroid/media/hwmnote/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Landroid/media/hwmnote/HwMnoteTag;)V
    .locals 7
    .param p1, "tag"    # Landroid/media/hwmnote/HwMnoteTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getDataType()S

    move-result v0

    .line 475
    .local v0, "type":S
    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteParser;->isValidHwMnote(S)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getComponentCount()I

    move-result v1

    .line 477
    .local v1, "size":I
    iget-object v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v3}, Landroid/media/hwmnote/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 478
    iget-object v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 480
    .local v2, "event":Ljava/lang/Object;
    invoke-direct {p0, p1, v2}, Landroid/media/hwmnote/HwMnoteParser;->doTagValueOverlaps(Landroid/media/hwmnote/HwMnoteTag;Ljava/lang/Object;)V

    .line 483
    .end local v1    # "size":I
    .end local v2    # "event":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getDataType()S

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 485
    :cond_1
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [B

    .line 486
    .local v1, "buf":[B
    invoke-direct {p0, v1}, Landroid/media/hwmnote/HwMnoteParser;->readInternal([B)I

    .line 487
    invoke-virtual {p1, v1}, Landroid/media/hwmnote/HwMnoteTag;->setValue([B)Z

    .line 488
    goto :goto_1

    .line 490
    .end local v1    # "buf":[B
    :cond_2
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getComponentCount()I

    move-result v1

    new-array v1, v1, [J

    .line 491
    .local v1, "value":[J
    array-length v2, v1

    .line 492
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    move v3, v2

    .local v3, "n":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 493
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteParser;->readUnsignedLong()J

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 492
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/media/hwmnote/HwMnoteTag;->setValue([J)Z

    .line 496
    nop

    .line 503
    .end local v1    # "value":[J
    .end local v2    # "length":I
    :goto_1
    return-void
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/hwmnote/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/hwmnote/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Landroid/media/hwmnote/HwMnoteTag;)V
    .locals 4
    .param p1, "tag"    # Landroid/media/hwmnote/HwMnoteTag;

    .line 382
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/hwmnote/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;-><init>(Landroid/media/hwmnote/HwMnoteTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 289
    iget v0, p0, Landroid/media/hwmnote/HwMnoteParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mNumOfTagInIfd:I

    const/16 v2, 0xc

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 290
    .local v0, "endOfTags":I
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteParser;->mTiffStream:Landroid/media/hwmnote/CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/hwmnote/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    .line 291
    .local v1, "offset":I
    if-le v1, v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    iget-boolean v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    .line 295
    :goto_0
    if-ge v1, v0, :cond_3

    .line 296
    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteParser;->readTag()Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v2

    iput-object v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    .line 297
    add-int/lit8 v1, v1, 0xc

    .line 298
    iget-object v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    if-nez v2, :cond_1

    .line 299
    goto :goto_0

    .line 301
    :cond_1
    iget-object v2, p0, Landroid/media/hwmnote/HwMnoteParser;->mTag:Landroid/media/hwmnote/HwMnoteTag;

    invoke-direct {p0, v2}, Landroid/media/hwmnote/HwMnoteParser;->checkOffsetTag(Landroid/media/hwmnote/HwMnoteTag;)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteParser;->skipTo(I)V

    .line 306
    :cond_3
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteParser;->readUnsignedLong()J

    .line 307
    return-void
.end method
