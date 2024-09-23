.class public Landroid/view/ButtonWindowTextView;
.super Landroid/widget/TextView;
.source "ButtonWindowTextView.java"


# instance fields
.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ButtonWindowTextView;->mOrientation:I

    .line 34
    iput p2, p0, Landroid/view/ButtonWindowTextView;->mOrientation:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ButtonWindowTextView;->mOrientation:I

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 62
    iget v0, p0, Landroid/view/ButtonWindowTextView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ButtonWindowTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ButtonWindowTextView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ButtonWindowTextView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 68
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 43
    iget v0, p0, Landroid/view/ButtonWindowTextView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 44
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 45
    invoke-virtual {p0}, Landroid/view/ButtonWindowTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ButtonWindowTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ButtonWindowTextView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 49
    :goto_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 53
    iget v0, p0, Landroid/view/ButtonWindowTextView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 54
    sub-int v0, p4, p2

    add-int/2addr v0, p1

    sub-int v1, p3, p1

    add-int/2addr v1, p2

    invoke-super {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
