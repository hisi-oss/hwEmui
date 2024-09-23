.class public Lhuawei/android/app/HwWallpaperInfoStubImpl;
.super Ljava/lang/Object;
.source "HwWallpaperInfoStubImpl.java"

# interfaces
.implements Landroid/app/IHwWallpaperInfoStub;


# instance fields
.field private mWallpaperInfo:Landroid/app/WallpaperInfo;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperInfo;)V
    .locals 0
    .param p1, "ai"    # Landroid/app/WallpaperInfo;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lhuawei/android/app/HwWallpaperInfoStubImpl;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    .line 33
    return-void
.end method


# virtual methods
.method public loadThumbnailWithoutTheme(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 38
    .local v1, "thumbnailResource":I
    iget-object v2, p0, Lhuawei/android/app/HwWallpaperInfoStubImpl;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lhuawei/android/app/HwWallpaperInfoStubImpl;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getThumbnailResource()I

    move-result v1

    .line 42
    :cond_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lhuawei/android/app/HwWallpaperInfoStubImpl;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lhuawei/android/app/HwWallpaperInfoStubImpl;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Landroid/hwtheme/HwThemeManager;->removeIconCache(Ljava/lang/String;Ljava/lang/String;II)V

    .line 47
    iget-object v3, p0, Lhuawei/android/app/HwWallpaperInfoStubImpl;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    .line 48
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    invoke-virtual {p1, v2, v1, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 49
    invoke-static {v2, v1}, Landroid/hwtheme/HwThemeManager;->restoreIconCache(Ljava/lang/String;I)V

    .line 52
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method
