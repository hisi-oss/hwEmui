.class public Lhuawei/com/android/internal/widget/HwCustomPanel;
.super Landroid/widget/LinearLayout;
.source "HwCustomPanel.java"


# static fields
.field private static final DB:Z = false

.field private static final TAG:Ljava/lang/String; = "HwCustomPanel"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field mSlideY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwCustomPanel;->mSlideY:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwCustomPanel;->mSlideY:I

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwCustomPanel;->setOrientation(I)V

    .line 53
    sget-object v0, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p1}, Lhuawei/com/android/internal/widget/HwWidgetUtils;->isActionbarBackgroundThemed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwCustomPanel;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Landroid/hwcontrol/HwWidgetFactory;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    .line 59
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwCustomPanel;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwCustomPanel;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    .end local v1    # "color":I
    :goto_0
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwCustomPanel;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwCustomPanel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 74
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwCustomPanel;->getWidth()I

    move-result v0

    iget v1, p0, Lhuawei/com/android/internal/widget/HwCustomPanel;->mSlideY:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 86
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102eb

    aput v2, v0, v1

    .line 90
    .local v0, "ATTRS":[I
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwCustomPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 91
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 93
    .local v3, "actionBarHeight":I
    invoke-virtual {p0, v1, v1, v1, v3}, Lhuawei/com/android/internal/widget/HwCustomPanel;->setPadding(IIII)V

    .line 95
    neg-int v1, v3

    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwCustomPanel;->setClipY(I)V

    .line 96
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method public setClipY(I)V
    .locals 0
    .param p1, "slideY"    # I

    .line 81
    iput p1, p0, Lhuawei/com/android/internal/widget/HwCustomPanel;->mSlideY:I

    .line 82
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwCustomPanel;->invalidate()V

    .line 83
    return-void
.end method
