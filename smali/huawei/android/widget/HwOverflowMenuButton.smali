.class public Lhuawei/android/widget/HwOverflowMenuButton;
.super Landroid/widget/Button;
.source "HwOverflowMenuButton.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# instance fields
.field private mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private final mActionMenuTextColorAttr:[I

.field private mIsSmartColored:Z

.field private mTintColor:Landroid/content/res/ColorStateList;

.field private mTintRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ActionMenuPresenter;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionMenuPresenter"    # Landroid/widget/ActionMenuPresenter;

    .line 50
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010361

    aput v3, v1, v2

    iput-object v1, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mActionMenuTextColorAttr:[I

    .line 51
    iput-object p2, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 52
    invoke-virtual {p0, v0}, Lhuawei/android/widget/HwOverflowMenuButton;->setClickable(Z)V

    .line 53
    invoke-virtual {p0, v0}, Lhuawei/android/widget/HwOverflowMenuButton;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0, v2}, Lhuawei/android/widget/HwOverflowMenuButton;->setVisibility(I)V

    .line 55
    invoke-virtual {p0, v0}, Lhuawei/android/widget/HwOverflowMenuButton;->setEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->updateTextAndIcon()V

    .line 58
    new-instance v0, Lhuawei/android/widget/HwOverflowMenuButton$1;

    invoke-direct {v0, p0, p0}, Lhuawei/android/widget/HwOverflowMenuButton$1;-><init>(Lhuawei/android/widget/HwOverflowMenuButton;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lhuawei/android/widget/HwOverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/widget/HwOverflowMenuButton;)Landroid/widget/ActionMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/widget/HwOverflowMenuButton;

    .line 42
    iget-object v0, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    return-object v0
.end method

.method private getCompoundIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 222
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    .local v0, "icons":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 224
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 225
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 226
    aget-object v1, v0, v2

    .line 227
    goto :goto_1

    .line 224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v1
.end method

.method private getSmartIconColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 252
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 253
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lhuawei/android/widget/HwSmartColorListener;

    if-eqz v1, :cond_0

    .line 254
    move-object v1, v0

    check-cast v1, Lhuawei/android/widget/HwSmartColorListener;

    invoke-interface {v1}, Lhuawei/android/widget/HwSmartColorListener;->getSmartIconColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 256
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSmartTitleColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 260
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 261
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lhuawei/android/widget/HwSmartColorListener;

    if-eqz v1, :cond_0

    .line 262
    move-object v1, v0

    check-cast v1, Lhuawei/android/widget/HwSmartColorListener;

    invoke-interface {v1}, Lhuawei/android/widget/HwSmartColorListener;->getSmartTitleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 264
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private showHwTextWithAction()Z
    .locals 5

    .line 154
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 155
    .local v0, "menuView":Landroid/view/ViewParent;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 157
    .local v2, "container":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 158
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x1020432

    if-ne v3, v4, :cond_0

    .line 159
    return v1

    .line 163
    .end local v2    # "container":Landroid/view/ViewParent;
    :cond_0
    iget-object v2, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/widget/ActionMenuPresenter;->getToolBarAttachOverlay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    return v1

    .line 167
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private updateCompoundDrawables(Z)V
    .locals 9
    .param p1, "showText"    # Z

    .line 98
    invoke-direct {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getCompoundIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 100
    iget-object v1, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mContext:Landroid/content/Context;

    const v2, 0x2030029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-direct {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getSmartIconColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 106
    .local v1, "smartIconColor":Landroid/content/res/ColorStateList;
    invoke-direct {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getSmartTitleColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 107
    .local v2, "smartTitleColor":Landroid/content/res/ColorStateList;
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 108
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p0, v4, v0, v4, v4}, Lhuawei/android/widget/HwOverflowMenuButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0, v0, v4, v4, v4}, Lhuawei/android/widget/HwOverflowMenuButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    invoke-virtual {p0, v2}, Lhuawei/android/widget/HwOverflowMenuButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 115
    const/4 v3, 0x1

    iput-boolean v3, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mIsSmartColored:Z

    .line 116
    return-void

    .line 119
    :cond_2
    iput-boolean v3, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mIsSmartColored:Z

    .line 121
    const v5, 0x205001c

    .line 122
    .local v5, "resTint":I
    if-eqz p1, :cond_4

    .line 123
    iget-object v6, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/hwcontrol/HwWidgetFactory;->isHwDarkTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 124
    const v5, 0x205001d

    goto :goto_1

    .line 126
    :cond_3
    const v5, 0x205001c

    .line 128
    :goto_1
    invoke-virtual {p0, v4, v0, v4, v4}, Lhuawei/android/widget/HwOverflowMenuButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 130
    :cond_4
    iget-object v6, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mContext:Landroid/content/Context;

    const v7, 0x205001c

    const v8, 0x205001d

    invoke-static {v6, v7, v3, v8, v3}, Landroid/hwcontrol/HwWidgetFactory;->getImmersionResource(Landroid/content/Context;IIIZ)I

    move-result v5

    .line 133
    invoke-virtual {p0, v0, v4, v4, v4}, Lhuawei/android/widget/HwOverflowMenuButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    :goto_2
    iget-object v4, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/hwcontrol/HwWidgetFactory;->isHwEmphasizeTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 137
    const v5, 0x2050122

    .line 140
    :cond_5
    iget v4, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mTintRes:I

    if-eq v4, v5, :cond_6

    .line 141
    iput v5, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mTintRes:I

    .line 142
    iget-object v4, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mTintColor:Landroid/content/res/ColorStateList;

    .line 143
    iget-object v4, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mTintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 145
    :cond_6
    iget-object v4, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iget-object v6, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mActionMenuTextColorAttr:[I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 146
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 147
    .local v3, "actionMenuTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v3}, Lhuawei/android/widget/HwOverflowMenuButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 203
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 205
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->updateTextAndIcon()V

    .line 206
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->requestLayout()V

    .line 207
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 210
    invoke-direct {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getCompoundIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mIsSmartColored:Z

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mTintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 219
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 245
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 247
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 235
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 239
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->updateTextAndIcon()V

    .line 241
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 183
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 184
    return v1

    .line 187
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhuawei/android/widget/HwOverflowMenuButton;->playSoundEffect(I)V

    .line 188
    iget-object v0, p0, Lhuawei/android/widget/HwOverflowMenuButton;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 189
    return v1
.end method

.method public updateTextAndIcon()V
    .locals 4

    .line 171
    invoke-direct {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->showHwTextWithAction()Z

    move-result v0

    .line 172
    .local v0, "showText":Z
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 173
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x202002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lhuawei/android/widget/HwOverflowMenuButton;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {p0, v0}, Lhuawei/android/widget/HwOverflowMenuButton;->updateCompoundDrawables(Z)V

    .line 177
    const v3, 0x2100048

    invoke-virtual {p0, v3}, Lhuawei/android/widget/HwOverflowMenuButton;->setId(I)V

    .line 179
    return-void
.end method
