.class public Lcom/huawei/iimagekit/blur/BlurAlgorithm;
.super Lcom/huawei/iimagekit/common/HwAlgorithmBase;
.source "BlurAlgorithm.java"


# instance fields
.field private mBlurMethod:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blurMethod"    # I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/iimagekit/blur/BlurAlgorithm;-><init>(Landroid/content/Context;IZ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blurMethod"    # I
    .param p3, "use_4channel"    # Z

    .line 16
    invoke-direct {p0}, Lcom/huawei/iimagekit/common/HwAlgorithmBase;-><init>()V

    .line 17
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 19
    iput v0, p0, Lcom/huawei/iimagekit/blur/BlurAlgorithm;->mBlurMethod:I

    goto :goto_0

    .line 23
    :cond_0
    iput p2, p0, Lcom/huawei/iimagekit/blur/BlurAlgorithm;->mBlurMethod:I

    .line 30
    :goto_0
    iget v1, p0, Lcom/huawei/iimagekit/blur/BlurAlgorithm;->mBlurMethod:I

    if-eq v1, v0, :cond_1

    .line 31
    const-string v0, "iimagekit_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 4
    .param p1, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/iimagekit/blur/BlurAlgorithm;->checkBlurInputParameter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 58
    .local v0, "err_result":I
    if-nez v0, :cond_2

    .line 59
    iget v1, p0, Lcom/huawei/iimagekit/blur/BlurAlgorithm;->mBlurMethod:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 69
    invoke-static {}, Lcom/huawei/iimagekit/blur/CPUBoxBlur;->getInstance()Lcom/huawei/iimagekit/blur/CPUBoxBlur;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/huawei/iimagekit/blur/CPUBoxBlur;->doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 70
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/huawei/iimagekit/blur/CPUFastBlur;->getInstance()Lcom/huawei/iimagekit/blur/CPUFastBlur;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/huawei/iimagekit/blur/CPUFastBlur;->doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/huawei/iimagekit/shadow/ShadowBoxBlur;->doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 66
    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/huawei/iimagekit/blur/BlurAlgorithm;->localLog(ILjava/lang/String;)V

    .line 77
    :goto_0
    return v0
.end method

.method protected checkBlurInputParameter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 4
    .param p1, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I

    .line 37
    sget-boolean v0, Lcom/huawei/iimagekit/blur/BlurAlgorithm;->IMAGEKIT_BLUR_PROP:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x5

    return v0

    .line 39
    :cond_0
    if-nez p1, :cond_1

    .line 40
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_1
    const/4 v0, 0x2

    if-nez p2, :cond_2

    .line 42
    return v0

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x3

    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_3

    goto :goto_2

    .line 45
    :cond_3
    if-le p3, v0, :cond_7

    const/16 v0, 0x19

    if-le p3, v0, :cond_4

    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v3, :cond_5

    goto :goto_0

    .line 51
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_6
    :goto_0
    const/4 v0, 0x7

    return v0

    .line 46
    :cond_7
    :goto_1
    const/4 v0, 0x4

    return v0

    .line 44
    :cond_8
    :goto_2
    return v3
.end method
