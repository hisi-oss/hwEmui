.class public Lhuawei/android/common/HwFrameworkFactoryImpl;
.super Ljava/lang/Object;
.source "HwFrameworkFactoryImpl.java"

# interfaces
.implements Landroid/common/HwFrameworkFactory$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/common/HwFrameworkFactoryImpl$HwSystemManagerImpl;,
        Lhuawei/android/common/HwFrameworkFactoryImpl$HwWallpaperManagerImpl;,
        Lhuawei/android/common/HwFrameworkFactoryImpl$HwNetworkPolicyManagerImpl;
    }
.end annotation


# static fields
.field public static final ACTION_HW_CHOOSER:Ljava/lang/String; = "com.huawei.intent.action.hwCHOOSER"

.field private static final TAG:Ljava/lang/String; = "HwFrameworkFactoryImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHwInterpolator(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 471
    new-instance v0, Lcom/huawei/hwanimation/AnimUtil;

    invoke-direct {v0}, Lcom/huawei/hwanimation/AnimUtil;-><init>()V

    .line 472
    .local v0, "animUtil":Lcom/huawei/hwanimation/AnimUtil;
    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hwanimation/AnimUtil;->getCubicBezierInterpolator(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/huawei/hwanimation/CubicBezierInterpolator;

    move-result-object v1

    return-object v1
.end method

.method public createHwInterpolator(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 476
    new-instance v0, Lcom/huawei/hwanimation/AnimUtil;

    invoke-direct {v0}, Lcom/huawei/hwanimation/AnimUtil;-><init>()V

    .line 477
    .local v0, "animUtil":Lcom/huawei/hwanimation/AnimUtil;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hwanimation/AnimUtil;->getCubicBezierInterpolator(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Lcom/huawei/hwanimation/CubicBezierInterpolator;

    move-result-object v1

    return-object v1
.end method

.method public getAppEyeUiProbe()Landroid/zrhung/IAppEyeUiProbe;
    .locals 4

    .line 612
    const/4 v0, 0x0

    .line 614
    .local v0, "probe":Landroid/zrhung/IAppEyeUiProbe;
    :try_start_0
    invoke-static {}, Landroid/zrhung/appeye/AppEyeUiProbe;->get()Landroid/zrhung/appeye/AppEyeUiProbe;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 617
    goto :goto_0

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "HwFrameworkFactoryImpl"

    const-string v3, "Get AppEyeUiProbe encounter error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public getAppFreezeScreenMonitor()Landroid/os/IFreezeScreenApplicationMonitor;
    .locals 1

    .line 660
    invoke-static {}, Landroid/os/FreezeScreenApplicationMonitor;->getInstance()Landroid/os/FreezeScreenApplicationMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getApsManager()Landroid/aps/IApsManager;
    .locals 1

    .line 697
    invoke-static {}, Landroid/aps/HwApsManager;->getDefault()Landroid/aps/HwApsManager;

    move-result-object v0

    return-object v0
.end method

.method public getCoverManager()Landroid/cover/IHwCoverManager;
    .locals 1

    .line 521
    invoke-static {}, Landroid/cover/CoverManager;->getDefault()Landroid/cover/CoverManager;

    move-result-object v0

    return-object v0
.end method

.method public getForceRotationManager()Lcom/huawei/forcerotation/IForceRotationManager;
    .locals 1

    .line 712
    invoke-static {}, Lcom/huawei/forcerotation/HwForceRotationManager;->getDefault()Lcom/huawei/forcerotation/HwForceRotationManager;

    move-result-object v0

    return-object v0
.end method

.method public getHuaweiChooserIntentImpl()Landroid/content/Intent;
    .locals 2

    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.intent.action.hwCHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public getHuaweiDevicePolicyManagerImpl()Landroid/hdm/HwDeviceManager$IHwDeviceManager;
    .locals 1

    .line 636
    new-instance v0, Lhuawei/android/app/admin/HwDeviceManagerImpl;

    invoke-direct {v0}, Lhuawei/android/app/admin/HwDeviceManagerImpl;-><init>()V

    return-object v0
.end method

.method public getHuaweiResolverActivityImpl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20201b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHuaweiWallpaperManager()Landroid/common/HwFrameworkFactory$IHwWallpaperManager;
    .locals 1

    .line 358
    new-instance v0, Lhuawei/android/common/HwFrameworkFactoryImpl$HwWallpaperManagerImpl;

    invoke-direct {v0}, Lhuawei/android/common/HwFrameworkFactoryImpl$HwWallpaperManagerImpl;-><init>()V

    return-object v0
.end method

.method public getHwActivitySplitterImpl(Landroid/app/Activity;Z)Landroid/app/HwActivitySplitterImpl;
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "isBase"    # Z

    .line 683
    invoke-static {p1, p2}, Landroid/app/HwActivitySplitterImpl;->getDefault(Landroid/app/Activity;Z)Landroid/app/HwActivitySplitterImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHwActivitySplitterImpl(Landroid/app/Activity;Z)Landroid/app/IHwActivitySplitterImpl;
    .locals 0

    .line 348
    invoke-virtual {p0, p1, p2}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwActivitySplitterImpl(Landroid/app/Activity;Z)Landroid/app/HwActivitySplitterImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHwActivityThread()Landroid/common/HwActivityThread;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwActivityThread()Lhuawei/android/app/HwActivityThreadImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwActivityThread()Lhuawei/android/app/HwActivityThreadImpl;
    .locals 1

    .line 723
    invoke-static {}, Lhuawei/android/app/HwActivityThreadImpl;->getDefault()Lhuawei/android/app/HwActivityThreadImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwAnimationManager()Landroid/common/HwAnimationManager;
    .locals 1

    .line 481
    invoke-static {}, Lhuawei/android/hwanimation/HwAnimationManagerImpl;->getDefault()Landroid/common/HwAnimationManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHwApiCacheManagerEx()Landroid/common/IHwApiCacheManagerEx;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwApiCacheManagerEx()Lhuawei/android/app/HwApiCacheMangerEx;

    move-result-object v0

    return-object v0
.end method

.method public getHwApiCacheManagerEx()Lhuawei/android/app/HwApiCacheMangerEx;
    .locals 1

    .line 703
    invoke-static {}, Lhuawei/android/app/HwApiCacheMangerEx;->getDefault()Lhuawei/android/app/HwApiCacheMangerEx;

    move-result-object v0

    return-object v0
.end method

.method public getHwAppInnerBoostImpl()Landroid/rms/HwAppInnerBoostImpl;
    .locals 1

    .line 591
    invoke-static {}, Landroid/rms/HwAppInnerBoostImpl;->getDefault()Landroid/rms/HwAppInnerBoostImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHwAppInnerBoostImpl()Landroid/rms/IHwAppInnerBoost;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwAppInnerBoostImpl()Landroid/rms/HwAppInnerBoostImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwAppSceneImpl()Landroid/view/HwAppSceneImpl;
    .locals 1

    .line 848
    invoke-static {}, Landroid/view/HwAppSceneImpl;->getDefault()Landroid/view/HwAppSceneImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHwAppSceneImpl()Landroid/view/IHwAppSceneImpl;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwAppSceneImpl()Landroid/view/HwAppSceneImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwApplicationPackageManager()Landroid/common/HwPackageManager;
    .locals 1

    .line 552
    invoke-static {}, Lhuawei/android/app/HwApplicationPackageManager;->getDefault()Landroid/common/HwPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwApsImpl()Landroid/view/HwApsImpl;
    .locals 1

    .line 586
    invoke-static {}, Landroid/view/HwApsImpl;->getDefault()Landroid/view/HwApsImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHwApsImpl()Landroid/view/IHwApsImpl;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwApsImpl()Landroid/view/HwApsImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwAutofillHelper()Landroid/view/autofill/IHwAutofillHelper;
    .locals 1

    .line 769
    new-instance v0, Lhuawei/android/view/autofill/HwAutofillHelper;

    invoke-direct {v0}, Lhuawei/android/view/autofill/HwAutofillHelper;-><init>()V

    return-object v0
.end method

.method public getHwBaseInnerSmsManager()Lcom/android/internal/telephony/HwBaseInnerSmsManager;
    .locals 1

    .line 401
    invoke-static {}, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->getDefault()Lcom/android/internal/telephony/HwBaseInnerSmsManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwBehaviorCollectManager()Lhuawei/android/security/IHwBehaviorCollectManager;
    .locals 1

    .line 743
    invoke-static {}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getDefault()Lhuawei/android/security/IHwBehaviorCollectManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwCameraUtil()Landroid/camera/IHwCameraUtil;
    .locals 1

    .line 829
    invoke-static {}, Landroid/camera/HwCameraUtil;->getDefault()Landroid/camera/HwCameraUtil;

    move-result-object v0

    return-object v0
.end method

.method public getHwCarrierConfigPolicy()Lhuawei/cust/IHwCarrierConfigPolicy;
    .locals 1

    .line 738
    invoke-static {}, Lhuawei/cust/HwCarrierConfigPolicy;->getDefault()Lhuawei/cust/HwCarrierConfigPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getHwCfgFileConfig()Lhuawei/cust/IHwGetCfgFileConfig;
    .locals 1

    .line 748
    invoke-static {}, Lhuawei/cust/HwGetCfgFile;->getDefault()Lhuawei/cust/HwGetCfgFile;

    move-result-object v0

    return-object v0
.end method

.method public getHwClipboardReadDelayRegisterFactory()Landroid/hwclipboarddelayread/IHwClipboardReadDelayRegisterFactory;
    .locals 1

    .line 507
    new-instance v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterFactoryImpl;

    invoke-direct {v0}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterFactoryImpl;-><init>()V

    return-object v0
.end method

.method public getHwClipboardReadDelayerFactory()Landroid/hwclipboarddelayread/IHwClipboardReadDelayerFactory;
    .locals 1

    .line 503
    new-instance v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerFactoryImpl;

    invoke-direct {v0}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerFactoryImpl;-><init>()V

    return-object v0
.end method

.method public getHwCommBoosterServiceManager()Landroid/net/booster/IHwCommBoosterServiceManager;
    .locals 1

    .line 730
    invoke-static {}, Landroid/net/booster/HwCommBoosterServiceManager;->getInstance()Landroid/net/booster/HwCommBoosterServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwConfiguration()Landroid/content/res/IHwConfiguration;
    .locals 1

    .line 512
    new-instance v0, Landroid/content/res/ConfigurationEx;

    invoke-direct {v0}, Landroid/content/res/ConfigurationEx;-><init>()V

    return-object v0
.end method

.method public getHwDeviceAdminInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/admin/IHwDeviceAdminInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 672
    new-instance v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Lhuawei/android/app/admin/HwDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    return-object v0
.end method

.method public getHwDisplayManagerGlobalEx(Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;)Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalEx;
    .locals 1
    .param p1, "dmg"    # Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;

    .line 824
    new-instance v0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;

    invoke-direct {v0, p1}, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;-><init>(Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;)V

    return-object v0
.end method

.method public getHwDrmManager()Landroid/common/HwDrmManager;
    .locals 1

    .line 526
    invoke-static {}, Lhuawei/android/hwdrm/HwDrmManagerImpl;->getDefault()Landroid/common/HwDrmManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwFlogManager()Landroid/common/HwFlogManager;
    .locals 1

    .line 517
    invoke-static {}, Lhuawei/android/utils/HwFlogManagerImpl;->getDefault()Landroid/common/HwFlogManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwFrameworkMonitor()Landroid/common/HwFrameworkMonitor;
    .locals 1

    .line 677
    invoke-static {}, Lhuawei/android/common/HwFrameworkMonitorImpl;->getInstance()Lhuawei/android/common/HwFrameworkMonitorImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwGalleryCacheManagerFactory()Landroid/hwgallerycache/IHwGalleryCacheManagerFactory;
    .locals 1

    .line 498
    new-instance v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerFactoryImpl;

    invoke-direct {v0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerFactoryImpl;-><init>()V

    return-object v0
.end method

.method public getHwHandler()Landroid/os/IHwHandler;
    .locals 1

    .line 688
    invoke-static {}, Landroid/os/HwHandlerImpl;->getDefault()Landroid/os/HwHandlerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwHwAudioRecord()Landroid/media/IHwAudioRecord;
    .locals 1

    .line 581
    invoke-static {}, Landroid/media/HwAudioRecordImpl;->getDefault()Landroid/media/IHwAudioRecord;

    move-result-object v0

    return-object v0
.end method

.method public getHwIAwareBitmapCacher()Landroid/graphics/IAwareBitmapCacher;
    .locals 1

    .line 818
    invoke-static {}, Landroid/graphics/AwareBitmapCacher;->getDefault()Landroid/graphics/IAwareBitmapCacher;

    move-result-object v0

    return-object v0
.end method

.method public getHwInnerConnectivityManager()Landroid/net/HwInnerConnectivityManager;
    .locals 1

    .line 597
    invoke-static {}, Landroid/net/HwInnerConnectivityManagerImpl;->getDefault()Landroid/net/HwInnerConnectivityManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwInnerLocationManager()Landroid/location/IHwInnerLocationManager;
    .locals 1

    .line 640
    invoke-static {}, Landroid/location/HwInnerLocationManagerImpl;->getDefault()Landroid/location/IHwInnerLocationManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwInnerNetworkManager()Landroid/net/wifi/HwInnerNetworkManager;
    .locals 1

    .line 625
    invoke-static {}, Landroid/net/wifi/HwInnerNetworkManagerImpl;->getDefault()Landroid/net/wifi/HwInnerNetworkManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;
    .locals 1

    .line 407
    invoke-static {}, Landroid/telephony/HwInnerTelephonyManagerImpl;->getDefault()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwInnerWifiManager()Landroid/net/wifi/HwInnerWifiManager;
    .locals 1

    .line 419
    invoke-static {}, Landroid/net/wifi/HwInnerWifiManagerImpl;->getDefault()Landroid/net/wifi/HwInnerWifiManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwInnerWifiP2pManager()Landroid/net/wifi/p2p/HwInnerWifiP2pManager;
    .locals 1

    .line 426
    invoke-static {}, Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;->getDefault()Landroid/net/wifi/p2p/HwInnerWifiP2pManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwKeyguardManager()Landroid/app/HwKeyguardManager;
    .locals 1

    .line 412
    invoke-static {}, Lhuawei/android/app/HwKeyguardManagerImpl;->getDefault()Landroid/app/HwKeyguardManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwLocaleHelperEx()Lcom/huawei/android/app/IHwLocaleHelperEx;
    .locals 1

    .line 810
    new-instance v0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;

    invoke-direct {v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;-><init>()V

    return-object v0
.end method

.method public getHwLocaleHelperEx(Lcom/android/internal/app/IHwLocaleStoreInner;)Lcom/huawei/android/app/IHwLocaleHelperEx;
    .locals 1
    .param p1, "inner"    # Lcom/android/internal/app/IHwLocaleStoreInner;

    .line 801
    new-instance v0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;

    invoke-direct {v0, p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;-><init>(Lcom/android/internal/app/IHwLocaleStoreInner;)V

    return-object v0
.end method

.method public getHwLocaleHelperManagerEx()Lcom/android/internal/app/HwLocaleHelperManagerEx;
    .locals 1

    .line 854
    invoke-static {}, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->getDefault()Lcom/android/internal/app/HwLocaleHelperManagerEx;

    move-result-object v0

    return-object v0
.end method

.method public getHwLocalePickerEx()Lcom/huawei/android/app/IHwLocalePickerEx;
    .locals 1

    .line 784
    new-instance v0, Lhuawei/com/android/internal/app/HwLocalePickerEx;

    invoke-direct {v0}, Lhuawei/com/android/internal/app/HwLocalePickerEx;-><init>()V

    return-object v0
.end method

.method public getHwLocalePickerEx(Lcom/android/internal/app/IHwLocalePickerInner;Landroid/content/Context;)Lcom/huawei/android/app/IHwLocalePickerEx;
    .locals 1
    .param p1, "inner"    # Lcom/android/internal/app/IHwLocalePickerInner;
    .param p2, "context"    # Landroid/content/Context;

    .line 774
    new-instance v0, Lhuawei/com/android/internal/app/HwLocalePickerEx;

    invoke-direct {v0, p1, p2}, Lhuawei/com/android/internal/app/HwLocalePickerEx;-><init>(Lcom/android/internal/app/IHwLocalePickerInner;Landroid/content/Context;)V

    return-object v0
.end method

.method public getHwLocalePickerManager()Lcom/android/internal/app/HwLocalePickerManager;
    .locals 1

    .line 389
    invoke-static {}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->getDefault()Lcom/android/internal/app/HwLocalePickerManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwLocalePickerWithRegionEx(Lcom/android/internal/app/IHwLocalePickerWithRegionInner;)Lcom/huawei/android/app/IHwLocalePickerWithRegionEx;
    .locals 1
    .param p1, "lpw"    # Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    .line 792
    new-instance v0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    invoke-direct {v0, p1}, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;-><init>(Lcom/android/internal/app/IHwLocalePickerWithRegionInner;)V

    return-object v0
.end method

.method public getHwLocaleStoreEx()Lcom/huawei/android/app/IHwLocaleStoreEx;
    .locals 1

    .line 796
    new-instance v0, Lhuawei/com/android/internal/app/HwLocaleStoreEx;

    invoke-direct {v0}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;-><init>()V

    return-object v0
.end method

.method public getHwMediaMonitor()Landroid/media/IHwMediaMonitor;
    .locals 1

    .line 651
    invoke-static {}, Landroid/media/HwMediaMonitorImpl;->getDefault()Landroid/media/IHwMediaMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getHwMediaRecorder()Landroid/media/IHwMediaRecorder;
    .locals 1

    .line 577
    invoke-static {}, Landroid/media/HwMediaRecorderImpl;->getDefault()Landroid/media/IHwMediaRecorder;

    move-result-object v0

    return-object v0
.end method

.method public getHwMediaScannerManager()Landroid/common/HwMediaScannerManager;
    .locals 1

    .line 459
    invoke-static {}, Landroid/media/HwMediaScannerImpl;->getDefault()Landroid/common/HwMediaScannerManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwMediaStoreManager()Landroid/provider/IHwMediaStore;
    .locals 1

    .line 451
    invoke-static {}, Lhuawei/android/provider/HwMediaStoreImpl;->getDefault()Landroid/provider/IHwMediaStore;

    move-result-object v0

    return-object v0
.end method

.method public getHwMnoteInterface()Landroid/media/hwmnote/IHwMnoteInterface;
    .locals 1

    .line 734
    new-instance v0, Landroid/media/hwmnote/HwMnoteInterfaceImpl;

    invoke-direct {v0}, Landroid/media/hwmnote/HwMnoteInterfaceImpl;-><init>()V

    return-object v0
.end method

.method public getHwMtpDatabaseManager()Landroid/mtp/HwMtpDatabaseManager;
    .locals 1

    .line 456
    invoke-static {}, Landroid/mtp/HwMtpDatabaseImpl;->getDefault()Landroid/mtp/HwMtpDatabaseManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwNetworkPolicyManager()Landroid/common/HwFrameworkFactory$IHwNetworkPolicyManager;
    .locals 1

    .line 362
    new-instance v0, Lhuawei/android/common/HwFrameworkFactoryImpl$HwNetworkPolicyManagerImpl;

    invoke-direct {v0}, Lhuawei/android/common/HwFrameworkFactoryImpl$HwNetworkPolicyManagerImpl;-><init>()V

    return-object v0
.end method

.method public getHwNotificationEx(Landroid/content/Context;)Landroid/app/IHwNotificationEx;
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .line 833
    new-instance v0, Landroid/app/HwNotificationEx;

    invoke-direct {v0, p1}, Landroid/app/HwNotificationEx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getHwNotificationResource()Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwNotificationResource()Lhuawei/android/hwnotification/HwNotificationResourceImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwNotificationResource()Lhuawei/android/hwnotification/HwNotificationResourceImpl;
    .locals 1

    .line 656
    new-instance v0, Lhuawei/android/hwnotification/HwNotificationResourceImpl;

    invoke-direct {v0}, Lhuawei/android/hwnotification/HwNotificationResourceImpl;-><init>()V

    return-object v0
.end method

.method public getHwOptPackageParser()Landroid/perf/HwOptPackageParser;
    .locals 1

    .line 752
    new-instance v0, Landroid/perf/HwOptPackageParserImpl;

    invoke-direct {v0}, Landroid/perf/HwOptPackageParserImpl;-><init>()V

    return-object v0
.end method

.method public getHwPCManager()Landroid/pc/HwPCManager;
    .locals 1

    .line 395
    invoke-static {}, Landroid/pc/HwPCManagerImpl;->getDefault()Landroid/pc/HwPCManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwPCResourcesUtils(Landroid/content/res/AssetManager;)Landroid/content/res/IHwPCResourcesUtils;
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 717
    invoke-static {p1}, Landroid/content/res/HwPCResourcesUtils;->getDefault(Landroid/content/res/AssetManager;)Landroid/content/res/HwPCResourcesUtils;

    move-result-object v0

    return-object v0
.end method

.method public getHwPackageParser()Landroid/content/pm/HwPackageParser;
    .locals 1

    .line 560
    invoke-static {}, Landroid/content/pm/HwPackageParser;->getDefault()Landroid/content/pm/HwPackageParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHwPackageParser()Landroid/content/pm/IHwPackageParser;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwPackageParser()Landroid/content/pm/HwPackageParser;

    move-result-object v0

    return-object v0
.end method

.method public getHwPerformance()Lcom/huawei/hwperformance/HwPerformance;
    .locals 1

    .line 646
    invoke-static {}, Lcom/huawei/hwperformance/HwPerformanceImpl;->getDefault()Lcom/huawei/hwperformance/HwPerformance;

    move-result-object v0

    return-object v0
.end method

.method public getHwPowerProfileManager()Lcom/android/internal/os/IHwPowerProfileManager;
    .locals 1

    .line 570
    invoke-static {}, Lhuawei/com/android/internal/os/HwPowerProfileManagerImpl;->getDefault()Lcom/android/internal/os/IHwPowerProfileManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwResource(I)Landroid/rms/HwSysResource;
    .locals 1
    .param p1, "resourceType"    # I

    .line 601
    invoke-static {p1}, Landroid/rms/HwSysResImpl;->getResource(I)Landroid/rms/HwSysResource;

    move-result-object v0

    return-object v0
.end method

.method public getHwSettingsManager()Landroid/common/HwSettingsManager;
    .locals 1

    .line 486
    invoke-static {}, Lhuawei/android/provider/HwSettingsManagerImpl;->getDefault()Landroid/common/HwSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwSuggestedLocaleAdapterEx(Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;Landroid/content/Context;Z)Lcom/huawei/android/app/IHwSuggestedLocaleAdapterEx;
    .locals 1
    .param p1, "inner"    # Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isShowAddedHeaders"    # Z

    .line 788
    new-instance v0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;

    invoke-direct {v0, p1, p2, p3}, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;-><init>(Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;Landroid/content/Context;Z)V

    return-object v0
.end method

.method public getHwSystemManager()Landroid/common/HwFrameworkFactory$IHwSystemManager;
    .locals 1

    .line 438
    new-instance v0, Lhuawei/android/common/HwFrameworkFactoryImpl$HwSystemManagerImpl;

    invoke-direct {v0}, Lhuawei/android/common/HwFrameworkFactoryImpl$HwSystemManagerImpl;-><init>()V

    return-object v0
.end method

.method public getHwThemeManagerFactory()Landroid/hwtheme/IHwThemeManagerFactory;
    .locals 1

    .line 492
    new-instance v0, Lhuawei/android/hwtheme/HwThemeManagerFactoryImpl;

    invoke-direct {v0}, Lhuawei/android/hwtheme/HwThemeManagerFactoryImpl;-><init>()V

    return-object v0
.end method

.method public getHwView()Landroid/view/IHwView;
    .locals 1

    .line 692
    invoke-static {}, Landroid/view/HwViewImpl;->getDefault()Landroid/view/HwViewImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwViewRootImpl()Landroid/view/HwViewRootImpl;
    .locals 1

    .line 557
    invoke-static {}, Landroid/view/HwViewRootImpl;->getDefault()Landroid/view/HwViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHwViewRootImpl()Landroid/view/IHwViewRootImpl;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getHwViewRootImpl()Landroid/view/HwViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHwWallpaperInfoStub(Landroid/app/WallpaperInfo;)Landroid/app/IHwWallpaperInfoStub;
    .locals 1
    .param p1, "ai"    # Landroid/app/WallpaperInfo;

    .line 546
    new-instance v0, Lhuawei/android/app/HwWallpaperInfoStubImpl;

    invoke-direct {v0, p1}, Lhuawei/android/app/HwWallpaperInfoStubImpl;-><init>(Landroid/app/WallpaperInfo;)V

    return-object v0
.end method

.method public getHwWidgetManager()Landroid/widget/HwWidgetManager;
    .locals 1

    .line 444
    invoke-static {}, Lhuawei/android/widget/HwWidgetManagerImpl;->getDefault()Landroid/widget/HwWidgetManager;

    move-result-object v0

    return-object v0
.end method

.method public getHwZygoteInit()Lcom/android/internal/os/HwZygoteInit;
    .locals 1

    .line 839
    invoke-static {}, Lcom/android/internal/os/HwZygoteInitImpl;->getDefault()Lcom/android/internal/os/HwZygoteInit;

    move-result-object v0

    return-object v0
.end method

.method public getIScrollerBoostMgr()Landroid/scrollerboost/IScrollerBoostMgr;
    .locals 1

    .line 844
    invoke-static {}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->getDefault()Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

    move-result-object v0

    return-object v0
.end method

.method public getIndexClearManager()Lcom/huawei/indexsearch/IIndexClearManager;
    .locals 1

    .line 765
    invoke-static {}, Lcom/huawei/indexsearch/IndexClearManager;->getInstance()Lcom/huawei/indexsearch/IndexClearManager;

    move-result-object v0

    return-object v0
.end method

.method public getIndexSearchManager()Lcom/huawei/indexsearch/IIndexSearchManager;
    .locals 1

    .line 757
    invoke-static {}, Lcom/huawei/indexsearch/IndexSearchManager;->getInstance()Lcom/huawei/indexsearch/IndexSearchManager;

    move-result-object v0

    return-object v0
.end method

.method public getIndexSearchParser()Lcom/huawei/indexsearch/IIndexSearchParser;
    .locals 1

    .line 761
    invoke-static {}, Lcom/huawei/indexsearch/IndexSearchParser;->getInstance()Lcom/huawei/indexsearch/IndexSearchParser;

    move-result-object v0

    return-object v0
.end method

.method public getLogException()Landroid/util/LogException;
    .locals 1

    .line 373
    invoke-static {}, Landroid/util/HwLogExceptionInner;->getInstance()Landroid/util/LogException;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordUtil()Landroid/encrypt/PasswordUtil;
    .locals 1

    .line 378
    invoke-static {}, Landroid/encrypt/HwPasswordUtil;->getInstance()Landroid/encrypt/PasswordUtil;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPressGestureDetector(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/content/Context;)Lcom/android/internal/policy/IPressGestureDetector;
    .locals 0

    .line 348
    invoke-virtual {p0, p1, p2, p3}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getPressGestureDetector(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/content/Context;)Lhuawei/com/android/internal/policy/PressGestureDetector;

    move-result-object p1

    return-object p1
.end method

.method public getPressGestureDetector(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/content/Context;)Lhuawei/com/android/internal/policy/PressGestureDetector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "docerView"    # Landroid/widget/FrameLayout;
    .param p3, "contextActivity"    # Landroid/content/Context;

    .line 565
    new-instance v0, Lhuawei/com/android/internal/policy/PressGestureDetector;

    invoke-direct {v0, p1, p2, p3}, Lhuawei/com/android/internal/policy/PressGestureDetector;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getSecImmHelper(Lcom/android/internal/view/IInputMethodManager;)Landroid/view/inputmethod/IHwSecImmHelper;
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Lhuawei/android/common/HwFrameworkFactoryImpl;->getSecImmHelper(Lcom/android/internal/view/IInputMethodManager;)Lhuawei/android/view/inputmethod/HwSecImmHelper;

    move-result-object p1

    return-object p1
.end method

.method public getSecImmHelper(Lcom/android/internal/view/IInputMethodManager;)Lhuawei/android/view/inputmethod/HwSecImmHelper;
    .locals 1
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;

    .line 631
    new-instance v0, Lhuawei/android/view/inputmethod/HwSecImmHelper;

    invoke-direct {v0, p1}, Lhuawei/android/view/inputmethod/HwSecImmHelper;-><init>(Lcom/android/internal/view/IInputMethodManager;)V

    return-object v0
.end method

.method public getVRSystemServiceManager()Landroid/vrsystem/IVRSystemServiceManager;
    .locals 1

    .line 666
    invoke-static {}, Landroid/vrsystem/VRSystemServiceManager;->getInstance()Landroid/vrsystem/VRSystemServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getZrHung(Ljava/lang/String;)Landroid/zrhung/IZrHung;
    .locals 1
    .param p1, "wpName"    # Ljava/lang/String;

    .line 606
    invoke-static {p1}, Landroid/zrhung/ZrHungImpl;->getZrHung(Ljava/lang/String;)Landroid/zrhung/IZrHung;

    move-result-object v0

    return-object v0
.end method

.method public updateImsServiceConfig(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "force"    # Z

    .line 708
    invoke-static {p1, p2, p3}, Lcom/android/ims/HwImsManagerInner;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 709
    return-void
.end method
