.class public Lcom/huawei/iimagekit/shadow/ShadowAlgorithm;
.super Lcom/huawei/iimagekit/common/HwAlgorithmBase;
.source "ShadowAlgorithm.java"


# instance fields
.field private mShadowMethod:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shadowMethod"    # I

    .line 17
    invoke-direct {p0}, Lcom/huawei/iimagekit/common/HwAlgorithmBase;-><init>()V

    .line 19
    iput p2, p0, Lcom/huawei/iimagekit/shadow/ShadowAlgorithm;->mShadowMethod:I

    .line 20
    return-void
.end method


# virtual methods
.method public checkBlurInputParameter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 4
    .param p1, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I

    .line 23
    sget-boolean v0, Lcom/huawei/iimagekit/shadow/ShadowAlgorithm;->IMAGEKIT_SHADOW_PROP:Z

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x6

    return v0

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    const/4 v0, 0x1

    return v0

    .line 27
    :cond_1
    const/4 v0, 0x2

    if-nez p2, :cond_2

    .line 28
    return v0

    .line 29
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

    .line 31
    :cond_3
    if-le p3, v0, :cond_7

    const/16 v0, 0x19

    if-le p3, v0, :cond_4

    goto :goto_1

    .line 33
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v3, :cond_5

    goto :goto_0

    .line 35
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_6
    :goto_0
    const/4 v0, 0x7

    return v0

    .line 32
    :cond_7
    :goto_1
    const/4 v0, 0x4

    return v0

    .line 30
    :cond_8
    :goto_2
    return v3
.end method

.method public doShadow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 3
    .param p1, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/iimagekit/shadow/ShadowAlgorithm;->checkBlurInputParameter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 39
    .local v0, "err_result":I
    if-nez v0, :cond_1

    .line 40
    iget v1, p0, Lcom/huawei/iimagekit/shadow/ShadowAlgorithm;->mShadowMethod:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 51
    invoke-static {p1, p2, p3}, Lcom/huawei/iimagekit/shadow/NoneShadow;->doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/huawei/iimagekit/shadow/ShadowBoxBlur;->doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 43
    nop

    .line 55
    :cond_1
    :goto_0
    return v0
.end method
