.class public Lhuawei/com/android/internal/app/HwButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "HwButtonBarLayout.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_TEXT_SIZE_IN_SP:I = 0xf

.field private static final MIN_TEXT_SIZE_IN_SP:I = 0x9

.field private static final TAG:Ljava/lang/String; = "HwButtonBarLayout"


# instance fields
.field private lastLayoutWidth:I

.field private maxTextSizeInSp:I

.field private minTextSizeInSp:I

.field private onMeasureCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->onMeasureCnt:I

    .line 49
    iput v0, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->lastLayoutWidth:I

    .line 54
    const v0, 0x20e0105

    const/16 v1, 0x9

    invoke-static {p1, v0, v1}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getDimensionFromRes(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->minTextSizeInSp:I

    .line 55
    const v0, 0x20e012a

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getDimensionFromRes(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->maxTextSizeInSp:I

    .line 56
    return-void
.end method

.method private static getDimensionFromRes(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "defVal"    # I

    .line 59
    move v0, p2

    .line 60
    .local v0, "val":I
    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v2

    .line 63
    .local v1, "floatVal":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 75
    .end local v1    # "floatVal":F
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    goto :goto_1

    .line 67
    :catch_1
    move-exception v1

    goto :goto_0

    .line 77
    :cond_0
    :goto_1
    return v0
.end method

.method private getMinTextSize()F
    .locals 7

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "minTextSize":F
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getChildCount()I

    move-result v1

    .line 85
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 86
    invoke-virtual {p0, v2}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 88
    goto :goto_1

    .line 91
    :cond_0
    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 92
    move-object v4, v3

    check-cast v4, Landroid/widget/Button;

    .line 93
    .local v4, "btn":Landroid/widget/Button;
    invoke-virtual {v4}, Landroid/widget/Button;->getTextSize()F

    move-result v5

    .line 95
    .local v5, "btnTextSize":F
    cmpg-float v6, v5, v0

    if-gez v6, :cond_1

    .line 96
    move v0, v5

    goto :goto_1

    .line 97
    :cond_1
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-nez v6, :cond_2

    .line 98
    move v0, v5

    .line 85
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "btn":Landroid/widget/Button;
    .end local v5    # "btnTextSize":F
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method private setStacked(Z)V
    .locals 3
    .param p1, "stacked"    # Z

    .line 223
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->isStacked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 224
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->setOrientation(I)V

    .line 228
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->setShowDividers(I)V

    .line 231
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getChildCount()I

    move-result v0

    .line 232
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 233
    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 232
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 236
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, p1}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->restoreButtonBar(Z)V

    .line 237
    return-void
.end method

.method private unifyBtnTextSize(F)V
    .locals 6
    .param p1, "uniTextSize"    # F

    .line 109
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getChildCount()I

    move-result v0

    .line 112
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 113
    invoke-virtual {p0, v2}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 115
    goto :goto_1

    .line 118
    :cond_0
    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 119
    move-object v4, v3

    check-cast v4, Landroid/widget/Button;

    .line 120
    .local v4, "btn":Landroid/widget/Button;
    invoke-virtual {v4}, Landroid/widget/Button;->getTextSize()F

    move-result v5

    .line 122
    .local v5, "btnTextSize":F
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    .line 123
    invoke-virtual {v4, v1, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 112
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "btn":Landroid/widget/Button;
    .end local v5    # "btnTextSize":F
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public isStacked()Z
    .locals 2

    .line 240
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 172
    .local v0, "layoutWidth":I
    iget v1, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->lastLayoutWidth:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->setStacked(Z)V

    .line 177
    :cond_0
    iput v0, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->lastLayoutWidth:I

    .line 179
    const/4 v1, 0x0

    .line 185
    .local v1, "needsRemeasure":Z
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->isStacked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_1

    .line 186
    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 188
    .local v2, "initialWidthMeasureSpec":I
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "initialWidthMeasureSpec":I
    :cond_1
    move v2, p1

    .line 193
    .restart local v2    # "initialWidthMeasureSpec":I
    :goto_0
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 195
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->isStacked()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 196
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v3

    .line 197
    .local v3, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    .line 199
    .local v5, "measuredWidthState":I
    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_2

    .line 200
    invoke-direct {p0, v4}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->setStacked(Z)V

    .line 202
    const/4 v1, 0x1

    .line 207
    .end local v3    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    :cond_2
    if-eqz v1, :cond_3

    .line 208
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 211
    :cond_3
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->isStacked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    invoke-direct {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getMinTextSize()F

    move-result v3

    invoke-direct {p0, v3}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->unifyBtnTextSize(F)V

    .line 215
    :cond_4
    iget v3, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->onMeasureCnt:I

    add-int/2addr v3, v4

    iput v3, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->onMeasureCnt:I

    .line 219
    return-void
.end method

.method public restoreButtonBar(Z)V
    .locals 9
    .param p1, "stacked"    # Z

    .line 134
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getChildCount()I

    move-result v0

    .line 136
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 137
    invoke-virtual {p0, v2}, Lhuawei/com/android/internal/app/HwButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 138
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 139
    goto :goto_1

    .line 142
    :cond_0
    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 143
    move-object v4, v3

    check-cast v4, Landroid/widget/Button;

    .line 146
    .local v4, "btn":Landroid/widget/Button;
    const/4 v5, 0x2

    if-eqz p1, :cond_1

    .line 147
    iget v6, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->minTextSizeInSp:I

    iget v7, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->maxTextSizeInSp:I

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    .line 151
    iget v6, p0, Lhuawei/com/android/internal/app/HwButtonBarLayout;->maxTextSizeInSp:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 136
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "btn":Landroid/widget/Button;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
