.class public Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;
.super Lcom/android/internal/widget/NotificationActionListLayout;
.source "HwNotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final MULTIPLE_LINE:I = 0x2

.field private static final SINGLE_LINE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HwNotiActionListLayout"


# instance fields
.field private mHasCompoundDrawble:Z

.field private mLeftRightPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->mHasCompoundDrawble:Z

    .line 48
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->mLeftRightPadding:I

    .line 50
    return-void
.end method

.method private calculateCompoundDrawableWidth(Landroid/widget/TextView;)I
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 201
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 202
    const-string v1, "HwNotiActionListLayout"

    const-string v2, "calculateCompoundDrawableWidth, textview is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v0

    .line 205
    :cond_0
    const/4 v1, 0x0

    .line 206
    .local v1, "compoundDrawableWidth":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 208
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    .line 209
    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    .line 212
    :cond_1
    const/4 v0, 0x2

    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 213
    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    .line 215
    :cond_2
    return v1
.end method

.method private getFirstWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "rawText"    # Ljava/lang/String;

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "HwNotiActionListLayout"

    const-string v1, "getFirstWord, input text is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, ""

    return-object v0

    .line 232
    :cond_0
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 234
    .local v0, "boundary":Ljava/text/BreakIterator;
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/text/BreakIterator;->first()I

    move-result v1

    .line 237
    .local v1, "start":I
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v2

    .line 239
    .local v2, "end":I
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "firstWord":Ljava/lang/String;
    return-object v3
.end method

.method private hasCompoundDrawbles(Landroid/widget/TextView;)Z
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 112
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 113
    const-string v1, "HwNotiActionListLayout"

    const-string v2, "hasCompoundDrawbles, textview is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v0

    .line 118
    :cond_0
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->mHasCompoundDrawble:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 119
    return v2

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    move v3, v0

    .local v3, "j":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 124
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 125
    return v2

    .line 123
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v3    # "j":I
    :cond_3
    return v0
.end method

.method private isMultipleLines(Landroid/widget/TextView;)Z
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 141
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 142
    const-string v1, "HwNotiActionListLayout"

    const-string v2, "isMultipleLines, textview is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 147
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->calculateCompoundDrawableWidth(Landroid/widget/TextView;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 152
    .local v1, "availableWidth":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "textString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 153
    invoke-static {v3, v0, v4, v5}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    .line 157
    .local v3, "buttonTextWidth":F
    invoke-direct {p0, v2}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->getFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "firstWord":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 158
    invoke-static {v5, v0, v6, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v5

    .line 161
    .local v5, "firstWordWidth":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20e021d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 165
    .local v6, "mutipleLineTextSize":F
    int-to-float v7, v1

    cmpl-float v7, v5, v7

    const/4 v8, 0x1

    if-gtz v7, :cond_2

    int-to-float v7, v1

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 172
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 173
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 174
    invoke-virtual {p1, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 176
    return v8

    .line 166
    :cond_2
    :goto_0
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 167
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 168
    return v0
.end method

.method private updateGravity(I)V
    .locals 6
    .param p1, "childCount"    # I

    .line 87
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 88
    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 90
    goto :goto_1

    .line 92
    :cond_0
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    .line 93
    .local v3, "button":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 94
    goto :goto_1

    .line 98
    :cond_1
    iget v4, p0, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->mLeftRightPadding:I

    iget v5, p0, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->mLeftRightPadding:I

    invoke-virtual {v3, v4, v0, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 99
    iget-boolean v4, p0, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->mHasCompoundDrawble:Z

    if-nez v4, :cond_2

    .line 100
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "button":Landroid/widget/TextView;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->onMeasure(II)V

    .line 56
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 57
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 58
    .local v1, "isMultipleLines":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 59
    invoke-virtual {p0, v2}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 61
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    .line 62
    .local v4, "button":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 64
    invoke-direct {p0, v4}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->isMultipleLines(Landroid/widget/TextView;)Z

    move-result v5

    .line 65
    .local v5, "isMultipleLinesTemp":Z
    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 68
    :cond_0
    invoke-direct {p0, v4}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->hasCompoundDrawbles(Landroid/widget/TextView;)Z

    move-result v6

    iput-boolean v6, p0, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->mHasCompoundDrawble:Z

    .line 58
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "button":Landroid/widget/TextView;
    .end local v5    # "isMultipleLinesTemp":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 76
    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwNotificationActionListLayout;->updateGravity(I)V

    .line 78
    :cond_3
    return-void
.end method
