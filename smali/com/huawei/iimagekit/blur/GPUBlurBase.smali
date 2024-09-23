.class public Lcom/huawei/iimagekit/blur/GPUBlurBase;
.super Ljava/lang/Object;
.source "GPUBlurBase.java"


# static fields
.field private static initOnce:Z


# instance fields
.field private mDstTexture:I

.field private mSrcTexture:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->initOnce:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mSrcTexture:I

    iput v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mDstTexture:I

    return-void
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 15
    sget-boolean v0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->initOnce:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->initOnce:Z

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public doBlur(III)V
    .locals 0
    .param p1, "srcTexture"    # I
    .param p2, "dstTexture"    # I
    .param p3, "radius"    # I

    .line 35
    return-void
.end method

.method public doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->initTexture(II)I

    move-result v0

    iput v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mSrcTexture:I

    .line 24
    iget v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mSrcTexture:I

    invoke-static {v0, p1}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXUtil;->updateTexture(ILandroid/graphics/Bitmap;)V

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->initTexture(II)I

    move-result v0

    iput v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mDstTexture:I

    .line 26
    iget v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mSrcTexture:I

    iget v1, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mDstTexture:I

    invoke-virtual {p0, v0, v1, p3}, Lcom/huawei/iimagekit/blur/GPUBlurBase;->doBlur(III)V

    .line 27
    iget v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mDstTexture:I

    invoke-static {p2, v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXUtil;->updateBitmap(Landroid/graphics/Bitmap;I)V

    .line 28
    iget v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mSrcTexture:I

    invoke-static {v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->destroyTexture(I)V

    .line 29
    iget v0, p0, Lcom/huawei/iimagekit/blur/GPUBlurBase;->mDstTexture:I

    invoke-static {v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->destroyTexture(I)V

    .line 33
    return-void
.end method
