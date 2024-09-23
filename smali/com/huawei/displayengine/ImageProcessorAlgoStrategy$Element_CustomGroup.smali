.class Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;
.super Lcom/huawei/displayengine/HwXmlElement;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element_CustomGroup"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;

    .line 380
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkValue()Z
    .locals 1

    .line 418
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1300()Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 381
    const-string v0, "CustomGroup"

    return-object v0
.end method

.method protected getNameList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    const-string v0, "AlgoWideColorSpace"

    const-string v1, "AlgoSkinBeauty"

    const-string v2, "AlgoVivid"

    const-string v3, "NormallizeColorGamut"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isOptional()Z
    .locals 1

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method protected parseValue(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "valueName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ca7b635

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x66b618d4

    if-eq v1, v2, :cond_2

    const v2, -0x3eb67417

    if-eq v1, v2, :cond_1

    const v2, 0x4ad7f75e    # 7076783.0f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "NormallizeColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const-string v1, "AlgoWideColorSpace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_2
    const-string v1, "AlgoSkinBeauty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_3
    const-string v1, "AlgoVivid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 411
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknow valueName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v3

    .line 404
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "gamutName":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v2, "Super Gamut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 406
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SUPER_GAMUT:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-static {v2}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1302(Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 408
    :cond_5
    invoke-static {v4}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1402(Z)Z

    .line 409
    goto :goto_2

    .line 401
    .end local v1    # "gamutName":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;->string2Boolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1202(Z)Z

    .line 402
    goto :goto_2

    .line 398
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;->string2Boolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1102(Z)Z

    .line 399
    goto :goto_2

    .line 395
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;->string2Boolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->access$1002(Z)Z

    .line 396
    nop

    .line 414
    :goto_2
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
