.class Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_OutDoorLevelThresh;
.super Lcom/huawei/displayengine/HwXmlElement;
.source "DisplayEngineDataCleanerXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element_OutDoorLevelThresh"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;

    .line 286
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_OutDoorLevelThresh;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkValue()Z
    .locals 1

    .line 294
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->access$1300()Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    move-result-object v0

    iget v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outDoorLevelFloor:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 287
    const-string v0, "OutDoorLevelThresh"

    return-object v0
.end method

.method protected isOptional()Z
    .locals 1

    .line 292
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

    .line 289
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->access$1300()Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outDoorLevelFloor:I

    .line 290
    const/4 v0, 0x1

    return v0
.end method
