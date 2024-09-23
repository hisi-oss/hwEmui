.class public Lhuawei/android/widget/HwFastScroller;
.super Landroid/widget/FastScrollerEx;
.source "HwFastScroller.java"


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScrollerEx;-><init>(Landroid/widget/AbsListView;I)V

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic getWidth()I
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/FastScrollerEx;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isAlwaysShowEnabled()Z
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/FastScrollerEx;->isAlwaysShowEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnabled()Z
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/FastScrollerEx;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, "isPreviewImage":Z
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 76
    const/4 v3, 0x1

    .line 81
    :cond_0
    if-nez v2, :cond_1

    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, "marginLeft":I
    const/4 v5, 0x0

    .line 84
    .local v5, "marginTop":I
    const/4 v6, 0x0

    .local v6, "marginRight":I
    goto :goto_0

    .line 86
    .end local v4    # "marginLeft":I
    .end local v5    # "marginTop":I
    .end local v6    # "marginRight":I
    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 87
    .restart local v4    # "marginLeft":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 88
    .restart local v5    # "marginTop":I
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 92
    .restart local v6    # "marginRight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/widget/HwFastScroller;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 94
    .local v7, "container":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 95
    .local v8, "containerWidth":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 97
    .local v9, "containerHeight":I
    if-nez p2, :cond_2

    .line 98
    move v10, v8

    .local v10, "maxWidth":I
    :goto_1
    goto :goto_2

    .line 100
    .end local v10    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/widget/HwFastScroller;->getLayoutFromRight()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v10, v8, v10

    .line 107
    .restart local v10    # "maxWidth":I
    :goto_2
    sub-int v11, v10, v4

    sub-int/2addr v11, v6

    .line 108
    .local v11, "adjMaxWidth":I
    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 109
    .local v12, "widthMeasureSpec":I
    const/4 v13, 0x0

    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 110
    .local v13, "heightMeasureSpec":I
    invoke-virtual {v0, v12, v13}, Landroid/view/View;->measure(II)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 114
    .local v14, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 118
    .local v15, "height":I
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/widget/HwFastScroller;->getLayoutFromRight()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 121
    if-eqz v3, :cond_4

    .line 122
    div-int/lit8 v16, v8, 0x2

    div-int/lit8 v17, v14, 0x2

    add-int v16, v16, v17

    .line 123
    .local v16, "tmpRight":I
    sub-int v17, v16, v14

    .local v17, "tmpLeft":I
    goto :goto_4

    .line 125
    .end local v16    # "tmpRight":I
    .end local v17    # "tmpLeft":I
    :cond_4
    if-nez p2, :cond_5

    iget v2, v7, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_3
    sub-int v16, v2, v6

    .line 126
    .restart local v16    # "tmpRight":I
    sub-int v17, v16, v14

    .restart local v17    # "tmpLeft":I
    :goto_4
    move/from16 v2, v17

    .line 128
    .end local v17    # "tmpLeft":I
    .local v2, "tmpLeft":I
    nop

    .line 129
    .local v17, "left":I
    nop

    .end local v2    # "tmpLeft":I
    .end local v16    # "tmpRight":I
    move/from16 v2, v16

    .line 130
    .local v2, "right":I
    goto :goto_5

    .line 132
    .end local v2    # "right":I
    .end local v17    # "left":I
    :cond_6
    if-eqz v3, :cond_7

    .line 133
    div-int/lit8 v2, v8, 0x2

    div-int/lit8 v16, v14, 0x2

    add-int v2, v2, v16

    .line 134
    .restart local v2    # "right":I
    sub-int v17, v2, v14

    .line 137
    .local v1, "left":I
    :goto_5
    move/from16 v1, v17

    goto :goto_7

    .line 136
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_7
    if-nez p2, :cond_8

    iget v2, v7, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_6
    add-int v17, v2, v4

    .line 137
    .restart local v17    # "left":I
    add-int v2, v17, v14

    goto :goto_5

    .line 145
    .end local v17    # "left":I
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    :goto_7
    if-eqz v3, :cond_9

    .line 146
    div-int/lit8 v16, v9, 0x2

    div-int/lit8 v17, v15, 0x2

    sub-int v16, v16, v17

    .line 147
    .local v16, "tmpTop":I
    add-int v17, v16, v15

    .local v17, "tmpBottom":I
    goto :goto_8

    .line 149
    .end local v16    # "tmpTop":I
    .end local v17    # "tmpBottom":I
    :cond_9
    move/from16 v16, v5

    .line 150
    .restart local v16    # "tmpTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v16, v17

    .line 152
    .restart local v17    # "tmpBottom":I
    :goto_8
    move/from16 v18, v16

    .line 153
    .local v18, "top":I
    move/from16 v19, v17

    .line 154
    .local v19, "bottom":I
    move-object/from16 v0, p4

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    .end local v18    # "top":I
    .end local v19    # "bottom":I
    .local v3, "top":I
    .local v4, "bottom":I
    .local v20, "isPreviewImage":Z
    .local v21, "marginLeft":I
    return-void
.end method

.method public bridge synthetic onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FastScrollerEx;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FastScrollerEx;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onItemCountChanged(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/FastScrollerEx;->onItemCountChanged(II)V

    return-void
.end method

.method public bridge synthetic onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;
    .param p2, "x1"    # I

    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/FastScrollerEx;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onScroll(III)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FastScrollerEx;->onScroll(III)V

    return-void
.end method

.method public bridge synthetic onSectionsChanged()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/widget/FastScrollerEx;->onSectionsChanged()V

    return-void
.end method

.method public bridge synthetic onSizeChanged(IIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FastScrollerEx;->onSizeChanged(IIII)V

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FastScrollerEx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/widget/FastScrollerEx;->remove()V

    return-void
.end method

.method public bridge synthetic setAlwaysShow(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FastScrollerEx;->setAlwaysShow(Z)V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FastScrollerEx;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setScrollBarStyle(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FastScrollerEx;->setScrollBarStyle(I)V

    return-void
.end method

.method public bridge synthetic setScrollbarPosition(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FastScrollerEx;->setScrollbarPosition(I)V

    return-void
.end method

.method public bridge synthetic setStyle(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FastScrollerEx;->setStyle(I)V

    return-void
.end method

.method protected setThumbPos(F)V
    .locals 9
    .param p1, "position"    # F

    .line 165
    invoke-virtual {p0}, Lhuawei/android/widget/HwFastScroller;->getTrackImage()Landroid/widget/ImageView;

    move-result-object v0

    .line 166
    .local v0, "trackImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lhuawei/android/widget/HwFastScroller;->getThumbImage()Landroid/widget/ImageView;

    move-result-object v1

    .line 168
    .local v1, "thumbImage":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 169
    .local v2, "min":F
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    .line 170
    .local v3, "max":F
    move v4, v2

    .line 171
    .local v4, "offset":F
    sub-float v5, v3, v2

    .line 172
    .local v5, "range":F
    mul-float v6, p1, v5

    add-float/2addr v6, v4

    .line 173
    .local v6, "thumbMiddle":F
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v7, v6, v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 174
    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/widget/FastScrollerEx;->stop()V

    return-void
.end method

.method public bridge synthetic updateLayout()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/widget/FastScrollerEx;->updateLayout()V

    return-void
.end method
