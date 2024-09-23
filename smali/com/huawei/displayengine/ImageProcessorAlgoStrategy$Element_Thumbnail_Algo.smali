.class Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_Algo;
.super Lcom/huawei/displayengine/HwXmlElement;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element_Thumbnail_Algo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;

    .line 433
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_Algo;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 434
    const-string v0, "Algo"

    return-object v0
.end method

.method protected isOptional()Z
    .locals 1

    .line 435
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

    .line 437
    const-string v0, "image"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "imageName":Ljava/lang/String;
    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 439
    .local v1, "imageType":Lcom/huawei/displayengine/ImageProcessor$ImageType;
    if-eqz v0, :cond_0

    .line 440
    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$ImageType;->valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$ImageType;

    move-result-object v1

    .line 442
    :cond_0
    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1600(Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 443
    return v3

    .line 445
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    move-result-object v2

    .line 447
    .local v2, "algoType":Lcom/huawei/displayengine/ImageProcessor$AlgoType;
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1700()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1500()Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    .line 448
    .local v4, "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    if-nez v4, :cond_2

    .line 449
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1700()Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1500()Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    move-result-object v6

    new-instance v7, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 450
    :cond_2
    iget-object v5, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    if-nez v5, :cond_3

    .line 451
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    .line 452
    iget-object v5, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_3
    iget-object v5, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 455
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-nez v5, :cond_4

    .line 456
    iget-object v6, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :goto_0
    return v3
.end method
