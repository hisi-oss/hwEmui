.class public Lhuawei/android/hwutil/IconBitmapUtils;
.super Ljava/lang/Object;
.source "IconBitmapUtils.java"


# static fields
.field private static final DEBUG_ICON:Z = false

.field private static final HFACTOR:F = 0.9f

.field private static final MASK_ABS_VALID_RANGE:I = 0xa

.field private static final SFACTOR:F = 0.8f

.field private static final SMALLER_HUE:F = 30.0f

.field private static TAG:Ljava/lang/String; = null

.field private static TAG_ICON:Ljava/lang/String; = null

.field private static VALID_TRANSPARENCY:I = 0x0

.field private static final VFACTOR:F = 1.2f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "IconBitmapUtils"

    sput-object v0, Lhuawei/android/hwutil/IconBitmapUtils;->TAG:Ljava/lang/String;

    .line 35
    const/16 v0, 0x28

    sput v0, Lhuawei/android/hwutil/IconBitmapUtils;->VALID_TRANSPARENCY:I

    .line 37
    const-string v0, "RsourcesEx"

    sput-object v0, Lhuawei/android/hwutil/IconBitmapUtils;->TAG_ICON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTransparency(I)Z
    .locals 2
    .param p0, "argb"    # I

    .line 201
    ushr-int/lit8 v0, p0, 0x18

    sget v1, Lhuawei/android/hwutil/IconBitmapUtils;->VALID_TRANSPARENCY:I

    if-lt v0, v1, :cond_0

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "mask"    # Landroid/graphics/Bitmap;
    .param p2, "background"    # Landroid/graphics/Bitmap;
    .param p3, "border"    # Landroid/graphics/Bitmap;
    .param p4, "useAvgColor"    # Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 288
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 289
    .local v14, "h":I
    mul-int v3, v13, v14

    new-array v15, v3, [I

    .line 290
    .local v15, "pixels":[I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v15

    move v6, v13

    move v9, v13

    move v10, v14

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 291
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 293
    .local v12, "resultBitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_0

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 296
    :cond_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v3

    .line 297
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object v10, v3

    .line 298
    .local v10, "paint":Landroid/graphics/Paint;
    if-eqz v0, :cond_1

    .line 299
    invoke-static {v15, v13, v14, v0}, Lhuawei/android/hwutil/IconBitmapUtils;->mask([IIILandroid/graphics/Bitmap;)V

    .line 301
    :cond_1
    const/4 v9, 0x0

    if-eqz v1, :cond_3

    .line 302
    if-eqz p4, :cond_2

    .line 303
    invoke-static {v11, v1, v13, v14, v15}, Lhuawei/android/hwutil/IconBitmapUtils;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II[I)V

    goto :goto_0

    .line 306
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v11, v1, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 309
    :cond_3
    :goto_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v3, v11

    move-object v4, v15

    move v6, v13

    move v9, v13

    move-object/from16 v18, v10

    move v10, v14

    .end local v10    # "paint":Landroid/graphics/Paint;
    .local v18, "paint":Landroid/graphics/Paint;
    move-object/from16 v19, v11

    move/from16 v11, v16

    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .local v19, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v16, v12

    move-object/from16 v12, v17

    .end local v12    # "resultBitmap":Landroid/graphics/Bitmap;
    .local v16, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 310
    if-eqz v2, :cond_4

    .line 311
    move-object/from16 v4, v18

    move-object/from16 v3, v19

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 313
    :cond_4
    move-object/from16 v4, v18

    move-object/from16 v3, v19

    .end local v18    # "paint":Landroid/graphics/Paint;
    .end local v19    # "canvas":Landroid/graphics/Canvas;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .local v4, "paint":Landroid/graphics/Paint;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    return-object v16
.end method

.method private static drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II[I)V
    .locals 26
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "pixels"    # [I

    .line 365
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v2, v0, v1}, Lhuawei/android/hwutil/IconBitmapUtils;->getAvgColor([III)I

    move-result v3

    .line 366
    .local v3, "avgColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 367
    .local v14, "bw":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 368
    .local v15, "bh":I
    mul-int v4, v14, v15

    new-array v13, v4, [I

    .line 369
    .local v13, "backPixels":[I
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object v5, v13

    move v7, v14

    move v10, v14

    move v11, v15

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 372
    const/4 v4, 0x3

    new-array v12, v4, [F

    .line 373
    .local v12, "hsv":[F
    invoke-static {v3, v12}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 374
    const/4 v4, 0x0

    aget v5, v12, v4

    float-to-int v11, v5

    .line 375
    .local v11, "hue":I
    const/4 v5, 0x1

    aget v16, v12, v5

    .line 376
    .local v16, "saturation":F
    const/4 v6, 0x2

    aget v17, v12, v6

    .line 378
    .local v17, "brightness":F
    const v7, 0x3f666666    # 0.9f

    invoke-static {v11, v7}, Lhuawei/android/hwutil/IconBitmapUtils;->getHue(IF)F

    move-result v7

    aput v7, v12, v4

    .line 379
    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v11, v4}, Lhuawei/android/hwutil/IconBitmapUtils;->getSaturationFactor(IF)F

    move-result v4

    mul-float v4, v4, v16

    aput v4, v12, v5

    .line 380
    const v4, 0x3f99999a    # 1.2f

    invoke-static {v11, v4}, Lhuawei/android/hwutil/IconBitmapUtils;->getBrightnessFactor(IF)F

    move-result v4

    mul-float v4, v4, v17

    aput v4, v12, v6

    .line 382
    invoke-static {v12}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    .line 383
    .local v10, "backColor":I
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v18

    .line 384
    .local v18, "r":I
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v19

    .line 385
    .local v19, "g":I
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    .line 386
    .local v20, "b":I
    mul-int v4, v14, v15

    const/4 v5, -0x1

    add-int/2addr v5, v4

    .local v5, "i":I
    :goto_0
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_0

    .line 387
    aget v5, v13, v4

    .line 388
    .local v5, "backPixel":I
    const/high16 v6, -0x1000000

    and-int/2addr v6, v5

    const/high16 v7, 0xff0000

    and-int v8, v7, v5

    mul-int v8, v8, v18

    ushr-int/lit8 v8, v8, 0x8

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    const v7, 0xff00

    and-int v8, v7, v5

    mul-int v8, v8, v19

    ushr-int/lit8 v8, v8, 0x8

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    and-int/lit16 v7, v5, 0xff

    mul-int v7, v7, v20

    ushr-int/lit8 v7, v7, 0x8

    const/16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v13, v4

    .line 386
    .end local v5    # "backPixel":I
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .local v5, "i":I
    goto :goto_0

    .line 393
    .end local v5    # "i":I
    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v4, p0

    move-object v5, v13

    move v7, v14

    move/from16 v23, v10

    move v10, v14

    .end local v10    # "backColor":I
    .local v23, "backColor":I
    move/from16 v24, v11

    move v11, v15

    .end local v11    # "hue":I
    .local v24, "hue":I
    move-object/from16 v25, v12

    move/from16 v12, v21

    .end local v12    # "hsv":[F
    .local v25, "hsv":[F
    move-object/from16 v21, v13

    move-object/from16 v13, v22

    .end local v13    # "backPixels":[I
    .local v21, "backPixels":[I
    invoke-virtual/range {v4 .. v13}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 394
    return-void
.end method

.method public static drawSource(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "standardSize"    # I
    .param p2, "iconSize"    # I

    .line 319
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 320
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 321
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 324
    .local v2, "resultBitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 326
    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 330
    :cond_0
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    const/4 v3, 0x1

    invoke-static {p0, p2, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 333
    .local v3, "tmp":Landroid/graphics/Bitmap;
    sub-int v4, p1, p2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-int v6, p1, p2

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 335
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    return-object v2
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 183
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 184
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-object v0

    .line 192
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getAvgColor([III)I
    .locals 8
    .param p0, "tempPixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "count":I
    const/4 v1, 0x0

    .line 343
    .local v1, "color":I
    const/4 v2, 0x0

    .line 344
    .local v2, "aR":I
    const/4 v3, 0x0

    .line 345
    .local v3, "aG":I
    const/4 v4, 0x0

    .line 347
    .local v4, "aB":I
    mul-int v5, p1, p2

    const/4 v6, -0x1

    add-int/2addr v6, v5

    .local v6, "j":I
    :goto_0
    move v5, v6

    .end local v6    # "j":I
    .local v5, "j":I
    if-ltz v5, :cond_1

    .line 348
    const v6, 0xffffff

    aget v7, p0, v5

    and-int v1, v6, v7

    .line 349
    if-gtz v1, :cond_0

    .line 350
    goto :goto_1

    .line 351
    :cond_0
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 352
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 353
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 354
    add-int/lit8 v0, v0, 0x1

    .line 347
    :goto_1
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_0

    .line 356
    .end local v6    # "j":I
    :cond_1
    if-lez v0, :cond_2

    .line 357
    div-int/2addr v2, v0

    .line 358
    div-int/2addr v3, v0

    .line 359
    div-int/2addr v4, v0

    .line 361
    :cond_2
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    return v5
.end method

.method private static getBrightnessFactor(IF)F
    .locals 2
    .param p0, "hue"    # I
    .param p1, "factor"    # F

    .line 412
    int-to-float v0, p0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 413
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    return v0

    .line 415
    :cond_0
    return p1
.end method

.method private static getHue(IF)F
    .locals 2
    .param p0, "hue"    # I
    .param p1, "factor"    # F

    .line 398
    int-to-float v0, p0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 399
    rsub-int p0, p0, 0x168

    .line 401
    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getIconInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 11
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .line 271
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 272
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 273
    .local v9, "h":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 274
    .local v10, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 275
    invoke-static {v10, v8, v9}, Lhuawei/android/hwutil/IconBitmapUtils;->getValidTop([III)I

    move-result v0

    .line 276
    .local v0, "top":I
    invoke-static {v10, v8, v9}, Lhuawei/android/hwutil/IconBitmapUtils;->getValidBottom([III)I

    move-result v1

    .line 277
    .local v1, "bottom":I
    invoke-static {v10, v8, v9}, Lhuawei/android/hwutil/IconBitmapUtils;->getValidLeft([III)I

    move-result v2

    .line 278
    .local v2, "left":I
    invoke-static {v10, v8, v9}, Lhuawei/android/hwutil/IconBitmapUtils;->getValidRight([III)I

    move-result v3

    .line 279
    .local v3, "right":I
    if-ge v2, v3, :cond_0

    if-ge v0, v1, :cond_0

    .line 280
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 282
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method private static getSaturationFactor(IF)F
    .locals 2
    .param p0, "hue"    # I
    .param p1, "factor"    # F

    .line 405
    int-to-float v0, p0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 406
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    return v0

    .line 408
    :cond_0
    return p1
.end method

.method private static getValidBottom([III)I
    .locals 5
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 228
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p1, 0x2

    .line 229
    .local v0, "mid_w":I
    :goto_0
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 230
    mul-int v2, v1, p1

    .line 231
    .local v2, "y":I
    move v3, v0

    .local v3, "j":I
    :goto_2
    if-ltz v3, :cond_3

    .line 232
    add-int v4, v2, v3

    aget v4, p0, v4

    invoke-static {v4}, Lhuawei/android/hwutil/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v3

    add-int/2addr v4, v2

    aget v4, p0, v4

    invoke-static {v4}, Lhuawei/android/hwutil/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 231
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 233
    :cond_2
    :goto_3
    return v1

    .line 229
    .end local v2    # "y":I
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 237
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private static getValidLeft([III)I
    .locals 4
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 244
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    div-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p2, 0x2

    .line 245
    .local v0, "mid_h":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_4

    .line 246
    move v2, v0

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_3

    .line 247
    mul-int v3, v2, p1

    add-int/2addr v3, v1

    aget v3, p0, v3

    invoke-static {v3}, Lhuawei/android/hwutil/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v2

    mul-int/2addr v3, p1

    add-int/2addr v3, v1

    aget v3, p0, v3

    invoke-static {v3}, Lhuawei/android/hwutil/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 246
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 248
    :cond_2
    :goto_3
    return v1

    .line 245
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    .end local v1    # "i":I
    :cond_4
    return p1
.end method

.method private static getValidRight([III)I
    .locals 4
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 259
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    div-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p2, 0x2

    .line 260
    .local v0, "mid_h":I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 261
    move v2, v0

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_3

    .line 262
    mul-int v3, v2, p1

    add-int/2addr v3, v1

    aget v3, p0, v3

    invoke-static {v3}, Lhuawei/android/hwutil/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v2

    mul-int/2addr v3, p1

    add-int/2addr v3, v1

    aget v3, p0, v3

    invoke-static {v3}, Lhuawei/android/hwutil/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 261
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 263
    :cond_2
    :goto_3
    return v1

    .line 260
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 267
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private static getValidTop([III)I
    .locals 5
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 212
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p1, 0x2

    .line 213
    .local v0, "mid_w":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_4

    .line 214
    mul-int v2, v1, p1

    .line 215
    .local v2, "y":I
    move v3, v0

    .local v3, "j":I
    :goto_2
    if-ltz v3, :cond_3

    .line 216
    add-int v4, v2, v3

    aget v4, p0, v4

    invoke-static {v4}, Lhuawei/android/hwutil/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v3

    add-int/2addr v4, v2

    aget v4, p0, v4

    invoke-static {v4}, Lhuawei/android/hwutil/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 215
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 217
    :cond_2
    :goto_3
    return v1

    .line 213
    .end local v2    # "y":I
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    .end local v1    # "i":I
    :cond_4
    return p2
.end method

.method public static mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 25
    .param p0, "bmpSrc"    # Landroid/graphics/Bitmap;
    .param p1, "bmpMask"    # Landroid/graphics/Bitmap;

    .line 69
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 73
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    invoke-virtual {v1, v0, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v14, v0

    .line 75
    .local v14, "newBitMap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 76
    .local v0, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 77
    .local v3, "h":I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move v13, v4

    .line 78
    .local v13, "wMask":I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v12, v4

    .line 79
    .local v12, "hMask":I
    const/4 v4, 0x0

    .line 80
    .local v4, "srcStartX":I
    const/4 v5, 0x0

    .line 81
    .local v5, "srcStartY":I
    if-le v0, v13, :cond_1

    .line 82
    sub-int v6, v0, v13

    :try_start_1
    div-int/lit8 v6, v6, 0x2

    move v4, v6

    .line 83
    move v0, v13

    goto :goto_0

    .line 107
    .end local v0    # "w":I
    .end local v3    # "h":I
    .end local v4    # "srcStartX":I
    .end local v5    # "srcStartY":I
    .end local v12    # "hMask":I
    .end local v13    # "wMask":I
    :catch_0
    move-exception v0

    move-object v7, v14

    goto/16 :goto_3

    .line 85
    .restart local v0    # "w":I
    .restart local v3    # "h":I
    .restart local v5    # "srcStartY":I
    .restart local v12    # "hMask":I
    .restart local v13    # "wMask":I
    .local v20, "srcStartX":I
    :cond_1
    :goto_0
    move/from16 v20, v4

    if-le v3, v12, :cond_2

    .line 86
    sub-int v4, v3, v12

    div-int/lit8 v4, v4, 0x2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .end local v5    # "srcStartY":I
    .local v4, "srcStartY":I
    move v3, v12

    .line 89
    move/from16 v21, v3

    move/from16 v22, v4

    goto :goto_1

    .end local v4    # "srcStartY":I
    .restart local v5    # "srcStartY":I
    :cond_2
    move/from16 v21, v3

    move/from16 v22, v5

    .end local v3    # "h":I
    .end local v5    # "srcStartY":I
    .local v21, "h":I
    .local v22, "srcStartY":I
    :goto_1
    mul-int v3, v0, v21

    :try_start_2
    new-array v3, v3, [I

    move-object/from16 v23, v3

    .line 90
    .local v23, "srcPixels":[I
    mul-int v3, v0, v21

    new-array v3, v3, [I

    move-object/from16 v24, v3

    .line 91
    .local v24, "maskPixels":[I
    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v23

    move v6, v0

    move/from16 v7, v20

    move/from16 v8, v22

    move v9, v0

    move/from16 v10, v21

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 92
    const/4 v5, 0x0

    sub-int v3, v13, v0

    div-int/lit8 v7, v3, 0x2

    sub-int v3, v12, v21

    div-int/lit8 v8, v3, 0x2

    move-object v3, v14

    move-object/from16 v4, v24

    move v6, v0

    move v9, v0

    move/from16 v10, v21

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    mul-int v3, v0, v21

    sub-int/2addr v3, v11

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_3

    .line 95
    :try_start_3
    aget v4, v24, v3

    ushr-int/lit8 v4, v4, 0x18

    aget v5, v23, v3

    ushr-int/lit8 v5, v5, 0x18

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget v5, v23, v3

    const v6, 0xffffff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v24, v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 94
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 99
    .end local v3    # "i":I
    :cond_3
    const/4 v5, 0x0

    sub-int v3, v13, v0

    :try_start_4
    div-int/lit8 v7, v3, 0x2

    sub-int v3, v12, v21

    div-int/lit8 v8, v3, 0x2

    move-object v3, v14

    move-object/from16 v4, v24

    move v6, v0

    move v9, v0

    move/from16 v10, v21

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 100
    mul-int v3, v13, v12

    new-array v4, v3, [I

    .line 101
    .local v4, "mask":[I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v14

    move v6, v13

    move v9, v13

    move v10, v12

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 102
    const/4 v7, 0x0

    const/4 v8, 0x0

    sub-int v3, v12, v21

    div-int/lit8 v10, v3, 0x2

    move-object v5, v4

    move v6, v13

    move v9, v13

    invoke-static/range {v5 .. v10}, Lhuawei/android/hwutil/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 103
    const/4 v7, 0x0

    add-int v3, v12, v21

    div-int/lit8 v8, v3, 0x2

    move-object v5, v4

    move v6, v13

    move v9, v13

    move v10, v12

    invoke-static/range {v5 .. v10}, Lhuawei/android/hwutil/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 104
    const/4 v7, 0x0

    const/4 v8, 0x0

    sub-int v3, v13, v0

    div-int/lit8 v9, v3, 0x2

    move-object v5, v4

    move v6, v13

    move v10, v12

    invoke-static/range {v5 .. v10}, Lhuawei/android/hwutil/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 105
    add-int v3, v13, v0

    div-int/lit8 v7, v3, 0x2

    const/4 v8, 0x0

    move-object v5, v4

    move v6, v13

    move v9, v13

    move v10, v12

    invoke-static/range {v5 .. v10}, Lhuawei/android/hwutil/IconBitmapUtils;->setTransparent([IIIIII)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 106
    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v5, v12

    move-object v12, v14

    .end local v12    # "hMask":I
    .local v5, "hMask":I
    move v6, v13

    move-object v13, v4

    .end local v13    # "wMask":I
    .local v6, "wMask":I
    move-object v7, v14

    move v14, v3

    .end local v14    # "newBitMap":Landroid/graphics/Bitmap;
    .local v7, "newBitMap":Landroid/graphics/Bitmap;
    move v15, v6

    move/from16 v18, v6

    move/from16 v19, v5

    :try_start_5
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 112
    .end local v0    # "w":I
    .end local v4    # "mask":[I
    .end local v5    # "hMask":I
    .end local v6    # "wMask":I
    .end local v20    # "srcStartX":I
    .end local v21    # "h":I
    .end local v22    # "srcStartY":I
    .end local v23    # "srcPixels":[I
    .end local v24    # "maskPixels":[I
    nop

    .line 113
    return-object v7

    .line 107
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v7    # "newBitMap":Landroid/graphics/Bitmap;
    .restart local v14    # "newBitMap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v0

    move-object v7, v14

    .line 108
    .end local v14    # "newBitMap":Landroid/graphics/Bitmap;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v7    # "newBitMap":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v7, :cond_4

    .line 109
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    :cond_4
    return-object v2

    .line 70
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "newBitMap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_4
    return-object v2
.end method

.method public static mask([IIILandroid/graphics/Bitmap;)V
    .locals 11
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "mask"    # Landroid/graphics/Bitmap;

    .line 49
    if-eqz p3, :cond_2

    .line 50
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 51
    .local v0, "wMask":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 52
    .local v1, "hMask":I
    if-lt v0, p1, :cond_1

    if-ge v1, p2, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    mul-int v2, p1, p2

    new-array v2, v2, [I

    .line 57
    .local v2, "maskPixels":[I
    const/4 v5, 0x0

    sub-int v3, v0, p1

    div-int/lit8 v7, v3, 0x2

    sub-int v3, v0, p2

    div-int/lit8 v8, v3, 0x2

    move-object v3, p3

    move-object v4, v2

    move v6, p1

    move v9, p1

    move v10, p2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 58
    mul-int v3, p1, p2

    const/4 v4, -0x1

    add-int/2addr v4, v3

    .local v4, "i":I
    :goto_0
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    if-ltz v3, :cond_2

    .line 59
    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x18

    aget v5, v2, v3

    ushr-int/lit8 v5, v5, 0x18

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget v5, p0, v3

    const v6, 0xffffff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, p0, v3

    .line 58
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 53
    .end local v2    # "maskPixels":[I
    .end local v4    # "i":I
    :cond_1
    :goto_1
    sget-object v2, Lhuawei/android/hwutil/IconBitmapUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mask size error, wMask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",hMask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 63
    .end local v0    # "wMask":I
    .end local v1    # "hMask":I
    :cond_2
    return-void
.end method

.method public static overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmpSrc"    # Landroid/graphics/Bitmap;
    .param p1, "bmpBg"    # Landroid/graphics/Bitmap;

    .line 162
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lhuawei/android/hwutil/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bmpSrc"    # Landroid/graphics/Bitmap;
    .param p1, "bmpBg"    # Landroid/graphics/Bitmap;
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .line 132
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 136
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 137
    .local v2, "h":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 138
    .local v3, "wBg":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 139
    .local v4, "hBg":I
    if-gt v1, v3, :cond_2

    if-le v2, v4, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 144
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x0

    .line 148
    .local v6, "newBitmap":Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 149
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    sub-int v7, v3, v1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v7, p2

    .line 152
    .local v7, "wMargin":I
    sub-int v8, v4, v2

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v8, p3

    .line 153
    .local v8, "hMargin":I
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v0, p0, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 155
    return-object v6

    .line 140
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "wMargin":I
    .end local v8    # "hMargin":I
    :cond_2
    :goto_0
    sget-object v5, Lhuawei/android/hwutil/IconBitmapUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The size of background("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") little than the source bitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v0

    .line 133
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "wBg":I
    .end local v4    # "hBg":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static setTransparent([IIIIII)V
    .locals 5
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "pos":I
    move v1, v0

    move v0, p3

    .local v0, "i":I
    .local v1, "pos":I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 121
    move v2, v1

    move v1, p2

    .local v1, "j":I
    .local v2, "pos":I
    :goto_1
    if-ge v1, p4, :cond_0

    .line 122
    mul-int v3, v0, p1

    add-int v2, v3, v1

    .line 123
    aget v3, p0, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    aput v3, p0, v2

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    .end local v2    # "pos":I
    .local v1, "pos":I
    :cond_1
    return-void
.end method

.method public static zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "standardSize"    # I
    .param p2, "recycledWhenScaled"    # Z

    .line 170
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 171
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 172
    .local v1, "h":I
    if-ne v0, p1, :cond_1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    return-object p0

    .line 173
    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-static {p0, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 174
    .local v2, "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 175
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    :cond_2
    return-object v2
.end method
