.class public Lhuawei/android/hwgallerycache/HwGalleryCacheManagerFactoryImpl;
.super Ljava/lang/Object;
.source "HwGalleryCacheManagerFactoryImpl.java"

# interfaces
.implements Landroid/hwgallerycache/IHwGalleryCacheManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGalleryCacheManagerInstance()Landroid/hwgallerycache/HwGalleryCacheManager$IHwGalleryCacheManager;
    .locals 1

    .line 24
    new-instance v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;

    invoke-direct {v0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;-><init>()V

    return-object v0
.end method
