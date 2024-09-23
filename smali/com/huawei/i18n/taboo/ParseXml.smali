.class public Lcom/huawei/i18n/taboo/ParseXml;
.super Ljava/lang/Object;
.source "ParseXml.java"


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "taboo-config.xml"

.field private static final DATA_NAME:Ljava/lang/String; = "/taboo-data.xml"

.field private static final EN_NAME:Ljava/lang/String; = "/xml/taboo-data.xml"

.field private static final FILE_SEP:Ljava/lang/String; = "/"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final LIMITED_LENGTH:I = 0x4

.field private static final MAP_SIZE:I = 0xa

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PARSE_XML_TAG:Ljava/lang/String; = "parseXml"

.field private static final REGION_LENGTH:I = 0x2

.field private static final TXTSECTION:I = 0x2

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final VERSION_NAME:Ljava/lang/String; = "version.txt"

.field private static final VERSION_TAG:Ljava/lang/String; = "version"

.field private static final XML_SEP:Ljava/lang/String; = "/xml-"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeVersion(Ljava/util/Scanner;)J
    .locals 12
    .param p0, "scanner"    # Ljava/util/Scanner;

    .line 240
    const-wide/16 v0, 0x0

    .line 242
    .local v0, "version":J
    :goto_0
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "oneline":Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "content":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "versionInfo":[Ljava/lang/String;
    const-string v5, "version"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/huawei/i18n/taboo/ParseXml;->isVersionFourSegments([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    array-length v5, v4

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 248
    .local v7, "str":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    add-long v0, v8, v10

    .line 247
    .end local v7    # "str":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 250
    :cond_0
    goto :goto_2

    .line 252
    .end local v2    # "oneline":Ljava/lang/String;
    .end local v4    # "versionInfo":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 253
    .end local v3    # "content":[Ljava/lang/String;
    :cond_2
    :goto_2
    return-wide v0
.end method

.method private static getDocument(Ljava/util/HashMap;Ljavax/xml/parsers/DocumentBuilder;Ljava/io/File;)V
    .locals 7
    .param p1, "builder"    # Ljavax/xml/parsers/DocumentBuilder;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/xml/parsers/DocumentBuilder;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 199
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_0

    .line 200
    const-string v1, "item"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 201
    .local v1, "item":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 203
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 204
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 205
    .local v4, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "name":Ljava/lang/String;
    const-string v6, "value"

    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "item":Lorg/w3c/dom/NodeList;
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "targetLocaleID"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "file":Ljava/io/File;
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 150
    .local v1, "targetLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "script":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "country":Ljava/lang/String;
    const-string v5, ""

    .line 154
    .local v5, "filePath":Ljava/lang/String;
    const-string v6, "-"

    const-string v7, "+"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "replaceLocaleID":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 156
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "en"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/xml/taboo-data.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 162
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/xml-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-r"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/taboo-data.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 158
    :cond_4
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/xml-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "b+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/taboo-data.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 168
    :goto_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 169
    return-object v0
.end method

.method public static getFileLastModify(Ljava/lang/String;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "version.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "file":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 284
    .local v1, "result":J
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 287
    :cond_0
    return-wide v1
.end method

.method private static getLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 129
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, "indexOf":I
    const-string v1, ""

    .line 131
    .local v1, "substring":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 132
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string v2, "b+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v2, "+"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 136
    :cond_0
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const-string v2, "-r"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    const-string v1, "en"

    .line 144
    :goto_0
    return-object v1
.end method

.method public static getVersion(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "version.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "file":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 222
    .local v1, "version":J
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    const/4 v3, 0x0

    .line 225
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 226
    invoke-static {v3}, Lcom/huawei/i18n/taboo/ParseXml;->computeVersion(Ljava/util/Scanner;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v4

    .line 230
    nop

    .line 231
    :goto_0
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 232
    const/4 v3, 0x0

    goto :goto_2

    .line 230
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 227
    :catch_0
    move-exception v4

    .line 228
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v5, "parseXml"

    const-string v6, "version file not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 232
    const/4 v3, 0x0

    :cond_0
    throw v4

    .line 236
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_1
    :goto_2
    return-wide v1
.end method

.method public static getXmlLanguageList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "languageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "resRoot":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 116
    .local v2, "fileArray":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 117
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 118
    .local v5, "fi":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "fileName":Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/i18n/taboo/ParseXml;->getLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "languageTag":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v5    # "fi":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_1
    return-object v0
.end method

.method private static isNumFormat([Ljava/lang/String;)Z
    .locals 7
    .param p0, "version"    # [Ljava/lang/String;

    .line 264
    const-string v0, "[0-9]{1,3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 266
    .local v0, "pattern":Ljava/util/regex/Pattern;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 267
    .local v4, "ver":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 268
    .local v5, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 269
    return v2

    .line 266
    .end local v4    # "ver":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .end local v5    # "isNum":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static isVersionFourSegments([Ljava/lang/String;)Z
    .locals 2
    .param p0, "versionInfo"    # [Ljava/lang/String;

    .line 257
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/huawei/i18n/taboo/ParseXml;->isNumFormat([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    return v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 64
    .local v0, "dataHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 65
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-static {v1}, Lcom/huawei/i18n/taboo/ParseXml;->setXmlEntityPolicy(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    .line 66
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 67
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {p0, p1}, Lcom/huawei/i18n/taboo/ParseXml;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 68
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-static {v0, v2, v3}, Lcom/huawei/i18n/taboo/ParseXml;->getDocument(Ljava/util/HashMap;Ljavax/xml/parsers/DocumentBuilder;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "file":Ljava/io/File;
    goto :goto_0

    .line 71
    .restart local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    return-object v0

    .line 73
    .end local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "parseXml"

    const-string v3, "parse xml exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static parseConfigXml(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 181
    .local v0, "configHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 182
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-static {v1}, Lcom/huawei/i18n/taboo/ParseXml;->setXmlEntityPolicy(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    .line 183
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 184
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "taboo-config.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    invoke-static {v0, v2, v3}, Lcom/huawei/i18n/taboo/ParseXml;->getDocument(Ljava/util/HashMap;Ljavax/xml/parsers/DocumentBuilder;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "file":Ljava/io/File;
    goto :goto_0

    .line 188
    .restart local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    return-object v0

    .line 190
    .end local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "parseXml"

    const-string v3, "parse config xml exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static setXmlEntityPolicy(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 3
    .param p0, "builderFactory"    # Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v0, "parseXml"

    const-string v1, "setXmlEntityPolicy failed,builderFactory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 84
    :cond_0
    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/huawei/i18n/taboo/ParseXml;->setXmlSecurityFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 85
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/huawei/i18n/taboo/ParseXml;->setXmlSecurityFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 86
    const-string v0, "http://xml.org/sax/features/external-parameter-entities"

    invoke-static {p0, v0, v2}, Lcom/huawei/i18n/taboo/ParseXml;->setXmlSecurityFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 87
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {p0, v0, v1}, Lcom/huawei/i18n/taboo/ParseXml;->setXmlSecurityFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {p0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 89
    return-void
.end method

.method private static setXmlSecurityFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "builderFactory"    # Ljavax/xml/parsers/DocumentBuilderFactory;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 93
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v1, "parseXml"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setXmlSecurityFeature occur ParserConfigurationException: set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    return-void

    .line 94
    :cond_1
    :goto_1
    const-string v0, "parseXml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setXmlSecurityFeature failed, builderFactory = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", featureName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
