.class public Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;
.super Ljava/lang/Object;
.source "HwPicAverageNoises.java"


# static fields
.field private static final PAD_SCREEN_SIZE_MIN:D = 6.5

.field private static final TAG:Ljava/lang/String; = "HwPicAverageNoises"

.field private static isJniAverageLibExist:Z

.field private static mDeviceSize:D

.field private static mIWindowManager:Landroid/view/IWindowManager;

.field private static mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->isJniAverageLibExist:Z

    .line 32
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mIWindowManager:Landroid/view/IWindowManager;

    .line 33
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    :try_start_0
    const-string v0, "jniaverage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->isJniAverageLibExist:Z

    .line 40
    const-string v1, "HwPicAverageNoises"

    const-string v2, "libjniaverage.so couldn\'t be found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static addBlackBoard(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I

    .line 115
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 116
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 117
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 118
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    monitor-enter v0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v2, v3

    .line 120
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 123
    monitor-exit v0

    .line 124
    return-object v2

    .line 123
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static isAverageNoiseSupported()Z
    .locals 18

    .line 63
    sget-boolean v0, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->isJniAverageLibExist:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 64
    return v1

    .line 67
    :cond_0
    sget-wide v2, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mDeviceSize:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    const-wide/high16 v3, 0x401a000000000000L    # 6.5

    if-lez v0, :cond_2

    .line 68
    const-string v0, "HwPicAverageNoises"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDeviceSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mDeviceSize:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-wide v5, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mDeviceSize:D

    cmpl-double v0, v5, v3

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 71
    :cond_2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v5, v0

    .line 72
    .local v5, "dm":Landroid/util/DisplayMetrics;
    sget-object v0, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    const-string v0, "HwPicAverageNoises"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRealMetrics: dm.x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", dm.y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-wide/16 v6, 0x0

    .line 76
    .local v6, "xInch":D
    const-wide/16 v8, 0x0

    .line 78
    .local v8, "yInch":D
    sget-object v0, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v10, 0x4

    const/4 v11, 0x2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_4

    .line 79
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v14, v0

    .line 81
    .local v14, "point":Landroid/graphics/Point;
    :try_start_0
    sget-object v0, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, v1, v14}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 83
    iget v0, v14, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v15, v5, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v15

    float-to-double v1, v0

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-wide v1, v0

    .line 84
    .end local v6    # "xInch":D
    .local v1, "xInch":D
    :try_start_1
    iget v0, v14, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v6, v5, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .end local v8    # "yInch":D
    .local v6, "yInch":D
    :try_start_2
    new-instance v0, Ljava/math/BigDecimal;

    add-double v8, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 86
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    sput-wide v8, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mDeviceSize:D

    .line 87
    sget-wide v8, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mDeviceSize:D
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    cmpl-double v3, v8, v3

    if-lez v3, :cond_3

    const/16 v16, 0x1

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    :goto_0
    return v16

    .line 88
    .end local v0    # "bd":Ljava/math/BigDecimal;
    :catch_0
    move-exception v0

    move-wide v8, v6

    goto :goto_1

    .end local v6    # "yInch":D
    .restart local v8    # "yInch":D
    :catch_1
    move-exception v0

    .end local v1    # "xInch":D
    .local v6, "xInch":D
    :goto_1
    move-wide v6, v1

    goto :goto_2

    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v1, "HwPicAverageNoises"

    const-string v2, "RemoteException while calculate device size"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "point":Landroid/graphics/Point;
    :cond_4
    const-string v0, "HwPicAverageNoises"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dm.widthPixels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dm.heightPixels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, v5, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 94
    .end local v6    # "xInch":D
    .local v0, "xInch":D
    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v6, v5, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 96
    .end local v8    # "yInch":D
    .local v6, "yInch":D
    new-instance v2, Ljava/math/BigDecimal;

    add-double v8, v0, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-direct {v2, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 97
    .local v2, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v2, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    sput-wide v8, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mDeviceSize:D

    .line 98
    sget-wide v8, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->mDeviceSize:D

    cmpl-double v3, v8, v3

    if-lez v3, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    return v16
.end method

.method private static scaleBitmapToScreenSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 130
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    .line 132
    move-object/from16 v16, v0

    goto/16 :goto_1

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 135
    .local v8, "screenW":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 136
    .local v9, "screenH":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 137
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 138
    .local v11, "height":I
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v12, v1

    .line 139
    .local v12, "matrix":Landroid/graphics/Matrix;
    div-int v13, v9, v11

    .line 140
    .local v13, "scaleH":I
    div-int v14, v8, v10

    .line 141
    .local v14, "scaleW":I
    if-le v13, v14, :cond_1

    int-to-float v1, v13

    goto :goto_0

    :cond_1
    int-to-float v1, v14

    :goto_0
    move v7, v1

    .line 142
    .local v7, "scale":F
    invoke-virtual {v12, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 143
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x1

    move-object/from16 v1, p0

    move v4, v10

    move v5, v11

    move-object v6, v12

    move-object/from16 v16, v0

    move v0, v7

    move v7, v15

    .end local v7    # "scale":F
    .local v0, "scale":F
    .local v16, "context":Landroid/content/Context;
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    .local v1, "resizedBitmap":Landroid/graphics/Bitmap;
    const-string v2, "HwPicAverageNoises"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",screenW:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",screenH:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v1

    .line 132
    .end local v1    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "screenW":I
    .end local v9    # "screenH":I
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "scaleH":I
    .end local v14    # "scaleW":I
    .end local v16    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addNoiseWithBlackBoard(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I

    .line 103
    invoke-static {p1}, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->scaleBitmapToScreenSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "scaleBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->jniNoiseBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p2}, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->addBlackBoard(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .local v1, "tmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    :cond_0
    return-object v1
.end method

.method public native jniFromNoiseBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public jniNoiseBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmapOld"    # Landroid/graphics/Bitmap;

    .line 51
    invoke-static {}, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->isAverageNoiseSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->jniFromNoiseBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    return-object p1

    .line 58
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    return-object p1
.end method
