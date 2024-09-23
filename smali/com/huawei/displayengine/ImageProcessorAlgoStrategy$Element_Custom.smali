.class Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Custom;
.super Lcom/huawei/displayengine/HwXmlElement;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element_Custom"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 372
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;

    .line 372
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Custom;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 373
    const-string v0, "Custom"

    return-object v0
.end method

.method protected isOptional()Z
    .locals 1

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method protected parseValue(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    const/4 v0, 0x1

    return v0
.end method
