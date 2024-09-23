.class public Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXUtil;
.super Ljava/lang/Object;
.source "GFXUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "textureID"    # I

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 30
    .local v0, "textureSize":[I
    invoke-static {p0, v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->getTextureSize(I[I)V

    .line 31
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXUtil;->updateBitmap(Landroid/graphics/Bitmap;I)V

    .line 33
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static initTexture(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->initTexture(II)I

    move-result v0

    .line 20
    .local v0, "id":I
    invoke-static {v0, p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXUtil;->updateTexture(ILandroid/graphics/Bitmap;)V

    .line 21
    return v0
.end method

.method public static updateBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "textureID"    # I

    .line 36
    invoke-static {}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->initFramebuffer()I

    move-result v0

    .line 37
    .local v0, "fbID":I
    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    invoke-static {v0, p1, v1}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->bindFramebufferToTexture(IILcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;)V

    .line 38
    invoke-static {p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXUtil;->updateBitmapFn(Landroid/graphics/Bitmap;)V

    .line 39
    invoke-static {v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->destroyFramebuffer(I)V

    .line 40
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->bindFramebuffer(I)V

    .line 41
    return-void
.end method

.method private static native updateBitmapFn(Landroid/graphics/Bitmap;)V
.end method

.method public static updateTexture(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "textureID"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 24
    invoke-static {p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->bindTexture(I)V

    .line 25
    const/4 v0, 0x0

    const/16 v1, 0xde1

    invoke-static {v1, v0, v0, v0, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 26
    return-void
.end method
