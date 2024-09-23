.class public Lhuawei/android/hwtheme/HwThemeManagerImpl;
.super Ljava/lang/Object;
.source "HwThemeManagerImpl.java"

# interfaces
.implements Landroid/hwtheme/HwThemeManager$IHwThemeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hwtheme/HwThemeManagerImpl$LivewallpaperXmlInfo;,
        Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;
    }
.end annotation


# static fields
.field private static final ALARM_CLASS_POSTFIX:Ljava/lang/String; = "_alarm."

.field static final BLURRED_WALLPAPER:Ljava/lang/String; = "/blurwallpaper"

.field private static final CALENDAR_CLASS_POSTFIX:Ljava/lang/String; = "_calendar."

.field static final CURRENT_HOMEWALLPAPER_NAME:Ljava/lang/String; = "home_wallpaper_0.jpg"

.field static final CURRENT_HOMEWALLPAPER_NAME_PNG:Ljava/lang/String; = "home_wallpaper_0.png"

.field private static final CUST_HOME_SCREEN_OFF:I = 0x0

.field private static final CUST_HOME_SCREEN_ON:I = 0x1

.field static final CUST_THEME_NAME:Ljava/lang/String; = "hw_def_theme"

.field static final CUST_WALLPAPER:Ljava/lang/String; = "/data/cust/wallpaper/wallpaper1.jpg"

.field static final CUST_WALLPAPER_DIR:Ljava/lang/String; = "/data/cust/wallpaper/"

.field static final CUST_WALLPAPER_FILE_NAME:Ljava/lang/String; = "wallpaper1.jpg"

.field static final DEBUG:Z = false

.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.com.android.server.IPackageManager"

.field private static final DOCOMOHOME_COMPONENT:Landroid/content/ComponentName;

.field private static final DRAWERHOME_COMPONENT:Landroid/content/ComponentName;

.field private static final ECOTA_BACKUP_DIR:Ljava/lang/String; = "/ecota_backup"

.field private static final ECOTA_UNLOCK_WALLPAPER_FILE:Ljava/lang/String; = "/cust/ecota/themes/wallpaper/unlock_wallpaper_0.jpg"

.field private static final ECOTA_UNLOCK_WALLPAPER_FILE_PNG:Ljava/lang/String; = "/cust/ecota/themes/wallpaper/unlock_wallpaper_0.png"

.field private static final ECOTA_VERSION:Ljava/lang/String; = "EcotaVersion"

.field private static final ECOTA_WALLPAPER_PATH:Ljava/lang/String; = "/cust/ecota/themes/wallpaper/"

.field private static final EMAIL_CLASS_POSTFIX:Ljava/lang/String; = "_email."

.field private static final FWK_HONOR_TAG:Ljava/lang/String; = "com.android.frameworkhwext.honor"

.field private static final FWK_NOVA_TAG:Ljava/lang/String; = "com.android.frameworkhwext.nova"

.field private static final HAS_CHANGE_WALLPAPER:Ljava/lang/String; = "hasChangeWallpaper"

.field private static final HWTHEME_DISABLED:I = 0x0

.field private static final HWTHEME_GET_NOTIFICATION_INFO:Ljava/lang/String; = "com.huawei.hwtheme.permission.GET_NOTIFICATION_INFO"

.field private static final IPACKAGE_MANAGER_DESCRIPTOR:Ljava/lang/String; = "huawei.com.android.server.IPackageManager"

.field private static final IS_COTA_FEATURE:Z

.field private static final IS_HOTA_RESTORE_THEME:Z

.field private static final IS_REGIONAL_PHONE_FEATURE:Z

.field private static final IS_SHOW_CUSTUI_DEFAULT:Z

.field private static final IS_SHOW_CUST_HOME_SCREEN:Z

.field private static final IS_SUPPORT_CLONE_APP:Z

.field private static final KEY_DISPLAY_MODE:Ljava/lang/String; = "display_mode"

.field public static final LIVEWALLPAPER_FILE:Ljava/lang/String; = "livepaper.xml"

.field private static final MESSAGE_CLASS_POSTFIX:Ljava/lang/String; = "_message."

.field private static final NEWSIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

.field public static final NODE_LIVEWALLPAPER_CLASS:Ljava/lang/String; = "classname"

.field public static final NODE_LIVEWALLPAPER_PACKAGE:Ljava/lang/String; = "pkgname"

.field private static final NOTIFI_CLASS_POSTFIX:Ljava/lang/String; = "_notification."

.field static final PATH_DATASKIN_WALLPAPER:Ljava/lang/String; = "/data/themes/"

.field static final PATH_DATA_USERS:Ljava/lang/String; = "/data/system/users/"

.field private static final PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final RINGTONE_CLASS_POSTFIX:Ljava/lang/String; = "_ringtone."

.field private static final SIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

.field private static final SIMPLELAUNCHERHOME_COMPONENT:Landroid/content/ComponentName;

.field private static final STYLE_DATA:I = 0x1

.field private static final SYSTEM_APP:Ljava/lang/String; = "android"

.field private static final SYSTEM_APP_HWEXT:Ljava/lang/String; = "androidhwext"

.field static final TAG:Ljava/lang/String; = "HwThemeManagerImpl"

.field private static final THEME_FONTS_BASE_PATH:Ljava/lang/String; = "/data/skin/fonts/"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final UNIHOME_COMPONENT:Landroid/content/ComponentName;

.field private static final WALLPAPER_DIR:Ljava/lang/String; = "/wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "/wallpaper_info.xml"

.field private static resolveInfoUtils:Landroid/content/pm/ResolveInfoUtils;

.field private static sIsDefaultThemeOk:Z

.field private static final sIsHwtFlipFontOn:Z


# instance fields
.field private final lastHwConfig:Landroid/content/res/IHwConfiguration;

.field private lastLocale:Ljava/util/Locale;

.field private mDisablelaunchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLockForClone:Ljava/lang/Object;

.field private mPackageManagerService:Landroid/content/pm/IPackageManager;

.field private mPackageNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRemovedEntry:Lhuawei/android/hwutil/IconCache$CacheEntry;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 1757
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 205
    const-class v0, Landroid/content/pm/ResolveInfoUtils;

    invoke-static {v0}, Lcom/huawei/utils/reflect/EasyInvokeFactory;->getInvokeUtils(Ljava/lang/Class;)Lcom/huawei/utils/reflect/EasyInvokeUtils;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfoUtils;

    sput-object v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->resolveInfoUtils:Landroid/content/pm/ResolveInfoUtils;

    .line 212
    const-string v0, "ro.config.hwtheme"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->sIsHwtFlipFontOn:Z

    .line 219
    const-string v0, "ro.config.hw_support_clone_app"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_SUPPORT_CLONE_APP:Z

    .line 227
    const-string v0, "ro.config.show_cust_homescreen"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_SHOW_CUST_HOME_SCREEN:Z

    .line 231
    const-string v0, "ro.config.show_custui_default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_SHOW_CUSTUI_DEFAULT:Z

    .line 239
    const-string v0, "ro.config.region_phone_feature"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_REGIONAL_PHONE_FEATURE:Z

    .line 242
    const-string v0, "ro.config.hw_cota"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_COTA_FEATURE:Z

    .line 245
    const-string v0, "ro.config.hw_hotaRestoreTheme"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_HOTA_RESTORE_THEME:Z

    .line 1050
    sput-boolean v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->sIsDefaultThemeOk:Z

    .line 1147
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.huawei.android.launcher"

    const-string v2, "com.huawei.android.launcher.unihome.UniHomeLauncher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    .line 1149
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.huawei.android.launcher"

    const-string v2, "com.huawei.android.launcher.drawer.DrawerLauncher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->DRAWERHOME_COMPONENT:Landroid/content/ComponentName;

    .line 1151
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.huawei.android.launcher"

    const-string v2, "com.huawei.android.launcher.simpleui.SimpleUILauncher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->SIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

    .line 1153
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.huawei.android.launcher"

    const-string v2, "com.huawei.android.launcher.newsimpleui.NewSimpleLauncher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->NEWSIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

    .line 1157
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.nttdocomo.android.dhome"

    const-string v2, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->DOCOMOHOME_COMPONENT:Landroid/content/ComponentName;

    .line 1159
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.huawei.android.simplelauncher"

    const-string v2, "com.huawei.android.simplelauncher.unihome.UniHomeLauncher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->SIMPLELAUNCHERHOME_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mPackageNameMap:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLockForClone:Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->initConfigurationEx()Landroid/content/res/IHwConfiguration;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastHwConfig:Landroid/content/res/IHwConfiguration;

    .line 270
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastLocale:Ljava/util/Locale;

    .line 1145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    .line 1146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLauncherMap:Ljava/util/Map;

    .line 282
    invoke-direct {p0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->initLauncherComponent()V

    .line 283
    return-void
.end method

.method private addResourcePackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldPkgName"    # Ljava/lang/String;
    .param p2, "newPkgName"    # Ljava/lang/String;

    .line 1035
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mPackageNameMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1036
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    monitor-exit v0

    .line 1038
    return-void

    .line 1037
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private backupDefaultWallpaper(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ecota_backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "backupThemePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1802
    .local v1, "backupThemeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1803
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 1804
    .local v2, "isMkdirsEcotaBackupSuccess":Z
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/wallpaper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 1805
    .local v3, "isMkdirsWallpaperSuccess":Z
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 1806
    :cond_0
    const-string v4, "HwThemeManagerImpl"

    const-string v5, "file mkdirs failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    return-void

    .line 1811
    .end local v2    # "isMkdirsEcotaBackupSuccess":Z
    .end local v3    # "isMkdirsWallpaperSuccess":Z
    :cond_1
    const-string v2, "system"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->copyFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const-string v2, "system"

    const-string v3, "0775"

    invoke-static {v2, v3, v0}, Lcom/huawei/android/hwutil/CommandLineUtil;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 1815
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "oldFile"    # Ljava/io/File;
    .param p2, "newPath"    # Ljava/lang/String;

    .line 1744
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1745
    return-void

    .line 1748
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1749
    .local v0, "input":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1748
    .local v2, "output":Ljava/io/FileOutputStream;
    nop

    .line 1750
    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    .line 1753
    .local v3, "byteData":[B
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 1754
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1756
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1757
    .end local v3    # "byteData":[B
    .end local v5    # "len":I
    :try_start_3
    invoke-static {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-static {v1, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    .line 1748
    :catch_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1757
    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_1
    :try_start_6
    invoke-static {v4, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    goto :goto_2

    .line 1748
    :catch_1
    move-exception v1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1757
    :goto_2
    :try_start_8
    invoke-static {v1, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1759
    .end local v0    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 1760
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwThemeManagerImpl"

    const-string v2, "copyFile Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 1757
    :catch_3
    move-exception v0

    .line 1758
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HwThemeManagerImpl"

    const-string v2, "copyFile IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 1762
    :goto_4
    return-void
.end method

.method private copyFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "oldPath"    # Ljava/lang/String;
    .param p3, "newPath"    # Ljava/lang/String;

    .line 1842
    if-eqz p2, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 1845
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1846
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1847
    const-string v1, "HwThemeManagerImpl"

    const-string v2, "newFile is not excet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    return-void

    .line 1851
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1853
    const-string v2, "HwThemeManagerImpl"

    const-string v3, "oldFile is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return-void

    .line 1857
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1859
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_3

    .line 1860
    const-string v3, "HwThemeManagerImpl"

    const-string v4, "copyFolder:  oldFile is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    return-void

    .line 1865
    :cond_3
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    .line 1866
    .local v5, "file":Ljava/lang/String;
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1867
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "temp":Ljava/io/File;
    goto :goto_1

    .line 1869
    .end local v6    # "temp":Ljava/io/File;
    :cond_4
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1871
    .restart local v6    # "temp":Ljava/io/File;
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1872
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v7, v8}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->copyFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1873
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1874
    const-string v7, "HwThemeManagerImpl"

    const-string v8, "copyFolder:  oldFile not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1875
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1876
    const-string v7, "HwThemeManagerImpl"

    const-string v8, "copyFolder:  oldFile not file."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1877
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1878
    const-string v7, "HwThemeManagerImpl"

    const-string v8, "copyFolder:  oldFile cannot read."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1880
    :cond_8
    invoke-direct {p0, v6, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->copyFile(Ljava/io/File;Ljava/lang/String;)V

    .line 1865
    .end local v5    # "file":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1883
    .end local v6    # "temp":Ljava/io/File;
    :cond_9
    return-void

    .line 1843
    .end local v0    # "newFile":Ljava/io/File;
    .end local v1    # "oldFile":Ljava/io/File;
    .end local v2    # "files":[Ljava/lang/String;
    :cond_a
    :goto_3
    return-void
.end method

.method private customizeEcotaWallpaper(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1818
    invoke-direct {p0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isEcotaHomeWallpaperExist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isEcotaUnlockWallpaperExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1819
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hasChangeWallpaper"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->backupDefaultWallpaper(I)V

    .line 1823
    :cond_0
    const-string v0, "HwThemeManagerImpl"

    const-string v1, "Ecota change wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hasChangeWallpaper"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1825
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->deleteWallpaperInfoFile(I)V

    .line 1826
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->deleteSystemWallpaper(I)V

    .line 1827
    const-string v0, "system"

    const-string v1, "/cust/ecota/themes/wallpaper/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->copyFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string v0, "system"

    const-string v1, "0775"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/android/hwutil/CommandLineUtil;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 1831
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_magazinelock_feature"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1832
    :cond_1
    const-string v0, "true"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hasChangeWallpaper"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1833
    const-string v0, "HwThemeManagerImpl"

    const-string v1, "Ecota delete wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hasChangeWallpaper"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1835
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->deleteWallpaperInfoFile(I)V

    .line 1836
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->deleteSystemWallpaper(I)V

    .line 1837
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->restoreDefaultWallpaper(I)V

    .line 1839
    :cond_2
    :goto_0
    return-void
.end method

.method private deleteSystemWallpaper(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1730
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users/0/"

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    .local v0, "systemWallpaper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    const-string v1, "system"

    const-string v2, "/data/system/users/0/wallpaper"

    invoke-static {v1, v2}, Lcom/huawei/android/hwutil/CommandLineUtil;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1733
    const-string v1, "system"

    const-string v2, "/data/system/users/0/wallpaper_orig"

    invoke-static {v1, v2}, Lcom/huawei/android/hwutil/CommandLineUtil;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1736
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/themes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "livepaper.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1737
    .local v1, "liveWallpaperPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1738
    .local v2, "liveWallpaper":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1739
    const-string v3, "system"

    invoke-static {v3, v1}, Lcom/huawei/android/hwutil/CommandLineUtil;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1741
    :cond_1
    return-void
.end method

.method private deleteWallpaperInfoFile(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1719
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    .local v0, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1721
    const-string v1, "system"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/wallpaper_info.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/hwutil/CommandLineUtil;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1723
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/blurwallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    .local v1, "blurWallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1725
    const-string v2, "system"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/blurwallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/hwutil/CommandLineUtil;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1727
    :cond_1
    return-void
.end method

.method private enableLaunchers(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .line 1199
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1200
    .local v0, "disableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1201
    iget-object v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    .line 1202
    .local v2, "componentstate":Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    :goto_1
    iput v3, v2, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;->mSetState:I

    .line 1203
    invoke-virtual {v2, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;->setComponentEnable(I)V

    .line 1200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1205
    .end local v1    # "i":I
    .end local v2    # "componentstate":Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;
    :cond_1
    return-void
.end method

.method private getDefaultHwThemePack(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "colors_themes"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "colors_themes":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const-string v1, "HwThemeManagerImpl"

    const-string v2, "colors and themes is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hw_def_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 385
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "colorsAndThemes":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 388
    .local v2, "mHwColorThemes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .line 389
    .local v6, "str":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "color_theme":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 392
    aget-object v8, v7, v4

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 394
    :cond_1
    const-string v8, "HwThemeManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid color and theme : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "color_theme":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 399
    const-string v3, "HwThemeManagerImpl"

    const-string v4, "has no valid color-theme!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hw_def_theme"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 404
    :cond_3
    const-string v3, "ro.config.devicecolor"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "mColor":Ljava/lang/String;
    const-string v4, "ro.config.backcolor"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "mBackColor":Ljava/lang/String;
    const/4 v5, 0x0

    .line 411
    .local v5, "hwThemePath":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hw_def_theme"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 414
    :cond_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    .line 416
    invoke-direct {p0, v5}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hw_def_theme"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 421
    const-string v6, "HwThemeManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The TP color: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Theme path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-object v5

    .line 426
    :cond_5
    if-nez v5, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "mGroupColor":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    .line 429
    invoke-direct {p0, v5}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hw_def_theme"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 431
    const-string v7, "HwThemeManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The group color: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", Theme path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v5

    .line 436
    .end local v6    # "mGroupColor":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hw_def_theme"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getDhomeThemeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p1, "ctx"    # Landroid/content/Context;

    .line 448
    const-string v0, "dcm_color_themes"

    .line 449
    .local v0, "DOCOMO_COLOR_THEMES":Ljava/lang/String;
    const-string v1, "dcm_default_theme"

    .line 450
    .local v1, "DOCOMO_DEFAULT_THEME":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dcm_default_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "DOCOMO_DEFAULT_THEME_NAME":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dcm_color_themes"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "colorThemes":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cust_multi_themes"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "IS_DOCOMO_MULTI_THEMES":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cust_color_multi_themes"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 464
    const-string v5, "HwThemeManagerImpl"

    const-string v6, "dcm colors and themes is empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-object v2

    .line 468
    :cond_1
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "colors_themes":[Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v6, "dHomeColorThemes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_3

    aget-object v10, v5, v9

    .line 472
    .local v10, "str":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 473
    .local v11, "color_theme":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    aget-object v12, v11, v8

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 474
    aget-object v12, v11, v8

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 476
    :cond_2
    const-string v12, "HwThemeManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid dcm color and theme : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "color_theme":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 481
    const-string v7, "HwThemeManagerImpl"

    const-string v8, "has no valid dcm color_theme!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-object v2

    .line 486
    :cond_4
    const-string v7, "ro.config.backcolor"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, "mBackColor":Ljava/lang/String;
    const/4 v8, 0x0

    .line 490
    .local v8, "dcmThemeName":Ljava/lang/String;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    .line 495
    :cond_5
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Ljava/lang/String;

    .line 497
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_2

    .line 502
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dcm_default_theme"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 503
    const-string v9, "HwThemeManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get docomo default theme OK,dcmThemePath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-object v8

    .line 498
    :cond_7
    :goto_2
    const-string v9, "HwThemeManagerImpl"

    const-string v10, "has no theme adapt to backcolor,use default docomo theme"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-object v2

    .line 491
    :cond_8
    :goto_3
    const-string v9, "HwThemeManagerImpl"

    const-string v10, "has no backcolor property,use default docomo theme"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-object v2
.end method

.method private getDhomeThemePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "themePath"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 531
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 534
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p3

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 532
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p3
.end method

.method private getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 1105
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_0

    .line 1106
    const-string v0, "package"

    .line 1107
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1106
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    .line 1109
    :cond_0
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method private getResourcePackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # I

    .line 1436
    invoke-direct {p0, p1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->getResourcePackageNameFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1438
    return-object v0

    .line 1440
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/huawei/android/content/pm/HwPackageManager;->getResourcePackageNameByIcon(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1442
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1443
    invoke-direct {p0, p1, v1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->addResourcePackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :cond_1
    return-object v1
.end method

.method private getResourcePackageNameFromMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1029
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mPackageNameMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1030
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1031
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private giveRWToPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 519
    const-string v0, "system"

    const-string v1, "0775"

    invoke-static {v0, v1, p1}, Lcom/huawei/android/hwutil/CommandLineUtil;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 521
    const-string v0, "system"

    const-string v1, "system"

    const-string v2, "media_rw"

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/android/hwutil/CommandLineUtil;->chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 524
    return-void
.end method

.method private initLauncherComponent()V
    .locals 4

    .line 1164
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1165
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLauncherMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1167
    sget-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_SHOW_CUST_HOME_SCREEN:Z

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->DOCOMOHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->SIMPLELAUNCHERHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->SIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->DRAWERHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->NEWSIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1175
    :cond_0
    sget-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_SHOW_CUSTUI_DEFAULT:Z

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->DOCOMOHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->SIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->DRAWERHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->NEWSIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1183
    :cond_1
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->SIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->DRAWERHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mDisablelaunchers:Ljava/util/List;

    new-instance v1, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;

    sget-object v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->NEWSIMPLEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    :goto_0
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLauncherMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLauncherMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLauncherMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLauncherMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLauncherMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    return-void
.end method

.method private isClearEcota(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1769
    invoke-direct {p0, p1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isUserChangeWallpaper(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1770
    return v1

    .line 1773
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "EcotaVersion"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    .local v0, "originalEcotaVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1775
    return v1

    .line 1778
    :cond_1
    const-string v2, "ro.product.EcotaVersion"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1779
    .local v2, "currentEcotaVersion":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1780
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "EcotaVersion"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1781
    const-string v1, "HwThemeManagerImpl"

    const-string v3, "isClearEcota == true"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/4 v1, 0x1

    return v1

    .line 1785
    :cond_2
    return v1
.end method

.method private isEcotaHomeWallpaperExist()Z
    .locals 2

    .line 1709
    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/ecota/themes/wallpaper/home_wallpaper_0.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/ecota/themes/wallpaper/home_wallpaper_0.png"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1709
    :goto_1
    return v0
.end method

.method private isEcotaUnlockWallpaperExist()Z
    .locals 2

    .line 1714
    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/ecota/themes/wallpaper/unlock_wallpaper_0.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/ecota/themes/wallpaper/unlock_wallpaper_0.png"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isEcotaVersion(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1694
    const-string v0, "ro.product.EcotaVersion"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "currentEcotaVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isUserChangeWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1699
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "EcotaVersion"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1700
    .local v1, "originalEcotaVersion":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1701
    return v2

    .line 1704
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "EcotaVersion"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1705
    const/4 v2, 0x1

    return v2

    .line 1696
    .end local v1    # "originalEcotaVersion":Ljava/lang/String;
    :cond_2
    :goto_0
    return v2
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 318
    if-nez p1, :cond_0

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isHotaRestoreThemeOrFirstBoot(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1675
    sget-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_HOTA_RESTORE_THEME:Z

    if-eqz v0, :cond_1

    .line 1677
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custVersion"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    .local v0, "originalVersion":Ljava/lang/String;
    const-string v1, "ro.build.display.id"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1679
    .local v1, "buildVersion":Ljava/lang/String;
    const-string v2, "ro.product.CustCVersion"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1680
    .local v2, "custCVersion":Ljava/lang/String;
    const-string v3, "ro.product.CustDVersion"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1681
    .local v3, "custDVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1682
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "custVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    const/4 v4, 0x1

    return v4

    .line 1687
    .end local v0    # "originalVersion":Ljava/lang/String;
    .end local v1    # "buildVersion":Ljava/lang/String;
    .end local v2    # "custCVersion":Ljava/lang/String;
    .end local v3    # "custDVersion":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwThemeManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check cust Exception e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isNoThemeFont()Z
    .locals 3

    .line 1265
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/skin/fonts/"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    .local v0, "fontdir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1271
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1268
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupportThemeRestore()Z
    .locals 1

    .line 1615
    sget-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_REGIONAL_PHONE_FEATURE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_COTA_FEATURE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isThemeChange(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1650
    const-string v0, "true"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isUserChangeTheme"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isThemeInvalid(I)Z
    .locals 8
    .param p1, "userId"    # I

    .line 1657
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1658
    .local v0, "startTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1659
    .local v2, "themePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/wallpaper/home_wallpaper_0.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1661
    .local v3, "defaultWallpaperFileName":Ljava/lang/String;
    invoke-static {v3}, Lhuawei/android/hwutil/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lhuawei/android/hwutil/FileUtil;->isFileContentAllZero(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1662
    const-string v4, "HwThemeManagerImpl"

    const-string v5, "Theme is not valid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v4, 0x1

    return v4

    .line 1666
    :cond_0
    const-string v4, "HwThemeManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check theme took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const/4 v4, 0x0

    return v4
.end method

.method private isUserChangeWallpaper(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1765
    const-string v0, "true"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isUserChangeWallpaper"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private linkTheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 512
    const-string v0, "system"

    invoke-static {v0, p1, p2}, Lcom/huawei/android/hwutil/CommandLineUtil;->link(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 513
    return-void
.end method

.method private restoreDefaultWallpaper(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1789
    const-string v0, "system"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ecota_backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->copyFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ecota_backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "livepaper.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->copyFile(Ljava/io/File;Ljava/lang/String;)V

    .line 1795
    const-string v0, "system"

    const-string v1, "0775"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/android/hwutil/CommandLineUtil;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 1797
    return-void
.end method

.method private saveDhomeThemeInfo(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "originThemeFile"    # Ljava/io/File;
    .param p2, "defaultThemePath"    # Ljava/lang/String;

    .line 631
    if-eqz p1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 636
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 637
    .local v0, "properties":Ljava/util/Properties;
    const-string v1, "default_theme_path"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "themeName":Ljava/lang/String;
    const-string v2, "current_docomo_theme_type"

    const-string v3, "kisekae_Cute.kin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "silver"

    goto :goto_0

    :cond_1
    const-string v3, "village.kin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "gold"

    goto :goto_0

    :cond_2
    const-string v3, "unknow"

    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v2, "current_docomo_theme_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v2, "deleted_docomo_themes"

    const-string v3, "kisekae_Cute.kin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "village.kin"

    goto :goto_1

    :cond_3
    const-string v3, "village.kin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "kisekae_Cute.kin"

    goto :goto_1

    :cond_4
    const-string v3, "unknow"

    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const/4 v2, 0x0

    .line 644
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/DeviceThemeInfo.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "deviceThemeInfoPath":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 647
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0, v3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->giveRWToPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    nop

    .line 656
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 659
    :goto_2
    goto :goto_3

    .line 657
    :catch_0
    move-exception v4

    .line 658
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "HwThemeManagerImpl"

    const-string v6, "FileOutputStream close failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 654
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 651
    :catch_1
    move-exception v4

    .line 652
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "HwThemeManagerImpl"

    const-string v6, "DeviceThemeInfo.properties store failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_5

    .line 656
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 649
    :catch_2
    move-exception v4

    .line 650
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v5, "HwThemeManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 654
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_5

    .line 656
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 662
    :cond_5
    :goto_3
    return-void

    .line 654
    :goto_4
    if-eqz v2, :cond_6

    .line 656
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 659
    goto :goto_5

    .line 657
    :catch_3
    move-exception v5

    .line 658
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "HwThemeManagerImpl"

    const-string v7, "FileOutputStream close failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    throw v4

    .line 632
    .end local v0    # "properties":Ljava/util/Properties;
    .end local v1    # "themeName":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "deviceThemeInfoPath":Ljava/lang/String;
    :cond_7
    :goto_6
    const-string v0, "HwThemeManagerImpl"

    const-string v1, "saveDhomeThemeInfo :: origin theme file or default theme path invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void
.end method

.method private static setIsDefaultThemeOk(Z)V
    .locals 0
    .param p0, "isOk"    # Z

    .line 1092
    sput-boolean p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->sIsDefaultThemeOk:Z

    .line 1093
    return-void
.end method

.method private setThemeWallpaper(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const-string v1, "HwThemeManagerImpl"

    const-string v2, "pwm setwallpaper stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 295
    :cond_0
    const-string v1, "wallpaper"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 296
    .local v1, "wpm":Landroid/app/WallpaperManager;
    const/4 v2, 0x0

    .line 298
    .local v2, "ips":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 299
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    nop

    .line 307
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v3

    .line 311
    goto :goto_1

    .line 310
    :cond_1
    :goto_0
    goto :goto_1

    .line 305
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 302
    :catch_1
    move-exception v3

    .line 303
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "HwThemeManagerImpl"

    const-string v5, "pwm setwallpaper io err:"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 307
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 300
    :catch_2
    move-exception v3

    .line 301
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v4, "HwThemeManagerImpl"

    const-string v5, "pwm setwallpaper not found err:"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_1

    .line 307
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 312
    :goto_1
    return-void

    .line 305
    :goto_2
    nop

    .line 306
    if-eqz v2, :cond_2

    .line 307
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 309
    :catch_3
    move-exception v4

    nop

    .line 310
    :cond_2
    :goto_3
    throw v3
.end method

.method private updateOverlaysThems()V
    .locals 16

    .line 702
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 703
    .local v1, "newUserId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.deep.theme_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "themePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/hwtheme/HwThemeManager;->setOverLayThemePath(Ljava/lang/String;)V

    .line 705
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hwtheme/HwThemeManager;->setOverLayThemeType(Ljava/lang/String;)V

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "overlayManager":Landroid/content/om/IOverlayManager;
    const-string v3, "overlay"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 709
    .local v3, "binder":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v4

    .line 710
    .end local v0    # "overlayManager":Landroid/content/om/IOverlayManager;
    .local v4, "overlayManager":Landroid/content/om/IOverlayManager;
    if-nez v4, :cond_0

    .line 711
    return-void

    .line 714
    :cond_0
    const/4 v5, 0x0

    .line 715
    .local v5, "frameworkhwextinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v0, 0x0

    move-object v6, v0

    .line 717
    .local v6, "frameworkinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    :try_start_0
    const-string v0, "androidhwext"

    invoke-interface {v4, v0, v1}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 719
    const-string v0, "android"

    invoke-interface {v4, v0, v1}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 722
    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "HwThemeManagerImpl"

    const-string v8, "fail get fwk overlayinfos"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    .line 724
    .local v0, "size":I
    if-eqz v5, :cond_1

    .line 725
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 726
    if-eqz v6, :cond_1

    .line 727
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 728
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 731
    .end local v0    # "size":I
    .local v7, "size":I
    :cond_1
    move v7, v0

    const/4 v8, 0x0

    move v0, v8

    .local v0, "i":I
    :goto_1
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    if-ge v9, v7, :cond_d

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 735
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/om/OverlayInfo;

    .line 736
    .local v10, "info":Landroid/content/om/OverlayInfo;
    iget-object v0, v10, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 739
    .end local v0    # "packageName":Ljava/lang/String;
    .local v10, "packageName":Ljava/lang/String;
    :cond_2
    move-object v10, v0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    goto/16 :goto_4

    .line 742
    :cond_3
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->isDeepDarkTheme()Z

    move-result v11

    .line 743
    .local v11, "isDarkTheme":Z
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->isHonorProduct()Z

    move-result v12

    .line 745
    .local v12, "isHonorProduct":Z
    const-string v0, "com.android.frameworkhwext.nova"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/hwtheme/HwThemeManager;->isNovaProduct()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "com.android.frameworkhwext.honor"

    .line 746
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v12, :cond_6

    .line 748
    :cond_5
    :try_start_1
    invoke-interface {v4, v10, v13, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    goto/16 :goto_4

    .line 749
    :catch_1
    move-exception v0

    move-object v13, v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    const-string v13, "HwThemeManagerImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fail set "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " account access"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    .line 754
    :cond_6
    if-nez v11, :cond_7

    if-eqz v1, :cond_7

    const-string v0, "frameworkhwext"

    .line 755
    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 759
    :try_start_2
    invoke-interface {v4, v10, v8, v8}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 762
    goto :goto_2

    .line 760
    :catch_2
    move-exception v0

    move-object v14, v0

    .line 761
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v14, "HwThemeManagerImpl"

    const-string v15, "fail set enable the primary user"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_2
    if-nez v11, :cond_8

    if-nez v12, :cond_8

    const-string v0, "frameworkhwext"

    .line 765
    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 768
    :try_start_3
    invoke-interface {v4, v10, v8, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 771
    goto :goto_4

    .line 769
    :catch_3
    move-exception v0

    move-object v13, v0

    .line 770
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v13, "HwThemeManagerImpl"

    const-string v14, "fail set false account access"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 774
    :cond_8
    if-eqz v11, :cond_a

    const-string v0, "dark"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 777
    :try_start_4
    invoke-interface {v4, v10, v13, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    .line 780
    if-eqz v1, :cond_9

    .line 781
    invoke-interface {v4, v10, v13, v8}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 785
    :cond_9
    goto :goto_3

    .line 783
    :catch_4
    move-exception v0

    .line 784
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v14, "HwThemeManagerImpl"

    const-string v15, "fail set dark account access"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_3
    if-nez v11, :cond_c

    if-eqz v12, :cond_c

    const-string v0, "honor"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 790
    :try_start_5
    invoke-interface {v4, v10, v13, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    .line 793
    if-eqz v1, :cond_b

    .line 794
    invoke-interface {v4, v10, v13, v8}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 798
    :cond_b
    goto :goto_4

    .line 796
    :catch_5
    move-exception v0

    .line 797
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v13, "HwThemeManagerImpl"

    const-string v14, "fail set honor account access"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "isDarkTheme":Z
    .end local v12    # "isHonorProduct":Z
    :cond_c
    :goto_4
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "i":I
    .local v0, "i":I
    goto/16 :goto_1

    .line 802
    .end local v0    # "i":I
    :cond_d
    const-string v0, "HwThemeManagerImpl"

    const-string v8, "HwThemeManagerImpl#updateOverlaysThems end"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void
.end method


# virtual methods
.method public addSimpleUIConfig(Landroid/content/pm/PackageParser$Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/content/pm/PackageParser$Activity;

    .line 1096
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    const-string v1, "simpleuimode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1097
    .local v0, "needSUIMode":Z
    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1100
    :cond_0
    return-void
.end method

.method public applyDefaultHwTheme(ZLandroid/content/Context;)V
    .locals 1
    .param p1, "checkState"    # Z
    .param p2, "mContext"    # Landroid/content/Context;

    .line 1052
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->applyDefaultHwTheme(ZLandroid/content/Context;I)V

    .line 1053
    return-void
.end method

.method public applyDefaultHwTheme(ZLandroid/content/Context;I)V
    .locals 6
    .param p1, "checkState"    # Z
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .line 1058
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1060
    .local v0, "skinExist":Z
    sget-object v1, Landroid/hwtheme/HwThemeManager;->HWT_PATH_SKIN_INSTALL_FLAG:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    .line 1061
    .local v1, "installFlagExist":Z
    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    sget-boolean v2, Lhuawei/android/hwtheme/HwThemeManagerImpl;->sIsDefaultThemeOk:Z

    if-eqz v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1062
    .local v2, "isSet":Z
    :goto_1
    const/4 v3, 0x0

    .line 1063
    .local v3, "isThemeInvalid":Z
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 1064
    invoke-direct {p0, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isThemeInvalid(I)Z

    move-result v3

    .line 1066
    :cond_3
    if-nez v2, :cond_9

    if-eqz v3, :cond_4

    goto :goto_2

    .line 1073
    :cond_4
    invoke-static {}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isSupportThemeRestore()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isCustChange(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isThemeChange(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1074
    :cond_5
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isHotaRestoreThemeOrFirstBoot(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1076
    :cond_6
    invoke-direct {p0, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->deleteWallpaperInfoFile(I)V

    .line 1077
    invoke-virtual {p0, p2, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->installCustomerTheme(Landroid/content/Context;I)Z

    .line 1078
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->updateConfiguration()V

    goto :goto_3

    .line 1080
    :cond_7
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isEcotaVersion(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1081
    invoke-direct {p0, p2, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->customizeEcotaWallpaper(Landroid/content/Context;I)V

    goto :goto_3

    .line 1082
    :cond_8
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isClearEcota(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1083
    const-string v4, "HwThemeManagerImpl"

    const-string v5, "clear Ecota"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-direct {p0, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->deleteWallpaperInfoFile(I)V

    .line 1085
    invoke-direct {p0, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->deleteSystemWallpaper(I)V

    .line 1086
    invoke-direct {p0, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->restoreDefaultWallpaper(I)V

    goto :goto_3

    .line 1067
    :cond_9
    :goto_2
    invoke-virtual {p0, p2, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->installDefaultHwTheme(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {v4}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->setIsDefaultThemeOk(Z)V

    .line 1069
    invoke-direct {p0, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isHotaRestoreThemeOrFirstBoot(Landroid/content/Context;)Z

    .line 1089
    :cond_a
    :goto_3
    return-void
.end method

.method public generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1343
    move/from16 v3, p4

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 1344
    return-object v0

    .line 1347
    :cond_0
    const-string v4, "window"

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1348
    .local v4, "wm":Landroid/view/WindowManager;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1350
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 1351
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1352
    iget v8, v6, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1353
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 1354
    .local v8, "size":Landroid/graphics/Point;
    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1358
    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v10, v8, Landroid/graphics/Point;->y:I

    if-le v9, v10, :cond_1

    iget v9, v8, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget v9, v8, Landroid/graphics/Point;->y:I

    .line 1359
    .local v9, "max":I
    :goto_0
    iget v10, v8, Landroid/graphics/Point;->x:I

    iget v11, v8, Landroid/graphics/Point;->y:I

    if-ge v10, v11, :cond_2

    iget v10, v8, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_2
    iget v10, v8, Landroid/graphics/Point;->y:I

    .line 1361
    .local v10, "min":I
    :goto_1
    if-lez v2, :cond_c

    if-lez v3, :cond_c

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v11, v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-eq v11, v3, :cond_3

    goto :goto_3

    .line 1366
    :cond_3
    :goto_2
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 1363
    :cond_4
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v11, v10, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-eq v11, v9, :cond_3

    .line 1364
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v11, v9, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-eq v11, v9, :cond_3

    .line 1365
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v11, v9, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ne v11, v10, :cond_7

    goto :goto_2

    .line 1372
    :cond_7
    :try_start_0
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 1373
    .local v11, "newbm":Landroid/graphics/Bitmap;
    if-nez v11, :cond_8

    .line 1374
    :try_start_1
    const-string v0, "HwThemeManagerImpl"

    const-string v12, "Can\'t generate default bitmap, newbm = null"

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 1375
    return-object v1

    .line 1410
    .end local v11    # "newbm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_7

    .line 1377
    .restart local v11    # "newbm":Landroid/graphics/Bitmap;
    :cond_8
    :try_start_2
    iget v12, v6, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1379
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1380
    .local v12, "c":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1381
    .local v13, "targetRect":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 1384
    iget v14, v13, Landroid/graphics/Rect;->right:I

    sub-int v14, v2, v14

    .line 1385
    .local v14, "deltaw":I
    iget v15, v13, Landroid/graphics/Rect;->bottom:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    sub-int v15, v3, v15

    .line 1387
    .local v15, "deltah":I
    if-gtz v14, :cond_a

    if-lez v15, :cond_9

    goto :goto_4

    .line 1398
    :cond_9
    move-object/from16 v16, v4

    goto :goto_6

    .line 1389
    :cond_a
    :goto_4
    int-to-float v0, v2

    move-object/from16 v16, v4

    :try_start_3
    iget v4, v13, Landroid/graphics/Rect;->right:I

    .end local v4    # "wm":Landroid/view/WindowManager;
    .local v16, "wm":Landroid/view/WindowManager;
    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 1390
    .local v0, "tempWidth":F
    int-to-float v4, v3

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1391
    .local v4, "tempHeight":F
    cmpl-float v5, v0, v4

    if-lez v5, :cond_b

    move v5, v0

    goto :goto_5

    :cond_b
    move v5, v4

    .line 1392
    .local v5, "scale":F
    :goto_5
    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->right:I

    .end local v0    # "tempWidth":F
    .local v17, "tempWidth":F
    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v13, Landroid/graphics/Rect;->right:I

    .line 1393
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v13, Landroid/graphics/Rect;->bottom:I

    .line 1394
    iget v0, v13, Landroid/graphics/Rect;->right:I

    sub-int v14, v2, v0

    .line 1395
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v3, v0

    .line 1398
    .end local v4    # "tempHeight":F
    .end local v5    # "scale":F
    .end local v17    # "tempWidth":F
    :goto_6
    div-int/lit8 v0, v14, 0x2

    div-int/lit8 v4, v15, 0x2

    invoke-virtual {v13, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1401
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1402
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1403
    const/4 v4, 0x0

    invoke-virtual {v12, v1, v4, v13, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    .line 1409
    return-object v11

    .line 1410
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v11    # "newbm":Landroid/graphics/Bitmap;
    .end local v12    # "c":Landroid/graphics/Canvas;
    .end local v13    # "targetRect":Landroid/graphics/Rect;
    .end local v14    # "deltaw":I
    .end local v15    # "deltah":I
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v16    # "wm":Landroid/view/WindowManager;
    .local v4, "wm":Landroid/view/WindowManager;
    :catch_2
    move-exception v0

    move-object/from16 v16, v4

    .line 1411
    .end local v4    # "wm":Landroid/view/WindowManager;
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :goto_7
    const-string v4, "HwThemeManagerImpl"

    const-string v5, "Can\'t generate default bitmap"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1412
    return-object v1

    .line 1366
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v16    # "wm":Landroid/view/WindowManager;
    .restart local v4    # "wm":Landroid/view/WindowManager;
    :cond_c
    move-object/from16 v16, v4

    .end local v4    # "wm":Landroid/view/WindowManager;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :goto_8
    return-object v1
.end method

.method public getClonedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p1

    .line 1465
    move-object/from16 v2, p2

    sget-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_SUPPORT_CLONE_APP:Z

    if-nez v0, :cond_0

    .line 1466
    return-object v2

    .line 1469
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x20300bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1470
    .local v3, "clone":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    .line 1471
    return-object v2

    .line 1473
    :cond_1
    const v0, 0x20500c7

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1475
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1476
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v4, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1477
    return-object v3

    .line 1480
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20e0101

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1481
    .local v5, "markBgRatio":Ljava/lang/Float;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20e0102

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1483
    .local v6, "markBgPercentage":Ljava/lang/Float;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 1484
    .local v7, "srcWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 1486
    .local v8, "srcHeight":I
    int-to-float v9, v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 1487
    .local v9, "tempSrcWidth":I
    int-to-float v10, v8

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 1488
    .local v10, "tempSrcHeight":I
    if-le v9, v10, :cond_3

    move v11, v10

    goto :goto_0

    :cond_3
    move v11, v9

    .line 1490
    .local v11, "markBgRadius":I
    :goto_0
    const/4 v12, 0x0

    .line 1491
    .local v12, "cloneWidth":I
    const/4 v13, 0x0

    .line 1492
    .local v13, "cloneHeight":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-lt v14, v15, :cond_4

    .line 1493
    int-to-float v14, v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v15

    div-float/2addr v14, v15

    float-to-int v12, v14

    .line 1494
    int-to-double v14, v12

    mul-double v16, v16, v14

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-double v14, v14

    mul-double v16, v16, v14

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-double v14, v14

    div-double v14, v16, v14

    double-to-int v13, v14

    goto :goto_1

    .line 1496
    :cond_4
    int-to-float v14, v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v15

    div-float/2addr v14, v15

    float-to-int v13, v14

    .line 1497
    int-to-double v14, v13

    mul-double v16, v16, v14

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-double v14, v14

    mul-double v16, v16, v14

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-double v14, v14

    div-double v14, v16, v14

    double-to-int v12, v14

    .line 1501
    :goto_1
    move-object/from16 v14, p0

    iget-object v15, v14, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLockForClone:Ljava/lang/Object;

    monitor-enter v15

    .line 1502
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1503
    .local v0, "newBitMap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1504
    .local v4, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v18, v5

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5, v5, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1505
    .end local v5    # "markBgRatio":Ljava/lang/Float;
    .local v18, "markBgRatio":Ljava/lang/Float;
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1507
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1508
    .local v5, "mPaint":Landroid/graphics/Paint;
    move-object/from16 v19, v6

    :try_start_2
    new-instance v6, Landroid/graphics/PorterDuffXfermode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v6    # "markBgPercentage":Ljava/lang/Float;
    .local v19, "markBgPercentage":Ljava/lang/Float;
    move/from16 v20, v9

    :try_start_3
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .end local v9    # "tempSrcWidth":I
    .local v20, "tempSrcWidth":I
    invoke-direct {v6, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1509
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1510
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 1511
    const v6, 0x20500c7

    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1512
    sub-int v6, v7, v11

    int-to-float v6, v6

    sub-int v9, v8, v11

    int-to-float v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1514
    int-to-float v6, v11

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    move/from16 v21, v7

    int-to-float v7, v11

    .end local v7    # "srcWidth":I
    .local v21, "srcWidth":I
    div-float/2addr v7, v9

    move/from16 v22, v8

    int-to-float v8, v11

    .end local v8    # "srcHeight":I
    .local v22, "srcHeight":I
    div-float/2addr v8, v9

    :try_start_4
    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1516
    sub-int v6, v11, v12

    int-to-float v6, v6

    div-float/2addr v6, v9

    sub-int v7, v11, v13

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1518
    int-to-float v6, v12

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    int-to-float v8, v13

    mul-float/2addr v8, v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v8, v7

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1519
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1520
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1521
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 1522
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1523
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1525
    .local v6, "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_5

    .line 1526
    move-object v7, v2

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 1527
    .local v7, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 1530
    .end local v7    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    monitor-exit v15

    return-object v6

    .line 1531
    .end local v0    # "newBitMap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "mPaint":Landroid/graphics/Paint;
    .end local v6    # "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v21    # "srcWidth":I
    .end local v22    # "srcHeight":I
    .local v7, "srcWidth":I
    .restart local v8    # "srcHeight":I
    :catchall_0
    move-exception v0

    move/from16 v21, v7

    move/from16 v22, v8

    .end local v7    # "srcWidth":I
    .end local v8    # "srcHeight":I
    .restart local v21    # "srcWidth":I
    .restart local v22    # "srcHeight":I
    goto :goto_2

    .end local v20    # "tempSrcWidth":I
    .end local v21    # "srcWidth":I
    .end local v22    # "srcHeight":I
    .restart local v7    # "srcWidth":I
    .restart local v8    # "srcHeight":I
    .restart local v9    # "tempSrcWidth":I
    :catchall_1
    move-exception v0

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v20, v9

    .end local v7    # "srcWidth":I
    .end local v8    # "srcHeight":I
    .end local v9    # "tempSrcWidth":I
    .restart local v20    # "tempSrcWidth":I
    .restart local v21    # "srcWidth":I
    .restart local v22    # "srcHeight":I
    goto :goto_2

    .end local v19    # "markBgPercentage":Ljava/lang/Float;
    .end local v20    # "tempSrcWidth":I
    .end local v21    # "srcWidth":I
    .end local v22    # "srcHeight":I
    .local v6, "markBgPercentage":Ljava/lang/Float;
    .restart local v7    # "srcWidth":I
    .restart local v8    # "srcHeight":I
    .restart local v9    # "tempSrcWidth":I
    :catchall_2
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v20, v9

    .end local v6    # "markBgPercentage":Ljava/lang/Float;
    .end local v7    # "srcWidth":I
    .end local v8    # "srcHeight":I
    .end local v9    # "tempSrcWidth":I
    .restart local v19    # "markBgPercentage":Ljava/lang/Float;
    .restart local v20    # "tempSrcWidth":I
    .restart local v21    # "srcWidth":I
    .restart local v22    # "srcHeight":I
    goto :goto_2

    .end local v18    # "markBgRatio":Ljava/lang/Float;
    .end local v19    # "markBgPercentage":Ljava/lang/Float;
    .end local v20    # "tempSrcWidth":I
    .end local v21    # "srcWidth":I
    .end local v22    # "srcHeight":I
    .local v5, "markBgRatio":Ljava/lang/Float;
    .restart local v6    # "markBgPercentage":Ljava/lang/Float;
    .restart local v7    # "srcWidth":I
    .restart local v8    # "srcHeight":I
    .restart local v9    # "tempSrcWidth":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v20, v9

    .end local v5    # "markBgRatio":Ljava/lang/Float;
    .end local v6    # "markBgPercentage":Ljava/lang/Float;
    .end local v7    # "srcWidth":I
    .end local v8    # "srcHeight":I
    .end local v9    # "tempSrcWidth":I
    .restart local v18    # "markBgRatio":Ljava/lang/Float;
    .restart local v19    # "markBgPercentage":Ljava/lang/Float;
    .restart local v20    # "tempSrcWidth":I
    .restart local v21    # "srcWidth":I
    .restart local v22    # "srcHeight":I
    :goto_2
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_2
.end method

.method public getDefaultLiveWallpaper(I)Ljava/lang/String;
    .locals 11
    .param p1, "userId"    # I

    .line 1552
    const/4 v0, 0x0

    .line 1553
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 1554
    .local v1, "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/themes//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1556
    .local v2, "livepaperpath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1557
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/File;

    const-string v5, "livepaper.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 1566
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    goto :goto_1

    .line 1564
    :catch_0
    move-exception v3

    .line 1565
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "HwThemeManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1562
    :catch_1
    move-exception v3

    .line 1563
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "HwThemeManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1560
    :catch_2
    move-exception v3

    .line 1561
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v4, "HwThemeManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAXException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Lorg/xml/sax/SAXException;
    goto :goto_0

    .line 1558
    :catch_3
    move-exception v3

    .line 1559
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "HwThemeManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ParserConfigurationException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    goto :goto_0

    .line 1567
    :goto_1
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1568
    return-object v3

    .line 1570
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 1571
    .local v4, "rootElement":Lorg/w3c/dom/Element;
    if-nez v4, :cond_1

    .line 1572
    return-object v3

    .line 1574
    :cond_1
    new-instance v3, Lhuawei/android/hwtheme/HwThemeManagerImpl$LivewallpaperXmlInfo;

    invoke-direct {v3}, Lhuawei/android/hwtheme/HwThemeManagerImpl$LivewallpaperXmlInfo;-><init>()V

    .line 1575
    .local v3, "livewallpaperInfo":Lhuawei/android/hwtheme/HwThemeManagerImpl$LivewallpaperXmlInfo;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1576
    .local v5, "itemNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 1577
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 1578
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1579
    .local v8, "itemNode":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 1580
    const-string v9, "pkgname"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1581
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lhuawei/android/hwtheme/HwThemeManagerImpl$LivewallpaperXmlInfo;->mPackageName:Ljava/lang/String;

    goto :goto_3

    .line 1582
    :cond_2
    const-string v9, "classname"

    .line 1583
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 1582
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1584
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lhuawei/android/hwtheme/HwThemeManagerImpl$LivewallpaperXmlInfo;->mClassName:Ljava/lang/String;

    .line 1577
    .end local v8    # "itemNode":Lorg/w3c/dom/Node;
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1588
    .end local v7    # "i":I
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1589
    .local v7, "livewallpaperStr":Ljava/lang/StringBuffer;
    iget-object v8, v3, Lhuawei/android/hwtheme/HwThemeManagerImpl$LivewallpaperXmlInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1590
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1591
    iget-object v8, v3, Lhuawei/android/hwtheme/HwThemeManagerImpl$LivewallpaperXmlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1592
    const-string v8, "HwThemeManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HwThemeManager#getDefaultLiveWallpaper livewallpaperStr ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public getDefaultWallpaperIS(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 856
    const/4 v0, 0x0

    .line 858
    .local v0, "is":Ljava/io/InputStream;
    const-string v1, "wallpaper"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 861
    .local v1, "wallpaperManager":Landroid/app/WallpaperManager;
    :try_start_0
    const-string v2, "ro.config.wallpaper"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 863
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 864
    .local v3, "googleCustWallpaperFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 865
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 866
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 867
    return-object v0

    .line 871
    .end local v3    # "googleCustWallpaperFile":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/cust/wallpaper/"

    const-string v5, "wallpaper1.jpg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 872
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/data/cust/wallpaper/wallpaper1.jpg"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 875
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/themes/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/wallpaper/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "home_wallpaper_0.jpg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 877
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/themes/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/wallpaper/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "home_wallpaper_0.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 880
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 881
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 886
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    goto :goto_1

    .line 884
    :catch_0
    move-exception v2

    .line 889
    :goto_1
    if-nez v0, :cond_4

    .line 890
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080264

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 893
    :cond_4
    return-object v0
.end method

.method public getHwBadgeDrawable(Landroid/app/Notification;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1537
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "com.huawei.isIntentProtectedApp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20300c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1540
    .local v0, "trustSpace":Landroid/graphics/drawable/Drawable;
    const v1, 0x20500c7

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1542
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1543
    return-object v0

    .line 1545
    .end local v0    # "trustSpace":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;
    .locals 1

    .line 845
    new-instance v0, Landroid/content/res/HwResourcesImpl;

    invoke-direct {v0}, Landroid/content/res/HwResourcesImpl;-><init>()V

    .line 846
    .local v0, "absResourcesImpl":Landroid/content/res/AbsResourcesImpl;
    return-object v0
.end method

.method public getHwThemeLauncherIconSize(Landroid/app/ActivityManager;Landroid/content/res/Resources;)I
    .locals 4
    .param p1, "am"    # Landroid/app/ActivityManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 974
    move-object v0, p2

    .line 975
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "ro.config.app_big_icon_size"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 978
    .local v1, "configIconSize":I
    const-string v3, "persist.sys.res.icon_size"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 979
    .local v3, "multiResSize":I
    if-lez v1, :cond_0

    if-lez v3, :cond_0

    .line 980
    move v1, v3

    .line 984
    :cond_0
    if-ne v1, v2, :cond_1

    .line 985
    const v2, 0x20e0080

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 987
    .local v2, "iconSize":I
    :goto_0
    return v2
.end method

.method public getJoinBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcDraw"    # Landroid/graphics/drawable/Drawable;
    .param p3, "backgroundId"    # I

    .line 1450
    const-string v0, "com.huawei.hwtheme.permission.GET_NOTIFICATION_INFO"

    const-string v1, "getJoinBitmap"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1452
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 1453
    invoke-virtual {v0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 1455
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/content/res/AbsResourcesImpl;->getJoinBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 1458
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 825
    new-instance v0, Landroid/content/res/HwResources;

    invoke-direct {v0}, Landroid/content/res/HwResources;-><init>()V

    return-object v0
.end method

.method public getResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "displayAdjustments"    # Landroid/view/DisplayAdjustments;
    .param p5, "token"    # Landroid/os/IBinder;

    .line 817
    new-instance v6, Landroid/content/res/HwResources;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/HwResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/os/IBinder;)V

    return-object v6
.end method

.method public getResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 839
    new-instance v0, Landroid/content/res/HwResources;

    invoke-direct {v0, p1}, Landroid/content/res/HwResources;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public getResources(Z)Landroid/content/res/Resources;
    .locals 1
    .param p1, "system"    # Z

    .line 833
    new-instance v0, Landroid/content/res/HwResources;

    invoke-direct {v0, p1}, Landroid/content/res/HwResources;-><init>(Z)V

    return-object v0
.end method

.method public getShadowcolor(Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "attr"    # I

    .line 1044
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getThemeBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 1257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->getThemeBitmap(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThemeBitmap(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "padding"    # Landroid/graphics/Rect;

    .line 1240
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1241
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1243
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1244
    return-object v2

    .line 1246
    :cond_0
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, "file":Ljava/lang/String;
    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1250
    :cond_1
    return-object v2

    .line 1248
    :cond_2
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/res/Resources;->getThemeBitmap(Landroid/util/TypedValue;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getThemeColor([IILandroid/util/TypedValue;Landroid/content/res/Resources;Z)I
    .locals 3
    .param p1, "data"    # [I
    .param p2, "index"    # I
    .param p3, "value"    # Landroid/util/TypedValue;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "flag"    # Z

    .line 956
    move-object v0, p3

    .line 957
    .local v0, "mValue":Landroid/util/TypedValue;
    if-eqz p5, :cond_0

    .line 958
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 960
    :try_start_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 961
    :catch_0
    move-exception v1

    .line 963
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    return v2

    .line 967
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    return v1
.end method

.method public initConfigurationEx()Landroid/content/res/IHwConfiguration;
    .locals 5

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "tmpExtraConfig":Landroid/content/res/IHwConfiguration;
    :try_start_0
    const-string v1, "android.content.res.ConfigurationEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Landroid/content/res/IHwConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 265
    .end local v1    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Configuration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reflection exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public initForThemeFont(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 275
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastHwConfig:Landroid/content/res/IHwConfiguration;

    check-cast v0, Landroid/content/res/ConfigurationEx;

    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    check-cast v1, Landroid/content/res/ConfigurationEx;

    iget v1, v1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iput v1, v0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 276
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastLocale:Ljava/util/Locale;

    .line 278
    :cond_0
    return-void
.end method

.method public initHwConfiguration()Landroid/content/res/IHwConfiguration;
    .locals 1

    .line 1025
    new-instance v0, Landroid/content/res/ConfigurationEx;

    invoke-direct {v0}, Landroid/content/res/ConfigurationEx;-><init>()V

    return-object v0
.end method

.method public installCustomerTheme(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1606
    invoke-direct {p0, p1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->getDefaultHwThemePack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, "defname":Ljava/lang/String;
    const-string v1, "HwThemeManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the new default theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-direct {p0, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1609
    const/4 v1, 0x0

    return v1

    .line 1611
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->installHwTheme(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public installDefaultDhomeTheme(Landroid/content/Context;)Z
    .locals 20
    .param p1, "ctx"    # Landroid/content/Context;

    move-object/from16 v0, p0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/kisekae"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    const-string v2, "dcm_theme_path"

    const-string v3, "/cust/docomo/jp/themes/"

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v2, v3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->getDhomeThemePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/kisekae0.kin"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "DOCOMO_DEFAULT_THEME_PATH":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->getDhomeThemeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 554
    .local v5, "deviceThemeName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "originThemePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v7, "themefolderDir":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v8, "originThemeFile":Ljava/io/File;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 562
    return v10

    .line 565
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/themes/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 566
    .local v9, "hwThemeFileName":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v11, "hwThemePath":Ljava/io/File;
    const-string v12, ".."

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 568
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_1

    .line 569
    return v10

    .line 571
    :cond_1
    const-string v12, "/data/themes/"

    invoke-direct {v0, v12}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->giveRWToPath(Ljava/lang/String;)V

    .line 576
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 577
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v12

    if-nez v12, :cond_3

    .line 578
    const-string v12, "HwThemeManagerImpl"

    const-string v13, "mkdir /data/kisekae fail !!!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return v10

    .line 584
    :cond_3
    invoke-direct {v0, v1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->giveRWToPath(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "cust_multi_themes"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 590
    .local v12, "IS_DOCOMO_MULTI_THEMES":Ljava/lang/String;
    if-eqz v12, :cond_7

    const-string v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 591
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 593
    const/4 v13, 0x0

    .line 594
    .local v13, "DOCOMO_MULTI_THEME_PATH":Ljava/lang/String;
    const/4 v14, 0x0

    .line 595
    .local v14, "originMultiThemePath":Ljava/lang/String;
    const-string v15, ":"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 597
    .local v15, "deviceThemeNames":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 598
    .local v16, "linkThemeTag":I
    move/from16 v19, v16

    move-object/from16 v16, v8

    move v8, v10

    move/from16 v10, v19

    .local v8, "i":I
    .local v10, "linkThemeTag":I
    .local v16, "originThemeFile":Ljava/io/File;
    :goto_0
    array-length v4, v15

    if-ge v8, v4, :cond_5

    .line 599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v2

    aget-object v2, v15, v8

    .end local v2    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .local v17, "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 600
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .end local v16    # "originThemeFile":Ljava/io/File;
    .local v2, "originThemeFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v1

    const-string v1, "/kisekae"

    .end local v1    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .local v18, "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v10, 0x1

    .local v1, "linkThemeTag":I
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v10    # "linkThemeTag":I
    const-string v10, ".kin"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 604
    .end local v13    # "DOCOMO_MULTI_THEME_PATH":Ljava/lang/String;
    .local v4, "DOCOMO_MULTI_THEME_PATH":Ljava/lang/String;
    invoke-direct {v0, v14, v4}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->linkTheme(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    move v10, v1

    move-object v13, v4

    goto :goto_1

    .end local v4    # "DOCOMO_MULTI_THEME_PATH":Ljava/lang/String;
    .end local v18    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .local v1, "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .restart local v10    # "linkThemeTag":I
    .restart local v13    # "DOCOMO_MULTI_THEME_PATH":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v1

    .end local v1    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .restart local v18    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v16, v2

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move-object/from16 v4, p1

    goto :goto_0

    .line 607
    .end local v8    # "i":I
    .end local v10    # "linkThemeTag":I
    .end local v13    # "DOCOMO_MULTI_THEME_PATH":Ljava/lang/String;
    .end local v14    # "originMultiThemePath":Ljava/lang/String;
    .end local v15    # "deviceThemeNames":[Ljava/lang/String;
    .end local v17    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .end local v18    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .restart local v1    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .local v2, "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .restart local v16    # "originThemeFile":Ljava/io/File;
    :cond_5
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    .line 616
    .end local v1    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .end local v2    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .restart local v17    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .restart local v18    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    move-object/from16 v8, v16

    goto :goto_2

    .end local v16    # "originThemeFile":Ljava/io/File;
    .end local v17    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .end local v18    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .restart local v1    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .restart local v2    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .local v8, "originThemeFile":Ljava/io/File;
    :cond_6
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    .end local v1    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .end local v2    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .restart local v17    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .restart local v18    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    goto :goto_2

    .line 610
    .end local v17    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .end local v18    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .restart local v1    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .restart local v2    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    .end local v1    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    .end local v2    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .restart local v17    # "DOCOMO_PREFABRICATE_THEMES_DIR":Ljava/lang/String;
    .restart local v18    # "DOCOMO_ALL_THEMES_DIR":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 611
    invoke-direct {v0, v6, v3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->linkTheme(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    invoke-direct {v0, v3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    .line 622
    :cond_9
    invoke-direct {v0, v8, v3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->saveDhomeThemeInfo(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    const/4 v1, 0x1

    return v1

    .line 617
    :cond_a
    :goto_3
    const-string v1, "HwThemeManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exist"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v1, 0x0

    return v1
.end method

.method public installDefaultHwTheme(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 341
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->installDefaultHwTheme(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public installDefaultHwTheme(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 346
    invoke-virtual {p0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isDhomeThemeAdaptBackcolor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->installDefaultDhomeTheme(Landroid/content/Context;)Z

    .line 350
    :cond_0
    invoke-direct {p0, p1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->getDefaultHwThemePack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "defname":Ljava/lang/String;
    const-string v1, "HwThemeManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the default theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->installHwTheme(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public installHwTheme(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePath"    # Ljava/lang/String;

    .line 330
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->installHwTheme(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public installHwTheme(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "setwallpaper"    # Z

    .line 333
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->installHwTheme(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public installHwTheme(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "setwallpaper"    # Z
    .param p3, "userId"    # I

    .line 337
    invoke-static {p1, p2, p3}, Lcom/huawei/android/content/pm/HwPackageManager;->pmInstallHwTheme(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isCustChange(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1620
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_REGIONAL_PHONE_FEATURE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1621
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "vendor_country"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "originalVendorCountry":Ljava/lang/String;
    const-string v3, "ro.hw.custPath"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1623
    .local v3, "currentVendorCountry":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1624
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "vendor_country"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1625
    return v0

    .line 1626
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1627
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vendor_country"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1628
    return v2

    .line 1630
    .end local v1    # "originalVendorCountry":Ljava/lang/String;
    .end local v3    # "currentVendorCountry":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :cond_2
    sget-boolean v1, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_COTA_FEATURE:Z

    if-eqz v1, :cond_4

    .line 1632
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "cotaVersion"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1633
    .local v1, "originalCotaVersion":Ljava/lang/String;
    const-string v3, "ro.product.CotaVersion"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1634
    .local v3, "cotaVersion":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1635
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "cotaVersion"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1636
    return v0

    .line 1637
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1638
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cotaVersion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1639
    return v2

    .line 1645
    .end local v1    # "originalCotaVersion":Ljava/lang/String;
    .end local v3    # "cotaVersion":Ljava/lang/String;
    :cond_4
    :goto_0
    goto :goto_1

    .line 1643
    :catch_0
    move-exception v1

    .line 1644
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HwThemeManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check cust Exception e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public isDhomeThemeAdaptBackcolor()Z
    .locals 2

    .line 441
    const-string v0, "ro.config.hw_dhome_theme"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTAlarms(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1021
    const-string v0, "_alarm."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTNotifications(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1011
    const-string v0, "_notification."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "_calendar."

    .line 1012
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "_email."

    .line 1013
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "_message."

    .line 1014
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1011
    :goto_1
    return v0
.end method

.method public isTRingtones(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1004
    const-string v0, "_ringtone."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTargetFamily(Ljava/lang/String;)Z
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;

    .line 1324
    if-eqz p1, :cond_0

    const-string v0, "chnfzxh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeIconCache(Z)Z
    .locals 1
    .param p1, "clearall"    # Z

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public removeIconCache(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "packageIcon"    # I

    .line 937
    if-eqz p3, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p4

    .line 939
    .local v0, "id":I
    :goto_0
    invoke-direct {p0, p2, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->getResourcePackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "resPackageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, "idAndPackageName":Ljava/lang/String;
    invoke-static {v2}, Lhuawei/android/hwutil/IconCache;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 943
    invoke-static {v2}, Lhuawei/android/hwutil/IconCache;->get(Ljava/lang/String;)Lhuawei/android/hwutil/IconCache$CacheEntry;

    move-result-object v3

    iput-object v3, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mTempRemovedEntry:Lhuawei/android/hwutil/IconCache$CacheEntry;

    .line 944
    invoke-static {v2}, Lhuawei/android/hwutil/IconCache;->remove(Ljava/lang/String;)V

    .line 946
    :cond_1
    return-void
.end method

.method public restoreIconCache(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # I

    .line 949
    iget-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mTempRemovedEntry:Lhuawei/android/hwutil/IconCache$CacheEntry;

    if-eqz v0, :cond_0

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mTempRemovedEntry:Lhuawei/android/hwutil/IconCache$CacheEntry;

    invoke-static {v0, v1}, Lhuawei/android/hwutil/IconCache;->add(Ljava/lang/String;Lhuawei/android/hwutil/IconCache$CacheEntry;)V

    .line 951
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mTempRemovedEntry:Lhuawei/android/hwutil/IconCache$CacheEntry;

    .line 953
    :cond_0
    return-void
.end method

.method public retrieveSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "userId"    # I

    .line 1209
    const-string v0, "simpleui_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1211
    .local v0, "simpleuiVal":I
    const-string v1, "hw_launcher_desktop_mode"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1213
    .local v1, "launcherConfig":I
    const-string v3, "HwThemeManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimpleUIConfig simpleuiVal ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",launcherConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-boolean v4, Lhuawei/android/hwtheme/HwThemeManagerImpl;->IS_REGIONAL_PHONE_FEATURE:Z

    if-eqz v4, :cond_2

    const-string v4, "user_setup_complete"

    .line 1217
    invoke-static {p1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 1219
    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    move v0, v3

    .line 1221
    :cond_2
    iget-object v2, p2, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, Landroid/content/res/IHwConfiguration;->setConfigItem(II)V

    .line 1223
    :try_start_0
    iget-object v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->mLauncherMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->enableLaunchers(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    goto :goto_1

    .line 1224
    :catch_0
    move-exception v2

    .line 1225
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwThemeManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveSimpleUIConfig enableLaunchers e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public saveIconToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fn"    # Ljava/lang/String;
    .param p3, "clearold"    # Z

    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme_path"    # Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setThemeFont()V
    .locals 1

    .line 1280
    sget-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->sIsHwtFlipFontOn:Z

    if-eqz v0, :cond_0

    .line 1282
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 1284
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 1292
    :cond_0
    return-void
.end method

.method public setThemeFontOnConfigChg(Landroid/content/res/Configuration;)Z
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1296
    sget-boolean v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->sIsHwtFlipFontOn:Z

    if-eqz v0, :cond_5

    .line 1297
    const/4 v0, 0x0

    .line 1298
    .local v0, "isHwThemeChanged":Z
    iget-object v1, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastHwConfig:Landroid/content/res/IHwConfiguration;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1299
    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    .line 1300
    .local v1, "delta":Landroid/content/res/IHwConfiguration;
    iget-object v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastHwConfig:Landroid/content/res/IHwConfiguration;

    invoke-interface {v2, v1}, Landroid/content/res/IHwConfiguration;->updateFrom(Landroid/content/res/IHwConfiguration;)I

    move-result v2

    .line 1301
    .local v2, "changes":I
    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 1302
    const/4 v0, 0x1

    .line 1305
    .end local v1    # "delta":Landroid/content/res/IHwConfiguration;
    .end local v2    # "changes":I
    :cond_0
    const/4 v1, 0x0

    .line 1306
    .local v1, "isLocaleChanged":Z
    if-eqz p1, :cond_3

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastLocale:Ljava/util/Locale;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastLocale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1307
    :cond_1
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->lastLocale:Ljava/util/Locale;

    .line 1308
    const/4 v1, 0x1

    .line 1311
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 1312
    :cond_4
    invoke-virtual {p0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->setThemeFont()V

    .line 1313
    const/4 v2, 0x1

    return v2

    .line 1316
    .end local v0    # "isHwThemeChanged":Z
    .end local v1    # "isLocaleChanged":Z
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseAdditionalChnFont(Ljava/lang/String;)Z
    .locals 2
    .param p1, "familyName"    # Ljava/lang/String;

    .line 1327
    invoke-virtual {p0, p1}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isTargetFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, "curLang":Ljava/lang/String;
    invoke-static {}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->isNoThemeFont()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1333
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1337
    .end local v0    # "curLang":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateConfiguration()V
    .locals 1

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->updateConfiguration(Z)V

    .line 808
    return-void
.end method

.method public updateConfiguration(Z)V
    .locals 4
    .param p1, "changeuser"    # Z

    .line 672
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 673
    .local v0, "curConfig":Landroid/content/res/Configuration;
    nop

    .line 674
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 673
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 675
    iget-object v1, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/content/res/IHwConfiguration;->getConfigItem(I)I

    move-result v1

    .line 676
    .local v1, "tmpTheme":I
    add-int/2addr v1, v2

    .line 677
    iget-object v3, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    invoke-interface {v3, v2, v1}, Landroid/content/res/IHwConfiguration;->setConfigItem(II)V

    .line 678
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 681
    invoke-static {}, Landroid/util/HwPCUtils;->enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 683
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Landroid/util/HwPCUtils;->isValidExtDisplayId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 684
    :cond_0
    if-nez p1, :cond_1

    .line 685
    invoke-direct {p0}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->updateOverlaysThems()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v0    # "curConfig":Landroid/content/res/Configuration;
    .end local v1    # "tmpTheme":I
    :cond_1
    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwThemeManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfiguration occurs exception e.msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public updateIconCache(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "packageIcon"    # I

    .line 900
    if-eqz p4, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p5

    .line 906
    .local v0, "id":I
    :goto_0
    move-object v1, p3

    .line 908
    .local v1, "resPackageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "idAndPackageName":Ljava/lang/String;
    invoke-static {v2}, Lhuawei/android/hwutil/IconCache;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 911
    if-eqz p2, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 913
    .local v3, "tmpName":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 914
    .local v4, "lc":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_4

    const-string v5, "shortcut"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    const-string v5, ".cts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    .line 915
    new-instance v5, Lhuawei/android/hwutil/IconCache$CacheEntry;

    invoke-direct {v5}, Lhuawei/android/hwutil/IconCache$CacheEntry;-><init>()V

    .line 916
    .local v5, "ce":Lhuawei/android/hwutil/IconCache$CacheEntry;
    iput-object v3, v5, Lhuawei/android/hwutil/IconCache$CacheEntry;->name:Ljava/lang/String;

    .line 917
    if-eqz p4, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    iput v6, v5, Lhuawei/android/hwutil/IconCache$CacheEntry;->type:I

    .line 918
    invoke-static {v2, v5}, Lhuawei/android/hwutil/IconCache;->add(Ljava/lang/String;Lhuawei/android/hwutil/IconCache$CacheEntry;)V

    .line 921
    .end local v3    # "tmpName":Ljava/lang/String;
    .end local v4    # "lc":Ljava/lang/String;
    .end local v5    # "ce":Lhuawei/android/hwutil/IconCache$CacheEntry;
    :cond_4
    return-void
.end method

.method public updateResolveInfoIconCache(Landroid/content/pm/ResolveInfo;ILjava/lang/String;)V
    .locals 7
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "icon"    # I
    .param p3, "resolvePackageName"    # Ljava/lang/String;

    .line 924
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 925
    if-eqz p3, :cond_0

    .line 926
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->updateIconCache(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 927
    return-void

    .line 929
    :cond_0
    sget-object v0, Lhuawei/android/hwtheme/HwThemeManagerImpl;->resolveInfoUtils:Landroid/content/pm/ResolveInfoUtils;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfoUtils;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 930
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    if-eqz v0, :cond_1

    .line 931
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lhuawei/android/hwtheme/HwThemeManagerImpl;->updateIconCache(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 934
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_1
    return-void
.end method

.method public updateSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "configChanges"    # I

    .line 1231
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 1232
    const-string v0, "HwThemeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimpleUIConfig SIMPLEUI_MODE putIntForUser ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/content/res/IHwConfiguration;->getConfigItem(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v0, "simpleui_mode"

    iget-object v1, p2, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    .line 1234
    invoke-interface {v1, v3}, Landroid/content/res/IHwConfiguration;->getConfigItem(I)I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1233
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1236
    :cond_0
    return-void
.end method
