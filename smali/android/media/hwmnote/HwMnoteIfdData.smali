.class Landroid/media/hwmnote/HwMnoteIfdData;
.super Ljava/lang/Object;
.source "HwMnoteIfdData.java"


# static fields
.field private static final SIFDS:[I

.field private static final TAG_ID_MAKER_NOTE:S = -0x6d84s


# instance fields
.field private final mHwMnoteTags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Short;",
            "Landroid/media/hwmnote/HwMnoteTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/hwmnote/HwMnoteIfdData;->SIFDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "ifdId"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mHwMnoteTags:Landroid/util/ArrayMap;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mOffsetToNextIfd:I

    .line 39
    iput p1, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mIfdId:I

    .line 40
    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .line 48
    sget-object v0, Landroid/media/hwmnote/HwMnoteIfdData;->SIFDS:[I

    return-object v0
.end method


# virtual methods
.method protected checkCollision(S)Z
    .locals 2
    .param p1, "tagId"    # S

    .line 97
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mHwMnoteTags:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getAllTags()[Landroid/media/hwmnote/HwMnoteTag;
    .locals 2

    .line 56
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mHwMnoteTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mHwMnoteTags:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/hwmnote/HwMnoteTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/hwmnote/HwMnoteTag;

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .line 68
    iget v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Landroid/media/hwmnote/HwMnoteTag;
    .locals 2
    .param p1, "tagId"    # S

    .line 78
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mHwMnoteTags:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/hwmnote/HwMnoteTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mHwMnoteTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method protected removeTag(S)V
    .locals 2
    .param p1, "tagId"    # S

    .line 105
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mHwMnoteTags:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 121
    iput p1, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mOffsetToNextIfd:I

    .line 122
    return-void
.end method

.method protected setTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;
    .locals 2
    .param p1, "tag"    # Landroid/media/hwmnote/HwMnoteTag;

    .line 87
    iget v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Landroid/media/hwmnote/HwMnoteTag;->setIfd(I)V

    .line 88
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteIfdData;->mHwMnoteTags:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/hwmnote/HwMnoteTag;

    return-object v0
.end method
