.class Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile_Algo;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_SaveCommonInfo;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_Algo;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Custom;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Enable;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Config;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;,
        Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DE J ImageProcessorAlgoStrategy"

.field private static final XML_PATH:Ljava/lang/String; = "display/effect/algorithm/imageprocessor/ImageProcessStrategy.xml"

.field private static mAlgoSkinBeautyEnable:Z

.field private static mAlgoVividEnable:Z

.field private static mAlgoWideColorSpaceEnable:Z

.field private static mCurrentThumbnailType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

.field private static mCurrentTileType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

.field private static mEnable:Z

.field private static mNeedNormallizeColorSpace:Z

.field private static mNormallizeColorGamut:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

.field private static mThumbnailStrategy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;",
            "Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static mTileStrategy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/displayengine/ImageProcessor$TileEngineType;",
            "Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    sput-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNormallizeColorGamut:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "DE J ImageProcessorAlgoStrategy"

    const-string v1, "ImageProcessorAlgoStrategy enter"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->loadXML()V

    .line 45
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->initCommonInfoAlgos()V

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->printStrategy()V

    .line 48
    const-string v0, "DE J ImageProcessorAlgoStrategy"

    const-string v1, "ImageProcessorAlgoStrategy exit"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 27
    sput-boolean p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoWideColorSpaceEnable:Z

    return p0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 27
    sput-boolean p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoSkinBeautyEnable:Z

    return p0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 27
    sput-boolean p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoVividEnable:Z

    return p0
.end method

.method static synthetic access$1300()Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .locals 1

    .line 27
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNormallizeColorGamut:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 27
    sput-object p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNormallizeColorGamut:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    return-object p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 27
    sput-boolean p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNeedNormallizeColorSpace:Z

    return p0
.end method

.method static synthetic access$1500()Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    .locals 1

    .line 27
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mCurrentThumbnailType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;)Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 27
    sput-object p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mCurrentThumbnailType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 27
    invoke-static {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isImageTypeEnable(Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Ljava/util/Map;
    .locals 1

    .line 27
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .locals 1

    .line 27
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mCurrentTileType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;)Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    .line 27
    sput-object p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mCurrentTileType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    return-object p0
.end method

.method static synthetic access$1900()Ljava/util/Map;
    .locals 1

    .line 27
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 27
    sput-boolean p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mEnable:Z

    return p0
.end method

.method private getXmlPath()Ljava/lang/String;
    .locals 6

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "xmlPath":Ljava/lang/String;
    const-string v1, "display/effect/algorithm/imageprocessor/ImageProcessStrategy.xml"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 287
    .local v1, "xmlFile":Ljava/io/File;
    if-nez v1, :cond_0

    .line 288
    const-string v2, "DE J ImageProcessorAlgoStrategy"

    const-string v3, "getXmlPath() error! can\'t find xml file.display/effect/algorithm/imageprocessor/ImageProcessStrategy.xml"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v2, 0x0

    return-object v2

    .line 292
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 295
    goto :goto_0

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "DE J ImageProcessorAlgoStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getXmlPath() IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method private initCommonInfoAlgos()V
    .locals 9

    .line 68
    const-string v0, "DE J ImageProcessorAlgoStrategy"

    const-string v1, "initCommonInfoAlgos"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor$ImageType;->values()[Lcom/huawei/displayengine/ImageProcessor$ImageType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 71
    .local v3, "imageType":Lcom/huawei/displayengine/ImageProcessor$ImageType;
    invoke-static {v3}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isImageTypeEnable(Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    goto/16 :goto_4

    .line 74
    :cond_0
    const-class v4, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 76
    .local v4, "algos":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    sget-object v5, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    .line 77
    .local v6, "tileEngineType":Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    invoke-virtual {p0, v6, v3}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getTileAlgos(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;

    move-result-object v7

    .line 78
    .local v7, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-eqz v7, :cond_1

    .line 79
    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    .end local v6    # "tileEngineType":Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :cond_1
    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    goto :goto_4

    .line 85
    :cond_3
    sget-object v5, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    .line 86
    .local v6, "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    iget-boolean v7, v6, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mIsSaveCommonInfo:Z

    if-eqz v7, :cond_6

    .line 87
    iget-object v7, v6, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    if-nez v7, :cond_4

    .line 88
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    .line 89
    iget-object v7, v6, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 91
    :cond_4
    iget-object v7, v6, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 92
    .restart local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-nez v7, :cond_5

    .line 93
    iget-object v8, v6, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 95
    :cond_5
    invoke-interface {v7, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 99
    .end local v6    # "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :cond_6
    :goto_3
    goto :goto_2

    .line 70
    .end local v3    # "imageType":Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .end local v4    # "algos":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_8
    return-void
.end method

.method private isFactoryMode()Z
    .locals 3

    .line 262
    const-string v0, "factory"

    const-string v1, "ro.runmode"

    const-string v2, "factory"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isImageTypeEnable(Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z
    .locals 2
    .param p0, "imageType"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 104
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;->$SwitchMap$com$huawei$displayengine$ImageProcessor$ImageType:[I

    invoke-virtual {p0}, Lcom/huawei/displayengine/ImageProcessor$ImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    return v0

    .line 112
    :pswitch_0
    sget-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoVividEnable:Z

    return v0

    .line 110
    :pswitch_1
    sget-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoSkinBeautyEnable:Z

    return v0

    .line 108
    :pswitch_2
    sget-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoWideColorSpaceEnable:Z

    return v0

    .line 106
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadDefaultConfig()V
    .locals 8

    .line 321
    const-string v0, "DE J ImageProcessorAlgoStrategy"

    const-string v1, "loadDefaultConfig()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mEnable:Z

    .line 324
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoWideColorSpaceEnable:Z

    .line 325
    sput-boolean v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoSkinBeautyEnable:Z

    .line 326
    sput-boolean v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoVividEnable:Z

    .line 327
    sput-boolean v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNeedNormallizeColorSpace:Z

    .line 328
    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    sput-object v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNormallizeColorGamut:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 329
    sget-object v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 330
    sget-object v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->ANIMATION:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    new-instance v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    sget-object v4, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v5, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACE:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 331
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;)V

    .line 330
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->FULLSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    new-instance v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    sget-object v4, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v5, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACE:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    sget-object v6, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->SR:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    sget-object v7, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->SHARPNESS:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 333
    invoke-static {v5, v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;Z)V

    .line 332
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v1, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->HALFSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    new-instance v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    sget-object v4, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v5, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACE:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 335
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;Z)V

    .line 334
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->DEFAULT:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    new-instance v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v4, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACE:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 337
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;)V

    .line 336
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 339
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->NON_SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    new-instance v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v4, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACE:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 340
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;)V

    .line 339
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    new-instance v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v4, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->SR:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    sget-object v5, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->SHARPNESS:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 342
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;)V

    .line 341
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-void
.end method

.method private loadXML()V
    .locals 6

    .line 271
    const-string v0, "DE J ImageProcessorAlgoStrategy"

    const-string v1, "loadXML()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v0, "loadXML"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getXmlPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->parseXml(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->loadDefaultConfig()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "DE J ImageProcessorAlgoStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadXML RuntimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->loadDefaultConfig()V

    .line 281
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    return-void
.end method

.method private parseXml(Ljava/lang/String;)Z
    .locals 4
    .param p1, "xmlPath"    # Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 301
    const-string v1, "DE J ImageProcessorAlgoStrategy"

    const-string v2, "parseXml() error! xmlPath is null"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v0

    .line 305
    :cond_0
    new-instance v1, Lcom/huawei/displayengine/HwXmlParser;

    invoke-direct {v1, p1}, Lcom/huawei/displayengine/HwXmlParser;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "xmlParser":Lcom/huawei/displayengine/HwXmlParser;
    invoke-direct {p0, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->registerElement(Lcom/huawei/displayengine/HwXmlParser;)V

    .line 307
    invoke-virtual {v1}, Lcom/huawei/displayengine/HwXmlParser;->parse()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    const-string v2, "DE J ImageProcessorAlgoStrategy"

    const-string v3, "parseXml() error! xmlParser.parse() failed!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return v0

    .line 311
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/displayengine/HwXmlParser;->check()Z

    move-result v2

    if-nez v2, :cond_2

    .line 312
    const-string v2, "DE J ImageProcessorAlgoStrategy"

    const-string v3, "parseXml() error! xmlParser.check() failed!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v0

    .line 316
    :cond_2
    const-string v0, "DE J ImageProcessorAlgoStrategy"

    const-string v2, "parseXml() load success!"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method private printStrategy()V
    .locals 8

    .line 52
    const-string v0, "DE J ImageProcessorAlgoStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printStrategy mEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgoWideColorSpaceEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoWideColorSpaceEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgoSkinBeautyEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoSkinBeautyEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgoVividEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoVividEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNeedNormallizeColorSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNeedNormallizeColorSpace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNormallizeColorGamut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNormallizeColorGamut:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 56
    .local v2, "thumbnailType":Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    .line 57
    .local v3, "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    const-string v4, "DE J ImageProcessorAlgoStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printStrategy Thumbnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", Algo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    iget-boolean v6, v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mIsSaveCommonInfo:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", CommonInfoAlgo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;>;"
    .end local v2    # "thumbnailType":Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    .end local v3    # "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/displayengine/ImageProcessor$TileEngineType;Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    .line 62
    .local v2, "tileEngineType":Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;

    .line 63
    .local v3, "tileStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;
    const-string v4, "DE J ImageProcessorAlgoStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printStrategy Tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", Algo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/displayengine/ImageProcessor$TileEngineType;Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;>;"
    .end local v2    # "tileEngineType":Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .end local v3    # "tileStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;
    goto :goto_2

    .line 65
    :cond_2
    return-void
.end method

.method private registerElement(Lcom/huawei/displayengine/HwXmlParser;)V
    .locals 6
    .param p1, "parser"    # Lcom/huawei/displayengine/HwXmlParser;

    .line 346
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Config;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Config;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {p1, v0}, Lcom/huawei/displayengine/HwXmlParser;->registerRootElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    move-result-object v0

    .line 347
    .local v0, "rootElement":Lcom/huawei/displayengine/HwXmlElement;
    new-instance v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Enable;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Enable;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 348
    new-instance v2, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Custom;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Custom;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    move-result-object v2

    .line 349
    .local v2, "colorGamut":Lcom/huawei/displayengine/HwXmlElement;
    new-instance v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;

    invoke-direct {v3, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_CustomGroup;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {v2, v3}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 350
    new-instance v3, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail;

    invoke-direct {v3, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {v0, v3}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    move-result-object v3

    .line 351
    .local v3, "thumbnail":Lcom/huawei/displayengine/HwXmlElement;
    new-instance v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_Algo;

    invoke-direct {v4, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_Algo;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {v3, v4}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 352
    new-instance v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_SaveCommonInfo;

    invoke-direct {v4, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Thumbnail_SaveCommonInfo;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {v3, v4}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 353
    new-instance v4, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile;

    invoke-direct {v4, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {v0, v4}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    move-result-object v4

    .line 354
    .local v4, "tile":Lcom/huawei/displayengine/HwXmlElement;
    new-instance v5, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile_Algo;

    invoke-direct {v5, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$Element_Tile_Algo;-><init>(Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$1;)V

    invoke-virtual {v4, v5}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 355
    return-void
.end method


# virtual methods
.method public getCommonInfoAlgos(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;
    .locals 4
    .param p1, "thumbnailType"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    .param p2, "imageType"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;",
            "Lcom/huawei/displayengine/ImageProcessor$ImageType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;"
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    .line 198
    .local v0, "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    if-nez v0, :cond_0

    .line 199
    const/4 v1, 0x0

    return-object v1

    .line 201
    :cond_0
    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 202
    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 203
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    return-object v1

    .line 206
    :cond_1
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    if-eq p2, v2, :cond_2

    .line 207
    iget-object v2, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/Set;

    .line 209
    :cond_2
    return-object v1

    .line 211
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getThumbnailAlgos(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getNormallizeColorGamut()Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .locals 1

    .line 139
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNormallizeColorGamut:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    return-object v0
.end method

.method public getThumbnailAlgos(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;
    .locals 4
    .param p1, "thumbnailType"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    .param p2, "imageType"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;",
            "Lcom/huawei/displayengine/ImageProcessor$ImageType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;"
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    .line 183
    .local v0, "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 187
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    return-object v1

    .line 190
    :cond_1
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    if-eq p2, v2, :cond_2

    .line 191
    iget-object v2, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/Set;

    .line 193
    :cond_2
    return-object v1

    .line 184
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTileAlgos(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;
    .locals 4
    .param p1, "tileEngineType"    # Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .param p2, "imageType"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/displayengine/ImageProcessor$TileEngineType;",
            "Lcom/huawei/displayengine/ImageProcessor$ImageType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;"
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;

    .line 248
    .local v0, "tileStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 252
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    return-object v1

    .line 255
    :cond_1
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    if-eq p2, v2, :cond_2

    .line 256
    iget-object v2, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/Set;

    .line 258
    :cond_2
    return-object v1

    .line 249
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTileEngineAlgos(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;)Ljava/util/Set;
    .locals 4
    .param p1, "tileEngineType"    # Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/displayengine/ImageProcessor$TileEngineType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;"
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mTileStrategy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;

    .line 231
    .local v0, "tileStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_2

    .line 234
    :cond_0
    const/4 v1, 0x0

    .line 236
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    iget-object v2, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 237
    .local v3, "value":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-nez v1, :cond_1

    .line 238
    invoke-static {v3}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    goto :goto_1

    .line 240
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 242
    .end local v3    # "value":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :goto_1
    goto :goto_0

    .line 243
    :cond_2
    return-object v1

    .line 232
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAlgoSkinBeautyEnable()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoSkinBeautyEnable:Z

    return v0
.end method

.method public isAlgoVividEnable()Z
    .locals 1

    .line 131
    sget-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoVividEnable:Z

    return v0
.end method

.method public isAlgoWideColorSpaceEnable()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mAlgoWideColorSpaceEnable:Z

    return v0
.end method

.method public isImageProcessorEnable()Z
    .locals 1

    .line 119
    sget-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mEnable:Z

    return v0
.end method

.method public needNormallizeColorSpace()Z
    .locals 1

    .line 135
    sget-boolean v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mNeedNormallizeColorSpace:Z

    return v0
.end method

.method public needRunSoftwareAlgo(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z
    .locals 2
    .param p1, "thumbnailType"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    .param p2, "imageType"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getThumbnailAlgos(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 165
    return v1

    .line 167
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getCommonInfoAlgos(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    return v1

    .line 170
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public needRunSoftwareAlgo(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z
    .locals 1
    .param p1, "tileEngineType"    # Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .param p2, "imageType"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getTileAlgos(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needSaveCommonInfo(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;)Z
    .locals 2
    .param p1, "thumbnailType"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 174
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->mThumbnailStrategy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;

    .line 175
    .local v0, "thumbnailStrategy":Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
    if-nez v0, :cond_0

    .line 176
    const/4 v1, 0x0

    return v1

    .line 178
    :cond_0
    iget-boolean v1, v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mIsSaveCommonInfo:Z

    return v1
.end method
