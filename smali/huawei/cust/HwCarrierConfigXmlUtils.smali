.class public Lhuawei/cust/HwCarrierConfigXmlUtils;
.super Ljava/lang/Object;
.source "HwCarrierConfigXmlUtils.java"


# static fields
.field private static final ARRAY_NAME:Ljava/lang/String; = "array"

.field private static final BOOL_NAME:Ljava/lang/String; = "bool"

.field private static final DICT_NAME:Ljava/lang/String; = "dict"

.field private static final DOUBLE_NAME:Ljava/lang/String; = "double"

.field private static final EMPTY:Ljava/util/HashMap;

.field private static final HASH_VALUE:Ljava/lang/String; = "hashvalue"

.field private static final INT_NAME:Ljava/lang/String; = "int"

.field private static final KEY_NAME:Ljava/lang/String; = "key"

.field private static final LOG_TAG:Ljava/lang/String; = "HwCarrierConfigXmlUtils"

.field private static final START_TAG:Ljava/lang/String; = "config"

.field private static final STRING_NAME:Ljava/lang/String; = "string"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhuawei/cust/HwCarrierConfigXmlUtils;->EMPTY:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 179
    const-string v0, "HwCarrierConfigXmlUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 183
    const-string v0, "HwCarrierConfigXmlUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 9
    .param p0, "input"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "result":Ljava/util/Map;
    if-nez p0, :cond_0

    .line 44
    return-object v0

    .line 48
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "e":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    .line 50
    const/4 v1, 0x2

    if-ne v2, v1, :cond_0

    .line 52
    const-string v4, "config"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    const/4 v1, 0x0

    const-string v3, "hashvalue"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "hashValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    const-string v3, "hashvalue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse hashvalue attribute = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/cust/HwCarrierConfigXmlUtils;->log(Ljava/lang/String;)V

    .line 58
    .end local v1    # "hashValue":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 59
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin parse name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigXmlUtils;->log(Ljava/lang/String;)V

    .line 60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 61
    .local v4, "outerDepth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "startTag":Ljava/lang/String;
    new-array v6, v3, [Ljava/lang/String;

    .line 64
    .local v6, "tagName":[Ljava/lang/String;
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "event":I
    if-eq v7, v3, :cond_5

    const/4 v7, 0x3

    if-ne v8, v7, :cond_4

    .line 65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ge v7, v4, :cond_5

    .line 66
    :cond_4
    if-ne v8, v1, :cond_3

    .line 67
    invoke-static {p0, v5, v6}, Lhuawei/cust/HwCarrierConfigXmlUtils;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    nop

    .line 71
    .end local v4    # "outerDepth":I
    .end local v5    # "startTag":Ljava/lang/String;
    .end local v6    # "tagName":[Ljava/lang/String;
    .end local v8    # "event":I
    :cond_5
    goto :goto_0

    .line 75
    :cond_6
    return-object v0
.end method

.method private static readComplexValueXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lhuawei/cust/HWCarrierConfigComplexValue;)Z
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "outKey"    # [Ljava/lang/String;
    .param p3, "complexValue"    # Lhuawei/cust/HWCarrierConfigComplexValue;

    .line 104
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 106
    .local v1, "eventType":I
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 107
    invoke-static {p0, p2}, Lhuawei/cust/HwCarrierConfigXmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    .local v2, "val":Ljava/lang/Object;
    aget-object v4, p2, v0

    invoke-virtual {p3, v4, v2}, Lhuawei/cust/HWCarrierConfigComplexValue;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 110
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    return v3

    .line 113
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " end tag, but it is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/cust/HwCarrierConfigXmlUtils;->loge(Ljava/lang/String;)V

    .line 114
    return v0

    .line 116
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 117
    if-ne v1, v3, :cond_0

    .line 120
    .end local v1    # "eventType":I
    goto :goto_1

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/cust/HwCarrierConfigXmlUtils;->loge(Ljava/lang/String;)V

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no found ended before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/cust/HwCarrierConfigXmlUtils;->loge(Ljava/lang/String;)V

    .line 122
    return v0
.end method

.method private static readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outKey"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 133
    const-string v0, "key"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "typeName":Ljava/lang/String;
    nop

    .line 137
    .local v1, "result":Ljava/lang/Object;
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "array"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v4, "dict"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v4, "bool"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_5
    const-string v4, "double"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 160
    :pswitch_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 161
    new-instance v3, Lhuawei/cust/HwCarrierConfigArrayValue;

    invoke-direct {v3}, Lhuawei/cust/HwCarrierConfigArrayValue;-><init>()V

    .line 162
    .local v3, "arrayValue":Lhuawei/cust/HwCarrierConfigArrayValue;
    const-string v4, "array"

    invoke-static {p0, v4, p1, v3}, Lhuawei/cust/HwCarrierConfigXmlUtils;->readComplexValueXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lhuawei/cust/HWCarrierConfigComplexValue;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    invoke-virtual {v3}, Lhuawei/cust/HwCarrierConfigArrayValue;->getData()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 166
    aput-object v0, p1, v5

    .line 167
    return-object v1

    .line 163
    :cond_1
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readComplexValueXml is Error for <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    .end local v3    # "arrayValue":Lhuawei/cust/HwCarrierConfigArrayValue;
    :pswitch_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    new-instance v3, Lhuawei/cust/HwCarrierConfigDictValue;

    invoke-direct {v3}, Lhuawei/cust/HwCarrierConfigDictValue;-><init>()V

    .line 153
    .local v3, "dictValue":Lhuawei/cust/HwCarrierConfigDictValue;
    const-string v4, "dict"

    invoke-static {p0, v4, p1, v3}, Lhuawei/cust/HwCarrierConfigXmlUtils;->readComplexValueXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lhuawei/cust/HWCarrierConfigComplexValue;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v3}, Lhuawei/cust/HwCarrierConfigDictValue;->getData()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 157
    aput-object v0, p1, v5

    .line 158
    return-object v1

    .line 154
    :cond_2
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readComplexValueXml is Error for <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    .end local v3    # "dictValue":Lhuawei/cust/HwCarrierConfigDictValue;
    :pswitch_2
    aput-object v0, p1, v5

    .line 149
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 145
    :pswitch_3
    aput-object v0, p1, v5

    .line 146
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 142
    :pswitch_4
    aput-object v0, p1, v5

    .line 143
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 139
    :pswitch_5
    aput-object v0, p1, v5

    .line 140
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 169
    :goto_1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No unknown type for parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/cust/HwCarrierConfigXmlUtils;->loge(Ljava/lang/String;)V

    .line 170
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No unknown type for parse <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "It is Error for parse <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigXmlUtils;->loge(Ljava/lang/String;)V

    .line 174
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It is Error for parse <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_5
        -0x352a9fef -> :sswitch_4
        0x197ef -> :sswitch_3
        0x2e3aea -> :sswitch_2
        0x2f0bb6 -> :sswitch_1
        0x58c7259 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "outKey"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    new-instance v0, Lhuawei/cust/HwCarrierConfigDictValue;

    invoke-direct {v0}, Lhuawei/cust/HwCarrierConfigDictValue;-><init>()V

    .line 87
    .local v0, "dictValue":Lhuawei/cust/HwCarrierConfigDictValue;
    invoke-static {p0, p1, p2, v0}, Lhuawei/cust/HwCarrierConfigXmlUtils;->readComplexValueXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lhuawei/cust/HWCarrierConfigComplexValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lhuawei/cust/HwCarrierConfigDictValue;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readXml tagName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/cust/HwCarrierConfigXmlUtils;->loge(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lhuawei/cust/HwCarrierConfigXmlUtils;->EMPTY:Ljava/util/HashMap;

    return-object v1
.end method
