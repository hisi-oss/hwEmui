.class public Lhuawei/android/common/HwFrameworkFactoryImpl$HwWallpaperManagerImpl;
.super Ljava/lang/Object;
.source "HwFrameworkFactoryImpl.java"

# interfaces
.implements Landroid/common/HwFrameworkFactory$IHwWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/common/HwFrameworkFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwWallpaperManagerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)Landroid/app/WallpaperManager;
    .locals 1
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 383
    new-instance v0, Landroid/app/HwWallpaperManager;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/HwWallpaperManager;-><init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method
