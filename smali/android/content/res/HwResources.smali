.class public Landroid/content/res/HwResources;
.super Landroid/content/res/Resources;
.source "HwResources.java"


# static fields
.field private static final DEBUG_DRAWABLE:Z = false

.field private static final DEFAULT_RES_XX_DIR:Ljava/lang/String; = "res/drawable-xxhdpi"

.field private static final DRAWABLE_FHD:Ljava/lang/String; = "drawable-xxhdpi"

.field private static final FRAMEWORK_RES:Ljava/lang/String; = "framework-res"

.field private static final FRAMEWORK_RES_EXT:Ljava/lang/String; = "framework-res-hwext"

.field static final TAG:Ljava/lang/String; = "HwResources"

.field private static sSerbiaLocale:Z


# instance fields
.field protected mPackageName:Ljava/lang/String;

.field private system:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/HwResources;->sSerbiaLocale:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 401
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/HwResources;->system:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    .line 402
    invoke-virtual {p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AbsResourcesImpl;->initResource()V

    .line 403
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 362
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/HwResources;->system:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    .line 363
    const-string v0, "sr"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroid/content/res/HwResources;->setIsSRLocale(Z)V

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;
    .param p5, "token"    # Landroid/os/IBinder;

    .line 395
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/HwResources;->system:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    .line 397
    const-string v0, "sr"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroid/content/res/HwResources;->setIsSRLocale(Z)V

    .line 398
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 369
    invoke-direct {p0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/HwResources;->system:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "system"    # Z

    .line 375
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/HwResources;->system:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    .line 376
    iput-boolean p1, p0, Landroid/content/res/HwResources;->system:Z

    .line 377
    invoke-virtual {p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AbsResourcesImpl;->initResource()V

    .line 378
    return-void
.end method

.method private getAppBitmapFromAsset(Landroid/util/TypedValue;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "dir"    # Ljava/lang/String;
    .param p5, "rect"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AvoidInHardConnectInString"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Landroid/content/res/HwResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p2, p1, v1, v2}, Lhuawei/android/hwutil/AssetsFileCache;->getBitmapEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, "btmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const-string v1, "drawable-xxhdpi"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v2, "res/drawable-xxhdpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0}, Landroid/content/res/HwResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, p1, v3, p5}, Lhuawei/android/hwutil/AssetsFileCache;->getBitmapEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-object v0
.end method

.method private getFwkBitmapFromAsset(Landroid/util/TypedValue;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "dir"    # Ljava/lang/String;
    .param p7, "padding"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AvoidInHardConnectInString"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Landroid/content/res/HwResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, p1, v1, p7}, Lhuawei/android/hwutil/AssetsFileCache;->getBitmapEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, "btm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const-string v1, "drawable-xxhdpi"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, "name":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v2, "res/drawable-xxhdpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Landroid/content/res/HwResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, p1, v3, p7}, Lhuawei/android/hwutil/AssetsFileCache;->getBitmapEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    .end local v1    # "name":Ljava/lang/StringBuilder;
    :cond_0
    return-object v0
.end method

.method protected static setIsSRLocale(Z)V
    .locals 1
    .param p0, "isSerbia"    # Z

    .line 456
    sget-boolean v0, Landroid/content/res/HwResources;->sSerbiaLocale:Z

    if-eq v0, p0, :cond_0

    .line 457
    sput-boolean p0, Landroid/content/res/HwResources;->sSerbiaLocale:Z

    .line 458
    :cond_0
    return-void
.end method


# virtual methods
.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Landroid/content/res/HwResources;->hwObtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 315
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/HwResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 316
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    .line 318
    invoke-virtual {p0, v0, p1}, Landroid/content/res/HwResources;->getThemeColor(Landroid/util/TypedValue;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;

    move-result-object v1

    .line 319
    .local v1, "themecolor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    if-eqz v1, :cond_0

    .line 320
    iget v2, v1, Landroid/content/res/AbsResourcesImpl$ThemeColor;->mColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .local v2, "colorVaue":I
    nop

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/res/HwResources;->hwReleaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 321
    return v2

    .line 323
    .end local v2    # "colorVaue":I
    :cond_0
    :try_start_1
    iget v2, v0, Landroid/util/TypedValue;->data:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/res/HwResources;->hwReleaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 323
    return v2

    .line 326
    .end local v1    # "themecolor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    :cond_1
    :try_start_2
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/res/HwResources;->hwReleaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 326
    return v1

    .line 329
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/res/HwResources;->hwReleaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getDrawableForDynamic(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/AbsResourcesImpl;->getDrawableForDynamic(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getImpl()Landroid/content/res/ResourcesImpl;
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 495
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0, v0}, Landroid/content/res/HwResources;->serbianSyrillic2Latin([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 499
    return-object v0

    .line 501
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 463
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 464
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0, v0}, Landroid/content/res/HwResources;->serbianSyrillic2Latin(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 467
    return-object v0

    .line 469
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .line 475
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 477
    .local v0, "res":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Landroid/content/res/HwResources;->serbianSyrillic2Latin(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 478
    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 483
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 484
    .local v0, "res":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0, v0}, Landroid/content/res/HwResources;->serbianSyrillic2Latin([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 487
    return-object v0

    .line 489
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getThemeBitmap(Landroid/util/TypedValue;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/HwResources;->getThemeBitmap(Landroid/util/TypedValue;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThemeBitmap(Landroid/util/TypedValue;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "padding"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 121
    move-object/from16 v10, p3

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 122
    return-object v1

    .line 125
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v0

    move/from16 v11, p2

    invoke-virtual {v0, v11, v1}, Landroid/content/res/AbsResourcesImpl;->getThemeResource(ILjava/lang/String;)Landroid/content/res/AbsResourcesImpl$ThemeResource;

    move-result-object v12

    .line 126
    .local v12, "themeRes":Landroid/content/res/AbsResourcesImpl$ThemeResource;
    iget-object v13, v12, Landroid/content/res/AbsResourcesImpl$ThemeResource;->packageName:Ljava/lang/String;

    .line 127
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 128
    return-object v1

    .line 130
    :cond_1
    iget-object v0, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "file":Ljava/lang/String;
    const-string v2, "-v\\d+/"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 133
    .end local v0    # "file":Ljava/lang/String;
    .local v14, "file":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    return-object v1

    .line 137
    :cond_2
    const/4 v0, 0x0

    .line 142
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const-string v2, "framework-res"

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string v2, "_holo"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 143
    return-object v1

    .line 147
    :cond_3
    const-string v1, "-land"

    invoke-virtual {v14, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v16, 0x1

    if-ltz v1, :cond_4

    move/from16 v1, v16

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    move/from16 v17, v1

    .line 148
    .local v17, "isLand":Z
    const-string v1, "framework-res"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 149
    .local v18, "isFramework":Z
    const-string v1, "framework-res-hwext"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 151
    .local v19, "isHwFramework":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AbsResourcesImpl;->getDeepThemeType()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "deepThemeType":Ljava/lang/String;
    const/4 v6, -0x1

    if-nez v18, :cond_6

    if-eqz v19, :cond_5

    goto :goto_1

    .line 200
    :cond_5
    move v11, v6

    move-object/from16 v23, v7

    goto/16 :goto_4

    .line 156
    :cond_6
    :goto_1
    iget-object v1, v8, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v8, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AbsResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v5

    .line 158
    .local v5, "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "key":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 163
    invoke-virtual {v5, v8, v9, v4, v10}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    if-nez v0, :cond_a

    const-string v1, "drawable-xxhdpi"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 168
    invoke-virtual {v5}, Lhuawei/android/hwutil/ZipFileCache;->initResDirInfo()V

    .line 169
    if-eqz v18, :cond_8

    if-eqz v17, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    goto :goto_2

    .line 170
    :cond_8
    if-eqz v17, :cond_9

    const/4 v1, 0x5

    goto :goto_2

    :cond_9
    const/4 v1, 0x4

    .line 171
    .local v1, "index":I
    :goto_2
    invoke-virtual {v5, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableDensity(I)I

    move-result v2

    .line 172
    .local v2, "themeDensity":I
    invoke-virtual {v5, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableDir(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "dir":Ljava/lang/String;
    if-eq v2, v6, :cond_a

    if-eqz v3, :cond_a

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "newFile":Ljava/lang/String;
    invoke-virtual {v5, v8, v9, v6, v10}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .end local v1    # "index":I
    .end local v2    # "themeDensity":I
    .end local v3    # "dir":Ljava/lang/String;
    .end local v6    # "newFile":Ljava/lang/String;
    :cond_a
    if-eqz v0, :cond_b

    .line 185
    return-object v0

    .line 189
    :cond_b
    move-object v15, v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .local v15, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v15, :cond_c

    if-nez v5, :cond_c

    .line 190
    move-object v0, v8

    move-object v1, v9

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v21, v4

    move-object v4, v14

    .end local v4    # "key":Ljava/lang/String;
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v22, v5

    move-object/from16 v5, v21

    .end local v5    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .local v22, "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    const/4 v11, -0x1

    move-object v6, v7

    move-object/from16 v23, v7

    move-object v7, v10

    .end local v7    # "deepThemeType":Ljava/lang/String;
    .local v23, "deepThemeType":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Landroid/content/res/HwResources;->getFwkBitmapFromAsset(Landroid/util/TypedValue;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v15    # "bmp":Landroid/graphics/Bitmap;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 192
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v23    # "deepThemeType":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .restart local v7    # "deepThemeType":Ljava/lang/String;
    .restart local v15    # "bmp":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    const/4 v11, -0x1

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v7    # "deepThemeType":Ljava/lang/String;
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .restart local v23    # "deepThemeType":Ljava/lang/String;
    move-object v0, v15

    .end local v15    # "bmp":Landroid/graphics/Bitmap;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v0, :cond_e

    .line 193
    return-object v0

    .line 200
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v23    # "deepThemeType":Ljava/lang/String;
    .restart local v7    # "deepThemeType":Ljava/lang/String;
    :cond_d
    move v11, v6

    move-object/from16 v23, v7

    .end local v7    # "deepThemeType":Ljava/lang/String;
    .restart local v23    # "deepThemeType":Ljava/lang/String;
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AbsResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v6

    .line 202
    .local v6, "packageZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-eqz v6, :cond_f

    .line 203
    invoke-virtual {v6, v8, v9, v14, v10}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    :cond_f
    if-nez v0, :cond_12

    if-eqz v6, :cond_12

    const-string v1, "drawable-xxhdpi"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 208
    invoke-virtual {v6}, Lhuawei/android/hwutil/ZipFileCache;->initResDirInfo()V

    .line 209
    const-string v1, "-land"

    invoke-virtual {v14, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_10

    move/from16 v1, v16

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    :goto_5
    move/from16 v17, v1

    .line 210
    if-eqz v17, :cond_11

    move/from16 v20, v16

    goto :goto_6

    :cond_11
    const/16 v20, 0x0

    :goto_6
    move/from16 v1, v20

    .line 211
    .restart local v1    # "index":I
    invoke-virtual {v6, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableDensity(I)I

    move-result v2

    .line 212
    .restart local v2    # "themeDensity":I
    invoke-virtual {v6, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableDir(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .restart local v3    # "dir":Ljava/lang/String;
    if-eq v2, v11, :cond_12

    if-eqz v3, :cond_12

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "newFile":Ljava/lang/String;
    invoke-virtual {v6, v8, v9, v4, v10}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "index":I
    .end local v2    # "themeDensity":I
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "newFile":Ljava/lang/String;
    .local v7, "bmp":Landroid/graphics/Bitmap;
    :cond_12
    move-object v7, v0

    move-object/from16 v11, v23

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .end local v23    # "deepThemeType":Ljava/lang/String;
    .local v11, "deepThemeType":Ljava/lang/String;
    if-nez v0, :cond_13

    if-nez v7, :cond_13

    if-nez v6, :cond_13

    if-nez v18, :cond_13

    if-nez v19, :cond_13

    .line 229
    move-object v0, v8

    move-object v1, v9

    move-object v2, v8

    move-object v3, v14

    move-object v4, v11

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/content/res/HwResources;->getAppBitmapFromAsset(Landroid/util/TypedValue;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 232
    :cond_13
    return-object v7
.end method

.method public getThemeColor(Landroid/util/TypedValue;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .locals 3
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .line 335
    invoke-virtual {p0}, Landroid/content/res/HwResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 336
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/HwResources;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AbsResourcesImpl;->setPackageName(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/res/AbsResourcesImpl;->getThemeColor(Landroid/util/TypedValue;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;

    move-result-object v1

    return-object v1

    .line 340
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected isSRLocale()Z
    .locals 1

    .line 452
    sget-boolean v0, Landroid/content/res/HwResources;->sSerbiaLocale:Z

    return v0
.end method

.method protected loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "isThemeColor":Z
    const/4 v1, 0x0

    .line 281
    .local v1, "csl":Landroid/content/res/ColorStateList;
    if-eqz p2, :cond_0

    .line 282
    invoke-virtual {p0, p1, p2}, Landroid/content/res/HwResources;->getThemeColor(Landroid/util/TypedValue;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;

    move-result-object v2

    .line 283
    .local v2, "colorValue":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    if-eqz v2, :cond_0

    .line 284
    iget-boolean v0, v2, Landroid/content/res/AbsResourcesImpl$ThemeColor;->mIsThemed:Z

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget v3, v2, Landroid/content/res/AbsResourcesImpl$ThemeColor;->mColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 290
    .end local v2    # "colorValue":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    :cond_0
    if-nez v0, :cond_1

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 293
    :cond_1
    return-object v1
.end method

.method protected serbianSyrillic2Latin(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Ljava/lang/CharSequence;

    .line 417
    sget-boolean v0, Landroid/content/res/HwResources;->sSerbiaLocale:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-static {p1}, Lcom/huawei/android/text/HwTextUtils;->serbianSyrillic2Latin(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    return-object p1
.end method

.method protected serbianSyrillic2Latin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Ljava/lang/String;

    .line 435
    sget-boolean v0, Landroid/content/res/HwResources;->sSerbiaLocale:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-static {p1}, Lcom/huawei/android/text/HwTextUtils;->serbianSyrillic2Latin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    return-object p1
.end method

.method protected serbianSyrillic2Latin([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "res"    # [Ljava/lang/CharSequence;

    .line 425
    sget-boolean v0, Landroid/content/res/HwResources;->sSerbiaLocale:Z

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 427
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/huawei/android/text/HwTextUtils;->serbianSyrillic2Latin(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p1, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "i":I
    :cond_0
    return-object p1
.end method

.method protected serbianSyrillic2Latin([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "res"    # [Ljava/lang/String;

    .line 443
    sget-boolean v0, Landroid/content/res/HwResources;->sSerbiaLocale:Z

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 445
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/huawei/android/text/HwTextUtils;->serbianSyrillic2Latin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "i":I
    :cond_0
    return-object p1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Landroid/content/res/HwResources;->mPackageName:Ljava/lang/String;

    .line 105
    return-void
.end method
