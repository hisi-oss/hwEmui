.class Landroid/media/hwmnote/HwMnoteData;
.super Ljava/lang/Object;
.source "HwMnoteData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwMnoteData"


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;


# direct methods
.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/hwmnote/HwMnoteIfdData;

    iput-object v0, p0, Landroid/media/hwmnote/HwMnoteData;->mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;

    .line 29
    iput-object p1, p0, Landroid/media/hwmnote/HwMnoteData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 30
    return-void
.end method


# virtual methods
.method protected addIfdData(Landroid/media/hwmnote/HwMnoteIfdData;)V
    .locals 2
    .param p1, "data"    # Landroid/media/hwmnote/HwMnoteIfdData;

    .line 57
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteData;->mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;

    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteIfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 58
    return-void
.end method

.method protected addTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;
    .locals 2
    .param p1, "tag"    # Landroid/media/hwmnote/HwMnoteTag;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/media/hwmnote/HwMnoteTag;->getIfd()I

    move-result v0

    .line 94
    .local v0, "ifd":I
    invoke-virtual {p0, p1, v0}, Landroid/media/hwmnote/HwMnoteData;->addTag(Landroid/media/hwmnote/HwMnoteTag;I)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    return-object v1

    .line 96
    .end local v0    # "ifd":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected addTag(Landroid/media/hwmnote/HwMnoteTag;I)Landroid/media/hwmnote/HwMnoteTag;
    .locals 2
    .param p1, "tag"    # Landroid/media/hwmnote/HwMnoteTag;
    .param p2, "ifdId"    # I

    .line 107
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/media/hwmnote/HwMnoteTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p2}, Landroid/media/hwmnote/HwMnoteData;->getOrCreateIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v0

    .line 109
    .local v0, "ifdData":Landroid/media/hwmnote/HwMnoteIfdData;
    invoke-virtual {v0, p1}, Landroid/media/hwmnote/HwMnoteIfdData;->setTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    return-object v1

    .line 111
    .end local v0    # "ifdData":Landroid/media/hwmnote/HwMnoteIfdData;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/hwmnote/HwMnoteTag;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/hwmnote/HwMnoteTag;>;"
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteData;->mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 134
    .local v5, "data":Landroid/media/hwmnote/HwMnoteIfdData;
    if-nez v5, :cond_0

    .line 135
    goto :goto_2

    .line 137
    :cond_0
    invoke-virtual {v5}, Landroid/media/hwmnote/HwMnoteIfdData;->getAllTags()[Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v6

    .line 138
    .local v6, "tags":[Landroid/media/hwmnote/HwMnoteTag;
    if-eqz v6, :cond_1

    .line 139
    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 140
    .local v9, "tag":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v9    # "tag":Landroid/media/hwmnote/HwMnoteTag;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 133
    .end local v5    # "data":Landroid/media/hwmnote/HwMnoteIfdData;
    .end local v6    # "tags":[Landroid/media/hwmnote/HwMnoteTag;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 145
    const/4 v1, 0x0

    return-object v1

    .line 147
    :cond_3
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;
    .locals 1
    .param p1, "ifdId"    # I

    .line 46
    invoke-static {p1}, Landroid/media/hwmnote/HwMnoteTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteData;->mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;

    aget-object v0, v0, p1

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOrCreateIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;
    .locals 2
    .param p1, "ifdId"    # I

    .line 66
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteData;->mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;

    aget-object v0, v0, p1

    .line 67
    .local v0, "ifdData":Landroid/media/hwmnote/HwMnoteIfdData;
    if-nez v0, :cond_0

    .line 68
    new-instance v1, Landroid/media/hwmnote/HwMnoteIfdData;

    invoke-direct {v1, p1}, Landroid/media/hwmnote/HwMnoteIfdData;-><init>(I)V

    move-object v0, v1

    .line 69
    iget-object v1, p0, Landroid/media/hwmnote/HwMnoteData;->mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;

    aput-object v0, v1, p1

    .line 71
    :cond_0
    return-object v0
.end method

.method protected getTag(SI)Landroid/media/hwmnote/HwMnoteTag;
    .locals 2
    .param p1, "tag"    # S
    .param p2, "ifd"    # I

    .line 81
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteData;->mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;

    aget-object v0, v0, p2

    .line 82
    .local v0, "ifdData":Landroid/media/hwmnote/HwMnoteIfdData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/hwmnote/HwMnoteIfdData;->getTag(S)Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected removeTag(SI)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "ifdId"    # I

    .line 120
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteData;->mIfdDatas:[Landroid/media/hwmnote/HwMnoteIfdData;

    aget-object v0, v0, p2

    .line 121
    .local v0, "ifdData":Landroid/media/hwmnote/HwMnoteIfdData;
    if-nez v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/hwmnote/HwMnoteIfdData;->removeTag(S)V

    .line 125
    return-void
.end method
