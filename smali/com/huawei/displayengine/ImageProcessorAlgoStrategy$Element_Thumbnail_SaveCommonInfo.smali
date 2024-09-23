.class Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_SaveCommonInfo;
.super Lcom/huawei/displayengine/HwXmlElement;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element_Thumbnail_SaveCommonInfo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;

    .line 465
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_SaveCommonInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 466
    const-string v0, "SaveCommonInfo"

    return-object v0
.end method

.method protected isOptional()Z
    .locals 1

    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method protected parseValue(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_SaveCommonInfo;->string2Boolean(Ljava/lang/String;)Z

    move-result v0

    .line 470
    .local v0, "isSaveCommonInfo":Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 471
    return v1

    .line 473
    :cond_0
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1700()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1500()Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    .line 474
    .local v2, "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    if-nez v2, :cond_1

    .line 475
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1700()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1500()Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    move-result-object v4

    new-instance v5, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;Z)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 477
    :cond_1
    iget-object v3, v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 478
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    .line 479
    iget-object v3, v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 480
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 481
    .local v5, "imageType":Lcom/huawei/displayengine/ImageProcessor$ImageType;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 482
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    iget-object v7, v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    invoke-static {v6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;>;"
    .end local v5    # "imageType":Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    goto :goto_0

    .line 485
    :cond_2
    iput-boolean v0, v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mIsSaveCommonInfo:Z

    .line 487
    :goto_1
    return v1
.end method
