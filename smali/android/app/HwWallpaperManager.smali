.class public Landroid/app/HwWallpaperManager;
.super Landroid/app/WallpaperManager;
.source "HwWallpaperManager.java"


# static fields
.field private static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final sSync:Ljava/lang/Object;

.field public static final x_land:I = 0x2

.field public static final x_port:I = 0x0

.field public static final y_land:I = 0x3

.field public static final y_port:I = 0x1


# instance fields
.field private mCustHwWallpaperManager:Landroid/app/HwCustHwWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/HwWallpaperManager;->DEBUG:Z

    .line 98
    const-string v1, "HwWallpaperManager"

    sput-object v1, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/HwWallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/app/WallpaperManager;-><init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V

    .line 111
    const-class v0, Landroid/app/HwCustHwWallpaperManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HwCustHwWallpaperManager;

    iput-object v0, p0, Landroid/app/HwWallpaperManager;->mCustHwWallpaperManager:Landroid/app/HwCustHwWallpaperManager;

    .line 109
    return-void
.end method

.method private cutForLiveWallpaper(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 13
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 483
    invoke-virtual {p0}, Landroid/app/HwWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 485
    .local v0, "wallpaperInfo":Landroid/app/WallpaperInfo;
    const/4 v1, 0x0

    .line 486
    .local v1, "mCurrentUserId":I
    const/4 v2, 0x0

    .line 487
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_6

    .line 488
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/HwWallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v4

    .line 491
    .local v4, "mService":Landroid/app/IWallpaperManager;
    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 492
    :try_start_0
    invoke-interface {v4}, Landroid/app/IWallpaperManager;->getWallpaperUserId()I

    move-result v6

    move v1, v6

    goto :goto_0

    .line 495
    :catch_0
    move-exception v6

    goto :goto_1

    .line 494
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v3, v5, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 497
    goto :goto_2

    .line 495
    :goto_1
    nop

    .line 496
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v7, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    const-string v8, "IWallpaperManager or IPackageManager RemoteException error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_2
    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 499
    .local v5, "flags":I
    :goto_3
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_6

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_6

    .line 500
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 501
    .local v6, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/HwWallpaperManager;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 502
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 503
    .local v8, "d":Landroid/view/Display;
    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 504
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v9, v10, :cond_2

    iget v9, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_4

    :cond_2
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_4
    div-int/lit8 v9, v9, 0x4

    .line 505
    .local v9, "disWidth":I
    iget v10, p1, Landroid/graphics/Rect;->right:I

    if-le v10, v9, :cond_3

    move v10, v9

    goto :goto_5

    :cond_3
    iget v10, p1, Landroid/graphics/Rect;->right:I

    :goto_5
    iput v10, p1, Landroid/graphics/Rect;->right:I

    .line 506
    iget v10, p1, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x2

    add-int/2addr v10, v11

    iget v12, p1, Landroid/graphics/Rect;->right:I

    if-le v10, v12, :cond_4

    iget v10, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    goto :goto_6

    :cond_4
    iget v10, p1, Landroid/graphics/Rect;->right:I

    :goto_6
    iput v10, p1, Landroid/graphics/Rect;->right:I

    .line 507
    const/16 v10, 0x1e

    .line 508
    .local v10, "radius":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    mul-int/2addr v11, v10

    if-le v12, v11, :cond_5

    .line 509
    iget v11, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iput v11, p1, Landroid/graphics/Rect;->left:I

    .line 510
    iget v11, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v10

    iput v11, p1, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 513
    :cond_5
    div-int/lit8 v11, v9, 0x2

    .line 514
    .local v11, "dw":I
    add-int/lit8 v12, v11, -0x2

    iput v12, p1, Landroid/graphics/Rect;->left:I

    .line 515
    add-int/lit8 v12, v11, 0x2

    iput v12, p1, Landroid/graphics/Rect;->right:I

    .line 521
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "mService":Landroid/app/IWallpaperManager;
    .end local v5    # "flags":I
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "wm":Landroid/view/WindowManager;
    .end local v8    # "d":Landroid/view/Display;
    .end local v9    # "disWidth":I
    .end local v10    # "radius":I
    .end local v11    # "dw":I
    :cond_6
    :goto_7
    return-object p1
.end method

.method private getBlurBitmap(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "exclusiveIntersect"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x4

    div-int/2addr v3, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    div-int/2addr v5, v4

    iget v6, v2, Landroid/graphics/Rect;->right:I

    div-int/2addr v6, v4

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v7, v4

    invoke-direct {v0, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    .local v0, "thumbnailRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 135
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 137
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 138
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 142
    :cond_1
    invoke-direct {v1, v0}, Landroid/app/HwWallpaperManager;->cutForLiveWallpaper(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 144
    .end local v0    # "thumbnailRect":Landroid/graphics/Rect;
    .local v3, "thumbnailRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/app/HwWallpaperManager;->peekBlurWallpaperBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 146
    .local v12, "bp":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    if-nez v12, :cond_2

    .line 148
    sget-object v0, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "getBlurBitmap return default cause peek null blur wallpaper."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v13

    .line 157
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v14, v0

    .line 160
    .local v14, "wall":Landroid/graphics/Rect;
    sget-boolean v0, Landroid/app/HwWallpaperManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 161
    sget-object v0, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBlurBitmap wall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",thumbnailRect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_3
    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 166
    .local v15, "height":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 167
    .local v11, "width":I
    mul-int v0, v11, v15

    new-array v5, v0, [I

    .line 170
    .local v5, "inPixels":[I
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v15, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 172
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 173
    :try_start_1
    sget-object v4, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "getBlurBitmap() bitmap = null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    return-object v13

    .line 195
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    move/from16 v23, v11

    move v4, v15

    goto :goto_0

    .line 182
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v6, 0x0

    :try_start_2
    iget v8, v14, Landroid/graphics/Rect;->left:I

    iget v9, v14, Landroid/graphics/Rect;->top:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v12

    move v7, v11

    move v10, v11

    move/from16 v23, v11

    move v11, v15

    .end local v11    # "width":I
    .local v23, "width":I
    :try_start_3
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    .line 184
    const/4 v12, 0x0

    .line 186
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v4, v15

    move-object v15, v0

    .end local v15    # "height":I
    .local v4, "height":I
    move-object/from16 v16, v5

    move/from16 v18, v23

    move/from16 v21, v23

    move/from16 v22, v4

    :try_start_4
    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 188
    invoke-static {}, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->isAverageNoiseSupported()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    new-instance v6, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;

    invoke-direct {v6}, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;-><init>()V

    .line 190
    .local v6, "hwPicAverageNoises":Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;
    const/high16 v7, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v6, v0, v7}, Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;->addNoiseWithBlackBoard(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    return-object v7

    .line 192
    .end local v6    # "hwPicAverageNoises":Lhuawei/android/hwpicaveragenoises/HwPicAverageNoises;
    :cond_5
    return-object v0

    .line 195
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v4    # "height":I
    .restart local v15    # "height":I
    :catch_2
    move-exception v0

    move v4, v15

    .end local v15    # "height":I
    .restart local v4    # "height":I
    goto :goto_0

    .end local v4    # "height":I
    .end local v23    # "width":I
    .restart local v11    # "width":I
    .restart local v15    # "height":I
    :catch_3
    move-exception v0

    move/from16 v23, v11

    move v4, v15

    .line 196
    .end local v11    # "width":I
    .end local v15    # "height":I
    .local v0, "eMem":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "height":I
    .restart local v23    # "width":I
    :goto_0
    sget-object v6, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "HwWallpaperManager can\'t create blur wallpaper for out of memory."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v13

    .line 207
    .end local v0    # "eMem":Ljava/lang/OutOfMemoryError;
    .end local v4    # "height":I
    .end local v5    # "inPixels":[I
    .end local v23    # "width":I
    :cond_6
    sget-object v0, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "getBlurBitmap return default cause rect intersect fail."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v13
.end method

.method private setWallpaperStartingPoints([I)V
    .locals 2
    .param p1, "offsets"    # [I

    .line 369
    invoke-virtual {p0}, Landroid/app/HwWallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v0

    .line 370
    .local v0, "mService":Landroid/app/IWallpaperManager;
    if-eqz v0, :cond_0

    .line 372
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setNextOffsets([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 377
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected createDefaultWallpaperBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    move-object/from16 v1, p0

    .line 256
    move-object/from16 v9, p1

    if-nez v9, :cond_0

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/HwWallpaperManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/WindowManager;

    .line 260
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 261
    .local v11, "display":Landroid/view/Display;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v12, v0

    .line 262
    .local v12, "size":Landroid/graphics/Point;
    invoke-virtual {v11, v12}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 263
    iget v0, v12, Landroid/graphics/Point;->x:I

    iget v2, v12, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_1

    iget v0, v12, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget v0, v12, Landroid/graphics/Point;->y:I

    :goto_0
    move v13, v0

    .line 264
    .local v13, "max":I
    iget v0, v12, Landroid/graphics/Point;->x:I

    iget v2, v12, Landroid/graphics/Point;->y:I

    if-ge v0, v2, :cond_2

    iget v0, v12, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_2
    iget v0, v12, Landroid/graphics/Point;->y:I

    :goto_1
    move v14, v0

    .line 266
    .local v14, "min":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 267
    .local v15, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 271
    .local v8, "height":I
    iget-object v0, v1, Landroid/app/HwWallpaperManager;->mCustHwWallpaperManager:Landroid/app/HwCustHwWallpaperManager;

    const/4 v7, 0x1

    const/16 v16, 0x2

    if-eqz v0, :cond_5

    iget-object v2, v1, Landroid/app/HwWallpaperManager;->mCustHwWallpaperManager:Landroid/app/HwCustHwWallpaperManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/HwWallpaperManager;->getContext()Landroid/content/Context;

    move-result-object v0

    move v3, v13

    move v4, v14

    move v5, v15

    move v6, v8

    move-object/from16 v17, v10

    move v10, v7

    move-object v7, v0

    .end local v10    # "wm":Landroid/view/WindowManager;
    .local v17, "wm":Landroid/view/WindowManager;
    invoke-virtual/range {v2 .. v7}, Landroid/app/HwCustHwWallpaperManager;->isScrollWallpaper(IIIILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    mul-int/lit8 v0, v14, 0x2

    if-gt v0, v13, :cond_3

    .line 275
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 276
    .local v0, "m":Landroid/graphics/Matrix;
    int-to-float v2, v8

    int-to-float v3, v15

    div-float v7, v2, v3

    .line 277
    .local v7, "scale":F
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 278
    sub-int v2, v8, v15

    div-int/lit8 v16, v2, 0x2

    .line 279
    .local v16, "startPos":I
    const/4 v3, 0x0

    const/16 v18, 0x1

    move-object v2, v9

    move/from16 v4, v16

    move v5, v15

    move v6, v15

    move/from16 v19, v7

    move-object v7, v0

    .end local v7    # "scale":F
    .local v19, "scale":F
    move/from16 v20, v8

    move/from16 v8, v18

    .end local v8    # "height":I
    .local v20, "height":I
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 280
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/app/HwWallpaperManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_scroll"

    invoke-static {v3, v4, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v0    # "m":Landroid/graphics/Matrix;
    .end local v16    # "startPos":I
    .end local v19    # "scale":F
    goto :goto_2

    .line 282
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v20    # "height":I
    .restart local v8    # "height":I
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v20, v8

    move-object v2, v9

    .end local v8    # "height":I
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v20    # "height":I
    :goto_2
    sget-object v0, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default wallpaper is scrollable: width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-object v2

    .line 289
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v20    # "height":I
    .restart local v8    # "height":I
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    move/from16 v20, v8

    .end local v8    # "height":I
    .restart local v20    # "height":I
    goto :goto_3

    .end local v17    # "wm":Landroid/view/WindowManager;
    .end local v20    # "height":I
    .restart local v8    # "height":I
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :cond_5
    move/from16 v20, v8

    move-object/from16 v17, v10

    move v10, v7

    .end local v8    # "height":I
    .end local v10    # "wm":Landroid/view/WindowManager;
    .restart local v17    # "wm":Landroid/view/WindowManager;
    .restart local v20    # "height":I
    :goto_3
    move/from16 v2, v20

    if-eq v2, v13, :cond_6

    .end local v20    # "height":I
    .local v2, "height":I
    if-ne v15, v13, :cond_7

    :cond_6
    mul-int v0, v16, v14

    if-eq v15, v0, :cond_8

    if-eq v15, v13, :cond_8

    .line 290
    :cond_7
    sget-object v0, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Irregular default bitmap: width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/app/HwWallpaperManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v14, v13}, Landroid/hwtheme/HwThemeManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 296
    :cond_8
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 297
    .local v0, "offsets":[I
    const-string v3, "ro.config.wallpaper"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/cust/wallpaper/"

    const-string v5, "wallpaper1.jpg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    .line 300
    const-string v3, "/data/skin/description.xml"

    .line 301
    .local v3, "filePath":Ljava/lang/String;
    const-string v4, "/data/skin/description.xml"

    invoke-virtual {v1, v4}, Landroid/app/HwWallpaperManager;->parseWallpaperOffsets(Ljava/lang/String;)[I

    move-result-object v0

    .line 307
    .end local v0    # "offsets":[I
    .local v3, "offsets":[I
    :cond_9
    move-object v3, v0

    const/4 v0, 0x0

    aget v4, v3, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 308
    sub-int v4, v15, v14

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v0

    goto :goto_4

    .line 309
    :cond_a
    aget v4, v3, v0

    if-ge v4, v5, :cond_b

    .line 310
    aput v0, v3, v0

    goto :goto_4

    .line 311
    :cond_b
    aget v4, v3, v0

    sub-int v6, v15, v14

    if-le v4, v6, :cond_c

    .line 312
    sub-int v4, v15, v14

    aput v4, v3, v0

    .line 316
    :cond_c
    :goto_4
    aget v4, v3, v16

    if-ne v4, v5, :cond_d

    .line 317
    sub-int v4, v15, v13

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v16

    goto :goto_5

    .line 318
    :cond_d
    aget v4, v3, v16

    if-ge v4, v5, :cond_e

    .line 319
    aput v0, v3, v16

    goto :goto_5

    .line 320
    :cond_e
    aget v4, v3, v16

    sub-int v6, v15, v13

    if-le v4, v6, :cond_f

    .line 321
    sub-int v4, v15, v13

    aput v4, v3, v16

    .line 324
    :cond_f
    :goto_5
    aget v4, v3, v16

    aget v6, v3, v0

    if-le v4, v6, :cond_10

    .line 325
    aget v4, v3, v0

    aput v4, v3, v16

    goto :goto_6

    .line 326
    :cond_10
    aget v4, v3, v16

    aget v6, v3, v0

    sub-int v7, v13, v14

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_11

    .line 327
    aget v4, v3, v0

    sub-int v6, v13, v14

    sub-int/2addr v4, v6

    aput v4, v3, v16

    .line 332
    :cond_11
    :goto_6
    :try_start_0
    aget v4, v3, v16

    invoke-static {v9, v4, v0, v13, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 335
    .local v4, "newbm":Landroid/graphics/Bitmap;
    aget v6, v3, v0

    aget v7, v3, v16

    sub-int/2addr v6, v7

    aput v6, v3, v0

    .line 336
    aput v0, v3, v10

    .line 337
    aput v0, v3, v16

    .line 339
    const/4 v6, 0x3

    aget v7, v3, v6

    if-ne v7, v5, :cond_12

    .line 340
    sub-int v0, v13, v14

    div-int/lit8 v0, v0, 0x2

    aput v0, v3, v6

    goto :goto_7

    .line 341
    :cond_12
    aget v7, v3, v6

    if-ge v7, v5, :cond_13

    .line 342
    aput v0, v3, v6

    goto :goto_7

    .line 343
    :cond_13
    aget v0, v3, v6

    sub-int v5, v13, v14

    if-le v0, v5, :cond_14

    .line 344
    sub-int v0, v13, v14

    aput v0, v3, v6

    .line 346
    :cond_14
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/HwWallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .line 347
    .local v5, "mService":Landroid/app/IWallpaperManager;
    if-eqz v5, :cond_15

    .line 349
    :try_start_1
    invoke-interface {v5, v3}, Landroid/app/IWallpaperManager;->setCurrOffsets([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 355
    :goto_8
    goto :goto_9

    .line 353
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 354
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v6, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "Caller has no permission to set current wallpaper offsets!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_9

    .line 350
    :catch_1
    move-exception v0

    goto :goto_8

    .line 358
    :cond_15
    :goto_9
    if-eqz v9, :cond_16

    if-eq v9, v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 361
    :cond_16
    return-object v4

    .line 362
    .end local v4    # "newbm":Landroid/graphics/Bitmap;
    .end local v5    # "mService":Landroid/app/IWallpaperManager;
    :catch_2
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "Create default square bitmap error, run generateBitmap! "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/app/HwWallpaperManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9, v14, v13}, Landroid/hwtheme/HwThemeManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBlurBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/HwWallpaperManager;->getBlurBitmap(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperStartingPoints()[I
    .locals 4

    .line 380
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 381
    .local v0, "defaultOffsets":[I
    const/4 v1, 0x0

    .line 382
    .local v1, "offsets":[I
    invoke-virtual {p0}, Landroid/app/HwWallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v2

    .line 383
    .local v2, "mService":Landroid/app/IWallpaperManager;
    if-eqz v2, :cond_0

    .line 385
    :try_start_0
    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getCurrOffsets()[I

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v3

    .line 390
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 391
    move-object v1, v0

    .line 393
    :cond_1
    return-object v1

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public parseWallpaperOffsets(Ljava/lang/String;)[I
    .locals 11
    .param p1, "srcFile"    # Ljava/lang/String;

    .line 424
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 425
    .local v0, "offsets":[I
    const/4 v1, 0x0

    .line 426
    .local v1, "file":Ljava/io/File;
    if-nez p1, :cond_0

    .line 427
    return-object v0

    .line 429
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 431
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    return-object v0

    .line 435
    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    .line 437
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v8

    .line 438
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 439
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v9, "utf-8"

    invoke-interface {v8, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 440
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 441
    .local v9, "eventType":I
    nop

    .line 443
    .local v2, "tagName":Ljava/lang/String;
    :goto_0
    if-eq v9, v7, :cond_7

    .line 444
    if-ne v9, v6, :cond_5

    .line 445
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 446
    const-string v10, "WP_Xoffset_port"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 447
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v4

    goto :goto_1

    .line 448
    :cond_2
    const-string v10, "WP_Yoffset_port"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 449
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v7

    goto :goto_1

    .line 450
    :cond_3
    const-string v10, "WP_Xoffset_land"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 451
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v6

    goto :goto_1

    .line 452
    :cond_4
    const-string v10, "WP_Yoffset_land"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 453
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v5

    goto :goto_1

    .line 455
    :cond_5
    if-ne v9, v5, :cond_6

    .line 456
    const/4 v2, 0x0

    .line 458
    :cond_6
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v10

    goto :goto_0

    .line 470
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "eventType":I
    :cond_7
    nop

    .line 471
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 473
    :catch_0
    move-exception v2

    .line 474
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 476
    .end local v2    # "ioe":Ljava/io/IOException;
    goto :goto_3

    .line 475
    :cond_8
    :goto_2
    goto :goto_3

    .line 469
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 466
    :catch_1
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_8

    .line 471
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 464
    :catch_2
    move-exception v2

    .line 465
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 470
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_8

    .line 471
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 462
    :catch_3
    move-exception v2

    .line 463
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 470
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_8

    .line 471
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 460
    :catch_4
    move-exception v2

    .line 461
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 470
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_8

    .line 471
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_2

    .line 477
    :goto_3
    sget-object v2, Landroid/app/HwWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parse offsets:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v7

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v6

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v5

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-object v0

    .line 469
    :goto_4
    nop

    .line 470
    if-eqz v3, :cond_9

    .line 471
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    .line 473
    :catch_5
    move-exception v4

    .line 474
    .local v4, "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "ioe":Ljava/io/IOException;
    nop

    .line 475
    :cond_9
    :goto_5
    throw v2

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 399
    .local v0, "defaultOffsets":[I
    invoke-direct {p0, v0}, Landroid/app/HwWallpaperManager;->setWallpaperStartingPoints([I)V

    .line 400
    invoke-super {p0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public setBitmapWithOffsets(Landroid/graphics/Bitmap;[I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "offsets"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-direct {p0, p2}, Landroid/app/HwWallpaperManager;->setWallpaperStartingPoints([I)V

    .line 407
    invoke-super {p0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 409
    return-void
.end method

.method public setCallback(Ljava/lang/Object;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Object;

    .line 221
    sget-object v0, Landroid/app/HwWallpaperManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 222
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 223
    sget-object v2, Landroid/app/HwWallpaperManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 224
    .local v2, "cb":Ljava/lang/Object;
    if-ne v2, p1, :cond_0

    .line 225
    return-void

    .line 222
    .end local v2    # "cb":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Landroid/app/HwWallpaperManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/HwWallpaperManager;->setStream(Ljava/io/InputStream;I)V

    .line 234
    return-void
.end method

.method public setStream(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 241
    .local v0, "defaultOffsets":[I
    invoke-direct {p0, v0}, Landroid/app/HwWallpaperManager;->setWallpaperStartingPoints([I)V

    .line 242
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, v1, v2, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    .line 245
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public setStreamWithOffsets(Ljava/io/InputStream;[I)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "offsets"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/HwWallpaperManager;->setStreamWithOffsets(Ljava/io/InputStream;[II)V

    .line 413
    return-void
.end method

.method public setStreamWithOffsets(Ljava/io/InputStream;[II)V
    .locals 2
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "offsets"    # [I
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-direct {p0, p2}, Landroid/app/HwWallpaperManager;->setWallpaperStartingPoints([I)V

    .line 419
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1, p3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    .line 421
    return-void
.end method
