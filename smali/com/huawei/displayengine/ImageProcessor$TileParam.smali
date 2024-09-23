.class public Lcom/huawei/displayengine/ImageProcessor$TileParam;
.super Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileParam"
.end annotation


# static fields
.field private static final PARAM_DECODED_SIZE:Ljava/lang/String; = "decodedSize"

.field private static final PARAM_DECODED_START_POINT:Ljava/lang/String; = "decodedStartPoint"

.field private static final PARAM_ENGINE:Ljava/lang/String; = "engine"

.field private static final PARAM_ENGINE_TYPE:Ljava/lang/String; = "engineType"

.field private static final PARAM_FILE_PATH:Ljava/lang/String; = "filePath"

.field private static final PARAM_IMAGE_DESCRIPTION:Ljava/lang/String; = "imageDescription"

.field private static final PARAM_IN_VISIBLE_RANGE:Ljava/lang/String; = "inVisibleRange"

.field private static final PARAM_SCALED_START_POINT:Ljava/lang/String; = "scaledStartPoint"

.field private static final PARAM_SCALE_RATIO:Ljava/lang/String; = "scaleRatio"

.field private static final PARAM_SKIN_BEAUTY:Ljava/lang/String; = "skinBeauty"

.field private static final PARAM_ZOOM_IN_RATIO:Ljava/lang/String; = "zoomInRatio"


# instance fields
.field public mAlgoHandle:J

.field public mDecodedSize:Landroid/util/Size;

.field public mDecodedStartPoint:Landroid/graphics/Point;

.field public mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

.field public mFilePath:Ljava/lang/String;

.field public mImageDescription:Ljava/lang/String;

.field public mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

.field public mInVisibleRange:Landroid/graphics/Rect;

.field public mScaleRatio:F

.field public mScaledStartPoint:Landroid/graphics/PointF;

.field public mZoomInRatio:F


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

    .line 822
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;-><init>(Ljava/util/Map;)V

    .line 813
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaleRatio:F

    .line 814
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mZoomInRatio:F

    .line 819
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 823
    const-string v0, "engineType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    .line 824
    const-string v0, "engine"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mAlgoHandle:J

    .line 825
    const-string v0, "filePath"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mFilePath:Ljava/lang/String;

    .line 826
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    if-ne v0, v1, :cond_1

    .line 827
    const-string v0, "scaleRatio"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaleRatio:F

    .line 828
    const-string v0, "zoomInRatio"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mZoomInRatio:F

    .line 829
    const-string v0, "scaledStartPoint"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaledStartPoint:Landroid/graphics/PointF;

    .line 830
    const-string v0, "inVisibleRange"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    const-string v0, "inVisibleRange"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInVisibleRange:Landroid/graphics/Rect;

    goto :goto_0

    .line 833
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInVisibleRange:Landroid/graphics/Rect;

    goto :goto_0

    .line 836
    :cond_1
    const-string v0, "decodedSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedSize:Landroid/util/Size;

    .line 837
    const-string v0, "decodedStartPoint"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedStartPoint:Landroid/graphics/Point;

    .line 839
    :goto_0
    const/4 v0, 0x0

    .line 840
    .local v0, "isSkinBeauty":Z
    const-string v1, "skinBeauty"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 841
    const-string v1, "skinBeauty"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 843
    :cond_2
    const/4 v1, 0x0

    .line 844
    .local v1, "isVivid":Z
    const-string v2, "imageDescription"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 845
    const-string v2, "imageDescription"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageDescription:Ljava/lang/String;

    .line 846
    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageDescription:Ljava/lang/String;

    invoke-static {v2}, Lcom/huawei/displayengine/ImageProcessor;->access$100(Ljava/lang/String;)Z

    move-result v0

    .line 847
    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageDescription:Ljava/lang/String;

    invoke-static {v2}, Lcom/huawei/displayengine/ImageProcessor;->access$200(Ljava/lang/String;)Z

    move-result v1

    .line 850
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isAlgoSkinBeautyEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 851
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ImageType;->SKIN_BEAUTY:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    iput-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    goto :goto_1

    .line 852
    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isAlgoVividEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 853
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ImageType;->VIVID:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    iput-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    goto :goto_1

    .line 854
    :cond_5
    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    sget-object v3, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    if-eq v2, v3, :cond_6

    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->isAlgoWideColorSpaceEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 855
    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$ImageType;->WIDE_COLOR_SPACE:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    iput-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mImageType:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 858
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor$TileParam;->isParamInvalid()Z

    move-result v2

    if-nez v2, :cond_7

    .line 861
    return-void

    .line 859
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "processTile input param invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isParamInvalid()Z
    .locals 4

    .line 864
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 865
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isParamInvalid() error! mEngineType is null"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v1

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isParamInvalid() error! mFilePath is empty"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return v1

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v2, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    if-ne v0, v2, :cond_6

    .line 873
    iget v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaleRatio:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_5

    iget v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaleRatio:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    goto :goto_0

    .line 877
    :cond_2
    iget v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mZoomInRatio:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 878
    const-string v0, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isParamInvalid() error! mZoomInRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mZoomInRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return v1

    .line 881
    :cond_3
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaledStartPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_4

    .line 882
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isParamInvalid() error! mScaledStartPoint is null"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return v1

    .line 885
    :cond_4
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInVisibleRange:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessor$TileParam;->isVisibleRangeInvalid(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 886
    return v1

    .line 874
    :cond_5
    :goto_0
    const-string v0, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isParamInvalid() error! mScaleRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mScaleRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return v1

    .line 889
    :cond_6
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedSize:Landroid/util/Size;

    if-nez v0, :cond_7

    .line 890
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isParamInvalid() error! mDecodedSize is null"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return v1

    .line 893
    :cond_7
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_8

    goto :goto_1

    .line 897
    :cond_8
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedStartPoint:Landroid/graphics/Point;

    if-nez v0, :cond_9

    .line 898
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isParamInvalid() error! mDecodedStartPoint is null"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return v1

    .line 902
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 894
    :cond_a
    :goto_1
    const-string v0, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isParamInvalid() error! mDecodedSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mDecodedSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return v1
.end method

.method private isVisibleRangeInvalid(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 906
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 907
    const-string v1, "DE J ImageProcessor"

    const-string v2, "isVisibleRangeInvalid() error! rect is null"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return v0

    .line 910
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 912
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$TileParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 916
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 913
    :cond_2
    :goto_0
    const-string v1, "DE J ImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisibleRangeInvalid() error! rect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return v0
.end method
