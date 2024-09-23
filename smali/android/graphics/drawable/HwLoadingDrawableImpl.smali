.class public Landroid/graphics/drawable/HwLoadingDrawableImpl;
.super Landroid/graphics/drawable/HwLoadingDrawable;
.source "HwLoadingDrawableImpl.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ALPHA_BASIC:I = 0x7f

.field private static final ALPHA_FULL:I = 0xff

.field private static final ALPHA_INIT:I = 0x80

.field private static final ANGLE:I = 0x1e

.field private static final ANGLE_TIMES:I = 0xc

.field private static final CANVAS_WHOLE_CENTRE_RATIO:F = 2.0f

.field private static final CANVAS_WHOLE_RADIUS_RATIO:F = 0.6944444f

.field private static final DEFAULT_COLOR:I = -0x99999a

.field private static final DURATION:I = 0x3e8

.field private static final GRADIENT_ANGLE:D

.field private static final INIT_NUM:F = 0.0f

.field private static final INTERPOLATOR_PARAM_1:F = 0.33f

.field private static final INTERPOLATOR_PARAM_2:F = 0.0f

.field private static final INTERPOLATOR_PARAM_3:F = 0.67f

.field private static final INTERPOLATOR_PARAM_4:F = 1.0f

.field private static final MAX_BITMAP_SIZE:I = 0xfa

.field private static final MAX_DELTA_RADIUS:I = 0x1

.field private static final MIN_DELTA_RADIUS:I = 0x0

.field private static final RESET_FRAME:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "HwLoadingDrawable"

.field private static final TIME_DIFFERENCE:I = 0x5

.field private static final TIME_STAMP:F = 60.0f

.field private static final TIME_STAMP_1:F = 0.0f

.field private static final TIME_STAMP_2:F = 10.0f

.field private static final TIME_STAMP_3:F = 33.076923f

.field private static final TIME_STAMP_4:F = 60.0f

.field private static final TIME_STAMP_TMP:F = 23.076923f

.field private static final TOTAL_ANGLE:I = 0x168

.field private static final TOTAL_FRAMES_PER_PERIOD:I = 0x3c

.field private static final WHOLE_CENTRE_X_INIT:F = 0.0f

.field private static final WHOLE_CENTRE_Y_INIT:F = 0.0f

.field private static final WHOLE_DETAIL_CENTRE_RATIO:F = 2.0f

.field private static final WHOLE_DETAIL_RADIUS_RATIO:F = 0.1f

.field private static final WHOLE_RADIUS_INIT:F


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mColor:[I

.field private mDetailRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mProgress:F

.field private mWholeCenterX:F

.field private mWholeCenterY:F

.field private mWholeRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->GRADIENT_ANGLE:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "size"    # I

    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x99999a

    aput v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;-><init>(Landroid/content/res/Resources;I[I)V

    .line 136
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/res/Resources;I[I)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "size"    # I
    .param p3, "color"    # [I

    .line 139
    const/16 v0, 0xfa

    invoke-static {p2, v0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->min(II)I

    move-result v1

    .line 140
    invoke-static {p2, v0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->min(II)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 139
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/HwLoadingDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mProgress:F

    .line 120
    iput v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    .line 126
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 142
    invoke-direct {p0, p3}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->init([I)V

    .line 144
    return-void
.end method

.method private calculateDeltaRadiusOrAlpha(FZ)D
    .locals 6
    .param p1, "frame"    # F
    .param p2, "type"    # Z

    .line 256
    const/high16 v0, 0x42700000    # 60.0f

    rem-float/2addr p1, v0

    .line 257
    const-wide/16 v1, 0x0

    .line 258
    .local v1, "deltaRadius":D
    const/16 v3, 0x80

    .line 259
    .local v3, "mAlpha":I
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    const/high16 v5, 0x41200000    # 10.0f

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v5

    if-gez v4, :cond_0

    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, p1

    invoke-virtual {v0, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    float-to-double v1, v0

    goto :goto_0

    .line 263
    :cond_0
    cmpl-float v4, p1, v5

    const v5, 0x42044ec5

    if-ltz v4, :cond_1

    cmpg-float v4, p1, v5

    if-gez v4, :cond_1

    .line 265
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const v4, -0x42ce81b5

    mul-float/2addr v4, p1

    const v5, 0x3fb77778

    add-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    float-to-double v1, v0

    goto :goto_0

    .line 267
    :cond_1
    cmpl-float v4, p1, v5

    if-ltz v4, :cond_2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 268
    const-wide/16 v1, 0x0

    .line 270
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 271
    return-wide v1

    .line 273
    :cond_3
    int-to-double v4, v3

    mul-double/2addr v4, v1

    double-to-int v0, v4

    .line 274
    .end local v3    # "mAlpha":I
    .local v0, "mAlpha":I
    int-to-double v3, v0

    return-wide v3
.end method

.method private getHalfCanvasWidthHeightMin()F
    .locals 4

    .line 200
    invoke-virtual {p0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 201
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterX:F

    .line 202
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterY:F

    .line 203
    iget v1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterX:F

    iget v2, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterY:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterX:F

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterY:F

    :goto_0
    return v1
.end method

.method private varargs init([I)V
    .locals 3
    .param p1, "color"    # [I

    .line 161
    const-string v0, "progress"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 162
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPaint:Landroid/graphics/Paint;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterX:F

    .line 170
    iput v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterY:F

    .line 172
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->setColor([I)V

    .line 177
    invoke-direct {p0, v0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->setProgress(F)V

    .line 178
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static min(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 156
    if-gt p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 280
    iput p1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mProgress:F

    .line 281
    invoke-virtual {p0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->invalidateSelf()V

    .line 282
    return-void
.end method

.method private setVariousRadius()V
    .locals 2

    .line 188
    invoke-direct {p0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->getHalfCanvasWidthHeightMin()F

    move-result v0

    const v1, 0x3f31c71c

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    .line 190
    iget v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mDetailRadius:F

    .line 191
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 218
    iget v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mProgress:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mProgress:F

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 223
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    .line 225
    iget v3, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mProgress:F

    mul-float/2addr v3, v1

    mul-int/lit8 v4, v2, 0x5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 226
    .local v3, "mFrameTmp":F
    iget-object v4, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x7f

    invoke-direct {p0, v3, v0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->calculateDeltaRadiusOrAlpha(FZ)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    const/16 v4, -0x1e

    mul-int/2addr v4, v2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 230
    .local v4, "angle":D
    iget v6, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    float-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 231
    .local v6, "cx":F
    iget v7, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    float-to-double v7, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-float v7, v7

    .line 232
    .local v7, "cy":F
    iget v8, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mDetailRadius:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x1

    invoke-direct {p0, v3, v12}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->calculateDeltaRadiusOrAlpha(FZ)D

    move-result-wide v12

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-float v8, v8

    .line 233
    .local v8, "radius":F
    iget v9, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterX:F

    add-float/2addr v9, v6

    iget v10, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeCenterY:F

    add-float/2addr v10, v7

    iget-object v11, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v8, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 223
    .end local v3    # "mFrameTmp":F
    .end local v4    # "angle":D
    .end local v6    # "cx":F
    .end local v7    # "cy":F
    .end local v8    # "radius":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 239
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 210
    invoke-super {p0, p1}, Landroid/graphics/drawable/HwLoadingDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 211
    invoke-direct {p0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->setVariousRadius()V

    .line 212
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mColor:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/HwLoadingDrawableImpl;->setColor([I)V

    .line 213
    return-void
.end method

.method public varargs setColor([I)V
    .locals 12
    .param p1, "color"    # [I

    .line 316
    iput-object p1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mColor:[I

    .line 317
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mColor:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mColor:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mColor:[I

    array-length v0, v0

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 320
    sget-wide v2, Landroid/graphics/drawable/HwLoadingDrawableImpl;->GRADIENT_ANGLE:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 321
    .local v0, "cosValue":F
    sget-wide v2, Landroid/graphics/drawable/HwLoadingDrawableImpl;->GRADIENT_ANGLE:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 322
    .local v2, "sinValue":F
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v3, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    sub-float v4, v1, v0

    mul-float/2addr v4, v3

    iget v3, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    add-float v5, v1, v2

    mul-float/2addr v5, v3

    iget v3, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    add-float v6, v1, v0

    mul-float/2addr v6, v3

    iget v3, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mWholeRadius:F

    sub-float/2addr v1, v2

    mul-float v7, v3, v1

    iget-object v8, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mColor:[I

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v1, v11

    .line 325
    .local v1, "linearGradient":Landroid/graphics/LinearGradient;
    iget-object v3, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 326
    .end local v0    # "cosValue":F
    .end local v1    # "linearGradient":Landroid/graphics/LinearGradient;
    .end local v2    # "sinValue":F
    goto :goto_1

    .line 327
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mColor:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 318
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mPaint:Landroid/graphics/Paint;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    :goto_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 292
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/graphics/drawable/HwLoadingDrawableImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 301
    :cond_0
    return-void
.end method
