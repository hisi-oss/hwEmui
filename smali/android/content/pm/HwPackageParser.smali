.class public Landroid/content/pm/HwPackageParser;
.super Ljava/lang/Object;
.source "HwPackageParser.java"

# interfaces
.implements Landroid/content/pm/IHwPackageParser;


# static fields
.field private static APP_ASPECTS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final APP_NAME:Ljava/lang/String; = "app"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final CUST_FILE_DIR:Ljava/lang/String; = "system/etc"

.field private static final CUST_FILE_NAME:Ljava/lang/String; = "benchmar_app.xml"

.field private static final FASTBOOT_UNLOCK:Z

.field private static final FILE_FULLSCREEN_WHITELIST:Ljava/lang/String; = "hw_fullscreen_apps.xml"

.field private static final FILE_POLICY_CLASS_NAME:Ljava/lang/String; = "com.huawei.cust.HwCfgFilePolicy"

.field private static final FILE_TAHITI_APP_ASPECT:Ljava/lang/String; = "hw_tahiti_app_aspect_list.xml"

.field private static final HIDE_PRODUCT_INFO:Z

.field private static final MAX_NUM:I = 0x1f4

.field private static final METHOD_NAME_FOR_FILE:Ljava/lang/String; = "getCfgFile"

.field private static final TAG:Ljava/lang/String; = "BENCHMAR_APP"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final XML_ATTRIBUTE_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final XML_ELEMENT_FULLSCREEN_APP_ITEM:Ljava/lang/String; = "fullscreen_app"

.field private static final XML_ELEMENT_FULLSCREEN_APP_LIST:Ljava/lang/String; = "fullscreen_whitelist"

.field private static mBenchmarkApp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mHwFullScreenAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Landroid/content/pm/HwPackageParser;

.field private static final mInstanceLock:Ljava/lang/Object;

.field private static final mLock:Ljava/lang/Object;

.field private static final sAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/HwPackageParser;->mInstance:Landroid/content/pm/HwPackageParser;

    .line 43
    const-string v1, "ro.build.hide"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/content/pm/HwPackageParser;->HIDE_PRODUCT_INFO:Z

    .line 45
    const-string v1, "ro.fastboot.unlock"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/content/pm/HwPackageParser;->FASTBOOT_UNLOCK:Z

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/content/pm/HwPackageParser;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/content/pm/HwPackageParser;->sAppMap:Ljava/util/HashMap;

    .line 61
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/content/pm/HwPackageParser;->mInstanceLock:Ljava/lang/Object;

    .line 65
    sput-object v0, Landroid/content/pm/HwPackageParser;->mHwFullScreenAppList:Ljava/util/List;

    .line 80
    sput-object v0, Landroid/content/pm/HwPackageParser;->APP_ASPECTS:Ljava/util/Map;

    .line 83
    invoke-static {}, Landroid/content/pm/HwPackageParser;->initFullScreenList()V

    .line 84
    invoke-static {}, Landroid/content/pm/HwPackageParser;->initBenchmarkList()Z

    .line 85
    invoke-static {}, Landroid/content/pm/HwPackageParser;->initTahitiAppAspectList()V

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCfgFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .line 200
    const-string v0, "com.huawei.cust.HwCfgFilePolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 201
    .local v0, "filePolicyClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getCfgFile"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 203
    .local v1, "filePolicyMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 203
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    return-object v2
.end method

.method private static getCustomizedFileName(Ljava/lang/String;I)Ljava/io/File;
    .locals 4
    .param p0, "xmlName"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/content/pm/HwPackageParser;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 215
    :goto_0
    goto :goto_1

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BENCHMAR_APP"

    const-string v3, "getCustomizedFileName get layout file exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 211
    :catch_1
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "BENCHMAR_APP"

    const-string v3, "HwCfgFilePolicy NoClassDefFoundError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 216
    :goto_1
    return-object v0
.end method

.method public static getDefault()Landroid/content/pm/HwPackageParser;
    .locals 2

    .line 230
    sget-object v0, Landroid/content/pm/HwPackageParser;->mInstance:Landroid/content/pm/HwPackageParser;

    if-nez v0, :cond_1

    .line 232
    sget-object v0, Landroid/content/pm/HwPackageParser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-object v1, Landroid/content/pm/HwPackageParser;->mInstance:Landroid/content/pm/HwPackageParser;

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Landroid/content/pm/HwPackageParser;

    invoke-direct {v1}, Landroid/content/pm/HwPackageParser;-><init>()V

    sput-object v1, Landroid/content/pm/HwPackageParser;->mInstance:Landroid/content/pm/HwPackageParser;

    .line 236
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 239
    :cond_1
    :goto_0
    sget-object v0, Landroid/content/pm/HwPackageParser;->mInstance:Landroid/content/pm/HwPackageParser;

    return-object v0
.end method

.method private static initBenchmarkList()Z
    .locals 5

    .line 353
    invoke-static {}, Landroid/content/pm/HwPackageParser;->isForbiddenBenchmarkAppInstall()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 354
    return v1

    .line 357
    :cond_0
    sget-object v0, Landroid/content/pm/HwPackageParser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    sget-object v2, Landroid/content/pm/HwPackageParser;->mBenchmarkApp:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 359
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Landroid/content/pm/HwPackageParser;->mBenchmarkApp:Ljava/util/Set;

    .line 360
    sget-object v2, Landroid/content/pm/HwPackageParser;->sAppMap:Ljava/util/HashMap;

    const-string v3, "system/etc"

    const-string v4, "benchmar_app.xml"

    invoke-static {v2, v3, v4}, Landroid/content/pm/HwPackageParser;->readBenchmarkAppFromXml(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    .line 361
    sget-object v2, Landroid/content/pm/HwPackageParser;->sAppMap:Ljava/util/HashMap;

    const-string v3, "app"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 362
    .local v2, "BenchmarkApp":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 363
    nop

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 364
    sget-object v3, Landroid/content/pm/HwPackageParser;->mBenchmarkApp:Ljava/util/Set;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "i":I
    .end local v2    # "BenchmarkApp":[Ljava/lang/String;
    :cond_1
    monitor-exit v0

    .line 369
    const/4 v0, 0x1

    return v0

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initFullScreenList()V
    .locals 7

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/HwPackageParser;->mHwFullScreenAppList:Ljava/util/List;

    .line 155
    const-string v0, "hw_fullscreen_apps.xml"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/HwPackageParser;->getCustomizedFileName(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 156
    .local v0, "configFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 157
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    move-object v3, v2

    .line 159
    .local v3, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v2

    goto/16 :goto_7

    .line 186
    :catch_0
    move-exception v2

    goto :goto_3

    .line 184
    :catch_1
    move-exception v2

    goto :goto_5

    .line 182
    :catch_2
    move-exception v2

    goto/16 :goto_6

    .line 162
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 163
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    move-object v3, v4

    .line 164
    invoke-interface {v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 165
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 166
    .local v4, "xmlEventType":I
    :goto_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    .line 167
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 168
    const-string v5, "fullscreen_app"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    const-string v5, "package_name"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 171
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 173
    :cond_1
    sget-object v6, Landroid/content/pm/HwPackageParser;->mHwFullScreenAppList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 175
    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const-string v5, "fullscreen_whitelist"

    .line 176
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    goto :goto_9

    .line 179
    :cond_3
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_1

    .line 186
    .end local v4    # "xmlEventType":I
    :goto_3
    nop

    .line 187
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "BENCHMAR_APP"

    const-string v5, "parser fullscreen IO fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_6

    .line 191
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 194
    :goto_4
    goto :goto_a

    .line 192
    :catch_3
    move-exception v2

    .line 193
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "BENCHMAR_APP"

    const-string v5, "loadFullScreeniWinWhiteList:- IOE while closing stream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 184
    :goto_5
    nop

    .line 185
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v4, "BENCHMAR_APP"

    const-string v5, "parser fullscreen xml fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_6

    .line 191
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 182
    :goto_6
    nop

    .line 183
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "BENCHMAR_APP"

    const-string v5, "fullscreen xml not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_6

    .line 191
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 189
    :goto_7
    if-eqz v1, :cond_4

    .line 191
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 194
    goto :goto_8

    .line 192
    :catch_4
    move-exception v4

    .line 193
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "BENCHMAR_APP"

    const-string v6, "loadFullScreeniWinWhiteList:- IOE while closing stream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_8
    throw v2

    .line 189
    :cond_5
    :goto_9
    if-eqz v1, :cond_6

    .line 191
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 197
    :cond_6
    :goto_a
    return-void
.end method

.method private static initTahitiAppAspectList()V
    .locals 13

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/HwPackageParser;->APP_ASPECTS:Ljava/util/Map;

    .line 90
    invoke-static {}, Landroid/hardware/display/HwFoldScreenState;->isFoldScreenDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    const-string v0, "hw_tahiti_app_aspect_list.xml"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/HwPackageParser;->getCustomizedFileName(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 94
    .local v0, "configFile":Ljava/io/File;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 98
    :cond_1
    const/4 v2, 0x0

    .line 99
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    move-object v4, v3

    .line 101
    .local v4, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 102
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v4, v5

    .line 103
    invoke-interface {v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 105
    :cond_2
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "xmlEventType":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_6

    .line 106
    const/4 v5, 0x2

    if-ne v6, v5, :cond_2

    const-string v5, "package"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const-string v5, "name"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 109
    goto :goto_0

    .line 111
    :cond_3
    const-string v8, "defaultAspect"

    invoke-interface {v4, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "aspectStr":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/display/HwFoldScreenState;->getScreenFoldFullRatio()F

    move-result v9

    .line 113
    .local v9, "defaultAspect":F
    const-string v10, "Tahiti"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", defaultAspect: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_5

    .line 116
    :try_start_1
    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, "aspectStrs":[Ljava/lang/String;
    aget-object v11, v10, v1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aget-object v7, v10, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    div-float/2addr v11, v7

    .line 118
    .end local v9    # "defaultAspect":F
    .local v11, "defaultAspect":F
    :try_start_2
    invoke-static {v11}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 119
    invoke-static {}, Landroid/hardware/display/HwFoldScreenState;->getScreenFoldFullRatio()F

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .end local v10    # "aspectStrs":[Ljava/lang/String;
    .end local v11    # "defaultAspect":F
    .local v7, "defaultAspect":F
    move v9, v7

    goto :goto_1

    .end local v7    # "defaultAspect":F
    .restart local v11    # "defaultAspect":F
    :cond_4
    move v9, v11

    .end local v11    # "defaultAspect":F
    .restart local v9    # "defaultAspect":F
    :goto_1
    goto :goto_3

    .line 121
    .end local v9    # "defaultAspect":F
    .restart local v11    # "defaultAspect":F
    :catch_0
    move-exception v7

    move v9, v11

    goto :goto_2

    .end local v11    # "defaultAspect":F
    .restart local v9    # "defaultAspect":F
    :catch_1
    move-exception v7

    .line 122
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v10, "BENCHMAR_APP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wrong aspect "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    sget-object v7, Landroid/content/pm/HwPackageParser;->APP_ASPECTS:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "aspectStr":Ljava/lang/String;
    .end local v9    # "defaultAspect":F
    goto/16 :goto_0

    .line 136
    .end local v6    # "xmlEventType":I
    :cond_6
    nop

    .line 138
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 141
    :goto_4
    goto :goto_5

    .line 139
    :catch_2
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BENCHMAR_APP"

    const-string v5, "initTahitiAppAspectList:- IOE while closing stream"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 136
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 133
    :catch_3
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v3, "BENCHMAR_APP"

    const-string v5, "initCloneAppsFromCust"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_7

    .line 138
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 131
    :catch_4
    move-exception v1

    .line 132
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    const-string v3, "BENCHMAR_APP"

    const-string v5, "initCloneAppsFromCust"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 136
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v2, :cond_7

    .line 138
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 129
    :catch_5
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v3, "BENCHMAR_APP"

    const-string v5, "initCloneAppsFromCust, FileNotFoundException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 136
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_7

    .line 138
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .line 144
    :cond_7
    :goto_5
    return-void

    .line 136
    :goto_6
    if-eqz v2, :cond_8

    .line 138
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 141
    goto :goto_7

    .line 139
    :catch_6
    move-exception v3

    .line 140
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "BENCHMAR_APP"

    const-string v6, "initTahitiAppAspectList:- IOE while closing stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8
    :goto_7
    throw v1

    .line 95
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :goto_8
    const-string v1, "BENCHMAR_APP"

    const-string v2, "hw_tahiti_app_aspect_list.xml does not exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method private static isForbiddenBenchmarkAppInstall()Z
    .locals 10

    .line 324
    const/4 v0, 0x1

    .line 325
    .local v0, "FLAG_FORBID_RUNNING_SOFTWARE_INSTALL":I
    const-string v1, "0x"

    .line 326
    .local v1, "MSPES_CONFIG_PREFIX":Ljava/lang/String;
    const/4 v2, 0x0

    .line 327
    .local v2, "result":Z
    const-string v3, "ro.mspes.config"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "mspesConfig":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 331
    .local v4, "mspesConfigValue":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 334
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v6

    .line 337
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v7, "BENCHMAR_APP"

    const-string v8, " ro.mspes.config  is not a number"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    int-to-long v6, v0

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 340
    const/4 v2, 0x1

    goto :goto_1

    .line 343
    :cond_0
    sget-boolean v6, Landroid/content/pm/HwPackageParser;->HIDE_PRODUCT_INFO:Z

    if-nez v6, :cond_2

    sget-boolean v6, Landroid/content/pm/HwPackageParser;->FASTBOOT_UNLOCK:Z

    if-eqz v6, :cond_1

    goto :goto_2

    .line 347
    :cond_1
    :goto_1
    return v2

    .line 344
    :cond_2
    :goto_2
    const/4 v6, 0x1

    return v6
.end method

.method private static readBenchmarkAppFromXml(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "fileDir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 254
    .local p0, "sMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v0, "mFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 256
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 257
    return v3

    .line 259
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 261
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 262
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 263
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, "parsingArray":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v6, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 268
    .local v7, "arrayName":Ljava/lang/String;
    nop

    .line 270
    .local v3, "i":I
    :goto_0
    add-int/lit8 v8, v3, 0x1

    .local v8, "i":I
    const/16 v9, 0x1f4

    if-le v3, v9, :cond_1

    .line 271
    .end local v3    # "i":I
    goto :goto_1

    .line 273
    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 275
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 299
    .end local v3    # "element":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_2

    .line 300
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parsingArray":Z
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "arrayName":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_2
    nop

    .line 309
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :goto_2
    goto/16 :goto_4

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BENCHMAR_APP"

    const-string v4, "readBenchmarkAppFromXml  inputStream close IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 278
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v5    # "parsingArray":Z
    .restart local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "arrayName":Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_3
    if-eqz v5, :cond_4

    :try_start_2
    const-string v9, "value"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 279
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const/4 v5, 0x0

    .line 282
    :cond_4
    const-string v9, "array"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 283
    const/4 v5, 0x1

    .line 284
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 285
    const-string v9, "name"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    goto :goto_3

    .line 286
    :cond_5
    const-string v9, "item"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "value"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 287
    :cond_6
    const/4 v9, 0x0

    .line 288
    .local v9, "name":Ljava/lang/String;
    if-nez v5, :cond_7

    const-string v10, "name"

    invoke-interface {v2, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 289
    :cond_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    .line 290
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 291
    .local v10, "value":Ljava/lang/String;
    const-string v11, "item"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 292
    invoke-virtual {p0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 293
    :cond_8
    if-eqz v5, :cond_9

    .line 294
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    .end local v3    # "element":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_9
    :goto_3
    nop

    .line 268
    move v3, v8

    goto/16 :goto_0

    .line 307
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parsingArray":Z
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "arrayName":Ljava/lang/String;
    .end local v8    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 304
    :catch_1
    move-exception v2

    .line 305
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "BENCHMAR_APP"

    const-string v4, "readBenchmarkAppFromXml  IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_a

    .line 309
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 302
    :catch_2
    move-exception v2

    .line 303
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v3, "BENCHMAR_APP"

    const-string v4, "readBenchmarkAppFromXml  XmlPullParserException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 307
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_a

    .line 309
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 315
    :cond_a
    :goto_4
    const-string v2, "BENCHMAR_APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "benchmar_app.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " be read ! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v2, 0x1

    return v2

    .line 307
    :goto_5
    if-eqz v1, :cond_b

    .line 309
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 312
    goto :goto_6

    .line 310
    :catch_3
    move-exception v3

    .line 311
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BENCHMAR_APP"

    const-string v5, "readBenchmarkAppFromXml  inputStream close IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v3    # "e":Ljava/io/IOException;
    :cond_b
    :goto_6
    throw v2

    .line 318
    :cond_c
    const-string v2, "BENCHMAR_APP"

    const-string v4, "benchmar_app.xml not found! name maybe not right!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v3
.end method


# virtual methods
.method protected HwPackageParser()V
    .locals 0

    .line 228
    return-void
.end method

.method public getDefaultAspect(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 146
    sget-object v0, Landroid/content/pm/HwPackageParser;->APP_ASPECTS:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Landroid/content/pm/HwPackageParser;->initTahitiAppAspectList()V

    .line 149
    :cond_0
    sget-object v0, Landroid/content/pm/HwPackageParser;->APP_ASPECTS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getDefaultNonFullMaxRatio()F
    .locals 1

    .line 398
    invoke-static {}, Lhuawei/android/hwutil/HwFullScreenDisplay;->getDefaultNonFullMaxRatio()F

    move-result v0

    return v0
.end method

.method public getDeviceMaxRatio()F
    .locals 1

    .line 402
    invoke-static {}, Lhuawei/android/hwutil/HwFullScreenDisplay;->getDeviceMaxRatio()F

    move-result v0

    return v0
.end method

.method public getExclusionNavBarMaxRatio()F
    .locals 1

    .line 406
    invoke-static {}, Lhuawei/android/hwutil/HwFullScreenDisplay;->getExclusionNavBarMaxRatio()F

    move-result v0

    return v0
.end method

.method public initMetaData(Landroid/content/pm/PackageParser$Activity;)V
    .locals 3
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;

    .line 242
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    const-string v1, "hwc-navi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "navigationHide":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 244
    const-string v1, "ro.config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->navigationHide:Z

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->navigationHide:Z

    .line 251
    :cond_1
    :goto_0
    return-void
.end method

.method public isDefaultFullScreen(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 220
    sget-object v0, Landroid/content/pm/HwPackageParser;->mHwFullScreenAppList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Landroid/content/pm/HwPackageParser;->initFullScreenList()V

    .line 223
    :cond_0
    sget-object v0, Landroid/content/pm/HwPackageParser;->mHwFullScreenAppList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullScreenDevice()Z
    .locals 1

    .line 410
    invoke-static {}, Lhuawei/android/hwutil/HwFullScreenDisplay;->isFullScreenDevice()Z

    move-result v0

    return v0
.end method

.method public needStopApp(Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 375
    invoke-static {}, Landroid/content/pm/HwPackageParser;->initBenchmarkList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    sget-object v0, Landroid/content/pm/HwPackageParser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    sget-object v1, Landroid/content/pm/HwPackageParser;->mBenchmarkApp:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    .local v1, "mIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 386
    .local v2, "appName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v2    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 387
    .restart local v2    # "appName":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/4 v4, -0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 391
    .end local v1    # "mIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "appName":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    .line 393
    return-void

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
