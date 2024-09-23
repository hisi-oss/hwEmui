.class Lcom/huawei/displayengine/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/ImageProcessor$DestroyTileProcessEngineParam;,
        Lcom/huawei/displayengine/ImageProcessor$TileParam;,
        Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;,
        Lcom/huawei/displayengine/ImageProcessor$ImageEngine;,
        Lcom/huawei/displayengine/ImageProcessor$CommonInfo;,
        Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;,
        Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;,
        Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;,
        Lcom/huawei/displayengine/ImageProcessor$ImageType;,
        Lcom/huawei/displayengine/ImageProcessor$AlgoType;,
        Lcom/huawei/displayengine/ImageProcessor$TileEngineType;,
        Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;,
        Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;,
        Lcom/huawei/displayengine/ImageProcessor$InstanceHolder;
    }
.end annotation


# static fields
.field private static final CMD_CREATE_TILE_PROCESS_ENGINE:Ljava/lang/String; = "createTileProcessEngine"

.field private static final CMD_DESTROY_TILE_PROCESS_ENGINE:Ljava/lang/String; = "destroyTileProcessEngine"

.field private static final CMD_GET_SUPPORT_CMD:Ljava/lang/String; = "getSupportCmd"

.field private static final CMD_GET_WIDE_COLOR_GAMUT_SUPPORTED:Ljava/lang/String; = "getWideColorGamutSupported"

.field private static final CMD_PROCESS_THUMBNAIL:Ljava/lang/String; = "processThumbnail"

.field private static final CMD_PROCESS_TILE:Ljava/lang/String; = "processTile"

.field private static final CMD_TRANSFORM_COLORSPACE:Ljava/lang/String; = "transformColorspace"

.field private static final COMMON_INFO_CACHE_MAX_SIZE:I = 0xe

.field private static final DEFAULT_HARDWARE_SHARPNESS_LEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DE J ImageProcessor"

.field private static final UNINIT_HARDWARE_SHARPNESS_LEVEL:I = -0x1

.field private static mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

.field private static final mImageDescriptionBeauty:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImageDescriptionVivid:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

.field private mCommonInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/displayengine/ImageProcessor$CommonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilePath:Ljava/lang/String;

.field private final mEnable:Z

.field private mHardwareSharpnessLevel:I

.field private final mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

.field private mTileProcessEngineCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/huawei/displayengine/ImageProcessor$ImageEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 448
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$2;

    invoke-direct {v0}, Lcom/huawei/displayengine/ImageProcessor$2;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor;->mImageDescriptionBeauty:Ljava/util/Set;

    .line 461
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$3;

    invoke-direct {v0}, Lcom/huawei/displayengine/ImageProcessor$3;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor;->mImageDescriptionVivid:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/displayengine/IDisplayEngineServiceEx;)V
    .locals 4
    .param p1, "service"    # Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mHardwareSharpnessLevel:I

    .line 80
    const-string v0, "DE J ImageProcessor"

    const-string v1, "ImageProcessor enter"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$InstanceHolder;->mInstance:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    .line 83
    iput-object p1, p0, Lcom/huawei/displayengine/ImageProcessor;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    .line 84
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;-><init>(Lcom/huawei/displayengine/IDisplayEngineServiceEx;)V

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    .line 86
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isImageProcessorEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->isAlgoInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mEnable:Z

    .line 88
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$1;

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/huawei/displayengine/ImageProcessor$1;-><init>(Lcom/huawei/displayengine/ImageProcessor;IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mCommonInfoCache:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    .line 101
    const-string v0, "DE J ImageProcessor"

    const-string v1, "ImageProcessor exit"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method static synthetic access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
    .locals 1

    .line 24
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/huawei/displayengine/ImageProcessor;->isImageDescriptionBeauty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/huawei/displayengine/ImageProcessor;->isImageDescriptionVivid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private clearCommonInfo()V
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mCommonInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    return-void

    .line 730
    :cond_0
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommonInfoCache clear size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor;->mCommonInfoCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mCommonInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 732
    return-void
.end method

.method private clearImageEngine()V
    .locals 4

    .line 1033
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    return-void

    .line 1036
    :cond_0
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TileProcessEngineCache clear size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    monitor-enter v0

    .line 1038
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    .line 1039
    .local v2, "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v3, v2}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->destroyImageEngine(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;)V

    .line 1040
    .end local v2    # "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    goto :goto_0

    .line 1041
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1043
    return-void

    .line 1041
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V
    .locals 2
    .param p1, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;
    .param p2, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 665
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->FAST:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->ANIMATION:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->FULLSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    if-ne v0, v1, :cond_1

    .line 668
    :cond_0
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageDescription:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 670
    :cond_1
    return-void
.end method

.method private collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$TileParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V
    .locals 2
    .param p1, "tileParam"    # Lcom/huawei/displayengine/ImageProcessor$TileParam;
    .param p2, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 673
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageDescription:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 674
    return-void
.end method

.method private collectInfoForImageRecognization(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageDescription"    # Ljava/lang/String;
    .param p3, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "hardwareSharpnessLevel":I
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mCurrentFilePath:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 653
    :cond_0
    iget v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mHardwareSharpnessLevel:I

    if-ne v1, v2, :cond_3

    .line 654
    if-eqz p3, :cond_3

    .line 655
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v1, p3}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->getHardwareSharpnessLevel(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)I

    move-result v0

    .line 656
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mHardwareSharpnessLevel:I

    .line 657
    if-eqz v0, :cond_3

    .line 658
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mCurrentFilePath:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v0}, Lcom/huawei/displayengine/ImageProcessor;->sendInfoToImageRecognization(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 646
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/huawei/displayengine/ImageProcessor;->mCurrentFilePath:Ljava/lang/String;

    .line 647
    iput v2, p0, Lcom/huawei/displayengine/ImageProcessor;->mHardwareSharpnessLevel:I

    .line 648
    if-eqz p3, :cond_2

    .line 649
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v1, p3}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->getHardwareSharpnessLevel(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)I

    move-result v0

    .line 650
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mHardwareSharpnessLevel:I

    .line 652
    :cond_2
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mCurrentFilePath:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v0}, Lcom/huawei/displayengine/ImageProcessor;->sendInfoToImageRecognization(Ljava/lang/String;Ljava/lang/String;I)V

    .line 662
    :cond_3
    :goto_1
    return-void
.end method

.method private static copyPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # Landroid/graphics/Bitmap;

    .line 572
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 576
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 577
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 578
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 579
    const-string v1, "DE J ImageProcessor"

    const-string v2, "copyPixels() done"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void

    .line 573
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    return-void
.end method

.method private copyPixelsToOutBitmapIfNeeded(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V
    .locals 2
    .param p1, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    .line 583
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    .line 584
    return-void

    .line 586
    :cond_0
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needNormallizeColorSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    iget-object v1, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    if-eq v0, v1, :cond_1

    .line 588
    return-void

    .line 590
    :cond_1
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/huawei/displayengine/ImageProcessor;->copyPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 591
    return-void
.end method

.method private createTileProcessEngine(Ljava/util/Map;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 780
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "DE J ImageProcessor"

    const-string v1, "createTileProcessEngine()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isImageProcessorEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;-><init>(Ljava/util/Map;)V

    .line 787
    .local v0, "createTileProcessEngineParam":Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;
    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mAlgos:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 788
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->createImageEngine(Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    move-result-object v1

    .line 792
    .local v1, "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    invoke-direct {p0, v1}, Lcom/huawei/displayengine/ImageProcessor;->saveImageEngine(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;)V

    .line 793
    iget-wide v2, v1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 783
    .end local v0    # "createTileProcessEngineParam":Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;
    .end local v1    # "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "image process is disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroyTileProcessEngine(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1000
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "DE J ImageProcessor"

    const-string v1, "destroyTileProcessEngine()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isImageProcessorEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$DestroyTileProcessEngineParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessor$DestroyTileProcessEngineParam;-><init>(Ljava/util/Map;)V

    .line 1007
    .local v0, "destroyTileProcessEngineParam":Lcom/huawei/displayengine/ImageProcessor$DestroyTileProcessEngineParam;
    iget-wide v1, v0, Lcom/huawei/displayengine/ImageProcessor$DestroyTileProcessEngineParam;->mAlgoHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1008
    return-void

    .line 1010
    :cond_0
    iget-wide v1, v0, Lcom/huawei/displayengine/ImageProcessor$DestroyTileProcessEngineParam;->mAlgoHandle:J

    invoke-direct {p0, v1, v2}, Lcom/huawei/displayengine/ImageProcessor;->removeImageEngine(J)V

    .line 1011
    return-void

    .line 1003
    .end local v0    # "destroyTileProcessEngineParam":Lcom/huawei/displayengine/ImageProcessor$DestroyTileProcessEngineParam;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "image process is disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCommonInfo(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
    .locals 5
    .param p1, "hashID"    # Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mCommonInfoCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 736
    .local v0, "commonInfo":Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
    if-eqz v0, :cond_1

    .line 737
    iget-wide v1, v0, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommonInfo() error! hashID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " commonHandle is 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DE J ImageProcessor"

    invoke-static {v2, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommonInfo() error! hashID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " commonHandle is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 742
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getImageEngine(J)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .locals 2
    .param p1, "algoHandle"    # J

    .line 1019
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    return-object v0
.end method

.method private getSupportCmd()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "supportedCmd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mEnable:Z

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "getSupportCmd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "getWideColorGamutSupported"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "processThumbnail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "createTileProcessEngine"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v1, "processTile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "destroyTileProcessEngine"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v1, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needNormallizeColorSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const-string v1, "transformColorspace"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_0
    const-string v1, "getSupportCmd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getWideColorGamutSupported()Ljava/lang/Boolean;
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mEnable:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needNormallizeColorSpace()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isAlgoWideColorSpaceEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isCommandOwner(Ljava/lang/String;)Z
    .locals 4
    .param p0, "command"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 48
    return v0

    .line 50
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "destroyTileProcessEngine"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "createTileProcessEngine"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "processThumbnail"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "getWideColorGamutSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "processTile"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "getSupportCmd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_6
    const-string v2, "transformColorspace"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 60
    return v0

    .line 58
    :pswitch_0
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x6ac727f1 -> :sswitch_6
        -0x3657051f -> :sswitch_5
        0xc1215bd -> :sswitch_4
        0x2fd52c56 -> :sswitch_3
        0x4eed1f3d -> :sswitch_2
        0x7bf993e7 -> :sswitch_1
        0x7d45b0a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isGMPInImageMode()Z
    .locals 8

    .line 348
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 349
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isGMPInImageMode() mService is null!"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v1

    .line 352
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [B

    .line 353
    .local v2, "isImage":[B
    move v3, v1

    .line 355
    .local v3, "ret":I
    :try_start_0
    iget-object v4, p0, Lcom/huawei/displayengine/ImageProcessor;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    const/4 v5, 0x3

    const/4 v6, 0x4

    array-length v7, v2

    invoke-interface {v4, v5, v6, v2, v7}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 360
    nop

    .line 361
    if-eqz v3, :cond_1

    .line 362
    const-string v0, "DE J ImageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGMPInImageMode() getEffect failed, return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v1

    .line 365
    :cond_1
    aget-byte v4, v2, v1

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DE J ImageProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isGMPInImageMode() RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v1
.end method

.method private static isImageDescriptionBeauty(Ljava/lang/String;)Z
    .locals 3
    .param p0, "imageDescription"    # Ljava/lang/String;

    .line 454
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "split":[Ljava/lang/String;
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor;->mImageDescriptionBeauty:Ljava/util/Set;

    aget-object v0, v1, v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 455
    .end local v1    # "split":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v0
.end method

.method private static isImageDescriptionVivid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "imageDescription"    # Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 471
    return v0

    .line 473
    :cond_1
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mImageDescriptionVivid:Ljava/util/Set;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 467
    .end local v1    # "split":[Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method public static isSceneSensitive(II)Z
    .locals 1
    .param p0, "scene"    # I
    .param p1, "action"    # I

    .line 65
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 66
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private processThumbnail(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V
    .locals 6
    .param p1, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "processDone":Z
    const/4 v1, 0x0

    .line 596
    .local v1, "commonInfo":Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    iget-object v4, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needRunSoftwareAlgo(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 597
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/huawei/displayengine/ImageProcessor;->getCommonInfo(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    move-result-object v1

    .line 598
    if-nez v1, :cond_0

    .line 600
    :try_start_0
    new-instance v2, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v3, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->createCommonInfo(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;-><init>(JLcom/huawei/displayengine/ImageProcessorAlgoImpl;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 605
    nop

    .line 606
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    invoke-virtual {v2, v3}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needSaveCommonInfo(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/huawei/displayengine/ImageProcessor;->saveCommonInfo(Ljava/lang/String;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    goto :goto_0

    .line 601
    :catch_0
    move-exception v2

    .line 602
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v4}, Lcom/huawei/displayengine/ImageProcessor;->transformColorspaceOnBitmap(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 603
    invoke-direct {p0, p1, v1}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 604
    throw v2

    .line 610
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mAlgos:Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 611
    const/4 v2, 0x0

    .line 613
    .local v2, "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    :try_start_1
    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v3, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->createImageEngine(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    move-result-object v3

    move-object v2, v3

    .line 614
    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v3, v2, v1, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->processThumbnail(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V

    .line 615
    const/4 v0, 0x1

    .line 616
    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v3, v2}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->destroyImageEngine(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    const/4 v2, 0x0

    .line 623
    if-eqz v2, :cond_2

    .line 624
    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v3, v2}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->destroyImageEngine(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;)V

    goto :goto_2

    .line 623
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 618
    :catch_1
    move-exception v3

    .line 619
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v4, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v4, v5}, Lcom/huawei/displayengine/ImageProcessor;->transformColorspaceOnBitmap(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 620
    invoke-direct {p0, p1, v1}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 621
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_1
    if-eqz v2, :cond_1

    .line 624
    iget-object v4, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v4, v2}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->destroyImageEngine(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;)V

    :cond_1
    throw v3

    .line 630
    .end local v2    # "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mOutBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_3
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    :goto_3
    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, v3}, Lcom/huawei/displayengine/ImageProcessor;->transformColorspaceOnBitmap(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 632
    if-nez v0, :cond_4

    .line 633
    invoke-direct {p0, p1}, Lcom/huawei/displayengine/ImageProcessor;->copyPixelsToOutBitmapIfNeeded(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V

    .line 636
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 637
    return-void
.end method

.method private processThumbnail(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "DE J ImageProcessor"

    const-string v1, "processThumbnail()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isImageProcessorEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;-><init>(Ljava/util/Map;)V

    .line 561
    .local v0, "thumbnailParam":Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;
    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->create(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;

    move-result-object v1

    .line 562
    .local v1, "transformer":Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;
    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->doPreTransform()V

    .line 565
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessor;->processThumbnail(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V

    .line 566
    if-eqz v1, :cond_1

    .line 567
    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->doPostTransform()V

    .line 569
    :cond_1
    return-void

    .line 557
    .end local v0    # "thumbnailParam":Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;
    .end local v1    # "transformer":Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "image process is disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processTile(Lcom/huawei/displayengine/ImageProcessor$TileParam;)V
    .locals 7
    .param p1, "tileParam"    # Lcom/huawei/displayengine/ImageProcessor$TileParam;

    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, "processDone":Z
    const/4 v1, 0x0

    .line 941
    .local v1, "commonInfo":Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    iget-object v4, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needRunSoftwareAlgo(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 942
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/huawei/displayengine/ImageProcessor;->getCommonInfo(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    move-result-object v1

    .line 943
    if-nez v1, :cond_1

    .line 944
    const-string v2, "DE J ImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processTile() error! can\'t find commonInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mCommonInfoCache size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/ImageProcessor;->mCommonInfoCache:Ljava/util/Map;

    .line 945
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 944
    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->NON_SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    if-ne v2, v3, :cond_0

    .line 947
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, v3}, Lcom/huawei/displayengine/ImageProcessor;->transformColorspaceOnBitmap(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 949
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$TileParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 950
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processTile() can\'t find commonInfo, mCommonInfoCache size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/ImageProcessor;->mCommonInfoCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 952
    :cond_1
    iget-wide v2, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mAlgoHandle:J

    invoke-direct {p0, v2, v3}, Lcom/huawei/displayengine/ImageProcessor;->getImageEngine(J)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    move-result-object v2

    .line 953
    .local v2, "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    if-nez v2, :cond_3

    .line 954
    const-string v3, "DE J ImageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processTile() error! can\'t find imageEngine for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mAlgoHandle:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mTileProcessEngineCache size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    .line 955
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 954
    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v4, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->NON_SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    if-ne v3, v4, :cond_2

    .line 957
    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v4}, Lcom/huawei/displayengine/ImageProcessor;->transformColorspaceOnBitmap(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 959
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$TileParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 960
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processTile() can\'t find imageEngine, mTileProcessEngineCache size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 963
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v3, v2, v1, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->processTileAlgo(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;Lcom/huawei/displayengine/ImageProcessor$TileParam;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    const/4 v0, 0x1

    .line 971
    goto :goto_0

    .line 965
    :catch_0
    move-exception v3

    .line 966
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v4, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v5, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->NON_SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    if-ne v4, v5, :cond_4

    .line 967
    iget-object v4, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v4, v5}, Lcom/huawei/displayengine/ImageProcessor;->transformColorspaceOnBitmap(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 969
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$TileParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 970
    throw v3

    .line 974
    .end local v2    # "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_0
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->NON_SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    if-ne v2, v3, :cond_7

    .line 975
    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mOutBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v3, p1, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, v3}, Lcom/huawei/displayengine/ImageProcessor;->transformColorspaceOnBitmap(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 976
    if-nez v0, :cond_8

    .line 977
    invoke-direct {p0, p1}, Lcom/huawei/displayengine/ImageProcessor;->copyPixelsToOutBitmapIfNeeded(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V

    goto :goto_2

    .line 980
    :cond_7
    if-eqz v0, :cond_9

    .line 986
    :cond_8
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/huawei/displayengine/ImageProcessor;->collectInfoForImageRecognization(Lcom/huawei/displayengine/ImageProcessor$TileParam;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 987
    return-void

    .line 981
    :cond_9
    const-string v2, "DE J ImageProcessor"

    const-string v3, "processTile() error! engineType is SR but no algo run"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "processTile() error! engineType is SR but no algo run"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private processTile(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 921
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "DE J ImageProcessor"

    const-string v1, "processTile()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isImageProcessorEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$TileParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessor$TileParam;-><init>(Ljava/util/Map;)V

    .line 928
    .local v0, "tileParam":Lcom/huawei/displayengine/ImageProcessor$TileParam;
    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->create(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;

    move-result-object v1

    .line 929
    .local v1, "transformer":Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;
    if-eqz v1, :cond_0

    .line 930
    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->doPreTransform()V

    .line 932
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessor;->processTile(Lcom/huawei/displayengine/ImageProcessor$TileParam;)V

    .line 933
    if-eqz v1, :cond_1

    .line 934
    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->doPostTransform()V

    .line 936
    :cond_1
    return-void

    .line 924
    .end local v0    # "tileParam":Lcom/huawei/displayengine/ImageProcessor$TileParam;
    .end local v1    # "transformer":Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "image process is disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeImageEngine(J)V
    .locals 4
    .param p1, "algoHandle"    # J

    .line 1023
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    .line 1024
    .local v0, "imageEngine":Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    if-nez v0, :cond_0

    .line 1025
    const-string v1, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeImageEngine() error! can\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->destroyImageEngine(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;)V

    .line 1029
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    return-void
.end method

.method private saveCommonInfo(Ljava/lang/String;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V
    .locals 4
    .param p1, "hashID"    # Ljava/lang/String;
    .param p2, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 722
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommonInfoCache save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", commonHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mCommonInfoCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    return-void
.end method

.method private saveImageEngine(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;)V
    .locals 4
    .param p1, "imageEngine"    # Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    .line 1014
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TileProcessEngineCache save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mTileProcessEngineCache:Ljava/util/Map;

    iget-wide v1, p1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    return-void
.end method

.method private sendInfoToImageRecognization(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "imageDescription"    # Ljava/lang/String;
    .param p3, "hardwareSharpnessLevel"    # I

    .line 677
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    if-nez v0, :cond_0

    .line 678
    const-string v0, "DE J ImageProcessor"

    const-string v1, "sendInfoToImageRecognization() mService is null!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void

    .line 681
    :cond_0
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendInfoToImageRecognization filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imageDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hardwareSharpnessLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 684
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-eqz p2, :cond_1

    .line 686
    const-string v1, "imageDescription"

    invoke-virtual {v0, v1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_1
    const-string v1, "hardwareSharpnessLevel"

    invoke-virtual {v0, v1, p3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->setData(ILandroid/os/PersistableBundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    goto :goto_0

    .line 691
    :catch_0
    move-exception v1

    .line 692
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DE J ImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendInfoToImageRecognization setData error! filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hardwareSharpnessLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private transformColorspaceOnBitmap(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "colorspaceParam"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;
    .param p2, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "outBitmap"    # Landroid/graphics/Bitmap;

    .line 438
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needNormallizeColorSpace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 441
    :cond_0
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    iget-object v1, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    if-ne v0, v1, :cond_1

    .line 442
    return-void

    .line 444
    :cond_1
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    iget-object v1, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)V

    .line 445
    .local v0, "colorspaceParamTemp":Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->transformColorspace(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V

    .line 446
    return-void
.end method

.method private transformColorspaceToSRGB(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "DE J ImageProcessor"

    const-string v1, "transformColorspaceToSRGB() begin"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isImageProcessorEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor;->mAlgoStrategy:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needNormallizeColorSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SUPER_GAMUT:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-direct {v0, p1, v1, v2}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;-><init>(Ljava/util/Map;Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)V

    .line 326
    .local v0, "colorspaceParam":Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor;->isGMPInImageMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v2, :cond_0

    .line 328
    iget-object v1, v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/huawei/displayengine/ImageProcessor;->copyPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 329
    const-string v1, "DE J ImageProcessor"

    const-string v2, "transformColorspaceToSRGB() copy end"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_0
    const-string v1, "DE J ImageProcessor"

    const-string v2, "transformColorspaceToSRGB() bypass end"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->create(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;

    move-result-object v1

    .line 337
    .local v1, "transformer":Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;
    if-eqz v1, :cond_2

    .line 338
    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->doPreTransform()V

    .line 340
    :cond_2
    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v2, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->transformColorspace(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V

    .line 341
    if-eqz v1, :cond_3

    .line 342
    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->doPostTransform()V

    .line 344
    :cond_3
    const-string v2, "DE J ImageProcessor"

    const-string v3, "transformColorspaceToSRGB() trans end"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 322
    .end local v0    # "colorspaceParam":Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;
    .end local v1    # "transformer":Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "transform colorspace is disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "image process is disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 106
    const-string v0, "DE J ImageProcessor"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor;->clearCommonInfo()V

    .line 110
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor;->clearImageEngine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public imageProcess(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 117
    .local p2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 118
    return-object v0

    .line 120
    :cond_0
    const-string v1, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageProcess() command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, "getSupportCmd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor;->getSupportCmd()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    iget-boolean v1, p0, Lcom/huawei/displayengine/ImageProcessor;->mEnable:Z

    if-nez v1, :cond_2

    .line 125
    const-string v1, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageProcess() is disable, command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v0

    .line 128
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "destroyTileProcessEngine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "createTileProcessEngine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "processThumbnail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "getWideColorGamutSupported"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_4
    const-string v2, "processTile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "transformColorspace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x5

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 146
    const-string v1, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageProcess() error! undefine command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/huawei/displayengine/ImageProcessor;->transformColorspaceToSRGB(Ljava/util/Map;)V

    .line 144
    goto :goto_1

    .line 140
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/huawei/displayengine/ImageProcessor;->destroyTileProcessEngine(Ljava/util/Map;)V

    .line 141
    goto :goto_1

    .line 137
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/huawei/displayengine/ImageProcessor;->processTile(Ljava/util/Map;)V

    .line 138
    goto :goto_1

    .line 135
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/huawei/displayengine/ImageProcessor;->createTileProcessEngine(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/huawei/displayengine/ImageProcessor;->processThumbnail(Ljava/util/Map;)V

    .line 133
    goto :goto_1

    .line 130
    :pswitch_5
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor;->getWideColorGamutSupported()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 149
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ac727f1 -> :sswitch_5
        0xc1215bd -> :sswitch_4
        0x2fd52c56 -> :sswitch_3
        0x4eed1f3d -> :sswitch_2
        0x7bf993e7 -> :sswitch_1
        0x7d45b0a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScene(II)V
    .locals 3
    .param p1, "scene"    # I
    .param p2, "action"    # I

    .line 1046
    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 1060
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScene unknown action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1053
    :pswitch_0
    const-string v0, "DE J ImageProcessor"

    const-string v1, "setScene FULLSCREEN"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    goto :goto_0

    .line 1048
    :pswitch_1
    const-string v0, "DE J ImageProcessor"

    const-string v1, "setScene THUMBNAIL"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mCurrentFilePath:Ljava/lang/String;

    .line 1050
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor;->mHardwareSharpnessLevel:I

    .line 1051
    goto :goto_0

    .line 1056
    :cond_0
    const-string v0, "DE J ImageProcessor"

    const-string v1, "setScene EXIT"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor;->clearCommonInfo()V

    .line 1058
    nop

    .line 1063
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
