.class public Lcom/huawei/iimagekit/shadow/NoneShadow;
.super Ljava/lang/Object;
.source "NoneShadow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 5
    .param p0, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p1, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 13
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 14
    .local v1, "h":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 15
    .local v2, "noneImage":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 16
    return-void
.end method
