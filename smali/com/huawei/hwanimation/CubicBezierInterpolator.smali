.class public Lcom/huawei/hwanimation/CubicBezierInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "CubicBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final DEBUG:Z = false

.field static final MAX_RESOLUTION:J = 0xfa0L

.field static final SEARCH_STEP:F = 2.5E-4f

.field private static final TAG:Ljava/lang/String; = "CubicBezierInterpolator"


# instance fields
.field mControlPoint1x:F

.field mControlPoint1y:F

.field mControlPoint2x:F

.field mControlPoint2y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "cx1"    # F
    .param p2, "cy1"    # F
    .param p3, "cx2"    # F
    .param p4, "cy2"    # F

    .line 58
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    iput v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    .line 48
    iput v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    iput v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    .line 59
    iput p1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    .line 60
    iput p2, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    .line 61
    iput p3, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    .line 62
    iput p4, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/huawei/hwanimation/CubicBezierInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    iput v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    .line 48
    iput v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    iput v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 85
    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p2, p3, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->parseValue(Landroid/util/TypedValue;)F

    move-result v1

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    .line 92
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->parseValue(Landroid/util/TypedValue;)F

    move-result v1

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->parseValue(Landroid/util/TypedValue;)F

    move-result v1

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    .line 96
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->parseValue(Landroid/util/TypedValue;)F

    move-result v1

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method

.method private getCubicBezierX(F)F
    .locals 4
    .param p1, "t"    # F

    .line 143
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    sub-float v3, v0, p1

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v3, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, p1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    iget v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method private parseValue(Landroid/util/TypedValue;)F
    .locals 3
    .param p1, "value"    # Landroid/util/TypedValue;

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    .local v0, "data":F
    if-nez p1, :cond_0

    .line 108
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 110
    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 111
    iget v1, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    .line 112
    return v0

    .line 113
    :cond_1
    iget v1, p1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 115
    return v0

    .line 116
    :cond_2
    iget v1, p1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    iget v1, p1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_3

    .line 118
    iget v1, p1, Landroid/util/TypedValue;->data:I

    int-to-float v0, v1

    .line 119
    return v0

    .line 122
    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method binarySearch(F)J
    .locals 10
    .param p1, "key"    # F

    .line 164
    const-wide/16 v0, 0x0

    .line 165
    .local v0, "low":J
    const-wide/16 v2, 0xfa0

    .line 170
    .local v2, "high":J
    :goto_0
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 171
    add-long v4, v0, v2

    const/4 v6, 0x1

    ushr-long/2addr v4, v6

    .line 172
    .local v4, "middle":J
    const v6, 0x3983126f    # 2.5E-4f

    long-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->getCubicBezierX(F)F

    move-result v6

    .line 174
    .local v6, "approximation":F
    cmpg-float v7, v6, p1

    const-wide/16 v8, 0x1

    if-gez v7, :cond_0

    .line 175
    add-long v0, v4, v8

    goto :goto_0

    .line 176
    :cond_0
    cmpl-float v7, v6, p1

    if-lez v7, :cond_1

    .line 177
    sub-long v2, v4, v8

    goto :goto_0

    .line 179
    :cond_1
    return-wide v4

    .line 183
    .end local v4    # "middle":J
    .end local v6    # "approximation":F
    :cond_2
    return-wide v0
.end method

.method protected getCubicBezierY(F)F
    .locals 4
    .param p1, "t"    # F

    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    sub-float v3, v0, p1

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v3, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, p1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    iget v0, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .line 133
    invoke-virtual {p0, p1}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->binarySearch(F)J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3983126f    # 2.5E-4f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->getCubicBezierY(F)F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CubicBezierInterpolator"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "  mControlPoint1x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 189
    const-string v1, ", mControlPoint1y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, ", mControlPoint2x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 191
    const-string v1, ", mControlPoint2y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
