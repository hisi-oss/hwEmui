.class public Lhuawei/android/widget/HwWechatOptimizeImpl;
.super Ljava/lang/Object;
.source "HwWechatOptimizeImpl.java"

# interfaces
.implements Landroid/widget/IHwWechatOptimize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static CONFIG_FILEPATH:Ljava/lang/String; = null

.field private static final Debug:Z = true

.field private static SWITCH_FILEPATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HwWechatOptimizeImpl"

.field private static final TEXT_NAME:Ljava/lang/String; = "AppList"

.field private static final XML_TAG_APPNAME:Ljava/lang/String; = "packageName"

.field private static final XML_TAG_CONFIG:Ljava/lang/String; = "config"

.field private static final XML_TAG_FLINGVELOCITY:Ljava/lang/String; = "flingVelocity"

.field private static final XML_TAG_IDLEVELOCITY:Ljava/lang/String; = "idleVelocity"

.field private static final XML_TAG_ITEM:Ljava/lang/String; = "item"

.field private static final XML_TAG_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_TAG_VERSION:Ljava/lang/String; = "supportVersion"

.field private static mHwWechatOptimizeImpl:Lhuawei/android/widget/HwWechatOptimizeImpl;


# instance fields
.field private mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

.field private mCurrentPackageName:Ljava/lang/String;

.field private mIsEffect:Z

.field private mIsFling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "/data/app_acc/app_switch.xml"

    sput-object v0, Lhuawei/android/widget/HwWechatOptimizeImpl;->SWITCH_FILEPATH:Ljava/lang/String;

    .line 49
    const-string v0, "/data/app_acc/app_config.xml"

    sput-object v0, Lhuawei/android/widget/HwWechatOptimizeImpl;->CONFIG_FILEPATH:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mHwWechatOptimizeImpl:Lhuawei/android/widget/HwWechatOptimizeImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mIsFling:Z

    .line 64
    iput-boolean v0, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mIsEffect:Z

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    .line 66
    iput-object v1, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mCurrentPackageName:Ljava/lang/String;

    .line 93
    const-string v1, "persist.sys.enable_iaware"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "enableiAware":Z
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mCurrentPackageName:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "com.tencent.mm"

    iget-object v2, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const-string v1, "switch"

    invoke-direct {p0, v1}, Lhuawei/android/widget/HwWechatOptimizeImpl;->loadFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "config"

    invoke-direct {p0, v1}, Lhuawei/android/widget/HwWechatOptimizeImpl;->loadFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mIsEffect:Z

    .line 107
    :cond_2
    const-string v1, "HwWechatOptimizeImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsEffect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mIsEffect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 99
    :cond_3
    :goto_0
    return-void
.end method

.method private checkAppListFromXml(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 197
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 199
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 200
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 201
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 202
    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "tagName":Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 206
    new-instance v5, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    invoke-direct {v5}, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;-><init>()V

    iput-object v5, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    .line 207
    iget-object v5, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    invoke-virtual {p0, p1, v5}, Lhuawei/android/widget/HwWechatOptimizeImpl;->readAppDataFromXml(Lorg/xmlpull/v1/XmlPullParser;Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;)V

    .line 208
    iget-object v5, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    iget-object v5, v5, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mAppName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    iget-object v5, v5, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mSupportVersion:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 209
    iget-object v5, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    iget-object v5, v5, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mAppName:Ljava/lang/String;

    iget-object v6, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 210
    iget-object v5, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    iget-object v5, v5, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mAppName:Ljava/lang/String;

    iget-object v6, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    iget-object v6, v6, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mSupportVersion:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lhuawei/android/widget/HwWechatOptimizeImpl;->isWechatVersionSupport(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    return v4

    .line 213
    :cond_3
    return v3

    .line 218
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 219
    :cond_5
    return v3
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/widget/HwWechatOptimizeImpl;
    .locals 2

    const-class v0, Lhuawei/android/widget/HwWechatOptimizeImpl;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lhuawei/android/widget/HwWechatOptimizeImpl;->mHwWechatOptimizeImpl:Lhuawei/android/widget/HwWechatOptimizeImpl;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lhuawei/android/widget/HwWechatOptimizeImpl;

    invoke-direct {v1}, Lhuawei/android/widget/HwWechatOptimizeImpl;-><init>()V

    sput-object v1, Lhuawei/android/widget/HwWechatOptimizeImpl;->mHwWechatOptimizeImpl:Lhuawei/android/widget/HwWechatOptimizeImpl;

    .line 89
    :cond_0
    sget-object v1, Lhuawei/android/widget/HwWechatOptimizeImpl;->mHwWechatOptimizeImpl:Lhuawei/android/widget/HwWechatOptimizeImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isWechatVersionSupport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "supportVersion"    # Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "currentVersionCode":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 295
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 296
    return v2

    .line 299
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 300
    .local v3, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 301
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    move v0, v5

    .line 303
    const-string v5, "HwWechatOptimizeImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWechatVersionSupport currentVersionCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v3    # "manager":Landroid/content/pm/PackageManager;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    nop

    .line 308
    invoke-virtual {p0, v0, p2}, Lhuawei/android/widget/HwWechatOptimizeImpl;->versionInRange(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 305
    :catch_0
    move-exception v3

    .line 306
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method private loadFile(Ljava/lang/String;)Z
    .locals 11
    .param p1, "xmlTag"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_16

    .line 119
    :cond_0
    const/4 v1, 0x0

    .line 120
    .local v1, "file":Ljava/io/File;
    const-string v2, "switch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    sget-object v2, Lhuawei/android/widget/HwWechatOptimizeImpl;->SWITCH_FILEPATH:Ljava/lang/String;

    invoke-direct {p0, v2}, Lhuawei/android/widget/HwWechatOptimizeImpl;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 122
    :cond_1
    const-string v2, "config"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 123
    sget-object v2, Lhuawei/android/widget/HwWechatOptimizeImpl;->CONFIG_FILEPATH:Ljava/lang/String;

    invoke-direct {p0, v2}, Lhuawei/android/widget/HwWechatOptimizeImpl;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 127
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    return v0

    .line 130
    :cond_2
    const/4 v2, 0x0

    .line 131
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    move-object v4, v3

    .line 133
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 134
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v4, v5

    .line 135
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 136
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 138
    .local v5, "outerDepth":I
    move-object v6, v3

    .line 139
    .local v6, "tagName":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_e

    const/4 v7, 0x3

    if-ne v8, v7, :cond_4

    .line 140
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v5, :cond_e

    .line 141
    :cond_4
    if-eq v8, v7, :cond_3

    const/4 v7, 0x4

    if-ne v8, v7, :cond_5

    .line 142
    goto :goto_1

    .line 144
    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 145
    const-string v7, "switch"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 146
    const-string v7, "switch"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 147
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v9, :cond_7

    .line 148
    nop

    .line 175
    nop

    .line 177
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "HwWechatOptimizeImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_6

    .line 185
    :try_start_2
    move-object v0, v4

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    const/4 v4, 0x0

    .line 189
    goto :goto_3

    .line 187
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HwWechatOptimizeImpl"

    const-string v7, "parser close error"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    return v9

    .line 150
    :cond_7
    nop

    .line 175
    nop

    .line 177
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_4

    .line 179
    :catch_2
    move-exception v3

    .line 180
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "HwWechatOptimizeImpl"

    const-string v9, "close file input stream fail!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_4
    if-eqz v4, :cond_8

    .line 185
    :try_start_4
    move-object v3, v4

    check-cast v3, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v3}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 186
    const/4 v4, 0x0

    .line 189
    goto :goto_5

    .line 187
    :catch_3
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "HwWechatOptimizeImpl"

    const-string v9, "parser close error"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    return v0

    .line 153
    :cond_9
    :try_start_5
    const-string v7, "config"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 154
    const-string v7, "config"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "AppList"

    const-string v9, "name"

    invoke-interface {v4, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, "appOptimized":Z
    invoke-direct {p0, v4}, Lhuawei/android/widget/HwWechatOptimizeImpl;->checkAppListFromXml(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_a

    .line 157
    const/4 v3, 0x1

    .line 159
    :cond_a
    nop

    .line 175
    nop

    .line 177
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_6

    .line 179
    :catch_4
    move-exception v0

    .line 180
    .local v0, "ioe":Ljava/io/IOException;
    const-string v7, "HwWechatOptimizeImpl"

    const-string v9, "close file input stream fail!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_6
    if-eqz v4, :cond_b

    .line 185
    :try_start_7
    move-object v0, v4

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 186
    const/4 v4, 0x0

    .line 189
    goto :goto_7

    .line 187
    :catch_5
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "HwWechatOptimizeImpl"

    const-string v9, "parser close error"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_7
    return v3

    .line 162
    .end local v3    # "appOptimized":Z
    :cond_c
    nop

    .line 175
    nop

    .line 177
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_8

    .line 179
    :catch_6
    move-exception v3

    .line 180
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "HwWechatOptimizeImpl"

    const-string v9, "close file input stream fail!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_8
    if-eqz v4, :cond_d

    .line 185
    :try_start_9
    move-object v3, v4

    check-cast v3, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v3}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 186
    const/4 v4, 0x0

    .line 189
    goto :goto_9

    .line 187
    :catch_7
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "HwWechatOptimizeImpl"

    const-string v9, "parser close error"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_9
    return v0

    .line 175
    .end local v5    # "outerDepth":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_e
    nop

    .line 177
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_a

    .line 179
    :catch_8
    move-exception v3

    .line 180
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "HwWechatOptimizeImpl"

    const-string v6, "close file input stream fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_a
    if-eqz v4, :cond_f

    .line 185
    :try_start_b
    move-object v3, v4

    check-cast v3, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v3}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 186
    const/4 v4, 0x0

    .line 189
    :goto_b
    goto :goto_c

    .line 187
    :catch_9
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HwWechatOptimizeImpl"

    const-string v6, "parser close error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 192
    :cond_f
    :goto_c
    return v0

    .line 175
    :catchall_0
    move-exception v0

    goto/16 :goto_13

    .line 171
    :catch_a
    move-exception v3

    .line 172
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_c
    const-string v5, "HwWechatOptimizeImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " number format error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 173
    nop

    .line 175
    if-eqz v2, :cond_10

    .line 177
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_d

    .line 179
    :catch_b
    move-exception v5

    .line 180
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwWechatOptimizeImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_10
    :goto_d
    if-eqz v4, :cond_11

    .line 185
    :try_start_e
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 186
    const/4 v4, 0x0

    .line 189
    goto :goto_e

    .line 187
    :catch_c
    move-exception v5

    .line 188
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwWechatOptimizeImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_11
    :goto_e
    return v0

    .line 168
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_d
    move-exception v3

    .line 169
    .local v3, "e":Ljava/io/IOException;
    :try_start_f
    const-string v5, "HwWechatOptimizeImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " file IO error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 170
    nop

    .line 175
    if-eqz v2, :cond_12

    .line 177
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_f

    .line 179
    :catch_e
    move-exception v5

    .line 180
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwWechatOptimizeImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_12
    :goto_f
    if-eqz v4, :cond_13

    .line 185
    :try_start_11
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 186
    const/4 v4, 0x0

    .line 189
    goto :goto_10

    .line 187
    :catch_f
    move-exception v5

    .line 188
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwWechatOptimizeImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_10
    return v0

    .line 165
    .end local v3    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v3

    .line 166
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_12
    const-string v5, "HwWechatOptimizeImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " file parser error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 167
    nop

    .line 175
    if-eqz v2, :cond_14

    .line 177
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_11

    .line 179
    :catch_11
    move-exception v5

    .line 180
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwWechatOptimizeImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_14
    :goto_11
    if-eqz v4, :cond_15

    .line 185
    :try_start_14
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    .line 186
    const/4 v4, 0x0

    .line 189
    goto :goto_12

    .line 187
    :catch_12
    move-exception v5

    .line 188
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwWechatOptimizeImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_12
    return v0

    .line 175
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_13
    if-eqz v2, :cond_16

    .line 177
    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_13

    .line 178
    const/4 v2, 0x0

    .line 181
    goto :goto_14

    .line 179
    :catch_13
    move-exception v3

    .line 180
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "HwWechatOptimizeImpl"

    const-string v6, "close file input stream fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_16
    :goto_14
    if-eqz v4, :cond_17

    .line 185
    :try_start_16
    move-object v3, v4

    check-cast v3, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v3}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14

    .line 186
    const/4 v4, 0x0

    .line 189
    goto :goto_15

    .line 187
    :catch_14
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HwWechatOptimizeImpl"

    const-string v6, "parser close error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_15
    throw v0

    .line 125
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_18
    return v0

    .line 117
    .end local v1    # "file":Ljava/io/File;
    :cond_19
    :goto_16
    return v0
.end method


# virtual methods
.method public getWechatFlingVelocity()I
    .locals 1

    .line 259
    iget-object v0, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    return v0

    .line 262
    :cond_0
    iget-object v0, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    iget v0, v0, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mFlingVelocity:I

    return v0
.end method

.method public getWechatIdleVelocity()I
    .locals 1

    .line 270
    iget-object v0, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    iget-object v0, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mAppData:Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;

    iget v0, v0, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mIdleVelocity:I

    return v0
.end method

.method public isWechatFling()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mIsFling:Z

    return v0
.end method

.method public isWechatOptimizeEffect()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mIsEffect:Z

    return v0
.end method

.method readAppDataFromXml(Lorg/xmlpull/v1/XmlPullParser;Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "appdata"    # Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 226
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 228
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 229
    goto :goto_0

    .line 231
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "packageName"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mAppName:Ljava/lang/String;

    goto :goto_1

    .line 234
    :cond_3
    const-string v3, "supportVersion"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mSupportVersion:Ljava/lang/String;

    goto :goto_1

    .line 236
    :cond_4
    const-string v3, "flingVelocity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mFlingVelocity:I

    goto :goto_1

    .line 238
    :cond_5
    const-string v3, "idleVelocity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 239
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mIdleVelocity:I

    goto :goto_1

    .line 241
    :cond_6
    const-string v3, "HwWechatOptimizeImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown  tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v1    # "tag":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 244
    :cond_7
    return-void
.end method

.method public setWechatFling(Z)V
    .locals 0
    .param p1, "isFling"    # Z

    .line 289
    iput-boolean p1, p0, Lhuawei/android/widget/HwWechatOptimizeImpl;->mIsFling:Z

    .line 290
    return-void
.end method

.method versionInRange(ILjava/lang/String;)Z
    .locals 13
    .param p1, "checkedVersion"    # I
    .param p2, "versionRanage"    # Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 318
    return v0

    .line 321
    :cond_0
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 322
    .local v1, "versionIndex":I
    if-ltz v1, :cond_1

    .line 323
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "versionPreRange":Ljava/lang/String;
    goto :goto_0

    .line 325
    .end local v2    # "versionPreRange":Ljava/lang/String;
    :cond_1
    move-object v2, p2

    .line 328
    .restart local v2    # "versionPreRange":Ljava/lang/String;
    :goto_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "versionPreArray":[Ljava/lang/String;
    array-length v4, v3

    .line 331
    .local v4, "VersionPreArrayLen":I
    move v5, v0

    .local v5, "i":I
    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_4

    .line 332
    const/4 v7, 0x0

    .local v7, "checkedVersionStart":I
    const/4 v8, 0x0

    .line 333
    .local v8, "checkedVersionEnd":I
    aget-object v9, v3, v5

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "VersionStartAndEnd":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 335
    goto :goto_2

    .line 338
    :cond_2
    :try_start_0
    aget-object v10, v9, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v7, v10

    .line 339
    aget-object v10, v9, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v10

    .line 343
    nop

    .line 344
    if-lt p1, v7, :cond_3

    if-gt p1, v8, :cond_3

    .line 345
    return v6

    .line 331
    .end local v7    # "checkedVersionStart":I
    .end local v8    # "checkedVersionEnd":I
    .end local v9    # "VersionStartAndEnd":[Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 340
    .restart local v7    # "checkedVersionStart":I
    .restart local v8    # "checkedVersionEnd":I
    .restart local v9    # "VersionStartAndEnd":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 341
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v10, "HwWechatOptimizeImpl"

    const-string v11, "version number format error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return v0

    .line 349
    .end local v5    # "i":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "checkedVersionStart":I
    .end local v8    # "checkedVersionEnd":I
    .end local v9    # "VersionStartAndEnd":[Ljava/lang/String;
    :cond_4
    if-ltz v1, :cond_6

    .line 350
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "versionPostRange":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "versionPostArray":[Ljava/lang/String;
    array-length v8, v7

    .line 353
    .local v8, "versionPostArrayLen":I
    move v9, v0

    .local v9, "i":I
    :goto_3
    if-ge v9, v8, :cond_6

    .line 354
    move v10, v0

    .line 356
    .local v10, "specialVersion":I
    :try_start_1
    aget-object v11, v7, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v11

    .line 360
    nop

    .line 361
    if-ne p1, v10, :cond_5

    .line 362
    return v6

    .line 353
    .end local v10    # "specialVersion":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 357
    .restart local v10    # "specialVersion":I
    :catch_1
    move-exception v6

    .line 358
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "HwWechatOptimizeImpl"

    const-string v12, "version number format error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v0

    .line 366
    .end local v5    # "versionPostRange":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "versionPostArray":[Ljava/lang/String;
    .end local v8    # "versionPostArrayLen":I
    .end local v9    # "i":I
    .end local v10    # "specialVersion":I
    :cond_6
    return v0
.end method
