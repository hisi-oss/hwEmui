.class public Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;
.super Ljava/lang/Object;
.source "HwWidgetFactoryImpl.java"

# interfaces
.implements Landroid/hwcontrol/HwWidgetFactory$Factory;


# static fields
.field private static final AUTOSIZE_STEP_GRANULARITY:I = 0x1

.field static final DEBUG:Z = false

.field private static final DEV_DPI:I

.field private static final PERSIST_DENSITY:Ljava/lang/String; = "persist.sys.dpi"

.field private static final REAL_DPI:I

.field private static final REAL_RO_DENSITY:Ljava/lang/String; = "ro.sf.real_lcd_density"

.field public static final REPORRT_SR_COUNT_INT:I = 0x0

.field private static final RO_DENSITY:Ljava/lang/String; = "ro.sf.lcd_density"

.field static final TAG:Ljava/lang/String; = "HwWidgetFactoryImpl"

.field private static sColorfulDark:[I

.field private static sColorfulLight:[I


# instance fields
.field private final colorPrimaryAtts:[I

.field private mDisplayMode:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

.field private mNoColorfulAttrId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 150
    const/16 v0, 0x27

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->sColorfulDark:[I

    .line 163
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->sColorfulLight:[I

    .line 174
    const-string v0, "ro.sf.real_lcd_density"

    const-string v1, "ro.sf.lcd_density"

    .line 175
    const/16 v2, 0xa0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 174
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->DEV_DPI:I

    .line 177
    const-string v0, "persist.sys.dpi"

    sget v1, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->DEV_DPI:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->REAL_DPI:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1ae3dd
        -0xae89
        -0xd291
        -0x16e19d
        -0xbf7f
        -0x459738
        -0x54b844
        -0x1fbf05
        -0x55ff01
        -0x6a8a33
        -0x81a83e
        -0x83b201
        -0x9ae001
        -0x867935
        -0xa39440
        -0xac9202
        -0xc2a502
        -0xcfb002
        -0xa98804
        -0xb14311
        -0xbaa122
        -0xc4af32
        -0x977601
        -0xb28c01
        -0xb29601
        -0xa8de
        -0xbaee2
        -0x19b5e7
        -0xc300
        -0x5e7781
        -0x876f64
        -0xaa6a26
        -0xaf7232
        -0x4da53b
        -0x1a8dd2
        -0xbb4e34
        -0xa09247
        -0x6800
        -0xde690d
    .end array-data

    :array_1
    .array-data 4
        -0xff472c
        -0xd95966
        -0xff405b
        -0xbd42bf
        -0xd450d5
        -0xeb18eb
        -0xed3900
        -0x834cbe
        -0x9760c8
        -0x9b22e9
        -0x3f35cd
        -0x504bd5
        -0x6162dc
        -0x511600
        -0x335500
        -0x47400
        -0xa8400
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mNoColorfulAttrId:I

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010433

    aput v2, v1, v0

    iput-object v1, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->colorPrimaryAtts:[I

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mDisplayMode:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    .line 188
    return-void
.end method

.method private getAppDefinedPrimaryColor(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 580
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 581
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 582
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    .line 584
    .local v1, "pw":Lcom/android/internal/policy/PhoneWindow;
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getIsForcedStatusBarColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getForcedStatusBarColor()I

    move-result v2

    .line 586
    .local v2, "forcedColor":I
    const-string v3, "HwWidgetFactoryImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppDefinedPrimaryColor has Color=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " set by setStatusBarColor()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return v2

    .line 593
    .end local v0    # "ac":Landroid/app/Activity;
    .end local v1    # "pw":Lcom/android/internal/policy/PhoneWindow;
    .end local v2    # "forcedColor":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->colorPrimaryAtts:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 594
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, -0x30304

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 595
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 596
    return v1
.end method

.method private isNoColorfulTheme(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 627
    iget v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mNoColorfulAttrId:I

    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "androidhwext:attr/immersionNoColorful"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mNoColorfulAttrId:I

    .line 631
    :cond_0
    iget v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mNoColorfulAttrId:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 632
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v2, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mNoColorfulAttrId:I

    aput v2, v0, v1

    .line 635
    .local v0, "noColorfulAtts":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 636
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 637
    .local v1, "isNoColorful":Z
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 638
    return v1

    .line 640
    .end local v0    # "noColorfulAtts":[I
    .end local v1    # "isNoColorful":Z
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_1
    return v1
.end method


# virtual methods
.method public autoTextSize(Landroid/widget/TextView;Landroid/content/Context;F)V
    .locals 10
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "originTextSize"    # F

    .line 770
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 775
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 777
    .local v0, "density":F
    float-to-int v1, p3

    .line 778
    .local v1, "maxSizeInPix":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e0105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 780
    .local v2, "minSizeInPix":I
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v0

    .line 782
    .local v3, "step":F
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    goto :goto_1

    .line 788
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    if-le v1, v2, :cond_3

    .line 790
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 792
    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v5

    .line 794
    .local v6, "autoSizeValuesLength":I
    new-array v5, v6, [I

    .line 796
    .local v5, "autoSizeTextSizesInPx":[I
    add-int/lit8 v7, v6, -0x1

    aput v1, v5, v7

    .line 797
    move v7, v4

    .local v7, "i":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_2

    .line 798
    int-to-float v8, v2

    int-to-float v9, v7

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v5, v7

    .line 797
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 801
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {p1, v5, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 805
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 808
    .end local v5    # "autoSizeTextSizesInPx":[I
    .end local v6    # "autoSizeValuesLength":I
    :cond_3
    return-void

    .line 783
    :cond_4
    :goto_1
    const-string v4, "HwWidgetFactoryImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxSizeInPix = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", minSizeInPix = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", step = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void

    .line 771
    .end local v0    # "density":F
    .end local v1    # "maxSizeInPix":I
    .end local v2    # "minSizeInPix":I
    .end local v3    # "step":F
    :cond_5
    :goto_2
    const-string v0, "HwWidgetFactoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoTextSize, textview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method public checkIsFullScreen(Landroid/content/Context;II)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 1002
    invoke-static {p1, p2, p3}, Landroid/widget/sr/SRUtils;->checkIsFullScreen(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public checkIsInSRBlackList(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 998
    invoke-static {p1}, Landroid/widget/sr/SRUtils;->checkIsInSRBlackList(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public checkIsInSRWhiteList(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 994
    invoke-static {p1}, Landroid/widget/sr/SRUtils;->checkIsInSRWhiteList(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public checkMatchResolution(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1006
    invoke-static {p1}, Landroid/widget/sr/SRUtils;->checkMatchResolution(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public createSRInfo()Landroid/widget/sr/SRInfo;
    .locals 1

    .line 1018
    new-instance v0, Landroid/widget/sr/SRInfoImpl;

    invoke-direct {v0}, Landroid/widget/sr/SRInfoImpl;-><init>()V

    return-object v0
.end method

.method public getCompoundButtonDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "tv"    # Landroid/util/TypedValue;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "old"    # Landroid/graphics/drawable/Drawable;

    .line 432
    move-object v0, p3

    .line 441
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getCompoundButtonDrawableRes(Landroid/content/Context;I)I
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldResId"    # I

    .line 457
    return p2
.end method

.method public getControlColor(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 568
    const/4 v0, 0x0

    .line 575
    .local v0, "color":I
    return v0
.end method

.method public getDesireCheckMarkDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;
    .param p3, "defCheckMarkTypedArrayIndex"    # I

    .line 895
    if-nez p2, :cond_0

    .line 896
    const-string v0, "HwWidgetFactoryImpl"

    const-string v1, "typedArray is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v0, 0x0

    return-object v0

    .line 900
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 902
    .local v0, "checkMarkdrawable":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_1

    .line 903
    const-string v1, "HwWidgetFactoryImpl"

    const-string v2, "context is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-object v0

    .line 909
    :cond_1
    sget-boolean v1, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_EMUI_SUPERLITE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_EMUI_LITE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_NOVA_PERF:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 912
    :cond_3
    return-object v0

    .line 915
    :cond_4
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 916
    .local v1, "typedValue":Landroid/util/TypedValue;
    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 917
    .local v2, "defCheckMarkDrawableResId":I
    const/4 v3, 0x0

    .line 919
    .local v3, "indicatorAttr":I
    const v4, 0x2030087

    if-eq v2, v4, :cond_a

    const v4, 0x2030086

    if-ne v2, v4, :cond_5

    goto :goto_2

    .line 922
    :cond_5
    const v4, 0x203002e

    if-eq v2, v4, :cond_9

    const v4, 0x203002d

    if-ne v2, v4, :cond_6

    goto :goto_1

    .line 925
    :cond_6
    const v4, 0x2030323

    if-eq v2, v4, :cond_8

    const v4, 0x203031e

    if-ne v2, v4, :cond_7

    goto :goto_0

    .line 929
    :cond_7
    const-string v4, "HwWidgetFactoryImpl"

    const-string v5, "checkMark no drawable was found!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-object v0

    .line 927
    :cond_8
    :goto_0
    const v3, 0x20100af

    goto :goto_3

    .line 924
    :cond_9
    :goto_1
    const v3, 0x201005a

    goto :goto_3

    .line 921
    :cond_a
    :goto_2
    const v3, 0x201005b

    .line 933
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 934
    const-string v4, "HwWidgetFactoryImpl"

    const-string v5, "indicatorAttr resolved failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-object v0

    .line 938
    :cond_b
    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 940
    return-object v0
.end method

.method public getDesireCompoundButtonDrawable(Landroid/content/Context;Landroid/widget/CompoundButton;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/widget/CompoundButton;
    .param p3, "ta"    # Landroid/content/res/TypedArray;
    .param p4, "defButtonArrayIndex"    # I

    .line 845
    if-nez p3, :cond_0

    .line 846
    const-string v0, "HwWidgetFactoryImpl"

    const-string v1, "typedArray is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x0

    return-object v0

    .line 850
    :cond_0
    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 852
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_d

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 858
    :cond_1
    sget-boolean v1, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_EMUI_SUPERLITE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_EMUI_LITE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_NOVA_PERF:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 859
    :cond_3
    return-object v0

    .line 863
    :cond_4
    const/4 v1, 0x0

    .line 864
    .local v1, "indicatorAttrId":I
    const/4 v2, 0x0

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 865
    .local v2, "defButtonDrawableResId":I
    instance-of v3, p2, Landroid/widget/RadioButton;

    if-eqz v3, :cond_6

    .line 866
    const v3, 0x2030087

    if-eq v2, v3, :cond_5

    const v3, 0x2030086

    if-ne v2, v3, :cond_a

    .line 868
    :cond_5
    const v1, 0x201005b

    goto :goto_1

    .line 870
    :cond_6
    instance-of v3, p2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_c

    .line 871
    const v3, 0x203002e

    if-eq v2, v3, :cond_9

    const v3, 0x203002d

    if-ne v2, v3, :cond_7

    goto :goto_0

    .line 874
    :cond_7
    const v3, 0x2030323

    if-eq v2, v3, :cond_8

    const v3, 0x203031e

    if-ne v2, v3, :cond_a

    .line 876
    :cond_8
    const v1, 0x20100af

    goto :goto_1

    .line 873
    :cond_9
    :goto_0
    const v1, 0x201005a

    .line 882
    :cond_a
    :goto_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 883
    .local v3, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 884
    const-string v4, "HwWidgetFactoryImpl"

    const-string v5, "indicatorAttr resolved failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-object v0

    .line 888
    :cond_b
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 890
    return-object v0

    .line 879
    .end local v3    # "typedValue":Landroid/util/TypedValue;
    :cond_c
    return-object v0

    .line 853
    .end local v1    # "indicatorAttrId":I
    .end local v2    # "defButtonDrawableResId":I
    :cond_d
    :goto_2
    const-string v1, "HwWidgetFactoryImpl"

    const-string v2, "context or view is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-object v0
.end method

.method public getDesireSwitchThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defSwitchThumbDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 947
    if-nez p1, :cond_0

    .line 948
    const-string v0, "HwWidgetFactoryImpl"

    const-string v1, "context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-object p2

    .line 952
    :cond_0
    sget-boolean v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_EMUI_SUPERLITE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_EMUI_LITE:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 953
    :cond_2
    return-object p2

    .line 956
    :cond_3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 957
    .local v0, "typedValue":Landroid/util/TypedValue;
    const v1, 0x201005c

    .line 958
    .local v1, "thumbAttr":I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 959
    return-object p2

    .line 961
    :cond_4
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 963
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v2
.end method

.method public getDesireSwitchTrackDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defSwitchTrackDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 967
    if-nez p1, :cond_0

    .line 968
    const-string v0, "HwWidgetFactoryImpl"

    const-string v1, "context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-object p2

    .line 972
    :cond_0
    sget-boolean v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_EMUI_SUPERLITE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->IS_EMUI_LITE:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 973
    :cond_2
    return-object p2

    .line 976
    :cond_3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 977
    .local v0, "typedValue":Landroid/util/TypedValue;
    const v1, 0x201005d

    .line 978
    .local v1, "trackAttr":I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 979
    const-string v2, "HwWidgetFactoryImpl"

    const-string v3, "trackAttr resolved failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-object p2

    .line 982
    :cond_4
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 984
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v2
.end method

.method public getDisplayMode(Landroid/content/Context;)Landroid/hwcontrol/HwWidgetFactory$DisplayMode;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 697
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mDisplayMode:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mDisplayMode:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    return-object v0

    .line 701
    :cond_0
    sget v0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->DEV_DPI:I

    sget v1, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->REAL_DPI:I

    if-ne v0, v1, :cond_1

    .line 702
    sget-object v0, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Normal:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    iput-object v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mDisplayMode:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    .line 703
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mDisplayMode:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    return-object v0

    .line 706
    :cond_1
    const/4 v0, -0x1

    .line 707
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 708
    .local v1, "dpis":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-lez v2, :cond_5

    .line 709
    sget v2, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->REAL_DPI:I

    const/4 v4, 0x0

    aget v4, v1, v4

    if-gt v2, v4, :cond_2

    .line 710
    const/4 v0, 0x0

    goto :goto_1

    .line 711
    :cond_2
    sget v2, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->REAL_DPI:I

    array-length v4, v1

    sub-int/2addr v4, v3

    aget v4, v1, v4

    if-lt v2, v4, :cond_3

    .line 712
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 714
    :cond_3
    move v2, v3

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_5

    .line 715
    sget v4, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->REAL_DPI:I

    aget v5, v1, v2

    if-ne v4, v5, :cond_4

    .line 716
    move v0, v2

    .line 717
    goto :goto_1

    .line 714
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 723
    .end local v2    # "i":I
    :cond_5
    :goto_1
    if-gez v0, :cond_6

    .line 724
    sget-object v2, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Normal:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    return-object v2

    .line 727
    :cond_6
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->values()[Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    move-result-object v2

    .line 728
    .local v2, "modes":[Landroid/hwcontrol/HwWidgetFactory$DisplayMode;
    array-length v4, v2

    sub-int/2addr v4, v3

    if-lt v0, v4, :cond_7

    .line 729
    array-length v3, v2

    add-int/lit8 v0, v3, -0x2

    .line 732
    :cond_7
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mDisplayMode:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    .line 733
    iget-object v3, p0, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->mDisplayMode:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    return-object v3
.end method

.method public getEdgeEffectImpl(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 384
    const v0, 0x2030202

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFastScrollerThumbDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "tv"    # Landroid/util/TypedValue;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "old"    # Landroid/graphics/drawable/Drawable;

    .line 479
    return-object p3
.end method

.method public getGlowEffectImpl(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 387
    const v0, 0x2030203

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHuaweiActionBarImpl(Landroid/app/Activity;)Lcom/android/internal/app/WindowDecorActionBar;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 308
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v0, p1}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    .line 309
    .local v0, "actionBar":Lcom/android/internal/app/WindowDecorActionBar;
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 311
    invoke-virtual {v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 313
    :cond_0
    return-object v0
.end method

.method public getHuaweiActionBarImpl(Landroid/app/Dialog;)Lcom/android/internal/app/WindowDecorActionBar;
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 317
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v0, p1}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    .line 318
    .local v0, "actionBar":Lcom/android/internal/app/WindowDecorActionBar;
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 322
    :cond_0
    return-object v0
.end method

.method public getHuaweiRealThemeImpl(I)I
    .locals 0
    .param p1, "theme"    # I

    .line 253
    return p1
.end method

.method public getHwAISRImageViewTaskManager(Landroid/content/Context;)Landroid/widget/sr/HwAISRImageViewTaskManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1014
    invoke-static {p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->getInstance(Landroid/content/Context;)Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/AbsHwDecorCaptionView;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 751
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 752
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v1

    .line 753
    .local v1, "isRtlSupport":Z
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 754
    .local v2, "layoutDirection":I
    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 755
    const v4, 0x2070068

    invoke-virtual {p1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AbsHwDecorCaptionView;

    return-object v3

    .line 757
    :cond_0
    const v4, 0x2070063

    invoke-virtual {p1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AbsHwDecorCaptionView;

    return-object v3
.end method

.method public getHwFastScroller(Landroid/widget/AbsListView;ILandroid/content/Context;)Landroid/widget/FastScrollerEx;
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "fastScrollStyle"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 348
    invoke-virtual {p0, p3}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/widget/FastScrollerEx;

    invoke-direct {v0, p1, p2}, Landroid/widget/FastScrollerEx;-><init>(Landroid/widget/AbsListView;I)V

    return-object v0

    .line 351
    :cond_0
    new-instance v0, Lhuawei/android/widget/HwFastScroller;

    invoke-direct {v0, p1, p2}, Lhuawei/android/widget/HwFastScroller;-><init>(Landroid/widget/AbsListView;I)V

    return-object v0
.end method

.method public bridge synthetic getHwFastScroller(Landroid/widget/AbsListView;ILandroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->getHwFastScroller(Landroid/widget/AbsListView;ILandroid/content/Context;)Landroid/widget/FastScrollerEx;

    move-result-object p1

    return-object p1
.end method

.method public getHwLoadingDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/HwLoadingDrawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "size"    # I

    .line 746
    new-instance v0, Landroid/graphics/drawable/HwLoadingDrawableImpl;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/HwLoadingDrawableImpl;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public getHwLoadingDrawable(Landroid/content/res/Resources;II)Landroid/graphics/drawable/HwLoadingDrawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "size"    # I
    .param p3, "color"    # I

    .line 743
    new-instance v0, Landroid/graphics/drawable/HwLoadingDrawableImpl;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-direct {v0, p1, p2, v1}, Landroid/graphics/drawable/HwLoadingDrawableImpl;-><init>(Landroid/content/res/Resources;I[I)V

    return-object v0
.end method

.method public getHwRippleForeground(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZI)Landroid/graphics/drawable/HwRippleForeground;
    .locals 7
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isBounded"    # Z
    .param p4, "forceSoftware"    # Z
    .param p5, "type"    # I

    .line 738
    new-instance v6, Landroid/graphics/drawable/HwRippleForegroundProxy;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/HwRippleForegroundProxy;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZI)V

    return-object v6
.end method

.method public getHwSplineOverScrollerImpl(Landroid/widget/OverScroller$SplineOverScroller;Landroid/content/Context;)Landroid/widget/IHwSplineOverScroller;
    .locals 1
    .param p1, "sos"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p2, "context"    # Landroid/content/Context;

    .line 358
    new-instance v0, Lhuawei/android/widget/HwSplineOverScrollerImpl;

    invoke-direct {v0, p1, p2}, Lhuawei/android/widget/HwSplineOverScrollerImpl;-><init>(Landroid/widget/OverScroller$SplineOverScroller;Landroid/content/Context;)V

    return-object v0
.end method

.method public getHwWechatOptimizeImpl()Landroid/widget/IHwWechatOptimize;
    .locals 1

    .line 362
    invoke-static {}, Lhuawei/android/widget/HwWechatOptimizeImpl;->getInstance()Lhuawei/android/widget/HwWechatOptimizeImpl;

    move-result-object v0

    return-object v0
.end method

.method public getImmersionResource(Landroid/content/Context;IIIZ)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resLight"    # I
    .param p3, "colorfulResLight"    # I
    .param p4, "resDark"    # I
    .param p5, "defaultIsDark"    # Z

    .line 412
    if-eqz p5, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p2

    .line 413
    .local v0, "res":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    move v0, p4

    goto :goto_1

    .line 415
    :cond_1
    invoke-static {p1}, Lhuawei/com/android/internal/widget/HwWidgetUtils;->isActionbarBackgroundThemed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 416
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->getSuggestionForgroundColorStyle(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 417
    if-eqz p3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isPrimaryColorfulEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    move v0, p3

    goto :goto_1

    .line 420
    :cond_2
    move v0, p2

    goto :goto_1

    .line 423
    :cond_3
    move v0, p4

    .line 426
    :cond_4
    :goto_1
    return v0
.end method

.method public getPrimaryColor(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 601
    invoke-direct {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->getAppDefinedPrimaryColor(Landroid/content/Context;)I

    move-result v0

    .line 603
    .local v0, "appDefColor":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 604
    return v0

    .line 607
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 608
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_2

    .line 610
    invoke-virtual {v1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->setPackageName(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AbsResourcesImpl;->setPackageName(Ljava/lang/String;)V

    .line 616
    :cond_1
    const v2, 0x2050078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 619
    .local v2, "primaryColor":I
    invoke-virtual {p0, p1, v2}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isPrimaryColorfulEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 620
    return v2

    .line 623
    .end local v2    # "primaryColor":I
    :cond_2
    return v0
.end method

.method public getSRBitmapManager()Landroid/widget/sr/SRBitmapManager;
    .locals 1

    .line 1010
    invoke-static {}, Landroid/widget/sr/SRBitmapManagerImpl;->getInstance()Landroid/widget/sr/SRBitmapManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionForgroundColorStyle(I)I
    .locals 11
    .param p1, "colorBackground"    # I

    .line 645
    const/4 v0, 0x0

    const v1, -0x30304

    if-ne p1, v1, :cond_0

    .line 646
    return v0

    .line 649
    :cond_0
    const v1, -0xd73f3a

    const/4 v2, 0x1

    if-eq p1, v1, :cond_b

    const v1, -0xff8201

    if-ne p1, v1, :cond_1

    goto :goto_6

    .line 653
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->sColorfulDark:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 654
    sget-object v3, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->sColorfulDark:[I

    aget v3, v3, v1

    if-ne p1, v3, :cond_2

    .line 655
    return v2

    .line 653
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_3
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    sget-object v3, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->sColorfulLight:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 660
    sget-object v3, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->sColorfulLight:[I

    aget v3, v3, v1

    if-ne p1, v3, :cond_4

    .line 661
    return v0

    .line 659
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 666
    .end local v1    # "i":I
    :cond_5
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 667
    .local v1, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 668
    .local v3, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 669
    .local v4, "b":I
    if-le v3, v4, :cond_6

    move v5, v3

    goto :goto_2

    :cond_6
    move v5, v4

    .line 670
    .local v5, "maxValue":I
    :goto_2
    if-ge v3, v4, :cond_7

    move v6, v3

    goto :goto_3

    :cond_7
    move v6, v4

    .line 671
    .local v6, "minValue":I
    :goto_3
    if-le v1, v5, :cond_8

    move v7, v1

    goto :goto_4

    :cond_8
    move v7, v5

    .line 672
    .local v7, "max":I
    :goto_4
    if-ge v1, v6, :cond_9

    move v8, v1

    goto :goto_5

    :cond_9
    move v8, v6

    .line 674
    .local v8, "min":I
    :goto_5
    add-int v9, v7, v8

    .line 675
    .local v9, "lightness":I
    const/16 v10, 0xff

    if-lt v9, v10, :cond_a

    .line 676
    return v0

    .line 678
    :cond_a
    return v2

    .line 650
    .end local v1    # "r":I
    .end local v3    # "g":I
    .end local v4    # "b":I
    .end local v5    # "maxValue":I
    .end local v6    # "minValue":I
    .end local v7    # "max":I
    .end local v8    # "min":I
    .end local v9    # "lightness":I
    :cond_b
    :goto_6
    return v2
.end method

.method public getSuggestionForgroundColorStyle(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 682
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->getPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->getSuggestionForgroundColorStyle(I)I

    move-result v0

    return v0
.end method

.method public getThemeIdImpl(Landroid/os/Bundle;Landroid/content/res/Resources;)I
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "themeId":I
    const-string v1, "hwc-theme"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "themeName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 228
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 230
    :cond_0
    return v0
.end method

.method public getTrackDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "tv"    # Landroid/util/TypedValue;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "old"    # Landroid/graphics/drawable/Drawable;

    .line 469
    return-object p3
.end method

.method public initAddtionalStyle(Landroid/content/Context;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 275
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isBlackActionBar(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 688
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->getPrimaryColor(Landroid/content/Context;)I

    move-result v0

    .line 689
    .local v0, "primaryColor":I
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 690
    .local v1, "r":I
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 691
    .local v2, "g":I
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 692
    .local v3, "b":I
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public isColorfulEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public isHwDarkTheme(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 206
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x2010034

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 207
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isHwEmphasizeTheme(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 211
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x2010034

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 212
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isHwLightTheme(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 201
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x2010034

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 202
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    rem-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isHwTheme()Z
    .locals 1

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public isHwTheme(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 196
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x2010034

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 197
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isPrimaryColorfulEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .line 541
    move v0, p2

    .line 542
    .local v0, "primaryColor":I
    if-nez p2, :cond_0

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 544
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 545
    const v2, 0x2050078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 549
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 550
    return v1

    .line 553
    :cond_1
    const v2, -0x30304

    if-eq v0, v2, :cond_2

    .line 554
    invoke-direct {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isNoColorfulTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 555
    const/4 v1, 0x1

    return v1

    .line 557
    :cond_2
    return v1
.end method

.method public isSuperResolutionSupport()Z
    .locals 1

    .line 990
    invoke-static {}, Landroid/widget/sr/Utils;->isSuperResolutionSupport()Z

    move-result v0

    return v0
.end method

.method public newHwAlertController(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 328
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/android/internal/app/AlertController;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Lhuawei/com/android/internal/app/HwAlertController;

    invoke-direct {v0, p1, p2, p3}, Lhuawei/com/android/internal/app/HwAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v0
.end method

.method public newHwDialogStub(Landroid/content/Context;Landroid/view/Window;Landroid/app/Dialog;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwDialogStub;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "dialog"    # Landroid/app/Dialog;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 370
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/app/Dialog;I)V

    return-object v0

    .line 376
    :cond_0
    new-instance v0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/app/Dialog;I)V

    return-object v0
.end method

.method public newHwOverflowMenuButton(Landroid/content/Context;Landroid/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionMenuPresenter"    # Landroid/widget/ActionMenuPresenter;

    .line 338
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Lhuawei/android/widget/HwOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Lhuawei/android/widget/HwOverflowMenuButton;-><init>(Landroid/content/Context;Landroid/widget/ActionMenuPresenter;)V

    return-object v0
.end method

.method public newHwTextView(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwTextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/widget/TextView;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 281
    new-instance v0, Lcom/huawei/android/hwcontrol/TextViewFactory;

    invoke-direct {v0}, Lcom/huawei/android/hwcontrol/TextViewFactory;-><init>()V

    .line 283
    .local v0, "mHwTextView":Lcom/huawei/android/hwcontrol/TextViewFactory;
    return-object v0
.end method

.method public newHwToast(Landroid/content/Context;Landroid/widget/Toast;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwToast;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/widget/Toast;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 295
    new-instance v0, Lcom/huawei/android/hwcontrol/ToastFactory;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/android/hwcontrol/ToastFactory;-><init>(Landroid/content/Context;Landroid/widget/Toast;Landroid/util/AttributeSet;)V

    .line 303
    .local v0, "mHwToast":Lcom/huawei/android/hwcontrol/ToastFactory;
    return-object v0
.end method

.method public reportSrBigData(IILjava/lang/Object;)V
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "keyEventId"    # I
    .param p3, "reportMsg"    # Ljava/lang/Object;

    .line 821
    invoke-static {p1}, Landroid/util/IMonitor;->openEventStream(I)Landroid/util/IMonitor$EventStream;

    move-result-object v0

    .line 822
    .local v0, "eStream":Landroid/util/IMonitor$EventStream;
    if-eqz p2, :cond_0

    goto :goto_1

    .line 825
    :cond_0
    :try_start_0
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    .line 826
    .local v1, "reportVal":Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/IMonitor$EventStream;->setParam(SI)Landroid/util/IMonitor$EventStream;

    .line 827
    invoke-static {v0}, Landroid/util/IMonitor;->sendEvent(Landroid/util/IMonitor$EventStream;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "reportVal":Ljava/lang/Integer;
    goto :goto_0

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "HwWidgetFactoryImpl"

    const-string v3, "reportSrBigData NullPointerException when keyEventId = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 828
    :catch_1
    move-exception v1

    .line 829
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "HwWidgetFactoryImpl"

    const-string v3, "reportSrBigData ClassCastException when keyEventId = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_0
    nop

    .line 837
    :goto_1
    invoke-static {v0}, Landroid/util/IMonitor;->closeEventStream(Landroid/util/IMonitor$EventStream;)V

    .line 838
    return-void
.end method

.method public setImmersionStyle(Landroid/content/Context;Landroid/widget/TextView;IIIZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "colorResDark"    # I
    .param p4, "colorResLight"    # I
    .param p5, "colorfulResLight"    # I
    .param p6, "defaultIsDark"    # Z

    .line 393
    if-eqz p6, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p4

    .line 394
    .local v0, "colorRes":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isHwDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    move v0, p3

    goto :goto_1

    .line 396
    :cond_1
    invoke-static {p1}, Lhuawei/com/android/internal/widget/HwWidgetUtils;->isActionbarBackgroundThemed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 397
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->getSuggestionForgroundColorStyle(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 398
    if-eqz p5, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/huawei/android/hwcontrol/HwWidgetFactoryImpl;->isPrimaryColorfulEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    move v0, p5

    goto :goto_1

    .line 401
    :cond_2
    move v0, p4

    goto :goto_1

    .line 404
    :cond_3
    move v0, p3

    .line 407
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 408
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/widget/ProgressBar;Landroid/util/TypedValue;Landroid/content/Context;)V
    .locals 0
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;
    .param p2, "tv"    # Landroid/util/TypedValue;
    .param p3, "context"    # Landroid/content/Context;

    .line 536
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/widget/ProgressBar;Landroid/util/TypedValue;Landroid/content/Context;)V
    .locals 0
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;
    .param p2, "tv"    # Landroid/util/TypedValue;
    .param p3, "context"    # Landroid/content/Context;

    .line 513
    return-void
.end method

.method public setTextColorful(Landroid/view/View;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isHwTheme"    # Z

    .line 490
    return-void
.end method
