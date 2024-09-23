.class Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateImageEngineAlgoParam"
.end annotation


# instance fields
.field private mAlgoHandle:J

.field private final mAlgoType:I

.field private final mBorder:I

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mSrMaxScale:F

.field private final mXmlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;)V
    .locals 3
    .param p1, "createTileProcessEngineParam"    # Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mXmlPath:Ljava/lang/String;

    .line 347
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mAlgos:Ljava/util/Set;

    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->getType(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mAlgoType:I

    .line 348
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    if-ne v0, v1, :cond_0

    .line 349
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mSrMaxScale:F

    goto :goto_0

    .line 351
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mSrMaxScale:F

    .line 353
    :goto_0
    iget v0, p1, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mTileSize:I

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mImageWidth:I

    .line 354
    iget v0, p1, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mTileSize:I

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mImageHeight:I

    .line 355
    iget v0, p1, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mTileBorder:I

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mBorder:I

    .line 356
    const-string v0, "DE J ImageProcessorAlgoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateImageEngineAlgoParam() tile type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", algos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mAlgos:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V
    .locals 3
    .param p1, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mXmlPath:Ljava/lang/String;

    .line 333
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mAlgos:Ljava/util/Set;

    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->getType(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mAlgoType:I

    .line 334
    iget v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 335
    iget v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v1, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    nop

    :cond_0
    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mSrMaxScale:F

    goto :goto_0

    .line 337
    :cond_1
    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mSrMaxScale:F

    .line 339
    :goto_0
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mImageWidth:I

    .line 340
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mImageHeight:I

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mBorder:I

    .line 342
    const-string v0, "DE J ImageProcessorAlgoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateImageEngineAlgoParam() thumbnail type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", algos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mAlgos:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method


# virtual methods
.method public getAlgoHandle()J
    .locals 2

    .line 360
    iget-wide v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->mAlgoHandle:J

    return-wide v0
.end method
