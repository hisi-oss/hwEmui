.class public Lcom/huawei/iimagekit/blur/NoneBlur;
.super Ljava/lang/Object;
.source "NoneBlur.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p0, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p1, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .line 15
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .local v1, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 18
    return-void
.end method
