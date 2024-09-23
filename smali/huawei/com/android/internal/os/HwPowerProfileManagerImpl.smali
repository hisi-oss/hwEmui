.class public Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;
.super Ljava/lang/Object;
.source "HwPowerProfileManagerImpl.java"

# interfaces
.implements Lcom/android/internal/os/IHwPowerProfileManager;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final CUST_FILE_DIR:Ljava/lang/String; = "/data/cust/xml"

.field private static final POWER_PROFILE_NAME:Ljava/lang/String; = "power_profile.xml"

.field private static final SYSTEM_FILE_DIR:Ljava/lang/String; = "/system/etc/xml"

.field private static final TAG:Ljava/lang/String; = "PowerProfile"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;->mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/internal/os/IHwPowerProfileManager;
    .locals 1

    .line 61
    sget-object v0, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;->mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;

    invoke-direct {v0}, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;-><init>()V

    sput-object v0, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;->mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;

    .line 64
    :cond_0
    sget-object v0, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;->mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;

    return-object v0
.end method

.method private readHwPowerValuesFromXml(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p3, "fileDir"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .local p1, "sPowerItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .local p2, "sPowerArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Double;>;"
    move-object/from16 v1, p2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 79
    .local v4, "powerProfile":Ljava/io/File;
    if-nez v4, :cond_0

    .line 81
    const-string v0, "PowerProfile"

    const-string v5, "power_profile.xml not found! "

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v3

    .line 84
    :cond_0
    const-string v0, "PowerProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " be read ! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v5, 0x0

    .line 88
    .local v5, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v0

    .line 91
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v3, v0

    .line 92
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "parsingArray":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v7, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    move v8, v0

    move-object v0, v6

    .local v0, "arrayName":Ljava/lang/String;
    .local v8, "parsingArray":Z
    :goto_0
    move-object v9, v0

    .line 98
    .end local v0    # "arrayName":Ljava/lang/String;
    .local v9, "arrayName":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 101
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 132
    .end local v10    # "element":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 133
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Double;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v8    # "parsingArray":Z
    .end local v9    # "arrayName":Ljava/lang/String;
    :cond_1
    nop

    .line 142
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :goto_1
    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PowerProfile"

    const-string v6, "Fail to close!"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 148
    :goto_2
    const-string v0, "PowerProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, p3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "power_profile.xml"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " be read ! "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x1

    return v0

    .line 103
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v8    # "parsingArray":Z
    .restart local v9    # "arrayName":Ljava/lang/String;
    .restart local v10    # "element":Ljava/lang/String;
    :cond_2
    move-object/from16 v11, p3

    if-eqz v8, :cond_3

    :try_start_2
    const-string v0, "value"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Double;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/4 v8, 0x0

    goto :goto_3

    .line 140
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v8    # "parsingArray":Z
    .end local v9    # "arrayName":Ljava/lang/String;
    .end local v10    # "element":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v6, p1

    goto/16 :goto_9

    .line 137
    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    goto/16 :goto_a

    .line 135
    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    goto/16 :goto_b

    .line 107
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v8    # "parsingArray":Z
    .restart local v9    # "arrayName":Ljava/lang/String;
    .restart local v10    # "element":Ljava/lang/String;
    :cond_3
    :goto_3
    const-string v0, "array"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    const/4 v0, 0x1

    .line 109
    .end local v8    # "parsingArray":Z
    .local v0, "parsingArray":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 110
    const-string v8, "name"

    invoke-interface {v3, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 131
    .end local v9    # "arrayName":Ljava/lang/String;
    .local v8, "arrayName":Ljava/lang/String;
    move-object/from16 v6, p1

    move-object/from16 v19, v8

    move v8, v0

    move-object/from16 v0, v19

    goto/16 :goto_8

    .line 111
    .end local v0    # "parsingArray":Z
    .local v8, "parsingArray":Z
    .restart local v9    # "arrayName":Ljava/lang/String;
    :cond_4
    const-string v0, "item"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "value"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 131
    .end local v10    # "element":Ljava/lang/String;
    :cond_5
    move-object/from16 v6, p1

    goto :goto_7

    .line 112
    .restart local v10    # "element":Ljava/lang/String;
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 113
    .local v0, "name":Ljava/lang/String;
    if-nez v8, :cond_7

    const-string v12, "name"

    invoke-interface {v3, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_5

    .line 114
    :cond_7
    move-object v12, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    :goto_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v13, 0x4

    if-ne v0, v13, :cond_5

    .line 115
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v0

    .line 116
    .local v13, "power":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 118
    .local v14, "value":D
    :try_start_3
    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v14, v16

    .line 123
    goto :goto_6

    .line 119
    :catch_3
    move-exception v0

    .line 121
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v6, "PowerProfile"

    move-object/from16 v18, v0

    const-string v0, "there is a NumberFormatException"

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .local v18, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v18    # "nfe":Ljava/lang/NumberFormatException;
    :goto_6
    const-string v0, "item"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v6, p1

    :try_start_5
    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 137
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v8    # "parsingArray":Z
    .end local v9    # "arrayName":Ljava/lang/String;
    .end local v10    # "element":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "power":Ljava/lang/String;
    .end local v14    # "value":D
    :catch_4
    move-exception v0

    goto :goto_a

    .line 135
    :catch_5
    move-exception v0

    goto :goto_b

    .line 126
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v8    # "parsingArray":Z
    .restart local v9    # "arrayName":Ljava/lang/String;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "power":Ljava/lang/String;
    .restart local v14    # "value":D
    :cond_8
    move-object/from16 v6, p1

    if-eqz v8, :cond_9

    .line 127
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    .end local v10    # "element":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "power":Ljava/lang/String;
    .end local v14    # "value":D
    :cond_9
    :goto_7
    move-object v0, v9

    .line 95
    .end local v9    # "arrayName":Ljava/lang/String;
    .local v0, "arrayName":Ljava/lang/String;
    :goto_8
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 140
    .end local v0    # "arrayName":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v8    # "parsingArray":Z
    :catchall_1
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v11, p3

    :goto_9
    move-object v3, v0

    goto :goto_c

    .line 137
    :catch_6
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v11, p3

    .line 138
    .local v0, "e":Ljava/io/IOException;
    :goto_a
    :try_start_6
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v11, p3

    .line 136
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 140
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_2
    move-exception v0

    goto :goto_9

    :goto_c
    if-eqz v5, :cond_a

    .line 142
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 145
    goto :goto_d

    .line 143
    :catch_8
    move-exception v0

    move-object v7, v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "PowerProfile"

    const-string v8, "Fail to close!"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_d
    throw v3

    .line 151
    :cond_b
    move-object/from16 v6, p1

    move-object/from16 v11, p3

    const-string v0, "PowerProfile"

    const-string v7, "power_profile.xml 11111not found! power profile maybe not right!"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v3
.end method


# virtual methods
.method public readHwPowerValuesFromXml(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 69
    .local p1, "sPowerItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .local p2, "sPowerArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Double;>;"
    const-string v0, "/data/cust/xml"

    const-string v1, "power_profile.xml"

    invoke-direct {p0, p1, p2, v0, v1}, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;->readHwPowerValuesFromXml(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/etc/xml"

    const-string v1, "power_profile.xml"

    .line 70
    invoke-direct {p0, p1, p2, v0, v1}, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;->readHwPowerValuesFromXml(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
