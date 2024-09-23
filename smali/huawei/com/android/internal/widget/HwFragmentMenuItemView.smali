.class public Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;
.super Landroid/widget/TextView;
.source "HwFragmentMenuItemView.java"


# static fields
.field public static final ALPHA_DISABLE:F = 0.3f

.field public static final ALPHA_NORMAL:F = 1.0f

.field public static final ALPHA_PRESSED:F = 0.5f

.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final MENU_TEXT_SIZE:I = 0x9


# instance fields
.field private mDensity:F

.field mMaxIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    .line 40
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->initIconSize()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    .line 34
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->initIconSize()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    .line 28
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->initIconSize()V

    .line 29
    return-void
.end method

.method private initIconSize()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mDensity:F

    .line 45
    iget v0, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mDensity:F

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    .line 46
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 118
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasText()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 56
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setAlpha(F)V

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setAlpha(F)V

    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setAlpha(F)V

    .line 65
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setActivated(Z)V

    .line 52
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 86
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 87
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 74
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->hasText()Z

    move-result v0

    .line 75
    .local v0, "textVisible":Z
    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mDensity:F

    const/high16 v3, 0x41100000    # 9.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 77
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getPaddingBottom()I

    move-result v4

    .line 76
    invoke-virtual {p0, v1, v2, v3, v4}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setPadding(IIII)V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 80
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 109
    if-nez p1, :cond_0

    .line 110
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 90
    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 92
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 93
    .local v1, "height":I
    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    if-le v0, v2, :cond_0

    .line 94
    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 95
    .local v2, "scale":F
    iget v0, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    .line 96
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 98
    .end local v2    # "scale":F
    :cond_0
    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    if-le v1, v2, :cond_1

    .line 99
    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 100
    .restart local v2    # "scale":F
    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->mMaxIconSize:I

    .line 101
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 103
    .end local v2    # "scale":F
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v2, v2}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 106
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_2
    return-void
.end method
