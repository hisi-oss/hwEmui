.class Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessImageEngineAlgoParam"
.end annotation


# instance fields
.field private final mAlgoHandle:J

.field private final mCommonHandle:J

.field private final mInBitmap:Landroid/graphics/Bitmap;

.field private final mIsThumbnail:Z

.field private final mNonSrHeight:I

.field private final mNonSrStartX:I

.field private final mNonSrStartY:I

.field private final mNonSrWidth:I

.field private final mOutBitmap:Landroid/graphics/Bitmap;

.field private final mSRStartX:F

.field private final mSRStartY:F

.field private final mSRVisibleEndX:I

.field private final mSRVisibleEndY:I

.field private final mSRVisibleStartX:I

.field private final mSRVisibleStartY:I

.field private final mScaleRatio:F

.field private final mZoomInRatio:F


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V
    .locals 3
    .param p1, "imageEngine"    # Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .param p2, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
    .param p3, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 419
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mOutBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 420
    iget-wide v0, p1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    iput-wide v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mAlgoHandle:J

    .line 421
    iget-wide v0, p2, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    iput-wide v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mCommonHandle:J

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mIsThumbnail:Z

    .line 424
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrWidth:I

    .line 425
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrHeight:I

    .line 426
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrStartX:I

    .line 427
    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrStartY:I

    .line 429
    iget v2, p3, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    iput v2, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mScaleRatio:F

    .line 430
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRStartX:F

    .line 431
    iput v2, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRStartY:F

    .line 432
    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleStartX:I

    .line 433
    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleStartY:I

    .line 434
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleEndX:I

    .line 435
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleEndY:I

    .line 436
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mZoomInRatio:F

    .line 437
    return-void
.end method

.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;Lcom/huawei/displayengine/ImageProcessor$TileParam;)V
    .locals 3
    .param p1, "imageEngine"    # Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .param p2, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
    .param p3, "tileParam"    # Lcom/huawei/displayengine/ImageProcessor$TileParam;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 442
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mOutBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 443
    iget-wide v0, p1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    iput-wide v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mAlgoHandle:J

    .line 444
    iget-wide v0, p2, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    iput-wide v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mCommonHandle:J

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mIsThumbnail:Z

    .line 447
    iget-object v1, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    if-ne v1, v2, :cond_0

    .line 448
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrWidth:I

    .line 449
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrHeight:I

    .line 450
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrStartX:I

    .line 451
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrStartY:I

    .line 453
    iget v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaleRatio:F

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mScaleRatio:F

    .line 454
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaledStartPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRStartX:F

    .line 455
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaledStartPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRStartY:F

    .line 456
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInVisibleRange:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleStartX:I

    .line 457
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInVisibleRange:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleStartY:I

    .line 458
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInVisibleRange:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleEndX:I

    .line 459
    iget-object v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInVisibleRange:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleEndY:I

    .line 460
    iget v0, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mZoomInRatio:F

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mZoomInRatio:F

    goto :goto_0

    .line 462
    :cond_0
    iget-object v1, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrWidth:I

    .line 463
    iget-object v1, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrHeight:I

    .line 464
    iget-object v1, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrStartX:I

    .line 465
    iget-object v1, p3, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mNonSrStartY:I

    .line 467
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mScaleRatio:F

    .line 468
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRStartX:F

    .line 469
    iput v2, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRStartY:F

    .line 470
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleStartX:I

    .line 471
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleStartY:I

    .line 472
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleEndX:I

    .line 473
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mSRVisibleEndY:I

    .line 474
    iput v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;->mZoomInRatio:F

    .line 476
    :goto_0
    return-void
.end method
