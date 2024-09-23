.class Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile;
.super Lcom/huawei/displayengine/HwXmlElement;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element_Tile"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 491
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;

    .line 491
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 492
    const-string v0, "Tile"

    return-object v0
.end method

.method protected isOptional()Z
    .locals 1

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method protected parseValue(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "typeName":Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1802(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;)Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    .line 497
    const/4 v1, 0x1

    return v1
.end method
