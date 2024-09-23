.class public Lhuawei/android/hwutil/AssetsFileCache;
.super Ljava/lang/Object;
.source "AssetsFileCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeInputStream(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .line 89
    if-eqz p0, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AssetsFileCache "

    const-string v2, "closeInputStream IO Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static getBitmapEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "padding"    # Landroid/graphics/Rect;

    .line 61
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 62
    const-string v1, "AssetsFileCache "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmapEntry fileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fail , assets null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v0

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 67
    .local v2, "inputStream":Ljava/io/InputStream;
    if-nez p4, :cond_1

    .line 68
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object p4, v3

    .line 70
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    goto :goto_0

    .line 72
    :cond_2
    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_0
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 74
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 75
    invoke-static {p1, p2, v2, p4, v3}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 77
    if-eqz v1, :cond_4

    .line 78
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1

    :cond_3
    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_1
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_4
    invoke-static {v2}, Lhuawei/android/hwutil/AssetsFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 84
    nop

    .line 85
    return-object v1

    .line 83
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lhuawei/android/hwutil/AssetsFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v0

    .line 80
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    nop

    .line 83
    invoke-static {v2}, Lhuawei/android/hwutil/AssetsFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 81
    return-object v0
.end method

.method public static getDrawableEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 24
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 25
    const-string v1, "AssetsFileCache "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrawableEntry fileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  fail , assets null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-object v0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    nop

    .line 31
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 32
    invoke-static {p1, p2, v0, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lhuawei/android/hwutil/AssetsFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v2

    .line 34
    :catch_0
    move-exception v2

    .line 36
    :goto_0
    invoke-static {v0}, Lhuawei/android/hwutil/AssetsFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 37
    nop

    .line 38
    return-object v1
.end method

.method public static getInputStreamEntry(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 48
    const-string v1, "AssetsFileCache "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrawableEntry fileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  fail , mAssets null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v0

    .line 51
    :cond_0
    nop

    .line 53
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 56
    :goto_0
    return-object v0
.end method
