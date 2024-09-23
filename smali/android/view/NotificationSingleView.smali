.class public Landroid/view/NotificationSingleView;
.super Landroid/view/NotificationHeaderView;
.source "NotificationSingleView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAppName:Landroid/view/View;

.field private final mChildMinWidth:I

.field private mEmptyView:Landroid/widget/TextView;

.field private mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mText:Lcom/android/internal/widget/ImageFloatingTextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    invoke-virtual {p0}, Landroid/view/NotificationSingleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/NotificationSingleView;->mChildMinWidth:I

    .line 51
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 163
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationSingleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/view/NotificationSingleView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 168
    invoke-super {p0, p1}, Landroid/view/NotificationHeaderView;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/view/NotificationHeaderView;->onFinishInflate()V

    .line 56
    const v0, 0x10201c3

    invoke-virtual {p0, v0}, Landroid/view/NotificationSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationSingleView;->mAppName:Landroid/view/View;

    .line 57
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Landroid/view/NotificationSingleView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 58
    const v0, 0x102045a

    invoke-virtual {p0, v0}, Landroid/view/NotificationSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ImageFloatingTextView;

    iput-object v0, p0, Landroid/view/NotificationSingleView;->mText:Lcom/android/internal/widget/ImageFloatingTextView;

    .line 59
    const v0, 0x1020251

    invoke-virtual {p0, v0}, Landroid/view/NotificationSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v0, p0, Landroid/view/NotificationSingleView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 60
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/NotificationSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/view/NotificationSingleView;->mTitle:Landroid/widget/TextView;

    .line 62
    const v0, 0x2100184

    invoke-virtual {p0, v0}, Landroid/view/NotificationSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/view/NotificationSingleView;->mEmptyView:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 135
    invoke-virtual {p0}, Landroid/view/NotificationSingleView;->getPaddingStart()I

    move-result v0

    .line 136
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/view/NotificationSingleView;->getChildCount()I

    move-result v1

    .line 137
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/view/NotificationSingleView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/NotificationSingleView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/NotificationSingleView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 138
    .local v2, "ownHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 139
    move-object v4, p0

    invoke-virtual {v4, v3}, Landroid/view/NotificationSingleView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 140
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 141
    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 144
    .local v6, "childHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 145
    .local v7, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v8

    add-int/2addr v0, v8

    .line 146
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v0

    .line 147
    .local v8, "right":I
    invoke-virtual {v4}, Landroid/view/NotificationSingleView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    sub-int v10, v2, v6

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 148
    .local v9, "top":I
    add-int v10, v9, v6

    .line 149
    .local v10, "bottom":I
    move v11, v0

    .line 150
    .local v11, "layoutLeft":I
    move v12, v8

    .line 151
    .local v12, "layoutRight":I
    invoke-virtual {v4}, Landroid/view/NotificationSingleView;->getLayoutDirection()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 152
    move v13, v11

    .line 153
    .local v13, "ltrLeft":I
    invoke-virtual {v4}, Landroid/view/NotificationSingleView;->getWidth()I

    move-result v14

    sub-int v11, v14, v12

    .line 154
    invoke-virtual {v4}, Landroid/view/NotificationSingleView;->getWidth()I

    move-result v14

    sub-int v12, v14, v13

    .line 156
    .end local v13    # "ltrLeft":I
    :cond_1
    invoke-virtual {v5, v11, v9, v12, v10}, Landroid/view/View;->layout(IIII)V

    .line 157
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v13

    add-int/2addr v8, v13

    .line 138
    .end local v0    # "left":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childHeight":I
    .end local v7    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "top":I
    .end local v10    # "bottom":I
    .end local v11    # "layoutLeft":I
    .end local v12    # "layoutRight":I
    .local v8, "left":I
    move v0, v8

    .end local v8    # "left":I
    .restart local v0    # "left":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "i":I
    :cond_2
    move-object v4, p0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object v0, p0

    .line 68
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 69
    .local v1, "givenWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 70
    .local v2, "givenHeight":I
    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 72
    .local v4, "wrapContentWidthSpec":I
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 74
    .local v5, "wrapContentHeightSpec":I
    invoke-virtual {v0}, Landroid/view/NotificationSingleView;->getPaddingStart()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/NotificationSingleView;->getPaddingEnd()I

    move-result v7

    add-int/2addr v6, v7

    .line 75
    .local v6, "totalWidth":I
    invoke-virtual {v0}, Landroid/view/NotificationSingleView;->getChildCount()I

    move-result v7

    .line 76
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0x8

    if-ge v8, v7, :cond_1

    .line 77
    invoke-virtual {v0, v8}, Landroid/view/NotificationSingleView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 78
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_0

    .line 80
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 83
    .local v9, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v4, v11, v12}, Landroid/view/NotificationSingleView;->getChildMeasureSpec(III)I

    move-result v11

    .line 85
    .local v11, "childWidthSpec":I
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v12, v13}, Landroid/view/NotificationSingleView;->getChildMeasureSpec(III)I

    move-result v12

    .line 87
    .local v12, "childHeightSpec":I
    invoke-virtual {v10, v11, v12}, Landroid/view/View;->measure(II)V

    .line 88
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v6, v13

    .line 76
    .end local v9    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childWidthSpec":I
    .end local v12    # "childHeightSpec":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 91
    .end local v8    # "i":I
    :cond_1
    if-ge v6, v1, :cond_3

    .line 92
    sub-int v3, v1, v6

    .line 95
    .local v3, "overFlow":I
    iget-object v8, v0, Landroid/view/NotificationSingleView;->mEmptyView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 96
    iget-object v8, v0, Landroid/view/NotificationSingleView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 97
    .local v8, "emptyWidth":I
    if-lez v3, :cond_2

    iget-object v10, v0, Landroid/view/NotificationSingleView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-eq v10, v9, :cond_2

    .line 98
    add-int v9, v3, v8

    .line 99
    .local v9, "newSize":I
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 100
    .local v10, "childWidthSpec":I
    iget-object v11, v0, Landroid/view/NotificationSingleView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v11, v10, v5}, Landroid/widget/TextView;->measure(II)V

    .line 105
    .end local v3    # "overFlow":I
    .end local v8    # "emptyWidth":I
    .end local v9    # "newSize":I
    .end local v10    # "childWidthSpec":I
    :cond_2
    goto/16 :goto_5

    .line 106
    :cond_3
    sub-int v8, v6, v1

    .line 108
    .local v8, "overFlow":I
    iget-object v10, v0, Landroid/view/NotificationSingleView;->mAppName:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 109
    .local v10, "appWidth":I
    if-lez v8, :cond_5

    iget-object v11, v0, Landroid/view/NotificationSingleView;->mAppName:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_5

    iget v11, v0, Landroid/view/NotificationSingleView;->mChildMinWidth:I

    if-le v10, v11, :cond_5

    .line 110
    iget v11, v0, Landroid/view/NotificationSingleView;->mChildMinWidth:I

    sub-int v11, v10, v11

    if-le v11, v8, :cond_4

    move v11, v8

    goto :goto_2

    :cond_4
    iget v11, v0, Landroid/view/NotificationSingleView;->mChildMinWidth:I

    sub-int v11, v10, v11

    :goto_2
    sub-int v11, v10, v11

    .line 111
    .local v11, "newSize":I
    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 112
    .local v12, "childWidthSpec":I
    iget-object v13, v0, Landroid/view/NotificationSingleView;->mAppName:Landroid/view/View;

    invoke-virtual {v13, v12, v5}, Landroid/view/View;->measure(II)V

    .line 113
    sub-int v13, v10, v11

    sub-int/2addr v8, v13

    .line 115
    .end local v11    # "newSize":I
    .end local v12    # "childWidthSpec":I
    :cond_5
    if-lez v8, :cond_7

    iget-object v11, v0, Landroid/view/NotificationSingleView;->mText:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v11}, Lcom/android/internal/widget/ImageFloatingTextView;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_7

    .line 116
    iget-object v11, v0, Landroid/view/NotificationSingleView;->mText:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v11}, Lcom/android/internal/widget/ImageFloatingTextView;->getMeasuredWidth()I

    move-result v11

    .line 117
    .local v11, "textWidth":I
    iget v12, v0, Landroid/view/NotificationSingleView;->mChildMinWidth:I

    sub-int v12, v11, v12

    if-le v12, v8, :cond_6

    move v12, v8

    goto :goto_3

    :cond_6
    iget v12, v0, Landroid/view/NotificationSingleView;->mChildMinWidth:I

    sub-int v12, v11, v12

    :goto_3
    sub-int v12, v11, v12

    .line 118
    .local v12, "newSize":I
    invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 119
    .local v13, "childWidthSpec":I
    iget-object v14, v0, Landroid/view/NotificationSingleView;->mText:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v14, v13, v5}, Lcom/android/internal/widget/ImageFloatingTextView;->measure(II)V

    .line 120
    sub-int v14, v11, v12

    sub-int/2addr v8, v14

    .line 122
    .end local v11    # "textWidth":I
    .end local v12    # "newSize":I
    .end local v13    # "childWidthSpec":I
    :cond_7
    if-lez v8, :cond_9

    iget-object v11, v0, Landroid/view/NotificationSingleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_9

    .line 123
    iget-object v9, v0, Landroid/view/NotificationSingleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    .line 124
    .local v9, "titleWidth":I
    iget v11, v0, Landroid/view/NotificationSingleView;->mChildMinWidth:I

    sub-int v11, v9, v11

    if-le v11, v8, :cond_8

    move v11, v8

    goto :goto_4

    :cond_8
    iget v11, v0, Landroid/view/NotificationSingleView;->mChildMinWidth:I

    sub-int v11, v9, v11

    :goto_4
    sub-int v11, v9, v11

    .line 125
    .local v11, "newSize":I
    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 126
    .local v3, "childWidthSpec":I
    iget-object v12, v0, Landroid/view/NotificationSingleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v12, v3, v5}, Landroid/widget/TextView;->measure(II)V

    .line 127
    nop

    .line 130
    .end local v3    # "childWidthSpec":I
    .end local v8    # "overFlow":I
    .end local v9    # "titleWidth":I
    .end local v10    # "appWidth":I
    .end local v11    # "newSize":I
    :cond_9
    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/view/NotificationSingleView;->setMeasuredDimension(II)V

    .line 131
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 173
    invoke-super {p0, p1}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iput-object p1, p0, Landroid/view/NotificationSingleView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 175
    iget-object v0, p0, Landroid/view/NotificationSingleView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-object v1, p0, Landroid/view/NotificationSingleView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method
