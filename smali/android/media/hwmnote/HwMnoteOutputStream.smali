.class Landroid/media/hwmnote/HwMnoteOutputStream;
.super Ljava/lang/Object;
.source "HwMnoteOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final HW_MNOTE_HEADER:[B

.field private static final MAX_HW_MNOTE_SIZE:I = 0xffff

.field private static final OFFSET_2:I = 0x2

.field private static final OFFSET_4:I = 0x4

.field private static final OFFSET_8:I = 0x8

.field private static final TAG:Ljava/lang/String; = "HwMnoteOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/hwmnote/HwMnoteOutputStream;->HW_MNOTE_HEADER:[B

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

.method protected constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private calculateAllOffset()I
    .locals 6

    .line 215
    const/16 v0, 0x8

    .line 216
    .local v0, "offset":I
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v1

    .line 217
    .local v1, "ifd0":Landroid/media/hwmnote/HwMnoteIfdData;
    invoke-direct {p0, v1, v0}, Landroid/media/hwmnote/HwMnoteOutputStream;->calculateOffsetOfIfd(Landroid/media/hwmnote/HwMnoteIfdData;I)I

    move-result v0

    .line 219
    iget-object v2, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v2

    .line 220
    .local v2, "sceneIfd":Landroid/media/hwmnote/HwMnoteIfdData;
    if-eqz v2, :cond_0

    .line 221
    sget v3, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_IFD:I

    invoke-static {v3}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v3

    .line 222
    .local v3, "sceneTagKey":S
    invoke-virtual {v1, v3}, Landroid/media/hwmnote/HwMnoteIfdData;->getTag(S)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue(I)Z

    .line 223
    invoke-direct {p0, v2, v0}, Landroid/media/hwmnote/HwMnoteOutputStream;->calculateOffsetOfIfd(Landroid/media/hwmnote/HwMnoteIfdData;I)I

    move-result v0

    .line 226
    .end local v3    # "sceneTagKey":S
    :cond_0
    iget-object v3, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v3

    .line 227
    .local v3, "faceIfd":Landroid/media/hwmnote/HwMnoteIfdData;
    if-eqz v3, :cond_1

    .line 228
    sget v4, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_IFD:I

    invoke-static {v4}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v4

    .line 229
    .local v4, "faceTagKey":S
    invoke-virtual {v1, v4}, Landroid/media/hwmnote/HwMnoteIfdData;->getTag(S)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue(I)Z

    .line 230
    invoke-direct {p0, v3, v0}, Landroid/media/hwmnote/HwMnoteOutputStream;->calculateOffsetOfIfd(Landroid/media/hwmnote/HwMnoteIfdData;I)I

    move-result v0

    .line 233
    .end local v4    # "faceTagKey":S
    :cond_1
    return v0
.end method

.method private calculateOffsetOfIfd(Landroid/media/hwmnote/HwMnoteIfdData;I)I
    .locals 7
    .param p1, "ifd"    # Landroid/media/hwmnote/HwMnoteIfdData;
    .param p2, "offset"    # I

    .line 177
    move v0, p2

    .line 178
    .local v0, "calculateOff":I
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteIfdData;->getTagCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    const/4 v2, 0x2

    add-int/2addr v2, v1

    const/4 v1, 0x4

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 179
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteIfdData;->getAllTags()[Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v2

    .line 180
    .local v2, "tags":[Landroid/media/hwmnote/HwMnoteTag;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 181
    .local v5, "tag":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteTag;->getDataSize()I

    move-result v6

    if-le v6, v1, :cond_0

    .line 182
    invoke-virtual {v5, v0}, Landroid/media/hwmnote/HwMnoteTag;->setOffset(I)V

    .line 183
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteTag;->getDataSize()I

    move-result v6

    add-int/2addr v0, v6

    .line 180
    .end local v5    # "tag":Landroid/media/hwmnote/HwMnoteTag;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_1
    return v0
.end method

.method private createRequiredIfdAndTag()V
    .locals 11

    .line 191
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v0

    .line 192
    .local v0, "ifd0":Landroid/media/hwmnote/HwMnoteIfdData;
    if-nez v0, :cond_0

    .line 193
    new-instance v2, Landroid/media/hwmnote/HwMnoteIfdData;

    invoke-direct {v2, v1}, Landroid/media/hwmnote/HwMnoteIfdData;-><init>(I)V

    move-object v0, v2

    .line 194
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    invoke-virtual {v1, v0}, Landroid/media/hwmnote/HwMnoteData;->addIfdData(Landroid/media/hwmnote/HwMnoteIfdData;)V

    .line 197
    :cond_0
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v1

    .line 198
    .local v1, "sceneIfd":Landroid/media/hwmnote/HwMnoteIfdData;
    if-eqz v1, :cond_1

    .line 199
    sget v2, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_IFD:I

    invoke-static {v2}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v2

    .line 200
    .local v2, "tagId":S
    new-instance v9, Landroid/media/hwmnote/HwMnoteTag;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v9

    move v4, v2

    invoke-direct/range {v3 .. v8}, Landroid/media/hwmnote/HwMnoteTag;-><init>(SSIIZ)V

    .line 202
    .local v3, "sceneOffsetTag":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v0, v3}, Landroid/media/hwmnote/HwMnoteIfdData;->setTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;

    .line 205
    .end local v2    # "tagId":S
    .end local v3    # "sceneOffsetTag":Landroid/media/hwmnote/HwMnoteTag;
    :cond_1
    iget-object v2, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v2

    .line 206
    .local v2, "faceIfd":Landroid/media/hwmnote/HwMnoteIfdData;
    if-eqz v2, :cond_2

    .line 207
    sget v3, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_IFD:I

    invoke-static {v3}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v3

    .line 208
    .local v3, "tagId":S
    new-instance v10, Landroid/media/hwmnote/HwMnoteTag;

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v10

    move v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/media/hwmnote/HwMnoteTag;-><init>(SSIIZ)V

    .line 210
    .local v4, "faceOffsetTag":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v0, v4}, Landroid/media/hwmnote/HwMnoteIfdData;->setTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;

    .line 212
    .end local v3    # "tagId":S
    .end local v4    # "faceOffsetTag":Landroid/media/hwmnote/HwMnoteTag;
    :cond_2
    return-void
.end method

.method private stripNullValueTags(Landroid/media/hwmnote/HwMnoteData;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # Landroid/media/hwmnote/HwMnoteData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/hwmnote/HwMnoteData;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/hwmnote/HwMnoteTag;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/hwmnote/HwMnoteTag;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteData;->getAllTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteData;->getAllTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/hwmnote/HwMnoteTag;

    .line 129
    .local v2, "t":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/media/hwmnote/HwMnoteData;->removeTag(SI)V

    .line 131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v2    # "t":Landroid/media/hwmnote/HwMnoteTag;
    :cond_1
    goto :goto_0

    .line 134
    :cond_2
    return-object v0

    .line 125
    :cond_3
    :goto_1
    return-object v0
.end method

.method private writeAllTags(Landroid/media/hwmnote/OrderedDataOutputStream;)V
    .locals 3
    .param p1, "dataOutputStream"    # Landroid/media/hwmnote/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/media/hwmnote/HwMnoteOutputStream;->writeIfd(Landroid/media/hwmnote/HwMnoteIfdData;Landroid/media/hwmnote/OrderedDataOutputStream;)V

    .line 139
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v0

    .line 140
    .local v0, "sceneIfd":Landroid/media/hwmnote/HwMnoteIfdData;
    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, v0, p1}, Landroid/media/hwmnote/HwMnoteOutputStream;->writeIfd(Landroid/media/hwmnote/HwMnoteIfdData;Landroid/media/hwmnote/OrderedDataOutputStream;)V

    .line 143
    :cond_0
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v1

    .line 144
    .local v1, "faceIfd":Landroid/media/hwmnote/HwMnoteIfdData;
    if-eqz v1, :cond_1

    .line 145
    invoke-direct {p0, v1, p1}, Landroid/media/hwmnote/HwMnoteOutputStream;->writeIfd(Landroid/media/hwmnote/HwMnoteIfdData;Landroid/media/hwmnote/OrderedDataOutputStream;)V

    .line 147
    :cond_1
    return-void
.end method

.method private writeHwMnoteData(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteOutputStream;->stripNullValueTags(Landroid/media/hwmnote/HwMnoteData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    .local v0, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/hwmnote/HwMnoteTag;>;"
    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteOutputStream;->createRequiredIfdAndTag()V

    .line 100
    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteOutputStream;->calculateAllOffset()I

    move-result v1

    .line 101
    .local v1, "hwMnoteSize":I
    add-int/lit8 v2, v1, 0x8

    const v3, 0xffff

    if-gt v2, v3, :cond_3

    .line 104
    new-instance v2, Landroid/media/hwmnote/OrderedDataOutputStream;

    invoke-direct {v2, p1}, Landroid/media/hwmnote/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    .local v2, "dataOutputStream":Landroid/media/hwmnote/OrderedDataOutputStream;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 106
    sget-object v3, Landroid/media/hwmnote/HwMnoteOutputStream;->HW_MNOTE_HEADER:[B

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/OrderedDataOutputStream;->write([B)V

    .line 107
    iget-object v3, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    invoke-virtual {v3}, Landroid/media/hwmnote/HwMnoteData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_1

    .line 108
    const/16 v3, 0x4d4d

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeShort(S)Landroid/media/hwmnote/OrderedDataOutputStream;

    goto :goto_0

    .line 110
    :cond_1
    const/16 v3, 0x4949

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeShort(S)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 112
    :goto_0
    iget-object v3, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    invoke-virtual {v3}, Landroid/media/hwmnote/HwMnoteData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 113
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeShort(S)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 114
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeInt(I)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 115
    invoke-direct {p0, v2}, Landroid/media/hwmnote/HwMnoteOutputStream;->writeAllTags(Landroid/media/hwmnote/OrderedDataOutputStream;)V

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 117
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 118
    iget-object v5, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/hwmnote/HwMnoteTag;

    invoke-virtual {v5, v6}, Landroid/media/hwmnote/HwMnoteData;->addTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 120
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 102
    .end local v2    # "dataOutputStream":Landroid/media/hwmnote/OrderedDataOutputStream;
    .end local v3    # "size":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Mnote HW header is too large (>64Kb)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeIfd(Landroid/media/hwmnote/HwMnoteIfdData;Landroid/media/hwmnote/OrderedDataOutputStream;)V
    .locals 8
    .param p1, "ifd"    # Landroid/media/hwmnote/HwMnoteIfdData;
    .param p2, "dataOutputStream"    # Landroid/media/hwmnote/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteIfdData;->getAllTags()[Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v0

    .line 151
    .local v0, "tags":[Landroid/media/hwmnote/HwMnoteTag;
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeShort(S)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 152
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 153
    .local v5, "tag":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeShort(S)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 154
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeShort(S)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 155
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeInt(I)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 159
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 160
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeInt(I)Landroid/media/hwmnote/OrderedDataOutputStream;

    goto :goto_2

    .line 162
    :cond_0
    invoke-static {v5, p2}, Landroid/media/hwmnote/HwMnoteOutputStream;->writeTagValue(Landroid/media/hwmnote/HwMnoteTag;Landroid/media/hwmnote/OrderedDataOutputStream;)V

    .line 163
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteTag;->getDataSize()I

    move-result v7

    sub-int/2addr v4, v7

    .local v4, "n":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 164
    invoke-virtual {p2, v2}, Landroid/media/hwmnote/OrderedDataOutputStream;->write(I)V

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 152
    .end local v4    # "n":I
    .end local v5    # "tag":Landroid/media/hwmnote/HwMnoteTag;
    .end local v6    # "i":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteIfdData;->getOffsetToNextIfd()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeInt(I)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 169
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 170
    .local v3, "tag":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v3}, Landroid/media/hwmnote/HwMnoteTag;->getDataSize()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 171
    invoke-static {v3, p2}, Landroid/media/hwmnote/HwMnoteOutputStream;->writeTagValue(Landroid/media/hwmnote/HwMnoteTag;Landroid/media/hwmnote/OrderedDataOutputStream;)V

    .line 169
    .end local v3    # "tag":Landroid/media/hwmnote/HwMnoteTag;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 174
    :cond_4
    return-void
.end method

.method static writeTagValue(Landroid/media/hwmnote/HwMnoteTag;Landroid/media/hwmnote/OrderedDataOutputStream;)V
    .locals 4
    .param p0, "tag"    # Landroid/media/hwmnote/HwMnoteTag;
    .param p1, "dataOutputStream"    # Landroid/media/hwmnote/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteTag;->getDataType()S

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 245
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->getBytes([B)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/media/hwmnote/OrderedDataOutputStream;->write([B)V

    .line 247
    goto :goto_1

    .line 239
    .end local v0    # "buf":[B
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteTag;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 240
    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/media/hwmnote/OrderedDataOutputStream;->writeInt(I)Landroid/media/hwmnote/OrderedDataOutputStream;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    nop

    .line 251
    :goto_1
    return-void
.end method


# virtual methods
.method public getHwMnoteBuffer()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    nop

    .line 84
    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteOutputStream;->writeHwMnoteData(Ljava/io/OutputStream;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 86
    .local v1, "mnoteBuffer":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 88
    return-object v1
.end method

.method protected getHwMnoteData()Landroid/media/hwmnote/HwMnoteData;
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    return-object v0
.end method

.method protected setData(Landroid/media/hwmnote/HwMnoteData;)V
    .locals 0
    .param p1, "hwMnoteData"    # Landroid/media/hwmnote/HwMnoteData;

    .line 61
    iput-object p1, p0, Landroid/media/hwmnote/HwMnoteOutputStream;->mHwMnoteData:Landroid/media/hwmnote/HwMnoteData;

    .line 62
    return-void
.end method
