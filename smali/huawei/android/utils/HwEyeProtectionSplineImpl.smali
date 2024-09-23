.class public Lhuawei/android/utils/HwEyeProtectionSplineImpl;
.super Lhuawei/android/utils/HwEyeProtectionSpline;
.source "HwEyeProtectionSplineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DEFAULT_BRIGHTNESS:F = 100.0f

.field private static final EYE_PROTECTIION_MODE:I

.field private static final HW_EYEPROTECTION_CONFIG_FILE:Ljava/lang/String; = "EyeProtectionConfig.xml"

.field private static final HW_EYEPROTECTION_CONFIG_FILE_NAME:Ljava/lang/String; = "EyeProtectionConfig"

.field private static final LCD_PANEL_TYPE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcd_model"

.field private static final MODE_BACKLIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EyeProtectionSpline"


# instance fields
.field mEyeProtectionBrighnessLinePointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEyeProtectionBrightnessLineOK:Z

.field private mLcdPanelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_0

    const-string v0, "EyeProtectionSpline"

    const/4 v1, 0x4

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->DEBUG:Z

    .line 76
    const-string v0, "ro.config.hw_eyes_protection"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->EYE_PROTECTIION_MODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0, p1}, Lhuawei/android/utils/HwEyeProtectionSpline;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mLcdPanelName:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionBrighnessLinePointsList:Ljava/util/List;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mIsEyeProtectionBrightnessLineOK:Z

    .line 105
    sget v0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->EYE_PROTECTIION_MODE:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->getLcdPanelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mLcdPanelName:Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->getConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, "EyeProtectionSpline"

    const-string v1, "getConfig failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method private checkConfigLoadedFromXML()Z
    .locals 3

    .line 202
    iget-object v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionBrighnessLinePointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->checkPointsListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mIsEyeProtectionBrightnessLineOK:Z

    .line 204
    const-string v1, "EyeProtectionSpline"

    const-string v2, "checkPointsList mEyeProtectionBrighnessLinePointsList is wrong, use DefaultBrighnessLine!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return v0

    .line 207
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mIsEyeProtectionBrightnessLineOK:Z

    .line 209
    sget-boolean v1, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 210
    const-string v1, "EyeProtectionSpline"

    const-string v2, "checkConfigLoadedFromXML success!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    return v0
.end method

.method private checkPointsListIsOK(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;",
            ">;)Z"
        }
    .end annotation

    .line 216
    .local p1, "LinePointsList":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;>;"
    move-object v0, p1

    .line 217
    .local v0, "mLinePointsList":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 218
    const-string v2, "EyeProtectionSpline"

    const-string v3, "LoadXML false for mLinePointsList == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v1

    .line 221
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    goto :goto_2

    .line 225
    :cond_1
    const/4 v2, 0x0

    .line 226
    .local v2, "mDrkenNum":I
    const/4 v3, 0x0

    .line 227
    .local v3, "lastPoint":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 228
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;

    .line 229
    .local v5, "tmpPoint":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    if-nez v2, :cond_2

    .line 230
    move-object v3, v5

    goto :goto_1

    .line 233
    :cond_2
    if-eqz v3, :cond_3

    iget v6, v3, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    iget v7, v5, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 235
    const-string v6, "EyeProtectionSpline"

    const-string v7, "LoadXML false for mLinePointsList is wrong"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v1

    .line 239
    :cond_3
    move-object v3, v5

    .line 241
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 242
    .end local v5    # "tmpPoint":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    goto :goto_0

    .line 243
    .end local v4    # "iter":Ljava/util/Iterator;
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 222
    .end local v2    # "mDrkenNum":I
    .end local v3    # "lastPoint":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    :cond_5
    :goto_2
    const-string v2, "EyeProtectionSpline"

    const-string v3, "LoadXML false for mLinePointsList number is wrong"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v1
.end method

.method private getConfig()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const-string v0, "ro.build.version.emui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "version":Ljava/lang/String;
    const/4 v2, 0x0

    .line 130
    .local v2, "emuiVersion":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 135
    :cond_0
    const-string v4, "EmotionUI_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "versionSplited":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 137
    const-string v1, "EyeProtectionSpline"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "split failed! version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v3

    .line 140
    :cond_1
    const/4 v5, 0x1

    aget-object v2, v4, v5

    .line 141
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_3

    .line 148
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EyeProtectionConfig_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mLcdPanelName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "lcdEyeProtectionConfigFile":Ljava/lang/String;
    const-string v8, "/xml/lcd/%s/%s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v2, v9, v3

    const-string v10, "EyeProtectionConfig.xml"

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "xmlPath":Ljava/lang/String;
    invoke-static {v8, v3}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 151
    .local v9, "xmlFile":Ljava/io/File;
    if-nez v9, :cond_3

    .line 153
    const-string v10, "/xml/lcd/%s"

    new-array v11, v5, [Ljava/lang/Object;

    const-string v12, "EyeProtectionConfig.xml"

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-static {v8, v3}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 155
    if-nez v9, :cond_3

    .line 156
    const-string v10, "/xml/lcd/%s/%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    aput-object v7, v6, v5

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-static {v8, v3}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 158
    if-nez v9, :cond_3

    .line 159
    const-string v6, "/xml/lcd/%s"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v7, v10, v3

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-static {v8, v3}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 161
    if-nez v9, :cond_3

    .line 162
    const-string v1, "EyeProtectionSpline"

    const-string v5, "get xmlFile failed!"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v3

    .line 171
    :cond_3
    nop

    .line 174
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v6

    .line 175
    invoke-direct {p0, v1}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->getConfigFromXML(Ljava/io/InputStream;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 176
    invoke-direct {p0}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->checkConfigLoadedFromXML()Z

    move-result v6

    if-ne v5, v6, :cond_4

    .line 177
    sget-boolean v6, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 178
    invoke-direct {p0}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->printConfigFromXML()V

    .line 181
    :cond_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    nop

    .line 191
    nop

    .line 192
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 182
    return v5

    .line 191
    :cond_5
    nop

    .line 192
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 188
    :catch_0
    move-exception v5

    .line 189
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "EyeProtectionSpline"

    const-string v10, "get xmlFile has exception"

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_6

    goto :goto_0

    .line 186
    :catch_1
    move-exception v5

    .line 187
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "EyeProtectionSpline"

    const-string v10, "get xmlFile has IO exception"

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_6

    goto :goto_0

    .line 184
    :catch_2
    move-exception v5

    .line 185
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v6, "EyeProtectionSpline"

    const-string v10, "get xmlFile file not found"

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_6

    goto :goto_0

    .line 197
    :cond_6
    :goto_1
    return v3

    .line 191
    :goto_2
    if-eqz v1, :cond_7

    .line 192
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_7
    throw v3

    .line 142
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "lcdEyeProtectionConfigFile":Ljava/lang/String;
    .end local v8    # "xmlPath":Ljava/lang/String;
    .end local v9    # "xmlFile":Ljava/io/File;
    :cond_8
    :goto_3
    const-string v1, "EyeProtectionSpline"

    const-string v5, "get emuiVersion failed!"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v3

    .line 131
    .end local v4    # "versionSplited":[Ljava/lang/String;
    :cond_9
    :goto_4
    const-string v1, "EyeProtectionSpline"

    const-string v4, "get ro.build.version.emui failed!"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v3
.end method

.method private getConfigFromXML(Ljava/io/InputStream;)Z
    .locals 10
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 271
    sget-boolean v0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "EyeProtectionSpline"

    const-string v1, "getConfigFromeXML"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 276
    .local v0, "EyeProtectionBrighnessLinePointsListsLoadStarted":Z
    const/4 v1, 0x0

    .line 278
    .local v1, "EyeProtectionBrighnessLinePointsListLoaded":Z
    const/4 v2, 0x0

    .line 280
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 282
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "UTF-8"

    invoke-interface {v3, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 283
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 284
    .local v5, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 285
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 303
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 305
    const-string v6, "EyeProtectionBrightnessPoints"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 306
    const/4 v0, 0x0

    .line 307
    iget-object v6, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionBrighnessLinePointsList:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 308
    const/4 v1, 0x1

    goto :goto_1

    .line 311
    :cond_1
    const-string v6, "EyeProtectionSpline"

    const-string v7, "no EyeProtectionBrightnessPoints loaded!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v4

    .line 287
    :pswitch_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 289
    const-string v7, "EyeProtectionBrightnessPoints"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 290
    const/4 v0, 0x1

    goto :goto_1

    .line 291
    :cond_2
    const-string v7, "Point"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    .line 292
    new-instance v7, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;

    invoke-direct {v7}, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;-><init>()V

    .line 293
    .local v7, "curPoint":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, "s":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    iput v9, v7, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    .line 295
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v7, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->y:F

    .line 296
    iget-object v6, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionBrighnessLinePointsList:Ljava/util/List;

    if-nez v6, :cond_3

    .line 297
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionBrighnessLinePointsList:Ljava/util/List;

    .line 299
    :cond_3
    iget-object v6, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v7    # "curPoint":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    .end local v8    # "s":Ljava/lang/String;
    nop

    .line 319
    :cond_4
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v5, v6

    goto :goto_0

    .line 322
    :cond_5
    if-eqz v1, :cond_6

    .line 324
    const-string v7, "EyeProtectionSpline"

    const-string v8, "getConfigFromeXML success!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    return v6

    .line 335
    .end local v5    # "eventType":I
    :catch_0
    move-exception v5

    .line 336
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "EyeProtectionSpline"

    const-string v7, "getConfigFromeXML has Exception!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 333
    :catch_1
    move-exception v5

    .line 334
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "EyeProtectionSpline"

    const-string v7, "getConfigFromeXML has NumberFormatException!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 331
    :catch_2
    move-exception v5

    .line 332
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "EyeProtectionSpline"

    const-string v7, "getConfigFromeXML has IOException!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 329
    :catch_3
    move-exception v5

    .line 330
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "EyeProtectionSpline"

    const-string v7, "getConfigFromeXML has XmlPullParserException!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_2
    nop

    .line 339
    :goto_3
    const-string v5, "EyeProtectionSpline"

    const-string v6, "getConfigFromeXML false!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLcdPanelName()Ljava/lang/String;
    .locals 3

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "panelName":Ljava/lang/String;
    invoke-direct {p0}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->getLcdPanelNameFromDisplayEngine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    invoke-direct {p0}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->getLcdPanelNameFromDisplayEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    if-eqz v0, :cond_1

    .line 263
    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_1
    return-object v0
.end method

.method private getLcdPanelNameFromDisplayEngine()Ljava/lang/String;
    .locals 9

    .line 379
    const-string v0, "DisplayEngineExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 380
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 381
    const-string v2, "EyeProtectionSpline"

    const-string v3, "getLcdPanelName() binder is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-object v1

    .line 384
    :cond_0
    invoke-static {v0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v2

    .line 385
    .local v2, "mService":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-nez v2, :cond_1

    .line 386
    const-string v3, "EyeProtectionSpline"

    const-string v4, "getLcdPanelName() mService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-object v1

    .line 389
    :cond_1
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 390
    .local v3, "name":[B
    const/4 v4, 0x0

    move v5, v4

    .line 392
    .local v5, "ret":I
    const/16 v6, 0xe

    :try_start_0
    array-length v7, v3

    invoke-interface {v2, v6, v4, v3, v7}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 397
    .end local v5    # "ret":I
    .local v4, "ret":I
    nop

    .line 398
    if-eqz v4, :cond_2

    .line 399
    const-string v5, "EyeProtectionSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLcdPanelName() getEffect failed! ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v1

    .line 402
    :cond_2
    nop

    .line 404
    .local v1, "panelName":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 405
    .local v5, "lcdModel":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 406
    const/16 v6, 0x20

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v6

    .line 409
    .end local v5    # "lcdModel":Ljava/lang/String;
    goto :goto_0

    .line 407
    :catch_0
    move-exception v5

    .line 408
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "EyeProtectionSpline"

    const-string v7, "Unsupported encoding type!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v1

    .line 394
    .end local v1    # "panelName":Ljava/lang/String;
    .end local v4    # "ret":I
    .local v5, "ret":I
    :catch_1
    move-exception v4

    .line 395
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "EyeProtectionSpline"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLcdPanelName() RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v1
.end method

.method private printConfigFromXML()V
    .locals 5

    .line 249
    iget-object v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;

    .line 251
    .local v1, "temp":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    const-string v2, "EyeProtectionSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_EyeProtectionBrighnessLinePoints x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v1    # "temp":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    goto :goto_0

    .line 253
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEyeProtectionBrightnessLevel(F)F
    .locals 9
    .param p1, "lux"    # F

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "count":I
    const/high16 v1, 0x42c80000    # 100.0f

    .line 351
    .local v1, "brightnessLevel":F
    const/4 v2, 0x0

    .line 352
    .local v2, "temp1":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    const/4 v3, 0x0

    .line 353
    .local v3, "temp2":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    iget-object v4, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 354
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;

    .line 355
    .local v5, "temp":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    if-nez v0, :cond_0

    .line 356
    move-object v2, v5

    .line 358
    :cond_0
    iget v6, v5, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    .line 359
    move-object v3, v5

    .line 360
    iget v6, v3, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    iget v7, v2, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 361
    const/high16 v1, 0x42c80000    # 100.0f

    .line 362
    sget-boolean v6, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 363
    const-string v6, "EyeProtectionSpline"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Brighness_temp1.x <= temp2.x,x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->y:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    :cond_1
    iget v6, v3, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->y:F

    iget v7, v2, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->y:F

    sub-float/2addr v6, v7

    iget v7, v3, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    iget v8, v2, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    iget v7, v2, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    sub-float v7, p1, v7

    mul-float/2addr v6, v7

    iget v7, v2, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->y:F

    add-float v1, v6, v7

    .line 368
    goto :goto_1

    .line 370
    :cond_2
    move-object v2, v5

    .line 371
    iget v1, v2, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->y:F

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    .end local v5    # "temp":Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
    goto :goto_0

    .line 375
    .end local v4    # "iter":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return v1
.end method

.method public isEyeProtectionMode()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mEyeProtectionControlFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl;->mIsEyeProtectionBrightnessLineOK:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
