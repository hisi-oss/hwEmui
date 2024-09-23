.class Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile_Algo;
.super Lcom/huawei/displayengine/HwXmlElement;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element_Tile_Algo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;

    .line 501
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile_Algo;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 502
    const-string v0, "Algo"

    return-object v0
.end method

.method protected isOptional()Z
    .locals 1

    .line 503
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

    .line 505
    const-string v0, "image"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "imageName":Ljava/lang/String;
    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 507
    .local v1, "imageType":Lcom/huawei/displayengine/ImageProcessor$ImageType;
    if-eqz v0, :cond_0

    .line 508
    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$ImageType;->valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$ImageType;

    move-result-object v1

    .line 510
    :cond_0
    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1600(Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 511
    return v3

    .line 513
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    move-result-object v2

    .line 514
    .local v2, "algoType":Lcom/huawei/displayengine/ImageProcessor$AlgoType;
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1900()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1800()Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;

    .line 515
    .local v4, "tileStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;
    if-nez v4, :cond_2

    .line 516
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1900()Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1800()Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    move-result-object v6

    new-instance v7, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 517
    :cond_2
    iget-object v5, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    if-nez v5, :cond_3

    .line 518
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    .line 519
    iget-object v5, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 521
    :cond_3
    iget-object v5, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 522
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-nez v5, :cond_4

    .line 523
    iget-object v6, v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 525
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 528
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :goto_0
    return v3
.end method
