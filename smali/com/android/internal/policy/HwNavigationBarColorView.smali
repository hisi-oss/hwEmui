.class public Lcom/android/internal/policy/HwNavigationBarColorView;
.super Landroid/view/View;
.source "HwNavigationBarColorView.java"


# static fields
.field private static final ROTATION:I

.field private static final SHOW_DCM_NAVBAR_AT_BOTTOM:Z

.field private static final TAG:Ljava/lang/String; = "HwNavigationBarColorView"

.field private static final mLineHeightPx:I = 0x1


# instance fields
.field private mLineColor:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-string v0, "ro.panel.hw_orientation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    sput v0, Lcom/android/internal/policy/HwNavigationBarColorView;->ROTATION:I

    .line 24
    const-string v0, "ro.config.dcm_landscreen_navbar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/HwNavigationBarColorView;->SHOW_DCM_NAVBAR_AT_BOTTOM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/policy/HwNavigationBarColorView;->initDrawLinePaint(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/policy/HwNavigationBarColorView;->initOrientation(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initDrawLinePaint(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    const v1, 0x205007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mLineColor:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    return-void
.end method

.method private initOrientation(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mOrientation:I

    .line 67
    return-void
.end method

.method private isNavBarAtBottom()Z
    .locals 4

    .line 71
    sget v0, Lcom/android/internal/policy/HwNavigationBarColorView;->ROTATION:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget v0, Lcom/android/internal/policy/HwNavigationBarColorView;->ROTATION:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mOrientation:I

    if-ne v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 73
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/internal/policy/HwNavigationBarColorView;->SHOW_DCM_NAVBAR_AT_BOTTOM:Z

    if-eqz v0, :cond_3

    .line 74
    return v2

    .line 77
    :cond_3
    return v1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 54
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mOrientation:I

    .line 55
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    iget v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 43
    invoke-direct {p0}, Lcom/android/internal/policy/HwNavigationBarColorView;->isNavBarAtBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/HwNavigationBarColorView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/internal/policy/HwNavigationBarColorView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    :cond_2
    :goto_0
    return-void
.end method
