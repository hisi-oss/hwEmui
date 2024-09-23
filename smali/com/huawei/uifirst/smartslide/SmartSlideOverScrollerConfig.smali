.class public Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;
.super Ljava/lang/Object;
.source "SmartSlideOverScrollerConfig.java"


# static fields
.field private static final DECELERATION_TIME_CONSTANT:Ljava/lang/String; = "decelerationTimeConstant"

.field private static final DECELERATION_TIME_CONSTANT_DEFAULT:Ljava/lang/String; = "-0.405"

.field private static final DECELERATION_TIME_SLOPE:Ljava/lang/String; = "decelerationTimeSlope"

.field private static final DECELERATION_TIME_SLOPE_DEFAULT:Ljava/lang/String; = "0.528"

.field private static final DEVICE_SCREEN_SIZE_DEFAULT:Ljava/lang/String; = "6.0"

.field private static final EXP_COEFFICIENT:Ljava/lang/String; = "expCoefficient"

.field private static final EXP_COEFFICIENT_DEFAULT:Ljava/lang/String; = "4.2"

.field private static final EXP_COFFICIENT_SLOW_DOWN:Ljava/lang/String; = "expCofficientSlowDown"

.field private static final EXP_COFFICIENT_SLOW_DOWN_DEFAULT:Ljava/lang/String; = "6.5"

.field private static final FLING_TIME_THRESHOLD:Ljava/lang/String; = "flingTimeThreshold"

.field private static final FLING_TIME_THRESHOLD_DEFAULT:Ljava/lang/String; = "900.0"

.field private static final ID_OVERSCROLLER_CONFIG:I = 0x20c0000

.field private static final IS_ENABLE:Ljava/lang/String; = "isEnable"

.field private static final IS_ENABLE_DEFAULT:Ljava/lang/String; = "true"

.field private static final IS_SCREEN_SIZE_FIX:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "OverScrollerOptimization"

.field private static final MAX_READ_FROM_FILE:I = 0xbb8

.field private static final OVERSCROLLER_CONFIG:Ljava/lang/String; = "overscroller_config"

.field private static final OVERSCROLLER_DEVICE_FILE_PATH:Ljava/lang/String; = "sys/devices/virtual/graphics/fb0/lcd_model"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final SCREEN_DISPLAY_PIXELS:Ljava/lang/String; = "screendisplaypixels"

.field private static final SCREEN_HEIGHT_DEFAULT:F = 1920.0f

.field private static final SCREEN_WIDHT_DEFAULT:F = 1080.0f

.field private static final VELOCITY_MULTIPLIER:Ljava/lang/String; = "velocityMultiplier"

.field private static final VELOCITY_MULTIPLIER_DEFAULT:Ljava/lang/String; = "1.5"


# instance fields
.field private mReadConfigData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:F

.field private mScreenWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/high16 v0, 0x44870000    # 1080.0f

    iput v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenWidth:F

    .line 57
    const/high16 v1, 0x44f00000    # 1920.0f

    iput v1, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenHeight:F

    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenHeight:F

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenWidth:F

    goto :goto_0

    .line 71
    :cond_0
    iput v1, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenHeight:F

    .line 72
    iput v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenWidth:F

    .line 74
    :goto_0
    return-void
.end method

.method private closeFileStreamNotThrow(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "fis"    # Ljava/io/Closeable;

    .line 181
    if-eqz p1, :cond_0

    .line 183
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    const/4 p1, 0x0

    .line 186
    const-string v1, "OverScrollerOptimization"

    const-string v2, "can\'t delete FileStream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private getCallerProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    const-string v0, ""

    .line 100
    .local v0, "callingApp":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 101
    .local v1, "uid":I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 102
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    if-nez v0, :cond_1

    .line 107
    const-string v3, ""

    return-object v3

    .line 109
    :cond_1
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 110
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "callAppName":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 113
    .end local v3    # "callAppName":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private isKeyExist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyInput"    # Ljava/lang/String;
    .param p2, "defaultValueInput"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    return-void
.end method

.method private parseXML(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 225
    .local v1, "overScrollerConfigXml":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 226
    .local v2, "res":Landroid/content/res/Resources;
    const/high16 v3, 0x20c0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v1, v3

    .line 228
    if-eqz v1, :cond_4

    .line 229
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .line 230
    .local v3, "eventType":I
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 231
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 232
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v4

    .line 233
    .local v4, "count":I
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "overscroller_config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 235
    invoke-interface {v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 237
    .end local v5    # "i":I
    :cond_0
    const-string v5, "packageName"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 238
    nop

    .line 254
    if-eqz v1, :cond_1

    .line 255
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 238
    :cond_1
    return-object v0

    .line 240
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 244
    .end local v4    # "count":I
    :cond_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0

    .line 248
    .end local v3    # "eventType":I
    :cond_4
    nop

    .line 254
    if-eqz v1, :cond_5

    .line 255
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 248
    :cond_5
    return-object v0

    .line 254
    .end local v2    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    .line 255
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v2

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "ex":Ljava/io/IOException;
    nop

    .line 254
    if-eqz v1, :cond_7

    .line 255
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 252
    :cond_7
    return-object v0

    .line 249
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 250
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 254
    if-eqz v1, :cond_8

    .line 255
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 250
    :cond_8
    return-object v0
.end method

.method private readLcdDeviceFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "lcdDeviceFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "stdin":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 156
    .local v1, "lcdProp":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 159
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v3

    move v4, v3

    .local v4, "intC":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 160
    int-to-char v3, v4

    .line 161
    .local v3, "c":C
    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 162
    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0xbb8

    if-ge v5, v6, :cond_1

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .end local v3    # "c":C
    goto :goto_0

    .line 165
    .restart local v3    # "c":C
    :cond_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "input too long"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    .end local v3    # "c":C
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    nop

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {p0, v0}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->closeFileStreamNotThrow(Ljava/io/Closeable;)V

    .line 169
    return-object v3

    .line 171
    .end local v4    # "intC":I
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 174
    :cond_3
    invoke-direct {p0, v0}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->closeFileStreamNotThrow(Ljava/io/Closeable;)V

    throw v3
.end method


# virtual methods
.method public getOverScrollerConfig(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    const-string v0, "OverScrollerOptimization"

    const-string v1, "get the overscroller config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "xpp":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->getCallerProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    const-string v3, "expCoefficient"

    const-string v4, "4.2"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    const-string v3, "decelerationTimeSlope"

    const-string v4, "0.528"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    const-string v3, "decelerationTimeConstant"

    const-string v4, "-0.405"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    const-string v3, "flingTimeThreshold"

    const-string v4, "900.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    const-string v3, "expCofficientSlowDown"

    const-string v4, "6.5"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    const-string v3, "velocityMultiplier"

    const-string v4, "1.5"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    const-string v3, "isEnable"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->parseXML(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    .line 281
    const-string v2, "expCoefficient"

    const-string v3, "4.2"

    invoke-direct {p0, v2, v3}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->isKeyExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "decelerationTimeSlope"

    const-string v3, "0.528"

    invoke-direct {p0, v2, v3}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->isKeyExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "decelerationTimeConstant"

    const-string v3, "-0.405"

    invoke-direct {p0, v2, v3}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->isKeyExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "flingTimeThreshold"

    const-string v3, "900.0"

    invoke-direct {p0, v2, v3}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->isKeyExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "expCofficientSlowDown"

    const-string v3, "6.5"

    invoke-direct {p0, v2, v3}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->isKeyExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "velocityMultiplier"

    const-string v3, "1.5"

    invoke-direct {p0, v2, v3}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->isKeyExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "isEnable"

    const-string v3, "true"

    invoke-direct {p0, v2, v3}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->isKeyExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mReadConfigData:Ljava/util/HashMap;

    return-object v2
.end method

.method public getScreenHeight()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenHeight:F

    return v0
.end method

.method public getScreenHeight_ByResources(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    return v0
.end method

.method public getScreenPPI_ByResources(Landroid/content/Context;)F
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    invoke-virtual {p0}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->getScreenSize()F

    move-result v0

    .line 143
    .local v0, "screenSize":F
    iget v1, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenHeight:F

    iget v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenHeight:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenWidth:F

    iget v3, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    float-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public getScreenSize()F
    .locals 2

    .line 85
    const-string v0, "6.0"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 86
    .local v0, "screenSize":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 87
    const-string v1, "6.0"

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 89
    :cond_0
    return v0
.end method

.method public getScreenSize_ByDeviceFile()Ljava/lang/String;
    .locals 7

    .line 196
    const-string v0, ""

    .line 197
    .local v0, "lcdPropFromFile":Ljava/lang/String;
    const-string v1, "6.0"

    .line 199
    .local v1, "screenSize":Ljava/lang/String;
    :try_start_0
    const-string v2, "sys/devices/virtual/graphics/fb0/lcd_model"

    invoke-direct {p0, v2}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->readLcdDeviceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 202
    nop

    .line 203
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "arr":[Ljava/lang/String;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 205
    aget-object v5, v2, v4

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 206
    aget-object v5, v2, v4

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 207
    goto :goto_1

    .line 204
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    :cond_2
    const-string v1, "6.0"

    .line 213
    :cond_3
    return-object v1

    .line 200
    .end local v2    # "arr":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "6.0"

    return-object v3
.end method

.method public getScreenWidth()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->mScreenWidth:F

    return v0
.end method

.method public getScreenWidth_ByResources(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    return v0
.end method
