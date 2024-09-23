.class Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_AmbientLightLUT;
.super Lcom/huawei/displayengine/HwXmlElement;
.source "DisplayEngineDataCleanerXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element_AmbientLightLUT"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;

    .line 298
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_AmbientLightLUT;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkValue()Z
    .locals 1

    .line 306
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->access$1300()Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 299
    const-string v0, "AmbientLightLUT"

    return-object v0
.end method

.method protected isOptional()Z
    .locals 1

    .line 304
    const/4 v0, 0x0

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

    .line 301
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->access$1300()Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->access$1400(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    .line 302
    const/4 v0, 0x1

    return v0
.end method
