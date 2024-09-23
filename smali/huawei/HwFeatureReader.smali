.class public Lhuawei/HwFeatureReader;
.super Ljava/lang/Object;
.source "HwFeatureReader.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final XMLPATHGP:Ljava/lang/String; = "/cust/xml/HwFeatureConfig_Gp.xml"

.field private static final XMLPATHHAP:Ljava/lang/String; = "/cust/xml/HwFeatureConfig_Hap.xml"

.field private static hasReadFileGp:Z

.field private static hasReadFileHap:Z

.field private static map:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lhuawei/HwFeatureReader;->map:Landroid/content/ContentValues;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lhuawei/HwFeatureReader;->hasReadFileGp:Z

    .line 28
    sput-boolean v0, Lhuawei/HwFeatureReader;->hasReadFileHap:Z

    .line 29
    const-string v0, "HwFeatureReader"

    sput-object v0, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllFeatures()V
    .locals 11

    .line 46
    sget-object v0, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    const-string v1, "getAllFeatures begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-boolean v0, Lhuawei/HwFeatureReader;->hasReadFileGp:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lhuawei/HwFeatureReader;->hasReadFileHap:Z

    if-nez v0, :cond_6

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/cust/xml/HwFeatureConfig_Gp.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v1, "confFileGp":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/cust/xml/HwFeatureConfig_Hap.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v2, "confFileHap":Ljava/io/File;
    const/4 v3, 0x0

    move-object v4, v3

    .line 56
    .local v4, "confreader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v4, v5

    .line 57
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v0, v5

    .line 59
    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 60
    const-string v5, "features"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 63
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "prof_type":Ljava/lang/String;
    const-string v6, "feature"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 66
    nop

    .line 81
    .end local v5    # "prof_type":Ljava/lang/String;
    const/4 v5, 0x1

    sput-boolean v5, Lhuawei/HwFeatureReader;->hasReadFileHap:Z

    .line 82
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v4, v6

    .line 83
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    move-object v0, v6

    .line 85
    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 86
    const-string v6, "features"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 89
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "prof_type":Ljava/lang/String;
    sget-object v7, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllFeatures prof_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v7, "feature"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 93
    nop

    .line 108
    .end local v6    # "prof_type":Ljava/lang/String;
    sput-boolean v5, Lhuawei/HwFeatureReader;->hasReadFileGp:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    nop

    .line 123
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 125
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 127
    :goto_2
    nop

    .line 109
    :goto_3
    return-void

    .line 95
    .restart local v6    # "prof_type":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v7, "value"

    invoke-interface {v0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 96
    const-string v7, "name"

    invoke-interface {v0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "feature":Ljava/lang/String;
    sget-object v8, Lhuawei/HwFeatureReader;->map:Landroid/content/ContentValues;

    const-string v9, "value"

    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v8, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAllFeatures feature from confFileGp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "AttributeValue:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "value"

    .line 104
    invoke-interface {v0, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v6    # "prof_type":Ljava/lang/String;
    .end local v7    # "feature":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 68
    .restart local v5    # "prof_type":Ljava/lang/String;
    :cond_2
    const-string v6, "value"

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 69
    const-string v6, "name"

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "feature":Ljava/lang/String;
    sget-object v7, Lhuawei/HwFeatureReader;->map:Landroid/content/ContentValues;

    const-string v8, "value"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v7, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllFeatures  from confFileHap feature:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "AttributeValue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "value"

    .line 77
    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .end local v5    # "prof_type":Ljava/lang/String;
    .end local v6    # "feature":Ljava/lang/String;
    :cond_3
    goto/16 :goto_0

    .line 121
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 118
    :catch_1
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 123
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    .line 116
    :catch_2
    move-exception v3

    .line 117
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    sget-object v5, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v4, :cond_4

    .line 123
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    .line 114
    :catch_3
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_7
    sget-object v5, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 122
    .end local v3    # "e":Ljava/lang/RuntimeException;
    if-eqz v4, :cond_4

    .line 123
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 110
    :catch_4
    move-exception v3

    .line 113
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    sget-object v5, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    const-string v6, "File not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 122
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_4

    .line 123
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    .line 125
    :catch_5
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 127
    :cond_4
    :goto_4
    goto :goto_7

    .line 121
    :goto_5
    nop

    .line 122
    if-eqz v4, :cond_5

    .line 123
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_6

    .line 125
    :catch_6
    move-exception v5

    .line 126
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/Exception;
    nop

    .line 127
    :cond_5
    :goto_6
    throw v3

    .line 130
    .end local v0    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "confFileGp":Ljava/io/File;
    .end local v2    # "confFileHap":Ljava/io/File;
    .end local v4    # "confreader":Ljava/io/InputStreamReader;
    :cond_6
    :goto_7
    return-void
.end method

.method public static declared-synchronized getFeature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "feature"    # Ljava/lang/String;

    const-class v0, Lhuawei/HwFeatureReader;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    const-string v2, "getFeature begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v1, Lhuawei/HwFeatureReader;->map:Landroid/content/ContentValues;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sput-object v1, Lhuawei/HwFeatureReader;->map:Landroid/content/ContentValues;

    .line 35
    invoke-static {}, Lhuawei/HwFeatureReader;->getAllFeatures()V

    .line 37
    :cond_0
    sget-object v1, Lhuawei/HwFeatureReader;->map:Landroid/content/ContentValues;

    invoke-virtual {v1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Lhuawei/HwFeatureReader;->map:Landroid/content/ContentValues;

    invoke-virtual {v1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 40
    :cond_1
    :try_start_1
    sget-object v1, Lhuawei/HwFeatureReader;->TAG:Ljava/lang/String;

    const-string v2, "getFeature finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 31
    .end local p0    # "feature":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
