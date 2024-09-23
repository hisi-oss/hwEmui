.class public Lcom/huawei/iimagekit/common/agp/graphics/porting/androidfw/HWBitmapUtil;
.super Ljava/lang/Object;
.source "HWBitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native destroyHardwareBitmapTexture(I)V
.end method

.method public static native initHardwareBitmap(II)Landroid/graphics/Bitmap;
.end method

.method public static native initHardwareBitmapTexture(Landroid/graphics/Bitmap;)I
.end method
