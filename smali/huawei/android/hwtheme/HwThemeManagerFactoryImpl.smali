.class public Lhuawei/android/hwtheme/HwThemeManagerFactoryImpl;
.super Ljava/lang/Object;
.source "HwThemeManagerFactoryImpl.java"

# interfaces
.implements Landroid/hwtheme/IHwThemeManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThemeManagerInstance()Landroid/hwtheme/HwThemeManager$IHwThemeManager;
    .locals 1

    .line 9
    new-instance v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;

    invoke-direct {v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;-><init>()V

    return-object v0
.end method
