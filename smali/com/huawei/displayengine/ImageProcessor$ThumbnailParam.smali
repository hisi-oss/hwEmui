.class public Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;
.super Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailParam"
.end annotation


# static fields
.field private static final PARAM_FILE_PATH:Ljava/lang/String; = "filePath"

.field private static final PARAM_IMAGE_DESCRIPTION:Ljava/lang/String; = "imageDescription"

.field private static final PARAM_ISO:Ljava/lang/String; = "iso"

.field private static final PARAM_SCALE_RATIO:Ljava/lang/String; = "scaleRatio"

.field private static final PARAM_SKIN_BEAUTY:Ljava/lang/String; = "skinBeauty"

.field private static final PARAM_THUMBNAIL_TYPE:Ljava/lang/String; = "thumbnailType"


# instance fields
.field public mAlgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;"
        }
    .end annotation
.end field

.field public mCommonAlgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;"
        }
    .end annotation
.end field

.field public mFilePath:Ljava/lang/String;

.field public mISO:I

.field public mImageDescription:Ljava/lang/String;

.field public mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

.field public mScaleRatio:F

.field public mSkinBeauty:Z

.field public mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
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

    .line 495
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;-><init>(Ljava/util/Map;)V

    .line 486
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->DEFAULT:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 487
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    .line 492
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 496
    const-string v0, "filePath"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mFilePath:Ljava/lang/String;

    .line 497
    const-string v0, "thumbnailType"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "thumbnailType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 500
    :cond_0
    const-string v0, "scaleRatio"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const-string v0, "scaleRatio"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    .line 503
    :cond_1
    const-string v0, "iso"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    const-string v0, "iso"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mISO:I

    .line 506
    :cond_2
    const-string v0, "skinBeauty"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    const-string v0, "skinBeauty"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mSkinBeauty:Z

    .line 509
    :cond_3
    const/4 v0, 0x0

    .line 510
    .local v0, "isVivid":Z
    const-string v1, "imageDescription"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 511
    const-string v1, "imageDescription"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageDescription:Ljava/lang/String;

    .line 512
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageDescription:Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessor;->access$100(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mSkinBeauty:Z

    .line 513
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageDescription:Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/displayengine/ImageProcessor;->access$200(Ljava/lang/String;)Z

    move-result v0

    .line 516
    :cond_4
    iget-boolean v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mSkinBeauty:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isAlgoSkinBeautyEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 517
    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->SKIN_BEAUTY:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    iput-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    goto :goto_0

    .line 518
    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isAlgoVividEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 519
    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->VIVID:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    iput-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    goto :goto_0

    .line 520
    :cond_6
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    if-eq v1, v2, :cond_7

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isAlgoWideColorSpaceEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 521
    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->WIDE_COLOR_SPACE:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    iput-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 524
    :cond_7
    :goto_0
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-virtual {v1, v2, v3}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getThumbnailAlgos(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mAlgos:Ljava/util/Set;

    .line 525
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-virtual {v1, v2, v3}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getCommonInfoAlgos(Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;Lcom/huawei/displayengine/ImageProcessor$ImageType;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mCommonAlgos:Ljava/util/Set;

    .line 527
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->isParamInvalid()Z

    move-result v1

    if-nez v1, :cond_8

    .line 530
    return-void

    .line 528
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "processThumbnail input param invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isParamInvalid()Z
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 534
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isParamInvalid() error! mFilePath is empty"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return v1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mType:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    if-nez v0, :cond_1

    .line 538
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isParamInvalid() error! mType is empty"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v1

    .line 541
    :cond_1
    iget v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_5

    iget v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    .line 545
    :cond_2
    iget v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mISO:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mISO:I

    const v2, 0x19000

    if-le v0, v2, :cond_3

    goto :goto_0

    .line 549
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 546
    :cond_4
    :goto_0
    const-string v0, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isParamInvalid() error! mISO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mISO:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return v1

    .line 542
    :cond_5
    :goto_1
    const-string v0, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isParamInvalid() error! mScaleRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;->mScaleRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return v1
.end method
