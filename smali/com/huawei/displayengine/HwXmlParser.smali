.class Lcom/huawei/displayengine/HwXmlParser;
.super Ljava/lang/Object;
.source "HwXmlParser.java"


# static fields
.field private static final HWDEBUG:Z

.field private static final HWFLOW:Z

.field private static final TAG:Ljava/lang/String; = "HwXmlParser"


# instance fields
.field private mIsParseFinished:Z

.field private mRootElement:Lcom/huawei/displayengine/HwXmlElement;

.field private final mXmlPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const-string v0, "HwXmlParser"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/huawei/displayengine/HwXmlParser;->HWDEBUG:Z

    .line 28
    const/4 v0, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz v0, :cond_2

    const-string v0, "HwXmlParser"

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    nop

    :cond_3
    :goto_2
    sput-boolean v1, Lcom/huawei/displayengine/HwXmlParser;->HWFLOW:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "xmlPath"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/huawei/displayengine/HwXmlParser;->mXmlPath:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/huawei/displayengine/HwXmlParser;->mXmlPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "HwXmlParser"

    const-string v1, "HwXmlParser() error! input xmlPath is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method private getXmlFile()Ljava/io/FileInputStream;
    .locals 4

    .line 42
    sget-boolean v0, Lcom/huawei/displayengine/HwXmlParser;->HWDEBUG:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "HwXmlParser"

    const-string v1, "getXmlFile()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/huawei/displayengine/HwXmlParser;->mXmlPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 46
    const-string v0, "HwXmlParser"

    const-string v2, "getXmlFile() error! mXmlPath is null!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-object v1

    .line 50
    :cond_1
    move-object v0, v1

    .line 52
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/huawei/displayengine/HwXmlParser;->mXmlPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "HwXmlParser"

    const-string v3, "getXmlFile() failed! FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-object v0
.end method

.method private inSpecifiedDepth(III)Z
    .locals 3
    .param p1, "specifiedDepth"    # I
    .param p2, "type"    # I
    .param p3, "currentDepth"    # I

    .line 124
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 125
    return v0

    .line 127
    :cond_0
    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 128
    return v1

    .line 130
    :cond_1
    if-le p3, p1, :cond_2

    .line 131
    return v1

    .line 133
    :cond_2
    return v0
.end method


# virtual methods
.method public check()Z
    .locals 2

    .line 137
    sget-boolean v0, Lcom/huawei/displayengine/HwXmlParser;->HWFLOW:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "HwXmlParser"

    const-string v1, "check()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/displayengine/HwXmlParser;->mIsParseFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 142
    return v1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/huawei/displayengine/HwXmlParser;->mRootElement:Lcom/huawei/displayengine/HwXmlElement;

    invoke-virtual {v0}, Lcom/huawei/displayengine/HwXmlElement;->check()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    return v1

    .line 148
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public parse()Z
    .locals 11

    .line 68
    sget-boolean v0, Lcom/huawei/displayengine/HwXmlParser;->HWFLOW:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "HwXmlParser"

    const-string v1, "parse()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/huawei/displayengine/HwXmlParser;->mRootElement:Lcom/huawei/displayengine/HwXmlElement;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 73
    const-string v0, "HwXmlParser"

    const-string v2, "parse() error! hasn\'t registerRootElement"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v1

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/huawei/displayengine/HwXmlParser;->getXmlFile()Ljava/io/FileInputStream;

    move-result-object v0

    .line 78
    .local v0, "inputStream":Ljava/io/FileInputStream;
    if-nez v0, :cond_2

    .line 79
    return v1

    .line 83
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 84
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/huawei/displayengine/HwXmlParser;->mRootElement:Lcom/huawei/displayengine/HwXmlElement;

    invoke-virtual {v3}, Lcom/huawei/displayengine/HwXmlElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "rootTagName":Ljava/lang/String;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 88
    .local v4, "specifiedDepth":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 89
    .local v5, "type":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 90
    .local v6, "currentDepth":I
    :goto_0
    invoke-direct {p0, v4, v5, v6}, Lcom/huawei/displayengine/HwXmlParser;->inSpecifiedDepth(III)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 91
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 92
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "tagName":Ljava/lang/String;
    sget-boolean v8, Lcom/huawei/displayengine/HwXmlParser;->HWDEBUG:Z

    if-eqz v8, :cond_3

    .line 94
    const-string v8, "HwXmlParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse() rootTagName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",tagName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 97
    iget-object v8, p0, Lcom/huawei/displayengine/HwXmlParser;->mRootElement:Lcom/huawei/displayengine/HwXmlElement;

    invoke-virtual {v8, v2}, Lcom/huawei/displayengine/HwXmlElement;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    .line 101
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    move v6, v7

    goto :goto_0

    .line 103
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huawei/displayengine/HwXmlParser;->mIsParseFinished:Z

    .line 104
    sget-boolean v8, Lcom/huawei/displayengine/HwXmlParser;->HWFLOW:Z

    if-eqz v8, :cond_6

    .line 105
    const-string v8, "HwXmlParser"

    const-string v9, "parse() done"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_6
    nop

    .line 114
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "HwXmlParser"

    const-string v9, "parse() error! close FileInputStream failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v7

    .line 113
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "rootTagName":Ljava/lang/String;
    .end local v4    # "specifiedDepth":I
    .end local v5    # "type":I
    .end local v6    # "currentDepth":I
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 110
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "HwXmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse() error! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 108
    :catch_2
    move-exception v2

    .line 109
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v3, "HwXmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse() error! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 117
    :goto_2
    goto :goto_3

    .line 115
    :catch_3
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "HwXmlParser"

    const-string v4, "parse() error! close FileInputStream failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 120
    :goto_3
    return v1

    .line 113
    :goto_4
    nop

    .line 114
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 117
    goto :goto_5

    .line 115
    :catch_4
    move-exception v2

    .line 116
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "HwXmlParser"

    const-string v4, "parse() error! close FileInputStream failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    throw v1
.end method

.method public registerRootElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;
    .locals 2
    .param p1, "element"    # Lcom/huawei/displayengine/HwXmlElement;

    .line 60
    sget-boolean v0, Lcom/huawei/displayengine/HwXmlParser;->HWDEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "HwXmlParser"

    const-string v1, "registerRootElement()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/huawei/displayengine/HwXmlParser;->mRootElement:Lcom/huawei/displayengine/HwXmlElement;

    .line 64
    return-object p1
.end method
