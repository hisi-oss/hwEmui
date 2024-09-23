.class public Lhuawei/android/hwcolorpicker/HwColorPicker;
.super Ljava/lang/Object;
.source "HwColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;,
        Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;,
        Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;,
        Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;,
        Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;,
        Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;,
        Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;
    }
.end annotation


# static fields
.field private static final CURVE_LINEAR_COEF:F = 5644.5f

.field private static final CURVE_POWER_COEF:F = -0.54f

.field private static final DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

.field private static final DEFAULT_H:I = 0x19

.field private static final DEFAULT_W:I = 0x19

.field private static final IS_EMUI_LITE:Z

.field public static final MASK_CLIENT_TYPE:I = -0x1000000

.field public static final MASK_RESULT_INDEX:I = 0xffff

.field public static final MASK_RESULT_STATE:I = 0xff0000

.field private static final TAG:Ljava/lang/String; = "HwColorPicker"

.field private static sIsLibColorPickerExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;-><init>(Lhuawei/android/hwcolorpicker/HwColorPicker$1;)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    .line 22
    const-string v0, "ro.build.hw_emui_lite.enable"

    .line 23
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->IS_EMUI_LITE:Z

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->sIsLibColorPickerExist:Z

    .line 29
    :try_start_0
    const-string v0, "colorpicker"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v1, Lhuawei/android/hwcolorpicker/HwColorPicker;->sIsLibColorPickerExist:Z

    .line 32
    const-string v1, "HwColorPicker"

    const-string v2, "libcolorpicker.so couldn\'t be found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    .locals 1

    .line 14
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v0
.end method

.method private static createSubBitmapAndScale(Landroid/graphics/Bitmap;IIII)[I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 874
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 875
    .local v0, "subBitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 876
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lhuawei/android/hwcolorpicker/HwColorPicker;->getPixelsFormFixedSizeBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    return-object v2
.end method

.method private static getPixelsFormFixedSizeBitmap(Landroid/graphics/Bitmap;)[I
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 907
    if-nez p0, :cond_0

    .line 908
    const/4 v0, 0x0

    return-object v0

    .line 910
    :cond_0
    const/16 v0, 0x271

    new-array v0, v0, [I

    .line 911
    .local v0, "pixels":[I
    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x19

    const/16 v8, 0x19

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 912
    return-object v0
.end method

.method private static getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 802
    if-nez p0, :cond_0

    .line 803
    const-string v0, "HwColorPicker"

    const-string v1, "bitmap is null, can\'t be processed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v0, 0x0

    return-object v0

    .line 807
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p0, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 808
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lhuawei/android/hwcolorpicker/HwColorPicker;->getPixelsFormFixedSizeBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    return-object v1
.end method

.method private static getPixelsFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 825
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 830
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 831
    .local v1, "realRect":Landroid/graphics/Rect;
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 832
    const-string v2, "HwColorPicker"

    const-string v3, "rect and bitmap\'s rect has not intersection, can\'t be processed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-object v0

    .line 836
    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 837
    .local v0, "x":I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 838
    .local v2, "y":I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 839
    .local v3, "w":I
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 841
    .local v4, "h":I
    invoke-static {v3, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isSmallSizeRect(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 842
    invoke-static {p0, v0, v2, v3, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker;->createSubBitmapAndScale(Landroid/graphics/Bitmap;IIII)[I

    move-result-object v5

    return-object v5

    .line 844
    :cond_2
    invoke-static {p0, v0, v2, v3, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker;->scaleAndCreateSubBitmap(Landroid/graphics/Bitmap;IIII)[I

    move-result-object v5

    return-object v5

    .line 826
    .end local v0    # "x":I
    .end local v1    # "realRect":Landroid/graphics/Rect;
    .end local v2    # "y":I
    .end local v3    # "w":I
    .end local v4    # "h":I
    :cond_3
    :goto_0
    const-string v1, "HwColorPicker"

    const-string v2, "bitmap is null or rect is null, can\'t be processed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-object v0
.end method

.method public static isColorPickerEnable()Z
    .locals 2

    .line 42
    sget-boolean v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->sIsLibColorPickerExist:Z

    if-nez v0, :cond_0

    .line 43
    const-string v0, "HwColorPicker"

    const-string v1, "lib colorPicker is not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    sget-boolean v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->sIsLibColorPickerExist:Z

    return v0
.end method

.method public static isDeviceSupport()Z
    .locals 1

    .line 55
    sget-boolean v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->IS_EMUI_LITE:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isEnable()Z
    .locals 1

    .line 67
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isColorPickerEnable()Z

    move-result v0

    return v0
.end method

.method private static isSmallSizeRect(II)Z
    .locals 4
    .param p0, "w"    # I
    .param p1, "h"    # I

    .line 859
    int-to-double v0, p0

    const-wide v2, -0x401eb851e0000000L    # -0.5400000214576721

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x40b60c8000000000L    # 5644.5

    mul-double/2addr v2, v0

    double-to-float v0, v2

    int-to-float v1, p1

    sub-float/2addr v0, v1

    .line 860
    .local v0, "delta":F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 89
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v0

    .line 93
    :cond_0
    invoke-static {p0}, Lhuawei/android/hwcolorpicker/HwColorPicker;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 95
    .local v0, "pixels":[I
    if-nez v0, :cond_1

    .line 96
    const-string v1, "HwColorPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPixelsFromBitmap("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), return null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v1

    .line 100
    :cond_1
    invoke-static {v0}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processPixels([I)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object v1

    return-object v1
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 122
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v0

    .line 126
    :cond_0
    invoke-static {p0, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker;->getPixelsFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 128
    .local v0, "pixels":[I
    if-nez v0, :cond_1

    .line 129
    const-string v1, "HwColorPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPixelsFromBitmap("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), return null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v1

    .line 133
    :cond_1
    invoke-static {v0}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processPixels([I)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object v1

    return-object v1
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clientType"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 189
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v0

    .line 193
    :cond_0
    invoke-static {p0, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker;->getPixelsFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 195
    .local v0, "pixels":[I
    if-nez v0, :cond_1

    .line 196
    const-string v1, "HwColorPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPixelsFromBitmap("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), return null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v1

    .line 200
    :cond_1
    invoke-static {v0, p2}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processPixels([ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object v1

    return-object v1
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "clientType"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 155
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v0

    .line 159
    :cond_0
    invoke-static {p0}, Lhuawei/android/hwcolorpicker/HwColorPicker;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 161
    .local v0, "pixels":[I
    if-nez v0, :cond_1

    .line 162
    const-string v1, "HwColorPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPixelsFromBitmap("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), return null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v1

    .line 166
    :cond_1
    invoke-static {v0, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processPixels([ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object v1

    return-object v1
.end method

.method public static processBitmapAsync(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "callback"    # Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;

    .line 259
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    if-eqz p2, :cond_0

    .line 261
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    invoke-interface {p2, v0}, Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;->onColorPicked(Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;)V

    .line 263
    :cond_0
    return-void

    .line 265
    :cond_1
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-static {p0, p1, v0, p2}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processBitmapAsync(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V

    .line 266
    return-void
.end method

.method public static processBitmapAsync(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clientType"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;
    .param p3, "callback"    # Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;

    .line 324
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    if-eqz p3, :cond_0

    .line 326
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    invoke-interface {p3, v0}, Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;->onColorPicked(Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;)V

    .line 328
    :cond_0
    return-void

    .line 330
    :cond_1
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;-><init>(Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;Lhuawei/android/hwcolorpicker/HwColorPicker$1;)V

    .line 331
    .local v0, "task":Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;
    new-instance v1, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;

    invoke-direct {v1, p0, p1, p2}, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)V

    .line 332
    .local v1, "taskParams":Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 333
    return-void
.end method

.method public static processBitmapAsync(Landroid/graphics/Bitmap;Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "callback"    # Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;

    .line 226
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    if-eqz p1, :cond_0

    .line 228
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    invoke-interface {p1, v0}, Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;->onColorPicked(Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;)V

    .line 230
    :cond_0
    return-void

    .line 232
    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-static {p0, v0, v1, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processBitmapAsync(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V

    .line 233
    return-void
.end method

.method public static processBitmapAsync(Landroid/graphics/Bitmap;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "clientType"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;
    .param p2, "callback"    # Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;

    .line 291
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    if-eqz p2, :cond_0

    .line 293
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    invoke-interface {p2, v0}, Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;->onColorPicked(Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;)V

    .line 295
    :cond_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processBitmapAsync(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V

    .line 298
    return-void
.end method

.method private static processPixels([I)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    .locals 3
    .param p0, "pixels"    # [I

    .line 923
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v0

    .line 926
    :cond_0
    array-length v0, p0

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-static {v1}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->access$200(Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processPixels([III)[I

    move-result-object v0

    .line 927
    .local v0, "colorResult":[I
    new-instance v1, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;-><init>([ILhuawei/android/hwcolorpicker/HwColorPicker$1;)V

    return-object v1
.end method

.method private static processPixels([ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    .locals 3
    .param p0, "pixels"    # [I
    .param p1, "clientType"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 939
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker;->DEFAULT_COLOR:Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    return-object v0

    .line 942
    :cond_0
    array-length v0, p0

    .line 943
    if-eqz p1, :cond_1

    invoke-static {p1}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->access$200(Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)I

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-static {v1}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->access$200(Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)I

    move-result v1

    .line 942
    :goto_0
    invoke-static {p0, v0, v1}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processPixels([III)[I

    move-result-object v0

    .line 944
    .local v0, "colorResult":[I
    new-instance v1, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;-><init>([ILhuawei/android/hwcolorpicker/HwColorPicker$1;)V

    return-object v1
.end method

.method private static native processPixels([III)[I
.end method

.method private static scaleAndCreateSubBitmap(Landroid/graphics/Bitmap;IIII)[I
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 890
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x19

    mul-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v2, p3

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 891
    .local v0, "scaledW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, p4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 892
    .local v2, "scaledH":I
    mul-int/lit8 v3, p1, 0x19

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 893
    .local v3, "newX":I
    mul-int/lit8 v4, p2, 0x19

    int-to-float v4, v4

    int-to-float v5, p4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 895
    .local v4, "newY":I
    const/4 v5, 0x0

    invoke-static {p0, v0, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 896
    .local v5, "newBitmap":Landroid/graphics/Bitmap;
    invoke-static {v5, v3, v4, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 897
    .local v1, "subBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lhuawei/android/hwcolorpicker/HwColorPicker;->getPixelsFormFixedSizeBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v6

    return-object v6
.end method
