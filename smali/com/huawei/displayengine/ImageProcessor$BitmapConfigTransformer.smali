.class Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapConfigTransformer"
.end annotation


# instance fields
.field private final mColorspaceParam:Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

.field private final mInOriginalBitmap:Landroid/graphics/Bitmap;

.field private mInTransBitmap:Landroid/graphics/Bitmap;

.field private final mOutOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOutTransBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V
    .locals 3
    .param p1, "param"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mColorspaceParam:Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    .line 377
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mColorspaceParam:Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    iget-object v0, v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInOriginalBitmap:Landroid/graphics/Bitmap;

    .line 378
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mColorspaceParam:Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    iget-object v0, v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    .line 379
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    .line 380
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapConfigTransformer() in==out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_0
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapConfigTransformer() in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    .line 383
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return-void
.end method

.method public static create(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;
    .locals 2
    .param p0, "param"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    .line 388
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 389
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 390
    :cond_1
    :goto_0
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;

    invoke-direct {v0, p0}, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;-><init>(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V

    return-object v0
.end method


# virtual methods
.method public doPostTransform()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutTransBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "DE J ImageProcessor"

    const-string v1, "BitmapConfigTransformer doPostTransform()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutTransBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 432
    const-string v1, "DE J ImageProcessor"

    const-string v2, "BitmapConfigTransformer doPostTransform() done"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method public doPreTransform()V
    .locals 6

    .line 396
    const-string v0, "DE J ImageProcessor"

    const-string v1, "BitmapConfigTransformer doPreTransform()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 398
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInOriginalBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInTransBitmap:Landroid/graphics/Bitmap;

    .line 399
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInTransBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mColorspaceParam:Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInTransBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 404
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mInTransBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutTransBitmap:Landroid/graphics/Bitmap;

    .line 406
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mColorspaceParam:Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutTransBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 407
    const-string v0, "DE J ImageProcessor"

    const-string v1, "BitmapConfigTransformer doPreTransform() done"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 400
    :cond_0
    const-string v0, "DE J ImageProcessor"

    const-string v1, "BitmapConfigTransformer doPreTransform() error! can\'t copy in bitmap"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "doPreTransform can\'t copy in bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_4

    .line 412
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 413
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    .line 414
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 416
    if-eqz v0, :cond_2

    .line 413
    move-object v5, v0

    goto :goto_0

    .line 416
    :cond_2
    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    .line 413
    :goto_0
    invoke-static {v1, v3, v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutTransBitmap:Landroid/graphics/Bitmap;

    .line 418
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutTransBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mColorspaceParam:Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$BitmapConfigTransformer;->mOutTransBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .end local v0    # "colorSpace":Landroid/graphics/ColorSpace;
    goto :goto_1

    .line 419
    .restart local v0    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_3
    const-string v1, "DE J ImageProcessor"

    const-string v2, "BitmapConfigTransformer doPreTransform() error! can\'t create out bitmap"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "doPreTransform can\'t create out bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    .end local v0    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_4
    :goto_1
    const-string v0, "DE J ImageProcessor"

    const-string v1, "BitmapConfigTransformer doPreTransform() done"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method
