.class Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateCommonAlgoParam"
.end annotation


# instance fields
.field private final mAlgoType:I

.field private mCommonHandle:J

.field private final mISO:I

.field private final mInBitmap:Landroid/graphics/Bitmap;

.field private final mIsAlgoSkinBeauty:Z

.field private final mIsAlgoVivid:Z

.field private final mIsWideColorSpace:Z

.field private final mXmlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V
    .locals 4
    .param p1, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->mXmlPath:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mCommonAlgos:Ljava/util/Set;

    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->getType(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->mAlgoType:I

    .line 228
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 229
    iget v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mISO:I

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->mISO:I

    .line 230
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->WIDE_COLOR_SPACE:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->mIsWideColorSpace:Z

    .line 231
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->SKIN_BEAUTY:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->mIsAlgoSkinBeauty:Z

    .line 232
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->VIVID:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    if-ne v0, v1, :cond_2

    move v2, v3

    nop

    :cond_2
    iput-boolean v2, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->mIsAlgoVivid:Z

    .line 233
    const-string v0, "DE J ImageProcessorAlgoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateCommonAlgoParam() thumbnail imageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", commonAlgos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mCommonAlgos:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method


# virtual methods
.method public getCommonHandle()J
    .locals 2

    .line 237
    iget-wide v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->mCommonHandle:J

    return-wide v0
.end method
