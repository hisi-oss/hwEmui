.class public Landroid/rms/iaware/FastgrabConfigReader;
.super Ljava/lang/Object;
.source "FastgrabConfigReader.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "/xengine.xml"

.field private static final CONFIG_RELATIVE_PATH:Ljava/lang/String; = "/emcom/emcomctr"

.field private static final DEFAULT_FILE_PATH:Ljava/lang/String; = "/system/emui/base/emcom/emcomctr/xengine.xml"

.field private static final INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FastgrabConfigReader"

.field private static final TOP_IM_CN_PROP:Ljava/lang/String; = "persist.sys.iaware.topimcn"

.field private static final TOP_IM_CN_PROP_DEFAULT:Ljava/lang/String; = ""

.field private static final VALID_VERSION_FORMAT_LENGTH:I = 0x2

.field private static final VERSION_CODE_LENGTH:I = 0x7

.field private static final WECHAT:Ljava/lang/String; = "wechat"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_CONFIG:Ljava/lang/String; = "config"

.field private static final XML_TAG_IAWARE:Ljava/lang/String; = "iaware"

.field private static final XML_TAG_PRODUCT:Ljava/lang/String; = "product_config"

.field private static final XML_TAG_REGION:Ljava/lang/String; = "region_config"

.field private static final XML_TAG_XENGINE:Ljava/lang/String; = "xengine"

.field private static final XML_VALUE_DEFAULT:Ljava/lang/String; = "default"

.field private static mAppNameToNodeName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFastgrabConfigReader:Landroid/rms/iaware/FastgrabConfigReader;


# instance fields
.field private mAppConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHighVersion:I

.field private mLowVersion:I

.field private mSpecificProduceConfigFound:Z

.field private mSpecificRegionConfigFound:Z

.field private mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/rms/iaware/FastgrabConfigReader;->mAppNameToNodeName:Ljava/util/HashMap;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/rms/iaware/FastgrabConfigReader;->mFastgrabConfigReader:Landroid/rms/iaware/FastgrabConfigReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/FastgrabConfigReader;->mAppConfig:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/FastgrabConfigReader;->mAppConfig:Ljava/util/HashMap;

    .line 59
    const-string v0, "persist.sys.iaware.topimcn"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "topImCN":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    sget-object v1, Landroid/rms/iaware/FastgrabConfigReader;->mAppNameToNodeName:Ljava/util/HashMap;

    const-string v2, "wechat"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-direct {p0}, Landroid/rms/iaware/FastgrabConfigReader;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/rms/iaware/FastgrabConfigReader;->parseFile(Ljava/lang/String;Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private closeStream(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 127
    if-eqz p1, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "FastgrabConfigReader"

    const-string v2, "close file input stream fail!"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 136
    :try_start_1
    move-object v0, p2

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    goto :goto_1

    .line 137
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FastgrabConfigReader"

    const-string v2, "parser close error"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method private getConfigFilePath()Ljava/lang/String;
    .locals 4

    .line 144
    const-string v0, "/system/emui/base/emcom/emcomctr/xengine.xml"

    .line 145
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/emcom/emcomctr"

    const-string v2, "/emcom/emcomctr/xengine.xml"

    invoke-static {v1, v2}, Lhuawei/cust/HwCfgFilePolicy;->getDownloadCfgFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "cfgFileInfo":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 147
    const-string v2, "FastgrabConfigReader"

    const-string v3, "both default and cota config files not exist"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    .line 150
    aget-object v0, v1, v2

    .line 153
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/rms/iaware/FastgrabConfigReader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/rms/iaware/FastgrabConfigReader;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Landroid/rms/iaware/FastgrabConfigReader;->mFastgrabConfigReader:Landroid/rms/iaware/FastgrabConfigReader;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 68
    new-instance v1, Landroid/rms/iaware/FastgrabConfigReader;

    invoke-direct {v1, p0}, Landroid/rms/iaware/FastgrabConfigReader;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/rms/iaware/FastgrabConfigReader;->mFastgrabConfigReader:Landroid/rms/iaware/FastgrabConfigReader;

    .line 70
    :cond_0
    sget-object v1, Landroid/rms/iaware/FastgrabConfigReader;->mFastgrabConfigReader:Landroid/rms/iaware/FastgrabConfigReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 66
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 2

    .line 74
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getCmdlineForPid(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "processName":Ljava/lang/String;
    sget-object v1, Landroid/rms/iaware/FastgrabConfigReader;->mAppNameToNodeName:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    return-object v0

    .line 78
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseApp(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 307
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 309
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 310
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 311
    goto :goto_0

    .line 313
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "tagName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "value":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 316
    iget-object v4, p0, Landroid/rms/iaware/FastgrabConfigReader;->mAppConfig:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Landroid/rms/iaware/FastgrabConfigReader;->strFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 319
    :cond_4
    iget-object v1, p0, Landroid/rms/iaware/FastgrabConfigReader;->mAppConfig:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 320
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "\n"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 321
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 323
    :cond_5
    const-string v1, "FastgrabConfigReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------- parse complete ----------\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private parseFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 82
    const-string v0, "persist.sys.enable_iaware"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    .local v0, "isOptEnable":Z
    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 86
    :cond_0
    iget-object v2, p0, Landroid/rms/iaware/FastgrabConfigReader;->mAppConfig:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 87
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 88
    .local v2, "manager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 89
    return-void

    .line 92
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 93
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_2

    .line 94
    return-void

    .line 96
    :cond_2
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Landroid/rms/iaware/FastgrabConfigReader;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "FastgrabConfigReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse version failed ! appName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "log":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nversion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/rms/iaware/FastgrabConfigReader;->mVersionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Landroid/rms/iaware/FastgrabConfigReader;->getConfigFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    const-string v4, "FastgrabConfigReader"

    const-string v5, "config file is not exist!"

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 108
    :cond_3
    const/4 v4, 0x0

    .line 109
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 111
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 112
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    move-object v5, v6

    .line 113
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v5, p1, v1}, Landroid/rms/iaware/FastgrabConfigReader;->parseXEngineConfig(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 119
    :catch_1
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v7, "FastgrabConfigReader"

    const-string v8, "switch number format error"

    invoke-static {v7, v8}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 117
    :catch_2
    move-exception v6

    .line 118
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "FastgrabConfigReader"

    const-string v8, "failed parsing switch file IO error "

    invoke-static {v7, v8}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 115
    :catch_3
    move-exception v6

    .line 116
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "FastgrabConfigReader"

    const-string v8, "failed parsing switch file parser error"

    invoke-static {v7, v8}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    invoke-direct {p0, v4, v5}, Landroid/rms/iaware/FastgrabConfigReader;->closeStream(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :goto_2
    invoke-direct {p0, v4, v5}, Landroid/rms/iaware/FastgrabConfigReader;->closeStream(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v6

    .line 84
    .end local v1    # "log":Ljava/lang/StringBuilder;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_3
    return-void
.end method

.method private parseIaware(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 262
    .local v0, "outerDepth":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 263
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 264
    :cond_1
    const/4 v1, 0x2

    if-ne v2, v1, :cond_0

    .line 265
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .local v3, "tagName":Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v1, Landroid/rms/iaware/FastgrabConfigReader;->mAppNameToNodeName:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x0

    const-string v4, "switch"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "switchValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 269
    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    invoke-direct {p0, p1, v3, p3}, Landroid/rms/iaware/FastgrabConfigReader;->parseVersion(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 271
    iget-object v4, p0, Landroid/rms/iaware/FastgrabConfigReader;->mAppConfig:Ljava/util/HashMap;

    const-string v5, "switch"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_2
    return-void

    .line 277
    .end local v1    # "switchValue":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private parseProduct(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 242
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "name":Ljava/lang/String;
    const-string v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "product":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    iget-boolean v2, p0, Landroid/rms/iaware/FastgrabConfigReader;->mSpecificProduceConfigFound:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const-string v2, "FastgrabConfigReader"

    const-string v4, " read default product config."

    invoke-static {v2, v4}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return v3

    .line 248
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const-string v2, "FastgrabConfigReader"

    const-string v4, "read current product config."

    invoke-static {v2, v4}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iput-boolean v3, p0, Landroid/rms/iaware/FastgrabConfigReader;->mSpecificProduceConfigFound:Z

    .line 251
    return v3

    .line 254
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private parseRegion(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/rms/iaware/FastgrabConfigReader;->mSpecificProduceConfigFound:Z

    .line 226
    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "name":Ljava/lang/String;
    const-string v2, "ro.product.locale.region"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "region":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    iget-boolean v3, p0, Landroid/rms/iaware/FastgrabConfigReader;->mSpecificRegionConfigFound:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const-string v0, "FastgrabConfigReader"

    const-string v3, " read default region config."

    invoke-static {v0, v3}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return v4

    .line 232
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    const-string v0, "FastgrabConfigReader"

    const-string v3, "read current region config."

    invoke-static {v0, v3}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iput-boolean v4, p0, Landroid/rms/iaware/FastgrabConfigReader;->mSpecificRegionConfigFound:Z

    .line 235
    return v4

    .line 238
    :cond_1
    return v0
.end method

.method private parseVersion(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 281
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 283
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 286
    :cond_1
    const-string v1, "config"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const/4 v1, 0x0

    const-string v4, "version"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "supportVersion":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 289
    goto :goto_0

    .line 291
    :cond_2
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "versionStartAndEnd":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 293
    iget v5, p0, Landroid/rms/iaware/FastgrabConfigReader;->mVersionCode:I

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v5, v6, :cond_3

    iget v5, p0, Landroid/rms/iaware/FastgrabConfigReader;->mVersionCode:I

    aget-object v3, v4, v3

    .line 294
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v5, v3, :cond_3

    .line 295
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/iaware/FastgrabConfigReader;->parseApp(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 296
    return-void

    .line 299
    .end local v1    # "supportVersion":Ljava/lang/String;
    .end local v4    # "versionStartAndEnd":[Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 301
    :cond_4
    return-void
.end method

.method private parseXEngine(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 192
    const-string v0, "version"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "versionCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "FastgrabConfigReader"

    const-string v3, "version code is empty."

    invoke-static {v1, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v2

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    .line 198
    const-string v1, "FastgrabConfigReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verison code length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not correct."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return v2

    .line 201
    :cond_1
    const/4 v1, -0x1

    .line 202
    .local v1, "high":I
    const/4 v3, -0x1

    .line 205
    .local v3, "low":I
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 206
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 210
    nop

    .line 211
    iget v4, p0, Landroid/rms/iaware/FastgrabConfigReader;->mHighVersion:I

    const/4 v5, 0x1

    if-le v1, v4, :cond_2

    .line 212
    iput v1, p0, Landroid/rms/iaware/FastgrabConfigReader;->mHighVersion:I

    .line 213
    iput v3, p0, Landroid/rms/iaware/FastgrabConfigReader;->mLowVersion:I

    .line 214
    return v5

    .line 215
    :cond_2
    iget v4, p0, Landroid/rms/iaware/FastgrabConfigReader;->mHighVersion:I

    if-ne v1, v4, :cond_3

    iget v4, p0, Landroid/rms/iaware/FastgrabConfigReader;->mLowVersion:I

    if-le v3, v4, :cond_3

    .line 216
    iput v3, p0, Landroid/rms/iaware/FastgrabConfigReader;->mLowVersion:I

    .line 217
    return v5

    .line 219
    :cond_3
    const-string v4, "FastgrabConfigReader"

    const-string v5, "verison code is lower than current version."

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v2

    .line 207
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "FastgrabConfigReader"

    const-string v6, "version format is not correct."

    invoke-static {v5, v6}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v2
.end method

.method private parseXEngineConfig(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 157
    const/4 v0, -0x1

    .line 158
    .local v0, "targetDepth":I
    const/4 v1, -0x1

    move v2, v0

    move v0, v1

    .line 160
    .local v0, "currentDepth":I
    .local v2, "targetDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    const/4 v6, 0x3

    if-ge v3, v2, :cond_1

    if-eq v4, v6, :cond_8

    .line 161
    :cond_1
    const/4 v3, 0x2

    if-eq v2, v1, :cond_2

    if-ne v2, v0, :cond_0

    if-ne v4, v3, :cond_0

    .line 162
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x6950a113

    if-eq v8, v9, :cond_6

    const v5, -0x4744ac6b

    if-eq v8, v5, :cond_5

    const v5, -0x1a82e76e

    if-eq v8, v5, :cond_4

    const v3, 0x7e83c0ba

    if-eq v8, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "xengine"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const-string v5, "product_config"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_5
    const-string v3, "iaware"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v6

    goto :goto_2

    :cond_6
    const-string v3, "region_config"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_2

    :cond_7
    :goto_1
    move v3, v1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 185
    goto :goto_0

    .line 182
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/iaware/FastgrabConfigReader;->parseIaware(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 183
    return-void

    .line 176
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/iaware/FastgrabConfigReader;->parseProduct(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    add-int/lit8 v2, v0, 0x2

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/iaware/FastgrabConfigReader;->parseRegion(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 164
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/iaware/FastgrabConfigReader;->parseXEngine(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_0

    .line 189
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private strFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "rawStr"    # Ljava/lang/String;

    .line 345
    if-nez p1, :cond_0

    .line 346
    const/4 v0, 0x0

    return-object v0

    .line 348
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 349
    .local v0, "charArray":[C
    array-length v1, v0

    .line 350
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "m":I
    :goto_0
    if-ge v4, v1, :cond_7

    .line 352
    const/16 v5, 0x5c

    aget-char v6, v0, v4

    if-ne v5, v6, :cond_6

    add-int/lit8 v5, v1, -0x6

    if-gt v4, v5, :cond_6

    const/16 v5, 0x75

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v0, v6

    if-ne v5, v6, :cond_6

    .line 353
    const/4 v5, 0x0

    .line 354
    .local v5, "cc":C
    move v6, v5

    move v5, v3

    .local v5, "n":I
    .local v6, "cc":C
    :goto_1
    const/4 v7, 0x4

    if-ge v5, v7, :cond_5

    .line 356
    add-int v8, v4, v5

    add-int/lit8 v8, v8, 0x2

    aget-char v8, v0, v8

    .line 357
    .local v8, "ch":C
    const/16 v9, 0x30

    if-lt v8, v9, :cond_1

    const/16 v9, 0x39

    if-le v8, v9, :cond_3

    :cond_1
    const/16 v9, 0x41

    if-lt v8, v9, :cond_2

    const/16 v9, 0x46

    if-le v8, v9, :cond_3

    :cond_2
    const/16 v9, 0x61

    if-lt v8, v9, :cond_4

    const/16 v9, 0x66

    if-gt v8, v9, :cond_4

    .line 360
    :cond_3
    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    rsub-int/lit8 v10, v5, 0x3

    mul-int/2addr v10, v7

    shl-int v7, v9, v10

    or-int/2addr v7, v6

    int-to-char v6, v7

    .line 354
    .end local v8    # "ch":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 362
    .restart local v8    # "ch":C
    :cond_4
    const/4 v6, 0x0

    .line 363
    nop

    .line 366
    .end local v5    # "n":I
    .end local v8    # "ch":C
    :cond_5
    if-lez v6, :cond_6

    .line 367
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    add-int/lit8 v4, v4, 0x5

    .line 369
    goto :goto_2

    .line 372
    .end local v6    # "cc":C
    :cond_6
    aget-char v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 374
    .end local v4    # "m":I
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "tagName"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Landroid/rms/iaware/FastgrabConfigReader;->mAppConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .local v1, "value":I
    return v1

    .line 332
    .end local v1    # "value":I
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "FastgrabConfigReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to integer, format error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Landroid/rms/iaware/FastgrabConfigReader;->mAppConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
