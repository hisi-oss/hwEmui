.class public Landroid/media/hwmnote/HwMnoteInterfaceImpl;
.super Ljava/lang/Object;
.source "HwMnoteInterfaceImpl.java"

# interfaces
.implements Landroid/media/hwmnote/IHwMnoteInterface;


# static fields
.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field private static final SHIFT_16:I = 0x10

.field private static final SHIFT_24:I = 0x18

.field private static final TAG:Ljava/lang/String; = "HwMnoteInterfaceImpl"

.field public static final TAG_NULL:I = -0x1

.field private static final UNSIGNED_BYTE:I = 0xff

.field private static final UNSIGNED_WORD:I = 0xffff

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Landroid/media/hwmnote/HwMnoteData;

.field private mHwMnoteTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->sOffsetTags:Ljava/util/HashSet;

    .line 99
    sget-object v0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_IFD:I

    invoke-static {v1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_IFD:I

    invoke-static {v1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    .line 72
    new-instance v0, Landroid/media/hwmnote/HwMnoteData;

    sget-object v1, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Landroid/media/hwmnote/HwMnoteData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    .line 78
    return-void
.end method

.method private buildTag(ILjava/lang/Object;)Landroid/media/hwmnote/HwMnoteTag;
    .locals 12
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .line 313
    invoke-static {p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueIfd(I)I

    move-result v6

    .line 314
    .local v6, "ifdId":I
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 315
    .local v7, "info":I
    const/4 v8, 0x0

    if-eqz v7, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 318
    :cond_0
    invoke-static {v7}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTypeFromInfo(I)S

    move-result v9

    .line 319
    .local v9, "type":S
    invoke-static {v7}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getComponentCountFromInfo(I)I

    move-result v10

    .line 320
    .local v10, "definedCount":I
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {v7, v6}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->isIfdAllowed(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    return-object v8

    .line 324
    :cond_2
    new-instance v11, Landroid/media/hwmnote/HwMnoteTag;

    invoke-static {p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v1

    move-object v0, v11

    move v2, v9

    move v3, v10

    move v4, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/hwmnote/HwMnoteTag;-><init>(SSIIZ)V

    .line 325
    .local v0, "t":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v0, p2}, Landroid/media/hwmnote/HwMnoteTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 326
    return-object v8

    .line 328
    :cond_3
    return-object v0

    .line 316
    .end local v0    # "t":Landroid/media/hwmnote/HwMnoteTag;
    .end local v5    # "hasDefinedCount":Z
    .end local v9    # "type":S
    .end local v10    # "definedCount":I
    :cond_4
    :goto_2
    return-object v8
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .line 430
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .line 493
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .line 460
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 463
    :cond_0
    const/4 v1, 0x0

    .line 464
    .local v1, "flags":I
    invoke-static {}, Landroid/media/hwmnote/HwMnoteIfdData;->getIfds()[I

    move-result-object v2

    .line 465
    .local v2, "ifds":[I
    move v3, v1

    move v1, v0

    .local v1, "ifdNum":I
    .local v3, "flags":I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 466
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 467
    .local v6, "item":I
    aget v7, v2, v1

    if-ne v7, v6, :cond_1

    .line 468
    const/4 v4, 0x1

    shl-int/2addr v4, v1

    or-int/2addr v3, v4

    .line 469
    goto :goto_2

    .line 466
    .end local v6    # "item":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 465
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "ifdNum":I
    :cond_3
    return v3

    .line 461
    .end local v2    # "ifds":[I
    .end local v3    # "flags":I
    :cond_4
    :goto_3
    return v0
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 120
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .line 110
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1
    .param p0, "info"    # I

    .line 483
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 12

    .line 385
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 386
    .local v1, "ifdAllowedIfds":[I
    invoke-static {v1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 387
    .local v3, "ifdFlags":I
    const/high16 v4, 0x40000

    or-int v5, v3, v4

    or-int/2addr v5, v0

    .line 388
    .local v5, "ifdValue":I
    iget-object v6, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v7, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_IFD:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    iget-object v6, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v7, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_IFD:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 390
    iget-object v6, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v7, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_CAPTURE_MODE:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 391
    iget-object v6, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v7, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_BURST_NUMBER:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 392
    iget-object v6, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v7, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FRONT_CAMERA:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 394
    new-array v6, v0, [I

    aput v0, v6, v2

    .line 395
    .local v6, "sceneAllowedIfds":[I
    invoke-static {v6}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getFlagsFromAllowedIfds([I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    .line 396
    .local v7, "sceneFlags":I
    or-int v8, v7, v4

    or-int/2addr v8, v0

    .line 397
    .local v8, "sceneValue":I
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_VERSION:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 398
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_FOOD_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_STAGE_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 400
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_BLUESKY_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 401
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_GREENPLANT_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 402
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_BEACH_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 403
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_SNOW_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 404
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_SUNSET_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 405
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_FLOWERS_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 406
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_NIGHT_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    iget-object v9, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_TEXT_CONF:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 409
    new-array v9, v0, [I

    const/4 v10, 0x2

    aput v10, v9, v2

    move-object v2, v9

    .line 410
    .local v2, "faceAllowedIfds":[I
    invoke-static {v2}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getFlagsFromAllowedIfds([I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    .line 411
    .local v9, "faceFlags":I
    or-int/2addr v4, v9

    or-int/2addr v0, v4

    .line 412
    .local v0, "faceValue":I
    iget-object v4, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_VERSION:I

    invoke-virtual {v4, v10, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 413
    iget-object v4, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v10, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_COUNT:I

    invoke-virtual {v4, v10, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 414
    const/high16 v4, 0x70000

    or-int/2addr v4, v9

    .line 415
    .local v4, "faceValueUndefined":I
    iget-object v10, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v11, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_CONF:I

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 416
    iget-object v10, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v11, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_SMILE_SCORE:I

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    iget-object v10, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v11, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_RECT:I

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 418
    iget-object v10, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v11, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_LEYE_CENTER:I

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 419
    iget-object v10, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v11, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_REYE_CENTER:I

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 420
    iget-object v10, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    sget v11, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_MOUTH_CENTER:I

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 421
    return-void
.end method

.method protected static isIfdAllowed(II)Z
    .locals 7
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .line 441
    invoke-static {}, Landroid/media/hwmnote/HwMnoteIfdData;->getIfds()[I

    move-result-object v0

    .line 442
    .local v0, "ifds":[I
    invoke-static {p0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 443
    .local v1, "ifdFlags":I
    const/4 v2, 0x0

    .line 444
    .local v2, "isAllowed":Z
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "isAllowed":Z
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 445
    shr-int v5, v1, v2

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    move v4, v5

    .line 446
    aget v5, v0, v2

    if-ne p1, v5, :cond_1

    if-eqz v4, :cond_1

    .line 447
    return v6

    .line 444
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    .end local v2    # "i":I
    :cond_2
    return v3
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .line 302
    sget-object v0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearHwMnote()V
    .locals 2

    .line 169
    new-instance v0, Landroid/media/hwmnote/HwMnoteData;

    sget-object v1, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Landroid/media/hwmnote/HwMnoteData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    .line 170
    return-void
.end method

.method public deleteTag(I)V
    .locals 3
    .param p1, "tagId"    # I

    .line 361
    invoke-virtual {p0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 362
    .local v0, "ifdId":I
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    invoke-static {p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/media/hwmnote/HwMnoteData;->removeTag(SI)V

    .line 363
    return-void
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .line 285
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 286
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 287
    const/4 v1, -0x1

    return v1

    .line 289
    :cond_0
    invoke-static {p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueIfd(I)I

    move-result v1

    return v1
.end method

.method public getHwMnote()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/media/hwmnote/HwMnoteOutputStream;

    invoke-direct {v0}, Landroid/media/hwmnote/HwMnoteOutputStream;-><init>()V

    .line 158
    .local v0, "mos":Landroid/media/hwmnote/HwMnoteOutputStream;
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    invoke-virtual {v0, v1}, Landroid/media/hwmnote/HwMnoteOutputStream;->setData(Landroid/media/hwmnote/HwMnoteData;)V

    .line 160
    invoke-virtual {v0}, Landroid/media/hwmnote/HwMnoteOutputStream;->getHwMnoteBuffer()[B

    move-result-object v1

    .line 162
    .local v1, "hwMnoteBuffer":[B
    return-object v1
.end method

.method public getTag(II)Landroid/media/hwmnote/HwMnoteTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .line 181
    invoke-static {p2}, Landroid/media/hwmnote/HwMnoteTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    invoke-static {p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/media/hwmnote/HwMnoteData;->getTag(SI)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v0

    return-object v0
.end method

.method public getTagByteValues(I)[B
    .locals 3
    .param p1, "tagId"    # I

    .line 270
    invoke-virtual {p0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 271
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTag(II)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    .line 272
    .local v1, "t":Landroid/media/hwmnote/HwMnoteTag;
    if-nez v1, :cond_0

    .line 273
    const/4 v2, 0x0

    new-array v2, v2, [B

    return-object v2

    .line 275
    :cond_0
    invoke-virtual {v1}, Landroid/media/hwmnote/HwMnoteTag;->getValueAsBytes()[B

    move-result-object v2

    return-object v2
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 371
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    .line 373
    invoke-direct {p0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->initTagInfo()V

    .line 375
    :cond_0
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mHwMnoteTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .line 223
    invoke-virtual {p0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTagIntValues(I)[I

    move-result-object v0

    .line 224
    .local v0, "l":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 225
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagIntValues(I)[I
    .locals 3
    .param p1, "tagId"    # I

    .line 254
    invoke-virtual {p0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 255
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTag(II)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    .line 256
    .local v1, "t":Landroid/media/hwmnote/HwMnoteTag;
    if-nez v1, :cond_0

    .line 257
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2

    .line 259
    :cond_0
    invoke-virtual {v1}, Landroid/media/hwmnote/HwMnoteTag;->getValueAsInts()[I

    move-result-object v2

    return-object v2
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 3
    .param p1, "tagId"    # I

    .line 208
    invoke-virtual {p0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTagLongValues(I)[J

    move-result-object v0

    .line 209
    .local v0, "l":[J
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 210
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagLongValues(I)[J
    .locals 3
    .param p1, "tagId"    # I

    .line 238
    invoke-virtual {p0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 239
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTag(II)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    .line 240
    .local v1, "t":Landroid/media/hwmnote/HwMnoteTag;
    if-nez v1, :cond_0

    .line 241
    const/4 v2, 0x0

    new-array v2, v2, [J

    return-object v2

    .line 243
    :cond_0
    invoke-virtual {v1}, Landroid/media/hwmnote/HwMnoteTag;->getValueAsLongs()[J

    move-result-object v2

    return-object v2
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 3
    .param p1, "tagId"    # I

    .line 195
    invoke-virtual {p0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 196
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTag(II)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    .line 197
    .local v1, "t":Landroid/media/hwmnote/HwMnoteTag;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/media/hwmnote/HwMnoteTag;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public getmData()Landroid/media/hwmnote/HwMnoteData;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    return-object v0
.end method

.method public readHwMnote([B)V
    .locals 6
    .param p1, "mnote"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 131
    .local v0, "inStream":Ljava/io/InputStream;
    nop

    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, "data":Landroid/media/hwmnote/HwMnoteData;
    :try_start_0
    new-instance v2, Landroid/media/hwmnote/HwMnoteReader;

    invoke-direct {v2, p0}, Landroid/media/hwmnote/HwMnoteReader;-><init>(Landroid/media/hwmnote/HwMnoteInterfaceImpl;)V

    invoke-virtual {v2, v0}, Landroid/media/hwmnote/HwMnoteReader;->read(Ljava/io/InputStream;)Landroid/media/hwmnote/HwMnoteData;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 140
    iput-object v1, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    .line 142
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "HwMnoteInterfaceImpl"

    const-string v4, "close stream IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 147
    :goto_0
    return-void

    .line 140
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 137
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid HwMnote format error"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iput-object v1, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    .line 142
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 145
    goto :goto_2

    .line 143
    :catch_2
    move-exception v3

    .line 144
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "HwMnoteInterfaceImpl"

    const-string v5, "close stream IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    throw v2
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .line 340
    invoke-virtual {p0, p1}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 341
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->getTag(II)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    .line 342
    .local v1, "t":Landroid/media/hwmnote/HwMnoteTag;
    if-nez v1, :cond_1

    .line 343
    invoke-direct {p0, p1, p2}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->buildTag(ILjava/lang/Object;)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    .line 344
    if-nez v1, :cond_0

    .line 345
    const/4 v2, 0x0

    return v2

    .line 347
    :cond_0
    iget-object v2, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    invoke-virtual {v2, v1}, Landroid/media/hwmnote/HwMnoteData;->addTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;

    .line 348
    const/4 v2, 0x1

    return v2

    .line 351
    :cond_1
    invoke-virtual {v1, p2}, Landroid/media/hwmnote/HwMnoteTag;->setValue(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public setmData(Landroid/media/hwmnote/HwMnoteData;)V
    .locals 0
    .param p1, "mData"    # Landroid/media/hwmnote/HwMnoteData;

    .line 95
    iput-object p1, p0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;->mData:Landroid/media/hwmnote/HwMnoteData;

    .line 96
    return-void
.end method
