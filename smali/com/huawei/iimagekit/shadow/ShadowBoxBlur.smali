.class public Lcom/huawei/iimagekit/shadow/ShadowBoxBlur;
.super Ljava/lang/Object;
.source "ShadowBoxBlur.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static boxBlurHorizontal([IIII)V
    .locals 24
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "halfRange"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 39
    move/from16 v2, p3

    const/4 v3, 0x0

    .line 40
    .local v3, "index":I
    new-array v4, v1, [I

    .line 42
    .local v4, "newColors":[I
    move v6, v3

    const/4 v3, 0x0

    .local v3, "y":I
    .local v6, "index":I
    :goto_0
    move/from16 v7, p2

    if-ge v3, v7, :cond_6

    .line 43
    const/4 v8, 0x0

    .line 44
    .local v8, "hits":I
    const-wide/16 v9, 0x0

    .local v9, "a":J
    const-wide/16 v11, 0x0

    .local v11, "r":J
    const-wide/16 v13, 0x0

    .local v13, "g":J
    const-wide/16 v15, 0x0

    .line 45
    .local v15, "b":J
    neg-int v5, v2

    .local v5, "x":I
    :goto_1
    if-ge v5, v1, :cond_5

    .line 46
    sub-int v17, v5, v2

    add-int/lit8 v17, v17, -0x1

    .line 47
    .local v17, "oldPixel":I
    if-ltz v17, :cond_1

    .line 48
    add-int v18, v6, v17

    aget v7, v0, v18

    .line 49
    .local v7, "color":I
    if-eqz v7, :cond_0

    .line 50
    move/from16 v19, v3

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .end local v3    # "y":I
    .local v19, "y":I
    move-object/from16 v20, v4

    int-to-long v3, v3

    .end local v4    # "newColors":[I
    .local v20, "newColors":[I
    sub-long/2addr v9, v3

    .line 51
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v11, v3

    .line 52
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v13, v3

    .line 53
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v15, v3

    goto :goto_2

    .line 55
    .end local v19    # "y":I
    .end local v20    # "newColors":[I
    .restart local v3    # "y":I
    .restart local v4    # "newColors":[I
    :cond_0
    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "y":I
    .end local v4    # "newColors":[I
    .restart local v19    # "y":I
    .restart local v20    # "newColors":[I
    :goto_2
    add-int/lit8 v8, v8, -0x1

    .end local v7    # "color":I
    goto :goto_3

    .line 57
    .end local v19    # "y":I
    .end local v20    # "newColors":[I
    .restart local v3    # "y":I
    .restart local v4    # "newColors":[I
    :cond_1
    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "y":I
    .end local v4    # "newColors":[I
    .restart local v19    # "y":I
    .restart local v20    # "newColors":[I
    :goto_3
    add-int v3, v5, v2

    .line 58
    .local v3, "newPixel":I
    if-ge v3, v1, :cond_3

    .line 59
    add-int v4, v6, v3

    aget v4, v0, v4

    .line 60
    .local v4, "color":I
    if-eqz v4, :cond_2

    .line 61
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    move/from16 v21, v3

    int-to-long v2, v7

    .end local v3    # "newPixel":I
    .local v21, "newPixel":I
    add-long/2addr v9, v2

    .line 62
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v11, v2

    .line 63
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v13, v2

    .line 64
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v15, v2

    goto :goto_4

    .line 66
    .end local v21    # "newPixel":I
    .restart local v3    # "newPixel":I
    :cond_2
    move/from16 v21, v3

    .end local v3    # "newPixel":I
    .restart local v21    # "newPixel":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .end local v4    # "color":I
    goto :goto_5

    .line 68
    .end local v21    # "newPixel":I
    .restart local v3    # "newPixel":I
    :cond_3
    move/from16 v21, v3

    .end local v3    # "newPixel":I
    .restart local v21    # "newPixel":I
    :goto_5
    if-ltz v5, :cond_4

    .line 69
    int-to-long v2, v8

    div-long v2, v9, v2

    long-to-int v2, v2

    int-to-long v3, v8

    div-long v3, v11, v3

    long-to-int v3, v3

    move-wide/from16 v22, v9

    int-to-long v9, v8

    .end local v9    # "a":J
    .local v22, "a":J
    div-long v9, v13, v9

    long-to-int v4, v9

    int-to-long v9, v8

    div-long v9, v15, v9

    long-to-int v7, v9

    invoke-static {v2, v3, v4, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v20, v5

    .end local v17    # "oldPixel":I
    .end local v21    # "newPixel":I
    goto :goto_6

    .line 45
    .end local v22    # "a":J
    .restart local v9    # "a":J
    :cond_4
    move-wide/from16 v22, v9

    .end local v9    # "a":J
    .restart local v22    # "a":J
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    move-object/from16 v4, v20

    move-wide/from16 v9, v22

    move/from16 v2, p3

    move/from16 v7, p2

    goto/16 :goto_1

    .line 72
    .end local v5    # "x":I
    .end local v19    # "y":I
    .end local v20    # "newColors":[I
    .end local v22    # "a":J
    .local v3, "y":I
    .local v4, "newColors":[I
    .restart local v9    # "a":J
    :cond_5
    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "y":I
    .end local v4    # "newColors":[I
    .restart local v19    # "y":I
    .restart local v20    # "newColors":[I
    move-object/from16 v2, v20

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .end local v20    # "newColors":[I
    .local v2, "newColors":[I
    add-int/2addr v6, v1

    .line 42
    .end local v8    # "hits":I
    .end local v9    # "a":J
    .end local v11    # "r":J
    .end local v13    # "g":J
    .end local v15    # "b":J
    add-int/lit8 v4, v19, 0x1

    .end local v19    # "y":I
    .local v4, "y":I
    move v3, v4

    move-object v4, v2

    move/from16 v2, p3

    goto/16 :goto_0

    .line 75
    .end local v2    # "newColors":[I
    .local v4, "newColors":[I
    :cond_6
    move-object v2, v4

    .end local v4    # "newColors":[I
    .restart local v2    # "newColors":[I
    return-void
.end method

.method private static boxBlurVertical([IIII)V
    .locals 26
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "halfRange"    # I

    move/from16 v1, p1

    move/from16 v2, p2

    .line 78
    move/from16 v3, p3

    new-array v4, v2, [I

    .line 79
    .local v4, "newColors":[I
    add-int/lit8 v5, v3, 0x1

    neg-int v5, v5

    mul-int/2addr v5, v1

    .line 80
    .local v5, "oldPixelOffset":I
    mul-int v6, v3, v1

    .line 82
    .local v6, "newPixelOffset":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    if-ge v8, v1, :cond_7

    .line 83
    const/4 v9, 0x0

    .line 84
    .local v9, "hits":I
    const-wide/16 v10, 0x0

    .local v10, "a":J
    const-wide/16 v12, 0x0

    .local v12, "r":J
    const-wide/16 v14, 0x0

    .local v14, "g":J
    const-wide/16 v16, 0x0

    .line 85
    .local v16, "b":J
    neg-int v7, v3

    mul-int/2addr v7, v1

    add-int/2addr v7, v8

    .line 86
    .local v7, "index":I
    move/from16 v18, v7

    neg-int v7, v3

    .local v7, "y":I
    .local v18, "index":I
    :goto_1
    if-ge v7, v2, :cond_5

    .line 87
    sub-int v19, v7, v3

    add-int/lit8 v19, v19, -0x1

    .line 88
    .local v19, "oldPixel":I
    if-ltz v19, :cond_1

    .line 89
    add-int v20, v18, v5

    move/from16 v21, v5

    aget v5, p0, v20

    .line 90
    .local v5, "color":I
    .local v21, "oldPixelOffset":I
    if-eqz v5, :cond_0

    .line 91
    move/from16 v22, v8

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .end local v8    # "x":I
    .local v22, "x":I
    int-to-long v0, v8

    sub-long/2addr v10, v0

    .line 92
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v12, v0

    .line 93
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v14, v0

    .line 94
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-long v0, v0

    sub-long v16, v16, v0

    goto :goto_2

    .line 96
    .end local v22    # "x":I
    .restart local v8    # "x":I
    :cond_0
    move/from16 v22, v8

    .end local v8    # "x":I
    .restart local v22    # "x":I
    :goto_2
    add-int/lit8 v9, v9, -0x1

    .end local v5    # "color":I
    goto :goto_3

    .line 98
    .end local v21    # "oldPixelOffset":I
    .end local v22    # "x":I
    .local v5, "oldPixelOffset":I
    .restart local v8    # "x":I
    :cond_1
    move/from16 v21, v5

    move/from16 v22, v8

    .end local v5    # "oldPixelOffset":I
    .end local v8    # "x":I
    .restart local v21    # "oldPixelOffset":I
    .restart local v22    # "x":I
    :goto_3
    add-int v0, v7, v3

    .line 99
    .local v0, "newPixel":I
    if-ge v0, v2, :cond_3

    .line 100
    add-int v1, v18, v6

    aget v1, p0, v1

    .line 101
    .local v1, "color":I
    if-eqz v1, :cond_2

    .line 102
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    move/from16 v23, v6

    int-to-long v5, v8

    .end local v6    # "newPixelOffset":I
    .local v23, "newPixelOffset":I
    add-long/2addr v10, v5

    .line 103
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v12, v5

    .line 104
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v14, v5

    .line 105
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-long v5, v5

    add-long v16, v16, v5

    goto :goto_4

    .line 107
    .end local v23    # "newPixelOffset":I
    .restart local v6    # "newPixelOffset":I
    :cond_2
    move/from16 v23, v6

    .end local v6    # "newPixelOffset":I
    .restart local v23    # "newPixelOffset":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .end local v1    # "color":I
    goto :goto_5

    .line 109
    .end local v23    # "newPixelOffset":I
    .restart local v6    # "newPixelOffset":I
    :cond_3
    move/from16 v23, v6

    .end local v6    # "newPixelOffset":I
    .restart local v23    # "newPixelOffset":I
    :goto_5
    if-ltz v7, :cond_4

    .line 110
    int-to-long v5, v9

    div-long v5, v10, v5

    long-to-int v1, v5

    int-to-long v5, v9

    div-long v5, v12, v5

    long-to-int v5, v5

    move-wide/from16 v24, v10

    int-to-long v10, v9

    .end local v10    # "a":J
    .local v24, "a":J
    div-long v10, v14, v10

    long-to-int v6, v10

    int-to-long v10, v9

    div-long v10, v16, v10

    long-to-int v8, v10

    invoke-static {v1, v5, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v4, v7

    goto :goto_6

    .line 112
    .end local v24    # "a":J
    .restart local v10    # "a":J
    :cond_4
    move-wide/from16 v24, v10

    .end local v10    # "a":J
    .restart local v24    # "a":J
    :goto_6
    move/from16 v1, p1

    add-int v18, v18, v1

    .line 86
    .end local v0    # "newPixel":I
    .end local v19    # "oldPixel":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v21

    move/from16 v8, v22

    move/from16 v6, v23

    move-wide/from16 v10, v24

    goto/16 :goto_1

    .line 114
    .end local v7    # "y":I
    .end local v21    # "oldPixelOffset":I
    .end local v22    # "x":I
    .end local v23    # "newPixelOffset":I
    .end local v24    # "a":J
    .restart local v5    # "oldPixelOffset":I
    .restart local v6    # "newPixelOffset":I
    .restart local v8    # "x":I
    .restart local v10    # "a":J
    :cond_5
    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v22, v8

    .end local v5    # "oldPixelOffset":I
    .end local v6    # "newPixelOffset":I
    .end local v8    # "x":I
    .restart local v21    # "oldPixelOffset":I
    .restart local v22    # "x":I
    .restart local v23    # "newPixelOffset":I
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_7
    if-ge v0, v2, :cond_6

    .line 115
    mul-int v5, v0, v1

    add-int v5, v5, v22

    aget v6, v4, v0

    aput v6, p0, v5

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 82
    .end local v0    # "y":I
    .end local v9    # "hits":I
    .end local v10    # "a":J
    .end local v12    # "r":J
    .end local v14    # "g":J
    .end local v16    # "b":J
    .end local v18    # "index":I
    :cond_6
    add-int/lit8 v8, v22, 0x1

    .end local v22    # "x":I
    .restart local v8    # "x":I
    move/from16 v5, v21

    move/from16 v6, v23

    goto/16 :goto_0

    .line 118
    .end local v8    # "x":I
    .end local v21    # "oldPixelOffset":I
    .end local v23    # "newPixelOffset":I
    .restart local v5    # "oldPixelOffset":I
    .restart local v6    # "newPixelOffset":I
    :cond_7
    move/from16 v21, v5

    move/from16 v23, v6

    .end local v5    # "oldPixelOffset":I
    .end local v6    # "newPixelOffset":I
    .restart local v21    # "oldPixelOffset":I
    .restart local v23    # "newPixelOffset":I
    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 12
    .param p0, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p1, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .line 20
    const/4 v0, 0x2

    .line 21
    .local v0, "iterations":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 22
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 23
    .local v10, "h":I
    mul-int v1, v9, v10

    new-array v11, v1, [I

    .line 24
    .local v11, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 26
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 27
    :cond_0
    invoke-static {v11}, Lcom/huawei/iimagekit/shadow/ShadowUtil;->processAlphaChannelBefore([I)V

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 29
    div-int/lit8 v2, p2, 0x2

    invoke-static {v11, v9, v10, v2}, Lcom/huawei/iimagekit/shadow/ShadowBoxBlur;->boxBlurHorizontal([IIII)V

    .line 30
    div-int/lit8 v2, p2, 0x2

    invoke-static {v11, v9, v10, v2}, Lcom/huawei/iimagekit/shadow/ShadowBoxBlur;->boxBlurVertical([IIII)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_1
    invoke-static {v11}, Lcom/huawei/iimagekit/shadow/ShadowUtil;->processAlphaChannelAfter([I)V

    .line 33
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 35
    return-void
.end method
