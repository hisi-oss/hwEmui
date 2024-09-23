.class public Lhuawei/cust/HwCarrierConfigXmlParse;
.super Ljava/lang/Object;
.source "HwCarrierConfigXmlParse.java"


# static fields
.field private static final CARRIER_PATH:Ljava/lang/String; = "carrier"

.field private static final EMPTY:Ljava/util/Map;

.field private static final LOG_TAG:Ljava/lang/String; = "HwCarrierConfigXmlParse"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhuawei/cust/HwCarrierConfigXmlParse;->EMPTY:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHighestPriorityConfigFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .line 98
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0, p1}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v1, "NoClassDefFoundError!"

    invoke-static {v1}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .line 102
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 107
    const-string v0, "HwCarrierConfigXmlParse"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 111
    const-string v0, "HwCarrierConfigXmlParse"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public static parse(Ljava/lang/String;I)Ljava/util/Map;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin parse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/cust/HwCarrierConfigXmlParse;->log(Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lhuawei/cust/HwCarrierConfigXmlParse;->EMPTY:Ljava/util/Map;

    return-object v0

    .line 41
    :cond_0
    invoke-static {p0, p1}, Lhuawei/cust/HwCarrierConfigXmlParse;->getHighestPriorityConfigFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lhuawei/cust/HwCarrierConfigXmlParse;->parseFile(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parseFile(Ljava/io/File;)Ljava/util/Map;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "input":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    move-object v2, v1

    .line 55
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find config xml:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/cust/HwCarrierConfigXmlParse;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    move-object v0, v3

    .line 58
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 60
    :try_start_1
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lhuawei/cust/HwCarrierConfigXmlUtils;->read(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 73
    :try_start_2
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "Loading Config failed because exception in Xml Pull Parser"

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .line 78
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_0
    nop

    .line 80
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 83
    goto :goto_1

    .line 81
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "IOException in closing inputStream"

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .line 61
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v3

    .line 62
    :catch_2
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .line 64
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 68
    :catch_3
    move-exception v3

    goto :goto_5

    .line 66
    :cond_1
    const-string v3, "File not found"

    invoke-static {v3}, Lhuawei/cust/HwCarrierConfigXmlParse;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :goto_2
    if-eqz v0, :cond_2

    .line 73
    :try_start_5
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4

    .line 76
    goto :goto_3

    .line 74
    :catch_4
    move-exception v1

    .line 75
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Loading Config failed because exception in Xml Pull Parser"

    invoke-static {v3}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .line 78
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    if-eqz v2, :cond_4

    .line 80
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 83
    :goto_4
    goto :goto_7

    .line 81
    :catch_5
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "IOException in closing inputStream"

    invoke-static {v3}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 68
    :goto_5
    nop

    .line 69
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v4, "Exception in Loading Config because the file is not found"

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 71
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_3

    .line 73
    :try_start_8
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_6

    .line 76
    goto :goto_6

    .line 74
    :catch_6
    move-exception v1

    .line 75
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Loading Config failed because exception in Xml Pull Parser"

    invoke-static {v3}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .line 78
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_6
    if-eqz v2, :cond_4

    .line 80
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 86
    :cond_4
    :goto_7
    sget-object v1, Lhuawei/cust/HwCarrierConfigXmlParse;->EMPTY:Ljava/util/Map;

    return-object v1

    .line 71
    :goto_8
    if-eqz v0, :cond_5

    .line 73
    :try_start_a
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7

    .line 76
    goto :goto_9

    .line 74
    :catch_7
    move-exception v1

    .line 75
    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "Loading Config failed because exception in Xml Pull Parser"

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .line 78
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_9
    if-eqz v2, :cond_6

    .line 80
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 83
    goto :goto_a

    .line 81
    :catch_8
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "IOException in closing inputStream"

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigXmlParse;->loge(Ljava/lang/String;)V

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    :goto_a
    throw v3
.end method
