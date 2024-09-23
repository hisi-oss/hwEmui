.class public Landroid/widget/sr/AshMemBitmap;
.super Ljava/lang/Object;
.source "AshMemBitmap.java"


# static fields
.field public static final NOT_ASH_BITMAP_FD:I = -0x1

.field public static final TAG:Ljava/lang/String; = "AshMemBitmap"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDesNativeBitmap(IIII)Landroid/widget/sr/NativeBitmap;
    .locals 8
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "c"    # I
    .param p3, "ratio"    # I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "resBmp":Landroid/widget/sr/NativeBitmap;
    mul-int v1, p0, p3

    .line 48
    .local v1, "outw":I
    mul-int v2, p1, p3

    .line 49
    .local v2, "outh":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/widget/sr/AshMemBitmap;->createSRBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 50
    .local v3, "desAshBmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 51
    invoke-static {v3}, Landroid/widget/sr/BitmapUtils;->getAshBitmapPtr(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    .line 52
    .local v4, "desPtr":J
    invoke-static {v4, v5}, Landroid/widget/sr/HwSuperResolution;->nativeGetFdFromPtr(J)I

    move-result v6

    .line 53
    .local v6, "desFd":I
    const/4 v7, -0x1

    if-ne v7, v6, :cond_0

    .line 54
    const/4 v7, 0x0

    return-object v7

    .line 56
    :cond_0
    new-instance v7, Landroid/widget/sr/NativeBitmap;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/widget/sr/NativeBitmap;-><init>(Landroid/graphics/Bitmap;JI)V

    move-object v0, v7

    .line 58
    .end local v4    # "desPtr":J
    .end local v6    # "desFd":I
    :cond_1
    return-object v0
.end method

.method private static createSRBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .line 69
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v5, 0x1

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Landroid/widget/sr/AshMemBitmap;->createSRBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createSRBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 78
    move-object/from16 v3, p5

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    .line 81
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v4, :cond_9

    .line 85
    if-eqz v3, :cond_8

    .line 94
    const/4 v13, 0x5

    .line 95
    .local v13, "nativeInt":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v4, :cond_3

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    instance-of v4, v3, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v4, :cond_2

    .line 101
    move-object v12, v3

    check-cast v12, Landroid/graphics/ColorSpace$Rgb;

    .line 102
    .local v12, "rgb":Landroid/graphics/ColorSpace$Rgb;
    invoke-virtual {v12}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v14

    .line 103
    .local v14, "parameters":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    if-eqz v14, :cond_1

    .line 108
    sget-object v4, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    invoke-static {v12, v4}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/graphics/ColorSpace$Rgb;

    .line 109
    .local v11, "d50":Landroid/graphics/ColorSpace$Rgb;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 110
    invoke-virtual {v11}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v15

    .line 109
    move/from16 v6, p1

    move/from16 v7, p1

    move/from16 v8, p2

    move v9, v13

    move-object/from16 v16, v11

    move-object v11, v15

    .end local v11    # "d50":Landroid/graphics/ColorSpace$Rgb;
    .local v16, "d50":Landroid/graphics/ColorSpace$Rgb;
    move-object v15, v12

    move-object v12, v14

    .end local v12    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    .local v15, "rgb":Landroid/graphics/ColorSpace$Rgb;
    invoke-static/range {v4 .. v12}, Landroid/widget/sr/HwSuperResolution;->nativeSRCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v4

    .end local v14    # "parameters":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .end local v15    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    .end local v16    # "d50":Landroid/graphics/ColorSpace$Rgb;
    goto :goto_1

    .line 104
    .restart local v12    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    .restart local v14    # "parameters":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    :cond_1
    move-object v15, v12

    .end local v12    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    .restart local v15    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "colorSpace must use an ICC parametric transfer function"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    .end local v14    # "parameters":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .end local v15    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "colorSpace must be an RGB color space"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_3
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v6, p1

    move/from16 v7, p1

    move/from16 v8, p2

    move v9, v13

    invoke-static/range {v4 .. v12}, Landroid/widget/sr/HwSuperResolution;->nativeSRCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 109
    .local v4, "bm":Landroid/graphics/Bitmap;
    :goto_1
    nop

    .line 113
    if-nez v4, :cond_4

    .line 114
    const/4 v5, 0x0

    return-object v5

    .line 116
    :cond_4
    if-eqz v0, :cond_5

    .line 117
    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 119
    :cond_5
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 120
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v5, :cond_6

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v1, v5, :cond_7

    :cond_6
    if-nez v2, :cond_7

    .line 121
    invoke-static {v4}, Landroid/widget/sr/BitmapUtils;->getAshBitmapPtr(Landroid/graphics/Bitmap;)J

    move-result-wide v5

    .line 124
    .local v5, "nativePtr":J
    const/high16 v7, -0x1000000

    invoke-static {v5, v6, v7}, Landroid/widget/sr/HwSuperResolution;->nativeErase(JI)V

    .line 126
    .end local v5    # "nativePtr":J
    :cond_7
    return-object v4

    .line 86
    .end local v4    # "bm":Landroid/graphics/Bitmap;
    .end local v13    # "nativeInt":I
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "can\'t create bitmap without a color space"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "can\'t create mutable bitmap with Config.HARDWARE"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "width and height must be > 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static createSrcNativeBitmap(Landroid/graphics/Bitmap;)Landroid/widget/sr/NativeBitmap;
    .locals 9
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "resBmp":Landroid/widget/sr/NativeBitmap;
    invoke-static {p0}, Landroid/widget/sr/BitmapUtils;->getAshBitmapPtr(Landroid/graphics/Bitmap;)J

    move-result-wide v1

    .line 22
    .local v1, "ptr":J
    invoke-static {v1, v2}, Landroid/widget/sr/HwSuperResolution;->nativeGetFdFromPtr(J)I

    move-result v3

    .line 23
    .local v3, "fd":I
    const/4 v4, -0x1

    if-ne v4, v3, :cond_1

    .line 24
    invoke-static {p0}, Landroid/widget/sr/BitmapUtils;->createAshBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 25
    .local v5, "ashSrcBmp":Landroid/graphics/Bitmap;
    invoke-static {v5}, Landroid/widget/sr/BitmapUtils;->getAshBitmapPtr(Landroid/graphics/Bitmap;)J

    move-result-wide v6

    .line 26
    .local v6, "srcPtr":J
    invoke-static {v6, v7}, Landroid/widget/sr/HwSuperResolution;->nativeGetFdFromPtr(J)I

    move-result v8

    .line 27
    .local v8, "srcFd":I
    if-ne v4, v8, :cond_0

    .line 28
    const/4 v4, 0x0

    return-object v4

    .line 30
    :cond_0
    new-instance v4, Landroid/widget/sr/NativeBitmap;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/sr/NativeBitmap;-><init>(Landroid/graphics/Bitmap;JI)V

    move-object v0, v4

    .line 31
    .end local v5    # "ashSrcBmp":Landroid/graphics/Bitmap;
    .end local v6    # "srcPtr":J
    .end local v8    # "srcFd":I
    goto :goto_0

    .line 32
    :cond_1
    new-instance v4, Landroid/widget/sr/NativeBitmap;

    invoke-direct {v4, p0, v1, v2, v3}, Landroid/widget/sr/NativeBitmap;-><init>(Landroid/graphics/Bitmap;JI)V

    move-object v0, v4

    .line 34
    :goto_0
    return-object v0
.end method
