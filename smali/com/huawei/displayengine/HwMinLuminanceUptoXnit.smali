.class public Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;
.super Ljava/lang/Object;
.source "HwMinLuminanceUptoXnit.java"


# static fields
.field private static final FIRST_ADDED_BRIGHTNESS:I = 0x9c

.field private static final FOURTH_ADDED_BRIGHTNESS:I = 0x112

.field private static final MAX_BRIGHTNESS:I = 0x2710

.field private static final MIN_BRIGHTNESS:I = 0x9c

.field private static final NORMALIZED_DEFAULT_MAX_BRIGHTNESS:I = 0xff

.field private static final NORMALIZED_DEFAULT_MIN_BRIGHTNESS:I = 0x4

.field private static final NORMALIZED_MAX_BRIGHTNESS:I = 0x2710

.field private static final SECOND_ADDED_BRIGHTNESS:I = 0xc4

.field private static TAG:Ljava/lang/String; = null

.field private static final THIRD_ADDED_BRIGHTNESS:I = 0xeb

.field private static final XNIT_CONFIG_NAME:Ljava/lang/String; = "XnitConfig.xml"

.field private static final XNIT_CONFIG_NAME_NOEXT:Ljava/lang/String; = "XnitConfig"


# instance fields
.field private mActualMaxLuminance:I

.field private mActualMinLuminance:I

.field private mAddedPointForExpectedMinLum:I

.field private mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

.field private mExpectedMinLuminance:I

.field private mLcdPanelName:Ljava/lang/String;

.field private mNeedAdjustMinLum:Z

.field private mSupportXCC:I

.field private mXccCoefForExpectedMinLum:[[F

.field private mXccCoef_is_reseted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "HwMinLuminanceUptoXnit"

    sput-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/displayengine/DisplayEngineManager;)V
    .locals 5
    .param p1, "context"    # Lcom/huawei/displayengine/DisplayEngineManager;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 37
    iput v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mSupportXCC:I

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mLcdPanelName:Ljava/lang/String;

    .line 42
    iput-boolean v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mNeedAdjustMinLum:Z

    .line 43
    const/16 v1, 0x168

    iput v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMaxLuminance:I

    .line 44
    const/4 v1, 0x4

    iput v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMinLuminance:I

    .line 45
    const/4 v1, 0x2

    iput v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mExpectedMinLuminance:I

    .line 46
    const/4 v2, 0x3

    iput v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    .line 47
    new-array v3, v2, [[F

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    aput-object v4, v3, v0

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    const/4 v4, 0x1

    aput-object v0, v3, v4

    new-array v0, v2, [F

    fill-array-data v0, :array_2

    aput-object v0, v3, v1

    iput-object v3, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    .line 107
    iput-object p1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/huawei/displayengine/DisplayEngineManager;->getSupported(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mSupportXCC:I

    .line 111
    invoke-direct {p0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->getLcdPanelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mLcdPanelName:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->getXmlPath()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "configFilePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    sget-object v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v2, "getConfig failed! loadDefaultConfig"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->loadDefaultConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "configFilePath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig error! Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkConfigLoadedFromXML()V
    .locals 7

    .line 155
    iget v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMinLuminance:I

    iget v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMaxLuminance:I

    if-le v0, v1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->loadDefaultConfig()V

    .line 157
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v1, "checkConfig failed for mActualMinLuminance > mActualMaxLuminance , LoadDefaultConfig!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 161
    :cond_0
    iget v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mExpectedMinLuminance:I

    iget v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMaxLuminance:I

    if-le v0, v1, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->loadDefaultConfig()V

    .line 163
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v1, "checkConfig failed for mExpectedMinLuminance > mActualMaxLuminance , LoadDefaultConfig!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v5

    aget v0, v0, v5

    cmpg-float v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v5

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    :cond_2
    iget v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    const/4 v6, 0x2

    if-lt v0, v6, :cond_3

    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v4

    aget v0, v0, v5

    cmpg-float v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v4

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    :cond_3
    iget v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v6

    aget v0, v0, v5

    cmpg-float v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v6

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    goto :goto_0

    .line 175
    :cond_4
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v1, "checkConfig LoadedFromXML success!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 170
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->loadDefaultConfig()V

    .line 171
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v1, "checkConfig failed for mAddedPointForExpectedMinLum > 4 , LoadDefaultConfig!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method private getConfig(Ljava/lang/String;)Z
    .locals 7
    .param p1, "configFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 129
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "xmlFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 132
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 133
    invoke-direct {p0, v2}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->getConfigFromXML(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->checkConfigLoadedFromXML()V

    .line 135
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v0, 0x1

    .line 142
    nop

    .line 143
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e1":Ljava/io/IOException;
    sget-object v4, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e1 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .end local v3    # "e1":Ljava/io/IOException;
    goto :goto_1

    .line 148
    :goto_0
    nop

    .line 136
    :goto_1
    return v0

    .line 142
    :cond_1
    nop

    .line 143
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 145
    :catch_1
    move-exception v3

    .line 146
    .restart local v3    # "e1":Ljava/io/IOException;
    sget-object v4, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v6, "e1 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .line 149
    .end local v3    # "e1":Ljava/io/IOException;
    goto :goto_4

    .line 148
    :cond_2
    :goto_3
    goto :goto_4

    .line 141
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 138
    :catch_2
    move-exception v3

    .line 139
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v4, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfig error! Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 143
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 145
    :catch_3
    move-exception v3

    .line 146
    .local v3, "e1":Ljava/io/IOException;
    sget-object v4, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 151
    .end local v3    # "e1":Ljava/io/IOException;
    :goto_4
    return v0

    .line 141
    :goto_5
    nop

    .line 142
    if-eqz v2, :cond_3

    .line 143
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 145
    :catch_4
    move-exception v3

    .line 146
    .restart local v3    # "e1":Ljava/io/IOException;
    sget-object v4, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e1 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .end local v3    # "e1":Ljava/io/IOException;
    nop

    .line 148
    :cond_3
    :goto_6
    throw v0

    .line 125
    .end local v1    # "xmlFile":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    :cond_4
    :goto_7
    sget-object v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v2, "getConfig configFilePath is null! use default config"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v0
.end method

.method private getConfigFromXML(Ljava/io/InputStream;)Z
    .locals 21
    .param p1, "inStream"    # Ljava/io/InputStream;

    move-object/from16 v1, p0

    .line 199
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v2, "getConfigFromXML"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "NeedAdjustMinLumLoaded":Z
    const/4 v3, 0x0

    .line 203
    .local v3, "ActualMaxLuminanceLoaded":Z
    const/4 v4, 0x0

    .line 204
    .local v4, "ActualMinLuminanceLoaded":Z
    const/4 v5, 0x0

    .line 205
    .local v5, "ExpectedMinLuminanceLoaded":Z
    const/4 v6, 0x0

    .line 206
    .local v6, "AddedPointForExpectedMinLumLoaded":Z
    const/4 v7, 0x0

    .line 207
    .local v7, "XccCoefForExpectedMinLumLoaded":Z
    const/4 v8, 0x0

    .line 208
    .local v8, "XccCoefForExpectedMinLumLoadStarted":Z
    const/4 v9, 0x0

    .line 210
    .local v9, "index":I
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v10, v0

    .line 212
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v0, "UTF-8"
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v12, p1

    :try_start_1
    invoke-interface {v10, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 213
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 214
    .local v0, "eventType":I
    :goto_0
    const/4 v13, 0x1

    if-eq v0, v13, :cond_d

    .line 215
    if-eqz v0, :cond_c

    packed-switch v0, :pswitch_data_0

    .line 271
    :cond_0
    move/from16 v18, v0

    move/from16 v19, v8

    goto/16 :goto_4

    .line 263
    :pswitch_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "XccCoefForExpectedMinLum"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v13, :cond_0

    .line 264
    const/4 v8, 0x0

    .line 265
    const/4 v7, 0x1

    .line 271
    .end local v0    # "eventType":I
    .local v18, "eventType":I
    :goto_1
    move/from16 v18, v0

    goto/16 :goto_5

    .line 219
    .end local v18    # "eventType":I
    .restart local v0    # "eventType":I
    :pswitch_1
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 220
    .local v14, "name":Ljava/lang/String;
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 221
    move/from16 v18, v0

    move/from16 v19, v8

    goto/16 :goto_3

    .line 223
    :cond_1
    const-string v15, "NeedAdjustMinLum"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v15, :cond_2

    .line 224
    :try_start_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mNeedAdjustMinLum:Z

    .line 225
    const/4 v2, 0x1

    .line 226
    sget-object v13, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NeedAdjustMinLum = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mNeedAdjustMinLum:Z

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 227
    :cond_2
    :try_start_4
    const-string v11, "ActualMaxLuminance"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v11, :cond_3

    .line 228
    :try_start_5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMaxLuminance:I

    .line 229
    const/4 v3, 0x1

    .line 230
    sget-object v11, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ActualMaxLuminance = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMaxLuminance:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 231
    :cond_3
    :try_start_6
    const-string v11, "ActualMinLuminance"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v11, :cond_4

    .line 232
    :try_start_7
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMinLuminance:I

    .line 233
    const/4 v4, 0x1

    .line 234
    sget-object v11, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ActualMinLuminance = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMinLuminance:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 235
    :cond_4
    :try_start_8
    const-string v11, "ExpectedMinLuminance"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v11, :cond_5

    .line 236
    :try_start_9
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mExpectedMinLuminance:I

    .line 237
    const/4 v5, 0x1

    .line 238
    sget-object v11, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ExpectedMinLuminance = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mExpectedMinLuminance:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 239
    :cond_5
    :try_start_a
    const-string v11, "AddedPointsForExpectedMinLum"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v11, :cond_6

    .line 240
    :try_start_b
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    .line 241
    const/4 v6, 0x1

    .line 242
    sget-object v11, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AddedPointsForExpectedMinLum = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 243
    :cond_6
    :try_start_c
    const-string v11, "XccCoefForExpectedMinLum"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 244
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 245
    :cond_7
    const-string v11, "XccCoef"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v6, :cond_a

    if-eqz v8, :cond_a

    .line 247
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 248
    .local v11, "s":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 250
    .local v15, "XccForRGBSplited":[Ljava/lang/String;
    if-eqz v15, :cond_9

    array-length v13, v15

    move/from16 v18, v0

    const/4 v0, 0x3

    .end local v0    # "eventType":I
    .restart local v18    # "eventType":I
    if-eq v13, v0, :cond_8

    .line 251
    move/from16 v19, v8

    goto :goto_2

    .line 255
    :cond_8
    iget-object v0, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v9
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    move/from16 v19, v8

    const/4 v13, 0x0

    :try_start_d
    aget-object v8, v15, v13

    .end local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .local v19, "XccCoefForExpectedMinLumLoadStarted":Z
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v0, v13

    .line 256
    iget-object v0, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v9

    const/4 v8, 0x1

    aget-object v13, v15, v8

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aput v13, v0, v8

    .line 257
    iget-object v0, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v9

    const/4 v8, 0x2

    aget-object v13, v15, v8

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aput v13, v0, v8

    .line 258
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXccCoefForExpectedMinLum x = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v8, v8, v9

    const/16 v16, 0x0

    aget v8, v8, v16

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", y = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v8, v8, v9

    const/16 v17, 0x1

    aget v8, v8, v17

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", z = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v8, v8, v9

    const/16 v17, 0x2

    aget v8, v8, v17

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    add-int/lit8 v9, v9, 0x1

    .line 260
    .end local v11    # "s":Ljava/lang/String;
    .end local v15    # "XccForRGBSplited":[Ljava/lang/String;
    nop

    .line 271
    move/from16 v8, v19

    goto :goto_5

    .line 251
    .end local v18    # "eventType":I
    .end local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v0    # "eventType":I
    .restart local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v11    # "s":Ljava/lang/String;
    .restart local v15    # "XccForRGBSplited":[Ljava/lang/String;
    :cond_9
    move/from16 v18, v0

    move/from16 v19, v8

    .end local v0    # "eventType":I
    .end local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v18    # "eventType":I
    .restart local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    :goto_2
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "split failed! s = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 252
    const/4 v8, 0x0

    return v8

    .line 271
    .end local v11    # "s":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "XccForRGBSplited":[Ljava/lang/String;
    .end local v18    # "eventType":I
    .end local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v0    # "eventType":I
    .restart local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    :cond_a
    move/from16 v18, v0

    move/from16 v19, v8

    .end local v0    # "eventType":I
    .end local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v18    # "eventType":I
    .restart local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    goto :goto_4

    .line 221
    .end local v18    # "eventType":I
    .end local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v0    # "eventType":I
    .restart local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v14    # "name":Ljava/lang/String;
    :cond_b
    move/from16 v18, v0

    move/from16 v19, v8

    .end local v0    # "eventType":I
    .end local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v18    # "eventType":I
    .restart local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    :goto_3
    const/4 v8, 0x0

    return v8

    .line 282
    .end local v14    # "name":Ljava/lang/String;
    .end local v18    # "eventType":I
    .end local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    :catch_0
    move-exception v0

    move/from16 v19, v8

    .end local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    goto :goto_6

    .line 280
    .end local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    :catch_1
    move-exception v0

    move/from16 v19, v8

    .end local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    goto :goto_7

    .line 217
    .end local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v0    # "eventType":I
    .restart local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    :cond_c
    move/from16 v18, v0

    move/from16 v19, v8

    .line 271
    :goto_4
    move/from16 v8, v19

    .end local v0    # "eventType":I
    .restart local v18    # "eventType":I
    :goto_5
    :try_start_e
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .end local v18    # "eventType":I
    .restart local v0    # "eventType":I
    goto/16 :goto_0

    .line 274
    :cond_d
    move/from16 v18, v0

    move/from16 v19, v8

    .end local v0    # "eventType":I
    .end local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v18    # "eventType":I
    .restart local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    if-eqz v4, :cond_e

    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    if-eqz v7, :cond_e

    .line 276
    :try_start_f
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v8, "xnit getConfigFromeXML success!"

    invoke-static {v0, v8}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 278
    const/4 v0, 0x1

    return v0

    .line 282
    .end local v18    # "eventType":I
    :catch_2
    move-exception v0

    move/from16 v8, v19

    goto :goto_6

    .line 280
    :catch_3
    move-exception v0

    move/from16 v8, v19

    goto :goto_7

    .line 284
    :cond_e
    nop

    .line 285
    move/from16 v8, v19

    goto :goto_8

    .line 282
    .end local v19    # "XccCoefForExpectedMinLumLoadStarted":Z
    .restart local v8    # "XccCoefForExpectedMinLumLoadStarted":Z
    :catch_4
    move-exception v0

    goto :goto_6

    .line 280
    :catch_5
    move-exception v0

    goto :goto_7

    .line 282
    :catch_6
    move-exception v0

    move-object/from16 v12, p1

    .line 283
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    sget-object v11, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getConfigFromXML error! Exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 280
    :catch_7
    move-exception v0

    move-object/from16 v12, p1

    .line 281
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    sget-object v11, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getConfigFromXML error! Exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 285
    :goto_8
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v11, "getConfigFromXML failed!"

    invoke-static {v0, v11}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v11, 0x0

    return v11

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLcdPanelName()Ljava/lang/String;
    .locals 9

    .line 60
    const-string v0, "DisplayEngineExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    sget-object v2, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v3, "getLcdModelName() binder is null!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v1

    .line 65
    :cond_0
    invoke-static {v0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v2

    .line 66
    .local v2, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-nez v2, :cond_1

    .line 67
    sget-object v3, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v4, "getLcdModelName() service is null!"

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v1

    .line 70
    :cond_1
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 71
    .local v3, "name":[B
    const/4 v4, 0x0

    move v5, v4

    .line 73
    .local v5, "ret":I
    const/16 v6, 0xe

    :try_start_0
    array-length v7, v3

    invoke-interface {v2, v6, v4, v3, v7}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v5    # "ret":I
    .local v4, "ret":I
    nop

    .line 79
    if-eqz v4, :cond_2

    .line 80
    sget-object v5, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLcdModelName() getEffect failed! ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v1

    .line 83
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 84
    .local v1, "lcdModel":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 85
    const/16 v5, 0x20

    const/16 v6, 0x5f

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "panelName":Ljava/lang/String;
    const-string v6, "\'"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 87
    return-object v5

    .line 75
    .end local v1    # "lcdModel":Ljava/lang/String;
    .end local v4    # "ret":I
    .local v5, "ret":I
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLcdModelName() RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object v1
.end method

.method private getXmlPath()Ljava/lang/String;
    .locals 7

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XnitConfig_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mLcdPanelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "lcdXnitConfigFile":Ljava/lang/String;
    const-string v1, "/display/effect/displayengine/%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "xmlPath":Ljava/lang/String;
    invoke-static {v1, v4}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 94
    .local v3, "xmlFile":Ljava/io/File;
    if-nez v3, :cond_0

    .line 95
    const-string v5, "/display/effect/displayengine/%s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "XnitConfig.xml"

    aput-object v6, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1, v4}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 97
    if-nez v3, :cond_0

    .line 98
    sget-object v2, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v4, "get xmlFile failed!"

    invoke-static {v2, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v2, 0x0

    return-object v2

    .line 103
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadDefaultConfig()V
    .locals 5

    .line 179
    sget-object v0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    const-string v1, "loadDefaultConfig"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mNeedAdjustMinLum:Z

    .line 181
    const/16 v1, 0x15e

    iput v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMaxLuminance:I

    .line 182
    const/4 v1, 0x4

    iput v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mActualMinLuminance:I

    .line 183
    const/4 v1, 0x2

    iput v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mExpectedMinLuminance:I

    .line 184
    iput v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    .line 186
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    .line 187
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v0

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 188
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v0

    aput v3, v2, v1

    .line 189
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v4

    aput v3, v2, v0

    .line 190
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v4

    aput v3, v2, v4

    .line 191
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v4

    aput v3, v2, v1

    .line 192
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v1

    aput v3, v2, v0

    .line 193
    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v1

    aput v3, v0, v4

    .line 194
    iget-object v0, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v0, v0, v1

    aput v3, v0, v1

    .line 196
    return-void
.end method

.method private xccCoef_setting(FFF)V
    .locals 4
    .param p1, "xccCoef_R"    # F
    .param p2, "xccCoef_G"    # F
    .param p3, "xccCoef_B"    # F

    .line 291
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    cmpl-float v2, p2, v0

    if-gtz v2, :cond_1

    cmpg-float v2, p2, v1

    if-ltz v2, :cond_1

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_1

    cmpg-float v0, p3, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 296
    .local v0, "xccCoef":[I
    const/4 v1, 0x0

    const/high16 v2, 0x47000000    # 32768.0f

    mul-float v3, p1, v2

    float-to-int v3, v3

    aput v3, v0, v1

    .line 297
    const/4 v1, 0x1

    mul-float v3, p2, v2

    float-to-int v3, v3

    aput v3, v0, v1

    .line 298
    const/4 v1, 0x2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 300
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 301
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "Buffer"

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 302
    const-string v2, "BufferLength"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 303
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/huawei/displayengine/DisplayEngineManager;->setData(ILandroid/os/PersistableBundle;)I

    .line 304
    return-void

    .line 292
    .end local v0    # "xccCoef":[I
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setXnit(III)I
    .locals 11
    .param p1, "mNormalizedMinBrightness"    # I
    .param p2, "mNormalizedMaxBrightness"    # I
    .param p3, "level"    # I

    .line 307
    move v0, p3

    .line 312
    .local v0, "brightnessvalue":I
    iget v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mSupportXCC:I

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mNeedAdjustMinLum:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 317
    :cond_0
    iget v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    const/16 v2, 0xeb

    const/high16 v4, 0x421c0000    # 39.0f

    const/high16 v5, 0x42200000    # 40.0f

    const/16 v6, 0xc4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 364
    :pswitch_0
    if-ge p3, v6, :cond_1

    .line 365
    move v0, p1

    .line 366
    iget-object v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v1, v1, v3

    aget v1, v1, v3

    add-int/lit16 v2, p3, -0x9c

    int-to-float v2, v2

    iget-object v4, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v4, v4, v9

    aget v4, v4, v3

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v3

    aget v6, v6, v3

    sub-float/2addr v4, v6

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 367
    .local v1, "xccCoef_R":F
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v3

    aget v2, v2, v9

    add-int/lit16 v4, p3, -0x9c

    int-to-float v4, v4

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v9

    aget v6, v6, v9

    iget-object v7, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v7, v7, v3

    aget v7, v7, v9

    sub-float/2addr v6, v7

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 368
    .local v2, "xccCoef_G":F
    iget-object v4, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v4, v4, v3

    aget v4, v4, v8

    add-int/lit16 v6, p3, -0x9c

    int-to-float v6, v6

    iget-object v7, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v7, v7, v9

    aget v7, v7, v8

    iget-object v9, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v9, v9, v3

    aget v8, v9, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 369
    .local v4, "xccCoef_B":F
    invoke-direct {p0, v1, v2, v4}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 370
    iput-boolean v3, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 371
    sget-object v3, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xnit xccCoef_R = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", input_level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", addedXccNumbers = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    .end local v1    # "xccCoef_R":F
    .end local v2    # "xccCoef_G":F
    .end local v4    # "xccCoef_B":F
    :cond_1
    if-ge p3, v2, :cond_2

    .line 373
    move v0, p1

    .line 374
    iget-object v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v1, v1, v9

    aget v1, v1, v3

    add-int/lit16 v2, p3, -0xc4

    int-to-float v2, v2

    iget-object v5, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v5, v5, v8

    aget v5, v5, v3

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v9

    aget v6, v6, v3

    sub-float/2addr v5, v6

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 375
    .restart local v1    # "xccCoef_R":F
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v9

    aget v2, v2, v9

    add-int/lit16 v5, p3, -0xc4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v8

    aget v6, v6, v9

    iget-object v7, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v7, v7, v9

    aget v7, v7, v9

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    .line 376
    .restart local v2    # "xccCoef_G":F
    iget-object v5, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v5, v5, v9

    aget v5, v5, v8

    add-int/lit16 v6, p3, -0xc4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v7, v7, v8

    aget v7, v7, v8

    iget-object v10, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v9, v10, v9

    aget v8, v9, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 377
    .local v5, "xccCoef_B":F
    invoke-direct {p0, v1, v2, v5}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 378
    iput-boolean v3, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 379
    sget-object v3, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xnit xccCoef_R = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", input_level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", addedXccNumbers = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 380
    .end local v1    # "xccCoef_R":F
    .end local v2    # "xccCoef_G":F
    .end local v5    # "xccCoef_B":F
    :cond_2
    const/16 v1, 0x112

    if-gt p3, v1, :cond_3

    .line 381
    move v0, p1

    .line 382
    iget-object v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v1, v1, v8

    aget v1, v1, v3

    add-int/lit16 v2, p3, -0xeb

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v5, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v5, v5, v8

    aget v5, v5, v3

    sub-float v5, v7, v5

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 383
    .restart local v1    # "xccCoef_R":F
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v8

    aget v2, v2, v9

    add-int/lit16 v5, p3, -0xeb

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v8

    aget v6, v6, v9

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 384
    .restart local v2    # "xccCoef_G":F
    iget-object v5, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v5, v5, v8

    aget v5, v5, v8

    add-int/lit16 v6, p3, -0xeb

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget-object v4, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v4, v4, v8

    aget v4, v4, v8

    sub-float/2addr v7, v4

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 385
    .restart local v5    # "xccCoef_B":F
    invoke-direct {p0, v1, v2, v5}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 386
    iput-boolean v3, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 387
    sget-object v3, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xnit xccCoef_R = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", input_level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", addedXccNumbers = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 389
    .end local v1    # "xccCoef_R":F
    .end local v2    # "xccCoef_G":F
    .end local v5    # "xccCoef_B":F
    :cond_3
    iget-boolean v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    if-nez v1, :cond_4

    .line 390
    invoke-direct {p0, v7, v7, v7}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 392
    :cond_4
    iput-boolean v9, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 393
    add-int/lit16 v1, p3, -0x112

    sub-int v2, p2, p1

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x25fe

    add-int v0, p1, v1

    .line 395
    goto/16 :goto_0

    .line 339
    :pswitch_1
    if-ge p3, v6, :cond_5

    .line 340
    move v0, p1

    .line 341
    iget-object v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v1, v1, v3

    aget v1, v1, v3

    add-int/lit16 v2, p3, -0x9c

    int-to-float v2, v2

    iget-object v4, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v4, v4, v9

    aget v4, v4, v3

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v3

    aget v6, v6, v3

    sub-float/2addr v4, v6

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 342
    .restart local v1    # "xccCoef_R":F
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v3

    aget v2, v2, v9

    add-int/lit16 v4, p3, -0x9c

    int-to-float v4, v4

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v9

    aget v6, v6, v9

    iget-object v7, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v7, v7, v3

    aget v7, v7, v9

    sub-float/2addr v6, v7

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 343
    .restart local v2    # "xccCoef_G":F
    iget-object v4, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v4, v4, v3

    aget v4, v4, v8

    add-int/lit16 v6, p3, -0x9c

    int-to-float v6, v6

    iget-object v7, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v7, v7, v9

    aget v7, v7, v8

    iget-object v9, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v9, v9, v3

    aget v8, v9, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 344
    .restart local v4    # "xccCoef_B":F
    invoke-direct {p0, v1, v2, v4}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 345
    iput-boolean v3, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 346
    sget-object v3, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xnit xccCoef_R = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", input_level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", addedXccNumbers = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    .end local v1    # "xccCoef_R":F
    .end local v2    # "xccCoef_G":F
    .end local v4    # "xccCoef_B":F
    :cond_5
    if-gt p3, v2, :cond_6

    .line 348
    move v0, p1

    .line 349
    iget-object v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v1, v1, v9

    aget v1, v1, v3

    add-int/lit16 v2, p3, -0xc4

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v5, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v5, v5, v9

    aget v5, v5, v3

    sub-float v5, v7, v5

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 350
    .restart local v1    # "xccCoef_R":F
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v9

    aget v2, v2, v9

    add-int/lit16 v5, p3, -0xc4

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v9

    aget v6, v6, v9

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 351
    .restart local v2    # "xccCoef_G":F
    iget-object v5, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v5, v5, v9

    aget v5, v5, v8

    add-int/lit16 v6, p3, -0xc4

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget-object v4, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v4, v4, v9

    aget v4, v4, v8

    sub-float/2addr v7, v4

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 352
    .restart local v5    # "xccCoef_B":F
    invoke-direct {p0, v1, v2, v5}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 353
    iput-boolean v3, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 354
    sget-object v3, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xnit xccCoef_R = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", input_level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", addedXccNumbers = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    .end local v1    # "xccCoef_R":F
    .end local v2    # "xccCoef_G":F
    .end local v5    # "xccCoef_B":F
    :cond_6
    iget-boolean v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    if-nez v1, :cond_7

    .line 357
    invoke-direct {p0, v7, v7, v7}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 359
    :cond_7
    iput-boolean v9, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 360
    add-int/lit16 v1, p3, -0xeb

    sub-int v2, p2, p1

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2625

    add-int v0, p1, v1

    .line 362
    goto/16 :goto_0

    .line 322
    :pswitch_2
    if-gt p3, v6, :cond_8

    .line 323
    move v0, p1

    .line 324
    iget-object v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v1, v1, v3

    aget v1, v1, v3

    add-int/lit16 v2, p3, -0x9c

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v4, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v4, v4, v3

    aget v4, v4, v3

    sub-float v4, v7, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 325
    .restart local v1    # "xccCoef_R":F
    iget-object v2, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v2, v2, v3

    aget v2, v2, v9

    add-int/lit16 v4, p3, -0x9c

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget-object v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v6, v6, v3

    aget v6, v6, v9

    sub-float v6, v7, v6

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    .line 326
    .restart local v2    # "xccCoef_G":F
    iget-object v4, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v4, v4, v3

    aget v4, v4, v8

    add-int/lit16 v6, p3, -0x9c

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v5, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoefForExpectedMinLum:[[F

    aget-object v5, v5, v3

    aget v5, v5, v8

    sub-float/2addr v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 327
    .restart local v4    # "xccCoef_B":F
    invoke-direct {p0, v1, v2, v4}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 328
    iput-boolean v3, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 329
    sget-object v3, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xnit xccCoef_R = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", input_level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", addedXccNumbers = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mAddedPointForExpectedMinLum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    .end local v1    # "xccCoef_R":F
    .end local v2    # "xccCoef_G":F
    .end local v4    # "xccCoef_B":F
    :cond_8
    iget-boolean v1, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    if-nez v1, :cond_9

    .line 332
    invoke-direct {p0, v7, v7, v7}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->xccCoef_setting(FFF)V

    .line 334
    :cond_9
    iput-boolean v9, p0, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->mXccCoef_is_reseted:Z

    .line 335
    add-int/lit16 v1, p3, -0xc4

    sub-int v2, p2, p1

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x264c

    add-int v0, p1, v1

    .line 337
    goto :goto_0

    .line 319
    :pswitch_3
    add-int/lit16 v1, p3, -0x9c

    sub-int v2, p2, p1

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2674

    add-int v0, p1, v1

    .line 320
    nop

    .line 399
    :goto_0
    return v0

    .line 313
    :cond_a
    :goto_1
    add-int/lit16 v1, p3, -0x9c

    sub-int v2, p2, p1

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2674

    add-int/2addr v1, p1

    .line 314
    .end local v0    # "brightnessvalue":I
    .local v1, "brightnessvalue":I
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
