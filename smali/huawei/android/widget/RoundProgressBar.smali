.class public Lhuawei/android/widget/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhuawei/android/widget/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhuawei/android/widget/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    .line 37
    const-string v0, "#7fFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhuawei/android/widget/RoundProgressBar;->roundColor:I

    .line 38
    const-string v0, "#ff27c0c6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhuawei/android/widget/RoundProgressBar;->roundProgressColor:I

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lhuawei/android/widget/RoundProgressBar;->roundWidth:I

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lhuawei/android/widget/RoundProgressBar;->max:I

    .line 42
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 46
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/widget/RoundProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 49
    .local v1, "centreH":I
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/widget/RoundProgressBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 50
    .local v2, "centreW":I
    iget v3, v0, Lhuawei/android/widget/RoundProgressBar;->roundWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    .line 51
    .local v3, "radiusH":I
    iget v4, v0, Lhuawei/android/widget/RoundProgressBar;->roundWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    .line 52
    .local v4, "radiusW":I
    iget-object v5, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v6, v0, Lhuawei/android/widget/RoundProgressBar;->roundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v5, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v5, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v6, v0, Lhuawei/android/widget/RoundProgressBar;->roundWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v5, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v5, Landroid/graphics/RectF;

    sub-int v6, v2, v4

    int-to-float v6, v6

    sub-int v7, v1, v3

    int-to-float v7, v7

    add-int v8, v2, v4

    int-to-float v8, v8

    add-int v9, v1, v3

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 58
    .local v5, "oval":Landroid/graphics/RectF;
    iget-object v6, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 60
    iget-object v6, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v8, v0, Lhuawei/android/widget/RoundProgressBar;->roundWidth:I

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v6, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v8, v0, Lhuawei/android/widget/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v6, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget v6, v0, Lhuawei/android/widget/RoundProgressBar;->progress:I

    const/16 v8, 0x168

    mul-int/2addr v8, v6

    int-to-float v6, v8

    iget v8, v0, Lhuawei/android/widget/RoundProgressBar;->max:I

    int-to-float v8, v8

    div-float v13, v6, v8

    iget-object v15, v0, Lhuawei/android/widget/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/4 v14, 0x0

    move-object v10, v7

    move-object v11, v5

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 69
    iget v0, p0, Lhuawei/android/widget/RoundProgressBar;->max:I

    if-le p1, v0, :cond_0

    .line 70
    iget p1, p0, Lhuawei/android/widget/RoundProgressBar;->max:I

    .line 72
    :cond_0
    iget v0, p0, Lhuawei/android/widget/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_1

    .line 73
    iput p1, p0, Lhuawei/android/widget/RoundProgressBar;->progress:I

    .line 74
    invoke-virtual {p0}, Lhuawei/android/widget/RoundProgressBar;->postInvalidate()V

    .line 76
    :cond_1
    return-void
.end method
