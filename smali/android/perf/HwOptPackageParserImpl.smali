.class public Landroid/perf/HwOptPackageParserImpl;
.super Ljava/lang/Object;
.source "HwOptPackageParserImpl.java"

# interfaces
.implements Landroid/perf/HwOptPackageParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwOptPackageParserImpl"

.field private static final mOptPackageListEnable:Z


# instance fields
.field private mOptPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "persist.kirin.perfoptpackage_list"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageListEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageMap:Ljava/util/Map;

    return-void
.end method

.method private addOptPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "optType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p2, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v0, "optTypeId":I
    goto :goto_0

    .line 119
    .end local v0    # "optTypeId":I
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "HwOptPackageParserImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Errot opt type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .line 124
    .local v0, "optTypeId":I
    :goto_0
    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    return-void

    .line 113
    .end local v0    # "optTypeId":I
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getOptPackages()V
    .locals 13

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 36
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 37
    .local v2, "optType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 38
    .local v3, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 39
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    .line 40
    .local v5, "systemDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "/etc"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v6, "etcDir":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    const-string v9, "packages-perfopt.xml"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 44
    .local v7, "xmlFile":Landroid/util/AtomicFile;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9

    move-object v0, v9

    .line 45
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    move-object v1, v9

    .line 46
    invoke-interface {v1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 49
    .local v9, "eventType":I
    :goto_0
    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    .line 50
    if-eqz v9, :cond_2

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 68
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "opt_type"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 69
    invoke-direct {p0, v2, v3}, Landroid/perf/HwOptPackageParserImpl;->addOptPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    goto :goto_1

    .line 56
    :pswitch_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "opt_type"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 57
    const-string v10, "typeid"

    invoke-interface {v1, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 58
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "pkg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 60
    const-string v10, "name"

    invoke-interface {v1, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, "pkgName":Ljava/lang/String;
    if-eqz v10, :cond_1

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 52
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageMap:Ljava/util/Map;

    .line 53
    nop

    .line 78
    :cond_3
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v10

    goto :goto_0

    .line 84
    .end local v9    # "eventType":I
    :cond_4
    if-eqz v0, :cond_5

    .line 86
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :goto_2
    goto :goto_4

    .line 87
    :catch_0
    move-exception v8

    .line 88
    .local v8, "e":Ljava/io/IOException;
    const-string v9, "HwOptPackageParserImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v11, "Error close fis: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 84
    :catchall_0
    move-exception v8

    goto :goto_5

    .line 80
    :catch_1
    move-exception v9

    .line 81
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "HwOptPackageParserImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parse packages-opt: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object v8, p0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageMap:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .end local v9    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_5

    .line 86
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 87
    :catch_2
    move-exception v8

    .line 88
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v9, "HwOptPackageParserImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 92
    .end local v8    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    return-void

    .line 84
    :goto_5
    if-eqz v0, :cond_6

    .line 86
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 89
    goto :goto_6

    .line 87
    :catch_3
    move-exception v9

    .line 88
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error close fis: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "HwOptPackageParserImpl"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v9    # "e":Ljava/io/IOException;
    :cond_6
    :goto_6
    throw v8

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPerfOptEnable(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "optTypeId"    # I

    .line 95
    sget-boolean v0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageListEnable:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 100
    return v1

    .line 103
    :cond_1
    iget-object v0, p0, Landroid/perf/HwOptPackageParserImpl;->mOptPackageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 104
    .local v0, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 105
    return v1

    .line 108
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
