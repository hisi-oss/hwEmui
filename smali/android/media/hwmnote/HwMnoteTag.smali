.class public Landroid/media/hwmnote/HwMnoteTag;
.super Ljava/lang/Object;
.source "HwMnoteTag.java"


# static fields
.field static final SIZE_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HwMnoteTag"

.field private static final TYPE_TO_SIZE_MAP:[I

.field private static final TYPE_TO_SIZE_MAP_LENGTH:I = 0xb

.field public static final TYPE_UNDEFINED:S = 0x7s

.field private static final TYPE_UNDEFINED_VALUE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field private static final TYPE_UNSIGNED_LONG_VALUE:I = 0x4

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Landroid/media/hwmnote/HwMnoteTag;->TYPE_TO_SIZE_MAP:[I

    .line 50
    sget-object v0, Landroid/media/hwmnote/HwMnoteTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x4

    aput v1, v0, v1

    .line 51
    sget-object v0, Landroid/media/hwmnote/HwMnoteTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 52
    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-short p1, p0, Landroid/media/hwmnote/HwMnoteTag;->mTagId:S

    .line 86
    iput-short p2, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    .line 87
    iput p3, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    .line 88
    iput-boolean p5, p0, Landroid/media/hwmnote/HwMnoteTag;->mHasDefinedDefaultComponentCount:Z

    .line 89
    iput p4, p0, Landroid/media/hwmnote/HwMnoteTag;->mIfd:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .line 582
    iget-boolean v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 583
    const/4 v0, 0x1

    return v0

    .line 585
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 4
    .param p1, "value"    # [I

    .line 627
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 628
    .local v3, "item":I
    if-gez v3, :cond_0

    .line 629
    const/4 v0, 0x1

    return v0

    .line 627
    .end local v3    # "item":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    :cond_1
    return v1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 7
    .param p1, "value"    # [J

    .line 612
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p1, v2

    .line 613
    .local v3, "item":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    const-wide v5, 0xffffffffL

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    goto :goto_1

    .line 612
    .end local v3    # "item":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    .restart local v3    # "item":J
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 617
    .end local v3    # "item":J
    :cond_2
    return v1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # S

    .line 595
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 601
    const-string v0, ""

    return-object v0

    .line 599
    :cond_0
    const-string v0, "UNDEFINED"

    return-object v0

    .line 597
    :cond_1
    const-string v0, "UNSIGNED_LONG"

    return-object v0
.end method

.method private getBytes([Ljava/lang/Byte;)[B
    .locals 6
    .param p1, "obj"    # [Ljava/lang/Byte;

    .line 400
    move-object v0, p1

    .line 401
    .local v0, "arr":[Ljava/lang/Byte;
    array-length v1, v0

    .line 402
    .local v1, "length":I
    new-array v2, v1, [B

    .line 403
    .local v2, "fin":[B
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 404
    aget-object v5, v0, v4

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    :goto_1
    aput-byte v5, v2, v4

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 406
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method

.method private getInts([Ljava/lang/Integer;)[I
    .locals 6
    .param p1, "obj"    # [Ljava/lang/Integer;

    .line 368
    move-object v0, p1

    .line 369
    .local v0, "arr":[Ljava/lang/Integer;
    array-length v1, v0

    .line 370
    .local v1, "length":I
    new-array v2, v1, [I

    .line 371
    .local v2, "fin":[I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 372
    aget-object v5, v0, v4

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    aput v5, v2, v4

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 374
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method

.method private getLongs([Ljava/lang/Long;)[J
    .locals 6
    .param p1, "obj"    # [Ljava/lang/Long;

    .line 384
    move-object v0, p1

    .line 385
    .local v0, "arr":[Ljava/lang/Long;
    array-length v1, v0

    .line 386
    .local v1, "length":I
    new-array v2, v1, [J

    .line 387
    .local v2, "fin":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 388
    aget-object v4, v0, v3

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    aput-wide v4, v2, v3

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .param p0, "ifdId"    # I

    .line 100
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidType(S)Z
    .locals 1
    .param p0, "type"    # S

    .line 111
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected forceSetComponentCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 180
    iput p1, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    .line 181
    return-void
.end method

.method protected getBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 519
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/hwmnote/HwMnoteTag;->getBytes([BII)V

    .line 520
    return-void
.end method

.method protected getBytes([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 532
    iget-short v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 535
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    if-le p3, v2, :cond_0

    iget v2, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    return-void

    .line 533
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    invoke-static {v2}, Landroid/media/hwmnote/HwMnoteTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComponentCount()I
    .locals 1

    .line 170
    iget v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 3

    .line 161
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteTag;->getComponentCount()I

    move-result v0

    sget-object v1, Landroid/media/hwmnote/HwMnoteTag;->TYPE_TO_SIZE_MAP:[I

    iget-short v2, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    aget v1, v1, v2

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .line 152
    iget-short v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .line 545
    iget v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mOffset:I

    return v0
.end method

.method public getTagId()S
    .locals 1

    .line 141
    iget-short v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 493
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsBytes()[B
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    .line 419
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 452
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteTag;->getValueAsInts()[I

    move-result-object v0

    .line 453
    .local v0, "i":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 454
    :cond_1
    :goto_0
    return p1
.end method

.method public getValueAsInts()[I
    .locals 6

    .line 429
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    .line 434
    .local v0, "val":[J
    array-length v2, v0

    .line 435
    .local v2, "length":I
    new-array v3, v2, [I

    .line 436
    .local v3, "arr":[I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 437
    aget-wide v4, v0, v1

    long-to-int v4, v4

    aput v4, v3, v1

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    :cond_1
    return-object v3

    .line 441
    .end local v0    # "val":[J
    .end local v2    # "length":I
    .end local v3    # "arr":[I
    :cond_2
    new-array v0, v1, [I

    return-object v0
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J

    .line 480
    invoke-virtual {p0}, Landroid/media/hwmnote/HwMnoteTag;->getValueAsLongs()[J

    move-result-object v0

    .line 481
    .local v0, "l":[J
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 482
    return-wide p1

    .line 484
    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getValueAsLongs()[J
    .locals 1

    .line 466
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method protected getValueAt(I)J
    .locals 3
    .param p1, "index"    # I

    .line 504
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 510
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    invoke-static {v2}, Landroid/media/hwmnote/HwMnoteTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0
    .param p1, "d"    # Z

    .line 563
    iput-boolean p1, p0, Landroid/media/hwmnote/HwMnoteTag;->mHasDefinedDefaultComponentCount:Z

    .line 564
    return-void
.end method

.method protected setIfd(I)V
    .locals 0
    .param p1, "ifdId"    # I

    .line 132
    iput p1, p0, Landroid/media/hwmnote/HwMnoteTag;->mIfd:I

    .line 133
    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 554
    iput p1, p0, Landroid/media/hwmnote/HwMnoteTag;->mOffset:I

    .line 555
    return-void
.end method

.method public setValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(J)Z
    .locals 2
    .param p1, "value"    # J

    .line 281
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([J)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 332
    return v0

    .line 333
    :cond_0
    instance-of v1, p1, [I

    if-eqz v1, :cond_1

    .line 334
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([I)Z

    move-result v0

    return v0

    .line 335
    :cond_1
    instance-of v1, p1, [J

    if-eqz v1, :cond_2

    .line 336
    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([J)Z

    move-result v0

    return v0

    .line 337
    :cond_2
    instance-of v1, p1, [B

    if-eqz v1, :cond_3

    .line 338
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([B)Z

    move-result v0

    return v0

    .line 339
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 340
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue(I)Z

    move-result v0

    return v0

    .line 341
    :cond_4
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 342
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/media/hwmnote/HwMnoteTag;->setValue(J)Z

    move-result v0

    return v0

    .line 343
    :cond_5
    instance-of v1, p1, [Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 345
    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->getInts([Ljava/lang/Integer;)[I

    move-result-object v0

    .line 346
    .local v0, "fin":[I
    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([I)Z

    move-result v1

    return v1

    .line 347
    .end local v0    # "fin":[I
    :cond_6
    instance-of v1, p1, [Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 349
    move-object v0, p1

    check-cast v0, [Ljava/lang/Long;

    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->getLongs([Ljava/lang/Long;)[J

    move-result-object v0

    .line 350
    .local v0, "fin":[J
    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([J)Z

    move-result v1

    return v1

    .line 351
    .end local v0    # "fin":[J
    :cond_7
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_8

    .line 353
    move-object v0, p1

    check-cast v0, [Ljava/lang/Byte;

    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->getBytes([Ljava/lang/Byte;)[B

    move-result-object v0

    .line 354
    .local v0, "fin":[B
    invoke-virtual {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([B)Z

    move-result v1

    return v1

    .line 356
    .end local v0    # "fin":[B
    :cond_8
    const-string v1, "HwMnoteTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set value with error type, tagId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Landroid/media/hwmnote/HwMnoteTag;->mTagId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v0
.end method

.method public setValue([B)Z
    .locals 2
    .param p1, "value"    # [B

    .line 317
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/hwmnote/HwMnoteTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 3
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 298
    invoke-direct {p0, p3}, Landroid/media/hwmnote/HwMnoteTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 299
    return v1

    .line 301
    :cond_0
    iget-short v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    .line 302
    return v1

    .line 304
    :cond_1
    new-array v0, p3, [B

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    iput p3, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([I)Z
    .locals 5
    .param p1, "value"    # [I

    .line 206
    array-length v0, p1

    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    return v1

    .line 210
    :cond_0
    iget-short v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 211
    return v1

    .line 214
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/hwmnote/HwMnoteTag;->checkOverflowForUnsignedLong([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    return v1

    .line 218
    :cond_2
    array-length v0, p1

    new-array v0, v0, [J

    .line 219
    .local v0, "data":[J
    array-length v2, p1

    .line 220
    .local v2, "length":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 221
    aget v3, p1, v1

    int-to-long v3, v3

    aput-wide v3, v0, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :cond_3
    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    .line 224
    iput v2, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    .line 225
    const/4 v1, 0x1

    return v1
.end method

.method public setValue([J)Z
    .locals 3
    .param p1, "value"    # [J

    .line 257
    array-length v0, p1

    invoke-direct {p0, v0}, Landroid/media/hwmnote/HwMnoteTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-short v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/hwmnote/HwMnoteTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    return v1

    .line 263
    :cond_1
    iput-object p1, p0, Landroid/media/hwmnote/HwMnoteTag;->mValue:Ljava/lang/Object;

    .line 264
    array-length v0, p1

    iput v0, p0, Landroid/media/hwmnote/HwMnoteTag;->mComponentCountActual:I

    .line 265
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_2
    :goto_0
    return v1
.end method
