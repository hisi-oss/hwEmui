.class public Landroid/content/res/HwResourcesImpl;
.super Landroid/content/res/AbsResourcesImpl;
.source "HwResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/HwResourcesImpl$HwThemeFileFilter;
    }
.end annotation


# static fields
.field private static final ANDROID_RES:Ljava/lang/String; = "android"

.field private static final ANDROID_RES_EXT:Ljava/lang/String; = "androidhwext"

.field private static final APP_WHILTLIST_ADD:[Ljava/lang/String;

.field private static final CUSTOM_DIFF_THEME_DIR:Ljava/lang/String;

.field private static final DARK:Ljava/lang/String; = "dark"

.field private static final DARK_OVERLAY_RES:Ljava/lang/String; = "com.android.frameworkhwext.dark"

.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAWABLE:Z = false

.field private static final DEBUG_ICON:Z = false

.field private static final DEBUG_VERBOSE_ICON:Z = false

.field private static final DEEPTHEME_WHILTLIST_ADD:[Ljava/lang/String;

.field private static final DEFAULT_CONFIG_NAME:Ljava/lang/String; = "xml/hw_launcher_load_icon.xml"

.field private static final DEFAULT_EDGE_SIZE:I = 0x8

.field private static final DEFAULT_MULTI_DPI_WHITELIST:Ljava/lang/String; = "/system/etc/xml/multidpi_whitelist.xml"

.field private static final DEFAULT_NO_DRAWABLE_FLAG:Ljava/lang/String; = "null"

.field private static final DEFAULT_RES_DIR:Ljava/lang/String; = "res/drawable-xxhdpi"

.field private static final DELTA_X_OF_BACKGROUND:I = 0x0

.field private static final DELTA_Y_OF_BACKGROUND:I = 0x0

.field private static final DIFF_THEME_ICON:Ljava/lang/String; = "/themes/diff/icons"

.field private static final DPI_2K:Ljava/lang/String; = "xxxhdpi"

.field private static final DPI_FHD:Ljava/lang/String; = "xxhdpi"

.field private static final DRAWABLE_FHD:Ljava/lang/String; = "drawable-xxhdpi"

.field private static final DYNAMIC_ICONS:Ljava/lang/String; = "dynamic_icons"

.field private static final EMUI:Ljava/lang/String; = "EMUI"

.field private static final EMUI_TAG:Ljava/lang/String;

.field private static final FILE_DESCRIPTION:Ljava/lang/String; = "description.xml"

.field private static final FILE_MULTI_DPI_WHITELIST:Ljava/lang/String; = "xml/multidpi_whitelist.xml"

.field private static final FRAMEWORK_RES:Ljava/lang/String; = "framework-res"

.field private static final FRAMEWORK_RES_EXT:Ljava/lang/String; = "framework-res-hwext"

.field private static final GOOGLE_KEYWORD:Ljava/lang/String; = "com.google"

.field private static final HONOR:Ljava/lang/String; = "honor"

.field private static final HONOR_OVERLAY_RES:Ljava/lang/String; = "com.android.frameworkhwext.honor"

.field private static final ICONS_ZIPFILE:Ljava/lang/String; = "icons"

.field private static final ICON_BACKGROUND_PREFIX:Ljava/lang/String; = "icon_background"

.field private static final ICON_BORDER_FILE:Ljava/lang/String; = "icon_border.png"

.field private static final ICON_BORDER_UNFLAT_FILE:Ljava/lang/String; = "icon_border_unflat.png"

.field private static final ICON_MASK_ALL_FILE:Ljava/lang/String; = "icon_mask_all.png"

.field private static final ICON_MASK_FILE:Ljava/lang/String; = "icon_mask.png"

.field private static final IS_CUSTOM_ICON:Z

.field private static final LEN_OF_ANDROID:I = 0x7

.field private static final LEN_OF_ANDROID_EXT:I = 0xc

.field private static final LEN_OF_ANDROID_EXT_DARK:I = 0x1f

.field private static final LEN_OF_ANDROID_EXT_HONOR:I = 0x20

.field private static final LEN_OF_ANDROID_EXT_NOVA:I = 0x1f

.field private static final MASK_ABS_VALID_RANGE:I = 0xa

.field private static final NOTIFICATION_ICON_BORDER:Ljava/lang/String; = "ic_stat_notify_icon_border.png"

.field private static final NOTIFICATION_ICON_EXIST:Ljava/lang/String; = "ic_stat_notify_bg_0.png"

.field private static final NOTIFICATION_ICON_MASK:Ljava/lang/String; = "ic_stat_notify_icon_mask.png"

.field private static final NOTIFICATION_ICON_PREFIX:Ljava/lang/String; = "ic_stat_notify_bg_"

.field private static final NOVA:Ljava/lang/String; = "nova"

.field private static final NOVA_OVERLAY_RES:Ljava/lang/String; = "com.android.frameworkhwext.nova"

.field static final TAG:Ljava/lang/String; = "HwResourcesImpl"

.field private static final TAG_CONFIG:Ljava/lang/String; = "launcher_config"

.field private static final THEMEDISIGNER:Ljava/lang/String; = "designer"

.field static final THEME_ANIMATE_FOLDER_ICON_NAME:Ljava/lang/String; = "portal_ring_inner_holo.png.animate"

.field static final THEME_FOLDER_ICON_NAME:Ljava/lang/String; = "portal_ring_inner_holo.png"

.field private static final TYPT_ACTIVITY_ICON:Ljava/lang/String; = "activityIcon"

.field private static final TYPT_BACKGROUND:Ljava/lang/String; = "background"

.field private static final TYPT_ICON:Ljava/lang/String; = "icon"

.field private static final XML_ATTRIBUTE_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final isIconSupportCut:Z

.field private static mAssetCacheColorInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCacheAssetsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCacheColorInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentUserId:I

.field private static mCustHwResources:Landroid/content/res/HwCustHwResources;

.field private static mNonThemedPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreloadedAssetsPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreloadedThemeColorList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mThemeAbsoluteDir:Ljava/lang/String;

.field private static resUtils:Landroid/content/res/ResourcesUtils;

.field private static sBgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sBmpBorder:Landroid/graphics/Bitmap;

.field private static sBmpMask:Landroid/graphics/Bitmap;

.field private static final sCacheLock:Ljava/lang/Object;

.field private static final sConfigAppBigIconSize:I

.field private static final sConfigAppInnerIconSize:I

.field private static sDefaultConfigHasRead:Z

.field private static sDefaultSizeWithoutEdge:I

.field private static sDisThemeActivityIcon:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisThemeBackground:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisThemeIcon:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsHWThemes:Z

.field private static sMaskSizeWithoutEdge:I

.field private static sMultiDirHasRead:Z

.field private static sMultiDirPkgNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPattern:Ljava/util/regex/Pattern;

.field private static sPreloadedColorDrawablesEx:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloadedDrawablesEx:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedHwThemeZipLock:Ljava/lang/Object;

.field private static final sPreloadedHwThemeZips:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSerbiaLocale:Z

.field private static sStandardBgSize:I

.field private static sStandardIconSize:I

.field private static sThemeColorArrayLock:Ljava/lang/Object;

.field private static sThemeDescripHasRead:Z

.field private static sUseAvgColor:I


# instance fields
.field private final mColorDrawableCacheEx:Landroid/content/res/DrawableCache;

.field protected mConfigHwt:I

.field private mContainPackage:Z

.field private mCurrentDeepTheme:I

.field private mDarkThemeType:Ljava/lang/String;

.field private mDeepThemeType:Ljava/lang/String;

.field private final mDrawableCacheEx:Landroid/content/res/DrawableCache;

.field private final mDynamicDrawableCache:Landroid/content/res/DrawableCache;

.field private mOutThemeColorIdArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPackageName:Ljava/lang/String;

.field private mResourcesImpl:Landroid/content/res/ResourcesImpl;

.field protected mThemeChanged:Z

.field private mThemeColorArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AbsResourcesImpl$ThemeColor;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpValue:Landroid/util/TypedValue;

.field private final mTmpValueLock:Ljava/lang/Object;

.field private recPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 117
    const/4 v0, -0x1

    sput v0, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    .line 118
    sput v0, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    .line 121
    sput v0, Landroid/content/res/HwResourcesImpl;->sStandardIconSize:I

    .line 128
    const-string v1, "ro.config.diff_themes"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/content/res/HwResourcesImpl;->CUSTOM_DIFF_THEME_DIR:Ljava/lang/String;

    .line 139
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/content/res/HwResourcesImpl;->mPreloadedAssetsPackage:Ljava/util/HashSet;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/content/res/HwResourcesImpl;->mCacheAssetsList:Ljava/util/HashMap;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/themes/0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/content/res/HwResourcesImpl;->mThemeAbsoluteDir:Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZips:Ljava/util/HashSet;

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZipLock:Ljava/lang/Object;

    .line 153
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    .line 154
    sput v0, Landroid/content/res/HwResourcesImpl;->sMaskSizeWithoutEdge:I

    .line 155
    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 156
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    .line 158
    sput v0, Landroid/content/res/HwResourcesImpl;->sUseAvgColor:I

    .line 159
    const/4 v2, 0x0

    sput-boolean v2, Landroid/content/res/HwResourcesImpl;->sSerbiaLocale:Z

    .line 167
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/content/res/HwResourcesImpl;->mCacheColorInfoList:Ljava/util/HashMap;

    .line 168
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/content/res/HwResourcesImpl;->mAssetCacheColorInfoList:Ljava/util/HashMap;

    .line 169
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Landroid/content/res/HwResourcesImpl;->mPreloadedThemeColorList:Ljava/util/HashSet;

    .line 170
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Landroid/content/res/HwResourcesImpl;->mNonThemedPackage:Ljava/util/HashSet;

    .line 174
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Landroid/content/res/HwResourcesImpl;->sThemeColorArrayLock:Ljava/lang/Object;

    .line 188
    const-string v3, "ro.config.app_big_icon_size"

    .line 189
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/content/res/HwResourcesImpl;->sConfigAppBigIconSize:I

    .line 190
    const-string v3, "ro.config.app_inner_icon_size"

    .line 191
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/HwResourcesImpl;->sConfigAppInnerIconSize:I

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/content/res/HwResourcesImpl;->sMultiDirPkgNames:Ljava/util/HashSet;

    .line 200
    sput-boolean v2, Landroid/content/res/HwResourcesImpl;->sMultiDirHasRead:Z

    .line 203
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeIcon:Ljava/util/HashSet;

    .line 204
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeBackground:Ljava/util/HashSet;

    .line 205
    sput-boolean v2, Landroid/content/res/HwResourcesImpl;->sDefaultConfigHasRead:Z

    .line 207
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeActivityIcon:Ljava/util/HashSet;

    .line 211
    sput-boolean v2, Landroid/content/res/HwResourcesImpl;->sThemeDescripHasRead:Z

    .line 212
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/HwResourcesImpl;->sIsHWThemes:Z

    .line 215
    const-string v3, "ro.config.hw_icon_supprot_cut"

    .line 216
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/HwResourcesImpl;->isIconSupportCut:Z

    .line 218
    const-string v0, "com.android.chrome"

    const-string v3, "com.android.vending"

    const-string v4, "com.whatsapp"

    const-string v5, "com.facebook.orca"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/HwResourcesImpl;->APP_WHILTLIST_ADD:[Ljava/lang/String;

    .line 228
    const-string v0, "ro.config.custom_icon"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/HwResourcesImpl;->IS_CUSTOM_ICON:Z

    .line 234
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedDrawablesEx:Landroid/util/LongSparseArray;

    .line 236
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedColorDrawablesEx:Landroid/util/LongSparseArray;

    .line 240
    const-class v0, Landroid/content/res/ResourcesUtils;

    invoke-static {v0}, Lcom/huawei/utils/reflect/EasyInvokeFactory;->getInvokeUtils(Ljava/lang/Class;)Lcom/huawei/utils/reflect/EasyInvokeUtils;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesUtils;

    sput-object v0, Landroid/content/res/HwResourcesImpl;->resUtils:Landroid/content/res/ResourcesUtils;

    .line 253
    sput-object v1, Landroid/content/res/HwResourcesImpl;->mCustHwResources:Landroid/content/res/HwCustHwResources;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "emui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/HwResourcesImpl;->EMUI_TAG:Ljava/lang/String;

    .line 279
    sput v2, Landroid/content/res/HwResourcesImpl;->mCurrentUserId:I

    .line 283
    const-string v0, "/system/priv-app/Settings/Settings.apk"

    const-string v1, "/system/priv-app/Contacts/Contacts.apk"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/HwResourcesImpl;->DEEPTHEME_WHILTLIST_ADD:[Ljava/lang/String;

    .line 286
    const-string v0, "-v\\d+/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/content/res/HwResourcesImpl;->sPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Landroid/content/res/AbsResourcesImpl;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/HwResourcesImpl;->mCurrentDeepTheme:I

    .line 164
    new-instance v1, Landroid/content/res/DrawableCache;

    invoke-direct {v1}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDrawableCacheEx:Landroid/content/res/DrawableCache;

    .line 165
    new-instance v1, Landroid/content/res/DrawableCache;

    invoke-direct {v1}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDynamicDrawableCache:Landroid/content/res/DrawableCache;

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mThemeColorArray:Ljava/util/HashMap;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mOutThemeColorIdArray:Ljava/util/List;

    .line 239
    new-instance v1, Landroid/content/res/DrawableCache;

    invoke-direct {v1}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mColorDrawableCacheEx:Landroid/content/res/DrawableCache;

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->recPackageList:Ljava/util/ArrayList;

    .line 244
    iput-boolean v0, p0, Landroid/content/res/HwResourcesImpl;->mContainPackage:Z

    .line 267
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mTmpValueLock:Ljava/lang/Object;

    .line 270
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 273
    iput v0, p0, Landroid/content/res/HwResourcesImpl;->mConfigHwt:I

    .line 274
    iput-boolean v0, p0, Landroid/content/res/HwResourcesImpl;->mThemeChanged:Z

    .line 280
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/HwResourcesImpl;->mDarkThemeType:Ljava/lang/String;

    .line 281
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/HwResourcesImpl;->mDeepThemeType:Ljava/lang/String;

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bmpSrc"    # Landroid/graphics/Bitmap;
    .param p2, "idAndPackageName"    # Ljava/lang/String;
    .param p3, "composeIcon"    # Z

    .line 525
    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 527
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v1

    const-string v2, "icons"

    invoke-static {v1, v2}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v1

    .line 528
    .local v1, "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-nez v1, :cond_0

    .line 529
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 531
    :cond_0
    invoke-direct {p0, v1}, Landroid/content/res/HwResourcesImpl;->initBorder(Lhuawei/android/hwutil/ZipFileCache;)V

    .line 532
    invoke-direct {p0, v1}, Landroid/content/res/HwResourcesImpl;->initMask(Lhuawei/android/hwutil/ZipFileCache;)V

    .line 533
    invoke-direct {p0, p2}, Landroid/content/res/HwResourcesImpl;->getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    .local v2, "bmpBg":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/content/res/HwResourcesImpl;->initMaskSizeWithoutEdge(Z)V

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 537
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 539
    .local v5, "h":I
    sget v6, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    .line 540
    .local v6, "iconSize":I
    invoke-static {p1}, Lhuawei/android/hwutil/IconBitmapUtils;->getIconInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v7

    .line 541
    .local v7, "r":Landroid/graphics/Rect;
    if-eqz v7, :cond_1

    .line 542
    sget v8, Landroid/content/res/HwResourcesImpl;->sMaskSizeWithoutEdge:I

    invoke-direct {p0, v7, v8, v4, v5}, Landroid/content/res/HwResourcesImpl;->computeDestIconSize(Landroid/graphics/Rect;III)I

    move-result v8

    move v6, v8

    .line 545
    :cond_1
    sget v8, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    if-lt v6, v8, :cond_3

    .line 546
    invoke-direct {p0, v7, v4, v5}, Landroid/content/res/HwResourcesImpl;->isZoomOutIcon(Landroid/graphics/Rect;II)Z

    move-result v8

    .line 547
    .local v8, "isZoomOutIcon":Z
    const-string v9, "HwResourcesImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "icon in Original image "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is too large.iconSize:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",w*h: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " . so cut,sDefaultSizeWithoutEdge="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; r="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " ; isZoomOutIcon="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eqz v8, :cond_2

    sget v9, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    add-int/lit8 v9, v9, -0x10

    goto :goto_0

    :cond_2
    move v9, v6

    :goto_0
    move v6, v9

    .line 551
    .end local v8    # "isZoomOutIcon":Z
    :cond_3
    if-ne v4, v3, :cond_4

    if-ne v5, v3, :cond_4

    .line 552
    invoke-static {p1, v2}, Lhuawei/android/hwutil/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 554
    :cond_4
    sget v3, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    invoke-static {p1, v3, v6}, Lhuawei/android/hwutil/IconBitmapUtils;->drawSource(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 555
    .local v3, "bmpSrcStd":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_5

    .line 556
    sget-object v8, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-static {v3, v8, v2, v9, v10}, Lhuawei/android/hwutil/IconBitmapUtils;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    monitor-exit v0

    return-object v8

    .line 558
    :cond_5
    monitor-exit v0

    return-object v3

    .line 560
    .end local v1    # "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v2    # "bmpBg":Landroid/graphics/Bitmap;
    .end local v3    # "bmpSrcStd":Landroid/graphics/Bitmap;
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v6    # "iconSize":I
    .end local v7    # "r":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkWhiteDeepThemeAppList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "resDir"    # Ljava/lang/String;

    .line 1998
    sget-object v0, Landroid/content/res/HwResourcesImpl;->DEEPTHEME_WHILTLIST_ADD:[Ljava/lang/String;

    array-length v0, v0

    .line 1999
    .local v0, "length":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2000
    if-eqz p1, :cond_0

    sget-object v3, Landroid/content/res/HwResourcesImpl;->DEEPTHEME_WHILTLIST_ADD:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2001
    const/4 v1, 0x1

    return v1

    .line 1999
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2004
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private checkWhiteImgFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imgFile"    # Ljava/lang/String;

    .line 658
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sDisThemeActivityIcon:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/HwResourcesImpl;->sDisThemeActivityIcon:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x1

    return v0

    .line 662
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkWhiteListApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 650
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sDisThemeIcon:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/HwResourcesImpl;->sDisThemeIcon:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description.xml"

    invoke-direct {p0, v0, v1}, Landroid/content/res/HwResourcesImpl;->isCurrentHwTheme(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const/4 v0, 0x1

    return v0

    .line 653
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clearHwThemeZipsAndIconsCache()V
    .locals 5

    .line 1771
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1772
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1773
    .local v0, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1774
    sget-object v2, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1776
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1778
    .end local v0    # "listSize":I
    :cond_1
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1779
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1780
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 1783
    :cond_2
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1784
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1785
    const-string v0, "HwResourcesImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sBmpMask  recycle  sBmpMask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    .line 1787
    sput v2, Landroid/content/res/HwResourcesImpl;->sMaskSizeWithoutEdge:I

    .line 1789
    :cond_3
    invoke-static {}, Lhuawei/android/hwutil/ZipFileCache;->clear()V

    .line 1790
    sput v2, Landroid/content/res/HwResourcesImpl;->sUseAvgColor:I

    .line 1792
    return-void
.end method

.method private clearPreloadedHwThemeZipsCache()V
    .locals 2

    .line 1795
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZipLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1796
    :try_start_0
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZips:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1797
    monitor-exit v0

    .line 1798
    return-void

    .line 1797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private computeDestIconSize(Landroid/graphics/Rect;III)I
    .locals 9
    .param p1, "validRect"    # Landroid/graphics/Rect;
    .param p2, "maskSize"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 1584
    const-wide/16 v0, 0x0

    .line 1585
    .local v0, "validSize":D
    const/4 v2, 0x0

    .line 1586
    .local v2, "iconSize":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-le v3, v4, :cond_0

    .line 1587
    int-to-double v3, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v7, v5

    div-double/2addr v3, v7

    int-to-double v5, p4

    mul-double/2addr v3, v5

    .end local v0    # "validSize":D
    .local v3, "validSize":D
    :goto_0
    goto :goto_1

    .line 1589
    .end local v3    # "validSize":D
    .restart local v0    # "validSize":D
    :cond_0
    int-to-double v3, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v7, v5

    div-double/2addr v3, v7

    int-to-double v5, p3

    mul-double/2addr v3, v5

    goto :goto_0

    .line 1591
    .end local v0    # "validSize":D
    .restart local v3    # "validSize":D
    :goto_1
    double-to-int v0, v3

    .line 1592
    .end local v2    # "iconSize":I
    .local v0, "iconSize":I
    const/4 v1, 0x1

    rem-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_1

    .line 1593
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 1595
    :cond_1
    return v0
.end method

.method public static emptyOrContainsPreloadedZip(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zipFile"    # Ljava/lang/String;

    .line 1673
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZipLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1674
    :try_start_0
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZips:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZips:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 1675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "zip"    # Ljava/lang/String;

    .line 297
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    return-void

    .line 304
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v0

    const-string v1, "icons"

    invoke-static {v0, v1}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v0

    .line 306
    .local v0, "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-nez v0, :cond_2

    .line 307
    return-void

    .line 309
    :cond_2
    const/4 v1, 0x0

    .line 311
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const-string v3, "icon_background"

    invoke-virtual {v0, v2, v3}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapList(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    .line 314
    sget-object v2, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 315
    return-void

    .line 317
    :cond_3
    sget-object v2, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 318
    .local v2, "bgListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 319
    sget-object v4, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/graphics/Bitmap;

    .line 320
    if-eqz v1, :cond_4

    .line 321
    sget v4, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lhuawei/android/hwutil/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 322
    sget-object v4, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private getAppDrawableFromAsset(Landroid/util/TypedValue;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "dir"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AvoidInHardConnectInString"
        }
    .end annotation

    .line 2010
    const/4 v0, 0x0

    .line 2011
    .local v0, "drawablePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2012
    .local v1, "drawableSb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2015
    sget-object v2, Landroid/content/res/HwResourcesImpl;->mCacheAssetsList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2016
    .local v2, "cacheDrawableSign":Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2017
    return-object v4

    .line 2020
    :cond_0
    iget-object v3, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p2, p1, v5, v4}, Lhuawei/android/hwutil/AssetsFileCache;->getDrawableEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2022
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    const-string v4, "drawable-xxhdpi"

    invoke-virtual {p4, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2024
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->getDefaultResDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    iget-object v5, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v5}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    invoke-static {v5, p2, p1, v6, v7}, Lhuawei/android/hwutil/AssetsFileCache;->getDrawableEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2031
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    if-nez v3, :cond_2

    .line 2032
    sget-object v4, Landroid/content/res/HwResourcesImpl;->mCacheAssetsList:Ljava/util/HashMap;

    const-string v5, "null"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    :cond_2
    return-object v3
.end method

.method private getColorValueFromStr(Ljava/lang/String;)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1868
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1870
    const-string v1, "HwResourcesImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColorValueFromStr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Color value \'%s\' must start with #"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return v0

    .line 1875
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1878
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-le v1, v3, :cond_1

    .line 1880
    const-string v1, "HwResourcesImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColorValueFromStr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Color value \'%s\' is too long. Format is either#AARRGGBB, #RRGGBB, #RGB, or #ARGB"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    return v0

    .line 1888
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-ne v1, v9, :cond_2

    .line 1889
    new-array v1, v3, [C

    .line 1890
    .local v1, "color":[C
    const/16 v3, 0x46

    aput-char v3, v1, v2

    aput-char v3, v1, v0

    .line 1891
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v1, v9

    aput-char v0, v1, v8

    .line 1892
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v1, v5

    aput-char v0, v1, v7

    .line 1893
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v1, v4

    aput-char v0, v1, v6

    .line 1894
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v0

    .line 1895
    .end local v1    # "color":[C
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 1896
    new-array v1, v3, [C

    .line 1897
    .restart local v1    # "color":[C
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    aput-char v3, v1, v0

    .line 1898
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v1, v9

    aput-char v0, v1, v8

    .line 1899
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v1, v5

    aput-char v0, v1, v7

    .line 1900
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v1, v4

    aput-char v0, v1, v6

    .line 1901
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v0

    .line 1902
    .end local v1    # "color":[C
    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1909
    :cond_4
    :goto_0
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1911
    :cond_5
    return v0
.end method

.method private getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 2074
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2075
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v1, 0x1e0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 2076
    return-object v0
.end method

.method private getDefaultResDir()Ljava/lang/String;
    .locals 1

    .line 2080
    const-string v0, "res/drawable-xxhdpi"

    return-object v0
.end method

.method private getFwkDrawableFromAsset(Landroid/util/TypedValue;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "dir"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AvoidInHardConnectInString"
        }
    .end annotation

    .line 2042
    const/4 v0, 0x0

    .line 2043
    .local v0, "fullPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2044
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2049
    sget-object v2, Landroid/content/res/HwResourcesImpl;->mCacheAssetsList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2050
    .local v2, "cacheDrawableSign":Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2051
    return-object v4

    .line 2053
    :cond_0
    iget-object v3, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p2, p1, v5, v4}, Lhuawei/android/hwutil/AssetsFileCache;->getDrawableEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2055
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    const-string v4, "drawable-xxhdpi"

    invoke-virtual {p4, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2057
    .local v4, "fullName":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->getDefaultResDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    iget-object v5, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v5}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    invoke-static {v5, p2, p1, v6, v7}, Lhuawei/android/hwutil/AssetsFileCache;->getDrawableEntry(Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2067
    .end local v4    # "fullName":Ljava/lang/StringBuilder;
    :cond_1
    if-nez v3, :cond_2

    .line 2068
    sget-object v4, Landroid/content/res/HwResourcesImpl;->mCacheAssetsList:Ljava/util/HashMap;

    const-string v5, "null"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    :cond_2
    return-object v3
.end method

.method public static declared-synchronized getHwCustHwResources()Landroid/content/res/HwCustHwResources;
    .locals 3

    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 440
    :try_start_0
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mCustHwResources:Landroid/content/res/HwCustHwResources;

    if-nez v1, :cond_0

    .line 441
    const-class v1, Landroid/content/res/HwCustHwResources;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/HwCustHwResources;

    sput-object v1, Landroid/content/res/HwResourcesImpl;->mCustHwResources:Landroid/content/res/HwCustHwResources;

    .line 443
    :cond_0
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mCustHwResources:Landroid/content/res/HwCustHwResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getIconFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIconFileName(Ljava/lang/String;Lhuawei/android/hwutil/IconCache$CacheEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ce"    # Lhuawei/android/hwutil/IconCache$CacheEntry;

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lhuawei/android/hwutil/IconCache$CacheEntry;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p2, Lhuawei/android/hwutil/IconCache$CacheEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1575
    .local v0, "imgFile":Ljava/lang/String;
    return-object v0
.end method

.method private getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "idAndPackageName"    # Ljava/lang/String;

    .line 335
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v0

    const-string v1, "icons"

    invoke-direct {p0, v0, v1}, Landroid/content/res/HwResourcesImpl;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_1
    const/4 v0, 0x0

    .line 341
    .local v0, "len":I
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 342
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 344
    :cond_2
    if-lez v0, :cond_3

    .line 345
    invoke-virtual {p0, p1}, Landroid/content/res/HwResourcesImpl;->getCode(Ljava/lang/String;)I

    move-result v1

    rem-int/2addr v1, v0

    .line 346
    .local v1, "i":I
    sget-object v2, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    return-object v2

    .line 348
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getThemeIcon(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 672
    invoke-direct {p0, p3}, Landroid/content/res/HwResourcesImpl;->checkWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 673
    return-object v1

    .line 675
    :cond_0
    const/4 v0, 0x0

    .line 676
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 677
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lhuawei/android/hwutil/IconCache;->get(Ljava/lang/String;)Lhuawei/android/hwutil/IconCache$CacheEntry;

    move-result-object v3

    .line 678
    .local v3, "ce":Lhuawei/android/hwutil/IconCache$CacheEntry;
    invoke-direct {p0, p3, v3}, Landroid/content/res/HwResourcesImpl;->getIconFileName(Ljava/lang/String;Lhuawei/android/hwutil/IconCache$CacheEntry;)Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, "imgFile":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/content/res/HwResourcesImpl;->checkWhiteImgFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 682
    return-object v1

    .line 687
    :cond_1
    const-class v1, Landroid/content/res/HwResourcesImpl;

    monitor-enter v1

    .line 690
    :try_start_0
    sget-boolean v5, Landroid/content/res/HwResourcesImpl;->IS_CUSTOM_ICON:Z

    if-eqz v5, :cond_2

    .line 691
    iget-object v5, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {p0, v5, v4, p3}, Landroid/content/res/HwResourcesImpl;->getIconsfromDiffTheme(Landroid/content/res/ResourcesImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v2, v5

    .line 695
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v5

    const-string v6, "icons"

    invoke-static {v5, v6}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v5

    .line 696
    .local v5, "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-nez v2, :cond_3

    if-eqz v5, :cond_3

    .line 697
    iget-object v6, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v5, v6, v4}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v2, v6

    .line 698
    invoke-direct {p0, p3}, Landroid/content/res/HwResourcesImpl;->getIconFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v2, :cond_3

    .line 699
    iget-object v6, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-direct {p0, p3}, Landroid/content/res/HwResourcesImpl;->getIconFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v2, v6

    .line 703
    :cond_3
    if-eqz v2, :cond_4

    .line 704
    sget v6, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lhuawei/android/hwutil/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 705
    .local v6, "srcBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 706
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v7

    .line 707
    nop

    .line 708
    move-object v7, v0

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v8}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 712
    .end local v5    # "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v6    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_4
    monitor-exit v1

    .line 714
    return-object v0

    .line 712
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getThemeType()Ljava/lang/String;
    .locals 2

    .line 2084
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->isDeepDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/res/HwResourcesImpl;->mCurrentDeepTheme:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2086
    const-string v0, "dark"

    return-object v0

    .line 2088
    :cond_0
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->isHonorProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/content/res/HwResourcesImpl;->mCurrentDeepTheme:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2090
    const-string v0, "honor"

    return-object v0

    .line 2092
    :cond_1
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->isNovaProduct()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/content/res/HwResourcesImpl;->mCurrentDeepTheme:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 2094
    const-string v0, "nova"

    return-object v0

    .line 2096
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isZipFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1820
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1823
    .local v0, "innerDepth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    .line 1824
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v1, 0x3

    if-eq v2, v1, :cond_6

    .line 1826
    :cond_0
    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    .line 1827
    goto :goto_0

    .line 1830
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1831
    .local v1, "lableName":Ljava/lang/String;
    const-string v3, "color"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "drawable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1832
    goto :goto_0

    .line 1834
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 1835
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1836
    .local v3, "colorName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1837
    .local v5, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1838
    .local v6, "colorVaue":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 1839
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1841
    :cond_3
    const-string v7, "name"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1842
    invoke-direct {p0, v5}, Landroid/content/res/HwResourcesImpl;->getColorValueFromStr(Ljava/lang/String;)I

    move-result v6

    .line 1844
    const/4 v7, 0x0

    .line 1845
    .local v7, "fullColorName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1846
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1853
    if-eqz p3, :cond_4

    .line 1854
    sget-object v9, Landroid/content/res/HwResourcesImpl;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1856
    :cond_4
    sget-object v9, Landroid/content/res/HwResourcesImpl;->mAssetCacheColorInfoList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    .end local v1    # "lableName":Ljava/lang/String;
    .end local v3    # "colorName":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "colorVaue":I
    .end local v7    # "fullColorName":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_1
    goto :goto_0

    .line 1860
    :cond_6
    return-void
.end method

.method private initBorder(Lhuawei/android/hwutil/ZipFileCache;)V
    .locals 3
    .param p1, "iconZipFileCache"    # Lhuawei/android/hwutil/ZipFileCache;

    .line 425
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 426
    if-nez p1, :cond_0

    .line 427
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const-string v1, "icon_border.png"

    invoke-virtual {p1, v0, v1}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 432
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 433
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lhuawei/android/hwutil/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 436
    :cond_1
    return-void
.end method

.method private initMask(Lhuawei/android/hwutil/ZipFileCache;)V
    .locals 4
    .param p1, "iconZipFileCache"    # Lhuawei/android/hwutil/ZipFileCache;

    .line 409
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 410
    if-nez p1, :cond_0

    .line 411
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const-string v1, "icon_mask.png"

    invoke-virtual {p1, v0, v1}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    .line 416
    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 417
    :try_start_0
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 418
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    sget v2, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lhuawei/android/hwutil/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    .line 420
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 422
    :cond_2
    :goto_0
    return-void
.end method

.method private initMaskSizeWithoutEdge(Z)V
    .locals 2
    .param p1, "useDefault"    # Z

    .line 394
    sget v0, Landroid/content/res/HwResourcesImpl;->sMaskSizeWithoutEdge:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_2

    .line 395
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lhuawei/android/hwutil/IconBitmapUtils;->getIconInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    .line 397
    .local v0, "info":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/HwResourcesImpl;->sMaskSizeWithoutEdge:I

    goto :goto_0

    .line 400
    :cond_0
    sget v1, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Landroid/content/res/HwResourcesImpl;->sMaskSizeWithoutEdge:I

    .line 402
    .end local v0    # "info":Landroid/graphics/Rect;
    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 403
    sget v0, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    add-int/lit8 v0, v0, -0x8

    sput v0, Landroid/content/res/HwResourcesImpl;->sMaskSizeWithoutEdge:I

    .line 406
    :cond_2
    :goto_1
    return-void
.end method

.method private isCurrentHwTheme(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "dirpath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 1918
    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 1919
    :try_start_0
    sget-boolean v1, Landroid/content/res/HwResourcesImpl;->sThemeDescripHasRead:Z

    if-eqz v1, :cond_0

    .line 1920
    sget-boolean v1, Landroid/content/res/HwResourcesImpl;->sIsHWThemes:Z

    monitor-exit v0

    return v1

    .line 1922
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1923
    const/4 v0, 0x0

    .line 1924
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 1926
    .local v1, "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    .local v2, "descriptionfile":Ljava/io/File;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1928
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 1937
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v2, "document":Lorg/w3c/dom/Document;
    :goto_0
    goto :goto_1

    .line 1935
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .restart local v0    # "document":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v2

    .line 1936
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwResourcesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLayoutXML Exception filename ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1933
    :catch_1
    move-exception v2

    .line 1934
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "HwResourcesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLayoutXML IOException filename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1931
    :catch_2
    move-exception v2

    .line 1932
    .local v2, "e":Lorg/xml/sax/SAXException;
    const-string v3, "HwResourcesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLayoutXML SAXException filename ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Lorg/xml/sax/SAXException;
    goto :goto_0

    .line 1929
    :catch_3
    move-exception v2

    .line 1930
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v3, "HwResourcesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLayoutXML ParserConfigurationException filename ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    goto :goto_0

    .line 1938
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .local v2, "document":Lorg/w3c/dom/Document;
    :goto_1
    move-object v2, v0

    if-nez v2, :cond_1

    .line 1939
    sget-boolean v0, Landroid/content/res/HwResourcesImpl;->sIsHWThemes:Z

    return v0

    .line 1941
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 1942
    .local v3, "rootElement":Lorg/w3c/dom/Element;
    if-nez v3, :cond_2

    .line 1943
    sget-boolean v0, Landroid/content/res/HwResourcesImpl;->sIsHWThemes:Z

    return v0

    .line 1945
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 1946
    .local v4, "itemNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 1947
    .local v5, "itemNodeLength":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_2
    const/4 v7, 0x1

    if-ge v6, v5, :cond_6

    .line 1948
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1949
    .local v8, "itemNode":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v7, :cond_5

    .line 1950
    const-string v9, "designer"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1951
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 1952
    .local v9, "textContent":Ljava/lang/String;
    const-string v10, "EMUI"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "honor"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    :goto_3
    move v0, v7

    :goto_4
    sput-boolean v0, Landroid/content/res/HwResourcesImpl;->sIsHWThemes:Z

    .line 1953
    const-class v10, Landroid/content/res/HwResourcesImpl;

    monitor-enter v10

    .line 1954
    :try_start_2
    sput-boolean v7, Landroid/content/res/HwResourcesImpl;->sThemeDescripHasRead:Z

    .line 1955
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1956
    sget-boolean v0, Landroid/content/res/HwResourcesImpl;->sIsHWThemes:Z

    return v0

    .line 1955
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1947
    .end local v8    # "itemNode":Lorg/w3c/dom/Node;
    .end local v9    # "textContent":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1960
    .end local v6    # "i":I
    :cond_6
    const-class v6, Landroid/content/res/HwResourcesImpl;

    monitor-enter v6

    .line 1961
    :try_start_4
    sput-boolean v7, Landroid/content/res/HwResourcesImpl;->sThemeDescripHasRead:Z

    .line 1962
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1963
    sget-boolean v0, Landroid/content/res/HwResourcesImpl;->sIsHWThemes:Z

    return v0

    .line 1962
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1922
    .end local v1    # "builderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "rootElement":Lorg/w3c/dom/Element;
    .end local v4    # "itemNodes":Lorg/w3c/dom/NodeList;
    .end local v5    # "itemNodeLength":I
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private isDeepDarkTheme()Z
    .locals 2

    .line 2105
    const-string v0, "dark"

    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDarkThemeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmptyPreloadZip(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1120
    invoke-static {p1}, Landroid/content/res/HwResourcesImpl;->emptyOrContainsPreloadedZip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/HwResourcesImpl;->emptyOrContainsPreloadedZip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isZoomOutIcon(Landroid/graphics/Rect;II)Z
    .locals 3
    .param p1, "validRect"    # Landroid/graphics/Rect;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 565
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 566
    return v0

    .line 569
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, p3, v1

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static declared-synchronized loadMultiDpiWhiteList()V
    .locals 6

    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 1494
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/content/res/HwResourcesImpl;->sMultiDirHasRead:Z

    .line 1496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    .local v1, "configFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "xml/multidpi_whitelist.xml"

    invoke-static {v3, v2}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFileList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 1501
    goto :goto_0

    .line 1499
    :catch_0
    move-exception v3

    .line 1500
    .local v3, "e":Ljava/lang/NoClassDefFoundError;
    :try_start_2
    const-string v4, "HwResourcesImpl"

    const-string v5, "HwCfgFilePolicy NoClassDefFoundError! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    .end local v3    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1504
    .local v3, "size":I
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1505
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-static {v4}, Landroid/content/res/HwResourcesImpl;->setMultiDpiPkgNameFromXml(Ljava/io/File;)V

    .line 1504
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1508
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v4, "/system/etc/xml/multidpi_whitelist.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v2, "configFile":Ljava/io/File;
    invoke-static {v2}, Landroid/content/res/HwResourcesImpl;->setMultiDpiPkgNameFromXml(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1510
    monitor-exit v0

    return-void

    .line 1493
    .end local v1    # "configFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loadThemeColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "zipName"    # Ljava/lang/String;
    .param p3, "resName"    # Ljava/lang/String;
    .param p4, "themeXml"    # Ljava/lang/String;
    .param p5, "defaultColor"    # I

    .line 720
    invoke-direct {p0, p2}, Landroid/content/res/HwResourcesImpl;->isEmptyPreloadZip(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/content/res/HwResourcesImpl;->mNonThemedPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/content/res/HwResourcesImpl;->mPreloadedThemeColorList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 723
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v0

    .line 725
    .local v0, "packageZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0, p4}, Lhuawei/android/hwutil/ZipFileCache;->getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 728
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0, p1, v2, v1}, Landroid/content/res/HwResourcesImpl;->parserColorInfoList(Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 730
    sget-object v3, Landroid/content/res/HwResourcesImpl;->mPreloadedThemeColorList:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 732
    :cond_0
    sget-object v2, Landroid/content/res/HwResourcesImpl;->mNonThemedPackage:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 735
    .end local v0    # "packageZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 736
    .local v0, "value":Ljava/lang/Integer;
    sget-object v2, Landroid/content/res/HwResourcesImpl;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 737
    sget-object v2, Landroid/content/res/HwResourcesImpl;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 741
    :cond_2
    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mDeepThemeType:Ljava/lang/String;

    .line 742
    .local v2, "themeType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 743
    sget-object v3, Landroid/content/res/HwResourcesImpl;->mAssetCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    .line 744
    if-nez v0, :cond_3

    sget-object v3, Landroid/content/res/HwResourcesImpl;->mPreloadedThemeColorList:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Landroid/content/res/HwResourcesImpl;->mPreloadedAssetsPackage:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 745
    invoke-direct {p0, p1, p4, v2}, Landroid/content/res/HwResourcesImpl;->loadThemeColorFromAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    sget-object v3, Landroid/content/res/HwResourcesImpl;->mPreloadedAssetsPackage:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v3, Landroid/content/res/HwResourcesImpl;->mAssetCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    .line 752
    :cond_3
    if-eqz v0, :cond_4

    .line 753
    new-instance v3, Landroid/content/res/AbsResourcesImpl$ThemeColor;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v1}, Landroid/content/res/AbsResourcesImpl$ThemeColor;-><init>(IZ)V

    return-object v3

    .line 756
    :cond_4
    new-instance v1, Landroid/content/res/AbsResourcesImpl$ThemeColor;

    const/4 v3, 0x0

    invoke-direct {v1, p5, v3}, Landroid/content/res/AbsResourcesImpl$ThemeColor;-><init>(IZ)V

    return-object v1
.end method

.method private loadThemeColorFromAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "themeXml"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;

    .line 2112
    const-string v0, "framework-res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "framework-res-hwext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2113
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2114
    return-void

    .line 2117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2118
    .local v0, "tempColorPath":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Lhuawei/android/hwutil/AssetsFileCache;->getInputStreamEntry(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2119
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/content/res/HwResourcesImpl;->parserColorInfoList(Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 2120
    return-void
.end method

.method private parserColorInfoList(Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "isZipFile"    # Z

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "bufferedInput":Ljava/io/BufferedInputStream;
    if-eqz p2, :cond_0

    .line 763
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 766
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 767
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 768
    invoke-direct {p0, v1, p1, p3}, Landroid/content/res/HwResourcesImpl;->inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 780
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 783
    :goto_0
    goto :goto_3

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "HwResourcesImpl"

    const-string v3, "loadThemeColor : IOException when close stream"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 778
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 774
    :catch_1
    move-exception v1

    .line 775
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "HwResourcesImpl"

    const-string v3, "loadThemeColor : RuntimeException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 779
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 780
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 771
    :catch_2
    move-exception v1

    .line 772
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "HwResourcesImpl"

    const-string v3, "loadThemeColor : IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 779
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 780
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 769
    :catch_3
    move-exception v1

    .line 770
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v2, "HwResourcesImpl"

    const-string v3, "loadThemeColor : XmlPullParserException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 779
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 780
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 778
    :goto_1
    nop

    .line 779
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 780
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 783
    goto :goto_2

    .line 781
    :catch_4
    move-exception v2

    .line 782
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "HwResourcesImpl"

    const-string v4, "loadThemeColor : IOException when close stream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    throw v1

    .line 786
    :cond_0
    :goto_3
    return-void
.end method

.method private static declared-synchronized readDefaultConfig()V
    .locals 12

    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 1411
    :try_start_0
    sget-boolean v1, Landroid/content/res/HwResourcesImpl;->sDefaultConfigHasRead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1413
    monitor-exit v0

    return-void

    .line 1416
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 1418
    .local v2, "inputFile":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_1
    const-string v4, "xml/hw_launcher_load_icon.xml"

    invoke-static {v4, v3}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v4

    .line 1421
    goto :goto_0

    .line 1419
    :catch_0
    move-exception v4

    .line 1420
    .local v4, "e":Ljava/lang/NoClassDefFoundError;
    :try_start_2
    const-string v5, "HwResourcesImpl"

    const-string v6, "HwCfgFilePolicy NoClassDefFoundError"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    .end local v4    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 1425
    sput-boolean v4, Landroid/content/res/HwResourcesImpl;->sDefaultConfigHasRead:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1426
    monitor-exit v0

    return-void

    .line 1428
    :cond_1
    move-object v5, v1

    .line 1430
    .local v5, "in":Ljava/io/InputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    .line 1431
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1433
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1434
    const-string v7, "launcher_config"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1436
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Landroid/content/res/HwResourcesImpl;->sDisThemeIcon:Ljava/util/HashSet;

    .line 1437
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Landroid/content/res/HwResourcesImpl;->sDisThemeBackground:Ljava/util/HashSet;

    .line 1439
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Landroid/content/res/HwResourcesImpl;->sDisThemeActivityIcon:Ljava/util/HashSet;

    .line 1441
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 1442
    .local v7, "type":I
    :goto_1
    if-eq v7, v4, :cond_6

    .line 1443
    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1444
    invoke-interface {v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 1445
    .local v8, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1446
    .local v9, "DrawableType":Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1447
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 1448
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 1450
    :cond_2
    const-string v10, "icon"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1451
    sget-object v10, Landroid/content/res/HwResourcesImpl;->sDisThemeIcon:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1452
    :cond_3
    const-string v10, "background"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1453
    sget-object v10, Landroid/content/res/HwResourcesImpl;->sDisThemeBackground:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1455
    :cond_4
    const-string v10, "activityIcon"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1456
    sget-object v10, Landroid/content/res/HwResourcesImpl;->sDisThemeActivityIcon:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1460
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "DrawableType":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v7, v8

    goto :goto_1

    .line 1477
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :cond_6
    nop

    .line 1479
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1483
    :goto_3
    goto :goto_5

    .line 1480
    :catch_1
    move-exception v1

    .line 1482
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v3, "HwResourcesImpl"

    const-string v6, "readDefaultConfig : IOException when close stream"

    :goto_4
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1477
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 1469
    :catch_2
    move-exception v3

    .line 1470
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "HwResourcesImpl"

    const-string v7, "readDefaultConfig : XmlPullParserException | IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeIcon:Ljava/util/HashSet;

    .line 1472
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeBackground:Ljava/util/HashSet;

    .line 1474
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeActivityIcon:Ljava/util/HashSet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1477
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_7

    .line 1479
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 1480
    :catch_3
    move-exception v1

    .line 1482
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v3, "HwResourcesImpl"

    const-string v6, "readDefaultConfig : IOException when close stream"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 1462
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 1463
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v6, "HwResourcesImpl"

    const-string v7, "readDefaultConfig : FileNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeIcon:Ljava/util/HashSet;

    .line 1465
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeBackground:Ljava/util/HashSet;

    .line 1467
    sput-object v1, Landroid/content/res/HwResourcesImpl;->sDisThemeActivityIcon:Ljava/util/HashSet;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1477
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_7

    .line 1479
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 1480
    :catch_5
    move-exception v1

    .line 1482
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_b
    const-string v3, "HwResourcesImpl"

    const-string v6, "readDefaultConfig : IOException when close stream"

    goto :goto_4

    .line 1487
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    :goto_5
    sput-boolean v4, Landroid/content/res/HwResourcesImpl;->sDefaultConfigHasRead:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1489
    monitor-exit v0

    return-void

    .line 1477
    :goto_6
    if-eqz v5, :cond_8

    .line 1479
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1483
    goto :goto_7

    .line 1480
    :catch_6
    move-exception v3

    .line 1482
    .local v3, "e":Ljava/io/IOException;
    :try_start_d
    const-string v4, "HwResourcesImpl"

    const-string v6, "readDefaultConfig : IOException when close stream"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8
    :goto_7
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1410
    .end local v2    # "inputFile":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setHwThemeAbsoluteDir(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1756
    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 1757
    :try_start_0
    sput-object p1, Landroid/content/res/HwResourcesImpl;->mThemeAbsoluteDir:Ljava/lang/String;

    .line 1758
    sput p2, Landroid/content/res/HwResourcesImpl;->mCurrentUserId:I

    .line 1759
    monitor-exit v0

    .line 1760
    return-void

    .line 1759
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized setMultiDpiPkgNameFromXml(Ljava/io/File;)V
    .locals 8
    .param p0, "configFile"    # Ljava/io/File;

    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 1513
    if-nez p0, :cond_0

    .line 1514
    monitor-exit v0

    return-void

    .line 1516
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 1519
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 1520
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1521
    .local v4, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1522
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1523
    .local v5, "xmlEventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 1524
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1525
    const-string v6, "name"

    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1526
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1527
    sget-object v7, Landroid/content/res/HwResourcesImpl;->sMultiDirPkgNames:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1530
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v6

    goto :goto_0

    .line 1542
    .end local v4    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "xmlEventType":I
    :cond_2
    nop

    .line 1544
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1547
    :goto_1
    goto :goto_3

    .line 1545
    :catch_0
    move-exception v1

    .line 1546
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "HwResourcesImpl"

    const-string v4, "loadMultiDpiWhiteList:- IOE while closing stream"

    :goto_2
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1542
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1538
    :catch_1
    move-exception v1

    .line 1539
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    sput-boolean v3, Landroid/content/res/HwResourcesImpl;->sMultiDirHasRead:Z

    .line 1540
    const-string v3, "HwResourcesImpl"

    const-string v4, "loadMultiDpiWhiteList : IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1542
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 1544
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1545
    :catch_2
    move-exception v1

    .line 1546
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v3, "HwResourcesImpl"

    const-string v4, "loadMultiDpiWhiteList:- IOE while closing stream"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1535
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1536
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    sput-boolean v3, Landroid/content/res/HwResourcesImpl;->sMultiDirHasRead:Z

    .line 1537
    const-string v3, "HwResourcesImpl"

    const-string v4, "loadMultiDpiWhiteList : XmlPullParserException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1542
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v2, :cond_3

    .line 1544
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1545
    :catch_4
    move-exception v1

    .line 1546
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    const-string v3, "HwResourcesImpl"

    const-string v4, "loadMultiDpiWhiteList:- IOE while closing stream"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 1532
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 1533
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    sput-boolean v3, Landroid/content/res/HwResourcesImpl;->sMultiDirHasRead:Z

    .line 1534
    const-string v3, "HwResourcesImpl"

    const-string v4, "loadMultiDpiWhiteList : FileNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1542
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_3

    .line 1544
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 1545
    :catch_6
    move-exception v1

    .line 1546
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    const-string v3, "HwResourcesImpl"

    const-string v4, "loadMultiDpiWhiteList:- IOE while closing stream"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 1550
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    .line 1542
    :goto_4
    if-eqz v2, :cond_4

    .line 1544
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1547
    goto :goto_5

    .line 1512
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "configFile":Ljava/io/File;
    :catchall_1
    move-exception p0

    goto :goto_6

    .line 1545
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "configFile":Ljava/io/File;
    :catch_7
    move-exception v3

    .line 1546
    .local v3, "e":Ljava/io/IOException;
    :try_start_d
    const-string v4, "HwResourcesImpl"

    const-string v5, "loadMultiDpiWhiteList:- IOE while closing stream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1512
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "configFile":Ljava/io/File;
    :goto_6
    monitor-exit v0

    throw p0
.end method

.method private static setStandardSize(II)V
    .locals 1
    .param p0, "standardBgSize"    # I
    .param p1, "standardIconSize"    # I

    .line 1251
    sput p0, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    .line 1253
    sget v0, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    add-int/lit8 v0, v0, 0x8

    sput v0, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    .line 1254
    sput p1, Landroid/content/res/HwResourcesImpl;->sStandardIconSize:I

    .line 1255
    return-void
.end method


# virtual methods
.method public addShortcutBackgroud(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bmpSrc"    # Landroid/graphics/Bitmap;

    .line 477
    const-class v0, Landroid/content/res/HwResources;

    monitor-enter v0

    .line 478
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v1

    const-string v2, "icons"

    invoke-static {v1, v2}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v1

    .line 479
    .local v1, "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-nez v1, :cond_0

    .line 480
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 482
    :cond_0
    invoke-direct {p0, v1}, Landroid/content/res/HwResourcesImpl;->initBorder(Lhuawei/android/hwutil/ZipFileCache;)V

    .line 483
    invoke-direct {p0, v1}, Landroid/content/res/HwResourcesImpl;->initMask(Lhuawei/android/hwutil/ZipFileCache;)V

    .line 484
    const/4 v2, 0x0

    .line 486
    .local v2, "bmpBg":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v3

    const-string v4, "icons"

    invoke-direct {p0, v3, v4}, Landroid/content/res/HwResourcesImpl;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_2
    sget-object v3, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 491
    sget-object v3, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 492
    .local v3, "len":I
    if-lez v3, :cond_3

    .line 493
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 494
    .local v4, "rd":Ljava/util/Random;
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 495
    .local v5, "i":I
    sget-object v6, Landroid/content/res/HwResourcesImpl;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v2, v6

    .line 498
    .end local v3    # "len":I
    .end local v4    # "rd":Ljava/util/Random;
    .end local v5    # "i":I
    :cond_3
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/content/res/HwResourcesImpl;->initMaskSizeWithoutEdge(Z)V

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 500
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 501
    .local v4, "h":I
    sget v5, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    .line 502
    .local v5, "iconSize":I
    invoke-static {p1}, Lhuawei/android/hwutil/IconBitmapUtils;->getIconInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v6

    .line 503
    .local v6, "r":Landroid/graphics/Rect;
    if-eqz v6, :cond_4

    .line 504
    sget v7, Landroid/content/res/HwResourcesImpl;->sMaskSizeWithoutEdge:I

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/content/res/HwResourcesImpl;->computeDestIconSize(Landroid/graphics/Rect;III)I

    move-result v7

    move v5, v7

    .line 507
    :cond_4
    sget v7, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    if-lt v5, v7, :cond_6

    .line 508
    invoke-direct {p0, v6, v3, v4}, Landroid/content/res/HwResourcesImpl;->isZoomOutIcon(Landroid/graphics/Rect;II)Z

    move-result v7

    .line 509
    .local v7, "isZoomOutIcon":Z
    const-string v8, "HwResourcesImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shortcut in Original image is too large.iconSize:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",w*h: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " . so cut,sDefaultSizeWithoutEdge="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " ; isZoomOutIcon="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-eqz v7, :cond_5

    sget v8, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    add-int/lit8 v8, v8, -0x10

    goto :goto_0

    :cond_5
    move v8, v5

    :goto_0
    move v5, v8

    .line 513
    .end local v7    # "isZoomOutIcon":Z
    :cond_6
    sget v7, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    invoke-static {p1, v7, v5}, Lhuawei/android/hwutil/IconBitmapUtils;->drawSource(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 514
    .local v7, "bmpSrcStd":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/content/res/HwResourcesImpl;->sBmpMask:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/content/res/HwResourcesImpl;->sBmpBorder:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-static {v7, v8, v2, v9, v10}, Lhuawei/android/hwutil/IconBitmapUtils;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    monitor-exit v0

    return-object v8

    .line 515
    .end local v1    # "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v2    # "bmpBg":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "iconSize":I
    .end local v6    # "r":Landroid/graphics/Rect;
    .end local v7    # "bmpSrcStd":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearHwThemeZipsAndSomeIcons()V
    .locals 2

    .line 1763
    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 1764
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->clearHwThemeZipsAndIconsCache()V

    .line 1765
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->clearPreloadedHwThemeZipsCache()V

    .line 1768
    return-void

    .line 1765
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCode(Ljava/lang/String;)I
    .locals 4
    .param p1, "idAndPackageName"    # Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "code":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 359
    .local v1, "idPkgNameLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 360
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v0, v3

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method protected getDeepThemeType()Ljava/lang/String;
    .locals 1

    .line 2100
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mDeepThemeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffThemeIconPath()Ljava/lang/String;
    .locals 5

    .line 1680
    const/4 v0, 0x0

    .line 1683
    .local v0, "iconFilePath":Ljava/lang/String;
    sget-object v1, Landroid/content/res/HwResourcesImpl;->CUSTOM_DIFF_THEME_DIR:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1684
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/res/HwResourcesImpl;->CUSTOM_DIFF_THEME_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "icons"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1685
    sget-object v0, Landroid/content/res/HwResourcesImpl;->CUSTOM_DIFF_THEME_DIR:Ljava/lang/String;

    goto :goto_1

    .line 1690
    :cond_0
    const/4 v1, 0x0

    .line 1692
    .local v1, "iconZip":Ljava/io/File;
    :try_start_0
    const-string v2, "/themes/diff/icons"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1696
    goto :goto_0

    .line 1693
    :catch_0
    move-exception v2

    .line 1694
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    .line 1695
    const-string v3, "HwResourcesImpl"

    const-string v4, "HwCfgFilePolicy NoClassDefFoundError"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    if-eqz v1, :cond_1

    .line 1699
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1702
    .end local v1    # "iconZip":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getDimensionPixelSize(I)I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1203
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 1205
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1206
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1207
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    invoke-virtual {p0, v0}, Landroid/content/res/HwResourcesImpl;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 1207
    return v1

    .line 1209
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1210
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1212
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/res/HwResourcesImpl;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    throw v1
.end method

.method public getDrawableForDynamic(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const-string v1, ""

    .line 1380
    .local v1, "imgFile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamic_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1381
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    invoke-virtual {p0, v1}, Landroid/content/res/HwResourcesImpl;->getCode(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 1382
    .local v2, "key":J
    iget-object v4, p0, Landroid/content/res/HwResourcesImpl;->mDynamicDrawableCache:Landroid/content/res/DrawableCache;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, p1, v5}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_0

    .line 1384
    return-object v0

    .line 1387
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v4

    const-string v6, "icons"

    invoke-static {v4, v6}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v4

    .line 1389
    .local v4, "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-nez v4, :cond_1

    .line 1390
    return-object v5

    .line 1393
    :cond_1
    iget-object v5, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v4, v5, v1}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1395
    .local v5, "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    .line 1397
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v6

    .line 1399
    nop

    .line 1400
    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v7}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 1401
    iget-object v6, p0, Landroid/content/res/HwResourcesImpl;->mDynamicDrawableCache:Landroid/content/res/DrawableCache;

    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    const/4 v11, 0x1

    move-wide v7, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 1405
    :cond_2
    return-object v0
.end method

.method public getIconsfromDiffTheme(Landroid/content/res/ResourcesImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "Impl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "imgFile"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1708
    const/4 v0, 0x0

    .line 1709
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getDiffThemeIconPath()Ljava/lang/String;

    move-result-object v1

    .line 1710
    .local v1, "iconFilePath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1711
    const-string v2, "icons"

    invoke-static {v1, v2}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v2

    .line 1712
    .local v2, "diffIconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-eqz v2, :cond_1

    .line 1713
    invoke-virtual {v2, p1, p2}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1714
    if-eqz v0, :cond_0

    .line 1715
    const-string v3, "HwResourcesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "icon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found in custom diff theme"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1716
    :cond_0
    invoke-direct {p0, p3}, Landroid/content/res/HwResourcesImpl;->getIconFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1717
    invoke-direct {p0, p3}, Landroid/content/res/HwResourcesImpl;->getIconFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1718
    const-string v3, "HwResourcesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "icon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " package name found in custom diff theme"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    .end local v2    # "diffIconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getJoinBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1, "srcDraw"    # Landroid/graphics/drawable/Drawable;
    .param p2, "backgroundId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1600
    move/from16 v3, p2

    const-class v4, Landroid/content/res/HwResourcesImpl;

    monitor-enter v4

    .line 1601
    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 1602
    :try_start_0
    const-string v5, "HwResourcesImpl"

    const-string v6, "notification icon is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    monitor-exit v4

    return-object v0

    .line 1657
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 1605
    :cond_0
    const/4 v5, 0x0

    .line 1606
    .local v5, "bmpSrc":Landroid/graphics/Bitmap;
    instance-of v6, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 1607
    move-object v6, v2

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1608
    .local v6, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move v15, v7

    .line 1609
    .local v15, "width":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v14, v7

    .line 1610
    .local v14, "height":I
    mul-int v7, v15, v14

    new-array v7, v7, [I

    move-object v13, v7

    .line 1611
    .local v13, "pixels":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v6

    move-object v8, v13

    move v10, v15

    move-object v0, v13

    move v13, v15

    .end local v13    # "pixels":[I
    .local v0, "pixels":[I
    move/from16 v16, v14

    .end local v14    # "height":I
    .local v16, "height":I
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1612
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v8, v16

    invoke-static {v0, v15, v8, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .end local v16    # "height":I
    .local v8, "height":I
    move-object v5, v7

    .line 1614
    .end local v0    # "pixels":[I
    .end local v6    # "temp":Landroid/graphics/Bitmap;
    .end local v8    # "height":I
    .end local v15    # "width":I
    :cond_1
    if-nez v5, :cond_2

    .line 1615
    const-string v0, "HwResourcesImpl"

    const-string v6, "getJoinBitmap : bmpSrc is null!"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    monitor-exit v4

    const/4 v0, 0x0

    return-object v0

    .line 1619
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v0

    const-string v6, "icons"

    invoke-static {v0, v6}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v0

    .line 1621
    .local v0, "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-nez v0, :cond_3

    .line 1622
    const-string v6, "HwResourcesImpl"

    const-string v7, "getJoinBitmap : iconZipFileCache == null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    monitor-exit v4

    const/4 v4, 0x0

    return-object v4

    .line 1625
    :cond_3
    iget-object v6, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ic_stat_notify_bg_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1626
    .local v6, "bmpBg":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 1628
    iget-object v7, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const-string v8, "ic_stat_notify_bg_0.png"

    invoke-virtual {v0, v7, v8}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v6, v7

    .line 1630
    :cond_4
    iget-object v7, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const-string v8, "ic_stat_notify_icon_mask.png"

    invoke-virtual {v0, v7, v8}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1631
    .local v7, "bmpMask":Landroid/graphics/Bitmap;
    iget-object v8, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    const-string v9, "ic_stat_notify_icon_border.png"

    invoke-virtual {v0, v8, v9}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1632
    .local v8, "bmpBorder":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    if-nez v8, :cond_5

    goto :goto_1

    .line 1638
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1639
    .local v9, "w":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 1640
    .local v10, "h":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_7

    if-ne v10, v11, :cond_7

    .line 1641
    invoke-static {v5, v6}, Lhuawei/android/hwutil/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1642
    .local v11, "overlap":Landroid/graphics/Bitmap;
    if-nez v11, :cond_6

    const/4 v12, 0x0

    goto :goto_0

    :cond_6
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    monitor-exit v4

    return-object v12

    .line 1644
    .end local v11    # "overlap":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-eq v11, v9, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-eq v11, v10, :cond_8

    .line 1645
    invoke-static {v7, v9, v9}, Lhuawei/android/hwutil/IconBitmapUtils;->drawSource(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v7, v11

    .line 1647
    :cond_8
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-eq v11, v9, :cond_9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-eq v11, v10, :cond_9

    .line 1648
    invoke-static {v8, v9, v9}, Lhuawei/android/hwutil/IconBitmapUtils;->drawSource(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v8, v11

    .line 1650
    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-eq v11, v9, :cond_a

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-eq v11, v10, :cond_a

    .line 1651
    invoke-static {v6, v9, v9}, Lhuawei/android/hwutil/IconBitmapUtils;->drawSource(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v6, v11

    .line 1653
    :cond_a
    const/4 v11, 0x0

    invoke-static {v5, v7, v6, v8, v11}, Lhuawei/android/hwutil/IconBitmapUtils;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1654
    .local v11, "result":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_b

    .line 1655
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    monitor-exit v4

    return-object v12

    .line 1657
    .end local v0    # "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v5    # "bmpSrc":Landroid/graphics/Bitmap;
    .end local v6    # "bmpBg":Landroid/graphics/Bitmap;
    .end local v7    # "bmpMask":Landroid/graphics/Bitmap;
    .end local v8    # "bmpBorder":Landroid/graphics/Bitmap;
    .end local v9    # "w":I
    .end local v10    # "h":I
    .end local v11    # "result":Landroid/graphics/Bitmap;
    :cond_b
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    const-string v0, "HwResourcesImpl"

    const-string v4, "getJoinBitmap is null!"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const/4 v0, 0x0

    return-object v0

    .line 1633
    .restart local v0    # "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .restart local v5    # "bmpSrc":Landroid/graphics/Bitmap;
    .restart local v6    # "bmpBg":Landroid/graphics/Bitmap;
    .restart local v7    # "bmpMask":Landroid/graphics/Bitmap;
    .restart local v8    # "bmpBorder":Landroid/graphics/Bitmap;
    :cond_c
    :goto_1
    :try_start_1
    const-string v9, "HwResourcesImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getJoinBitmap :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_d

    const-string v11, " bmpBg == null, "

    goto :goto_2

    :cond_d
    const-string v11, " bmpBg != null, "

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1634
    if-nez v7, :cond_e

    const-string v11, " bmpMask == null, "

    goto :goto_3

    :cond_e
    const-string v11, "bmpMask != null, "

    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    if-nez v8, :cond_f

    const-string v11, " bmpBorder == null, "

    goto :goto_4

    :cond_f
    const-string v11, " bmpBorder != null"

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1633
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    monitor-exit v4

    const/4 v4, 0x0

    return-object v4

    .line 1657
    .end local v0    # "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v5    # "bmpSrc":Landroid/graphics/Bitmap;
    .end local v6    # "bmpBg":Landroid/graphics/Bitmap;
    .end local v7    # "bmpMask":Landroid/graphics/Bitmap;
    .end local v8    # "bmpBorder":Landroid/graphics/Bitmap;
    :goto_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getMultidpiInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2125
    invoke-static {p1}, Landroid/content/res/Resources;->getPreMultidpiInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1317
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor(Landroid/util/TypedValue;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .locals 17
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 796
    const/4 v1, 0x0

    .line 797
    .local v1, "isOutThemeColorId":Z
    sget-object v2, Landroid/content/res/HwResourcesImpl;->sThemeColorArrayLock:Ljava/lang/Object;

    monitor-enter v2

    .line 798
    :try_start_0
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mOutThemeColorIdArray:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move v9, v0

    .line 799
    .end local v1    # "isOutThemeColorId":Z
    .local v9, "isOutThemeColorId":Z
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 800
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    iget-boolean v0, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-eqz v9, :cond_0

    goto/16 :goto_5

    .line 803
    :cond_0
    const/4 v2, 0x0

    .line 804
    .local v2, "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    sget-object v3, Landroid/content/res/HwResourcesImpl;->sThemeColorArrayLock:Ljava/lang/Object;

    monitor-enter v3

    .line 805
    :try_start_2
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mThemeColorArray:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 806
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mThemeColorArray:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AbsResourcesImpl$ThemeColor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 808
    .end local v2    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .local v0, "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    move-object v10, v0

    goto :goto_0

    .end local v0    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .restart local v2    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    :cond_1
    move-object v10, v2

    .end local v2    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .local v10, "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 809
    if-eqz v10, :cond_2

    .line 810
    return-object v10

    .line 814
    :cond_2
    const/4 v0, 0x0

    move/from16 v11, p2

    invoke-virtual {v7, v11, v0}, Landroid/content/res/HwResourcesImpl;->getThemeResource(ILjava/lang/String;)Landroid/content/res/AbsResourcesImpl$ThemeResource;

    move-result-object v12

    .line 815
    .local v12, "themeRes":Landroid/content/res/AbsResourcesImpl$ThemeResource;
    iget-object v13, v12, Landroid/content/res/AbsResourcesImpl$ThemeResource;->packageName:Ljava/lang/String;

    .line 816
    .local v13, "packageName":Ljava/lang/String;
    iget-object v14, v12, Landroid/content/res/AbsResourcesImpl$ThemeResource;->resName:Ljava/lang/String;

    .line 818
    .local v14, "resName":Ljava/lang/String;
    const-string v0, "framework-res"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "framework-res-hwext"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v15, v1

    .line 819
    .local v15, "isFramework":Z
    if-eqz v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 821
    .local v16, "frameworkPackageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/theme.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v8, Landroid/util/TypedValue;->data:I

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-direct/range {v1 .. v6}, Landroid/content/res/HwResourcesImpl;->loadThemeColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;

    move-result-object v1

    .line 823
    .local v1, "tc":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    iget-boolean v0, v1, Landroid/content/res/AbsResourcesImpl$ThemeColor;->mIsThemed:Z

    if-eqz v0, :cond_5

    .line 824
    sget-object v2, Landroid/content/res/HwResourcesImpl;->sThemeColorArrayLock:Ljava/lang/Object;

    monitor-enter v2

    .line 825
    :try_start_4
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mThemeColorArray:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    monitor-exit v2

    .line 827
    return-object v1

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 830
    .end local v1    # "tc":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .end local v16    # "frameworkPackageName":Ljava/lang/String;
    :cond_5
    const-string v5, "theme.xml"

    iget v6, v8, Landroid/util/TypedValue;->data:I

    move-object v1, v7

    move-object v2, v13

    move-object v3, v13

    move-object v4, v14

    invoke-direct/range {v1 .. v6}, Landroid/content/res/HwResourcesImpl;->loadThemeColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;

    move-result-object v1

    .line 831
    .end local v10    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .local v1, "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    iget-boolean v0, v1, Landroid/content/res/AbsResourcesImpl$ThemeColor;->mIsThemed:Z

    if-eqz v0, :cond_6

    .line 832
    sget-object v2, Landroid/content/res/HwResourcesImpl;->sThemeColorArrayLock:Ljava/lang/Object;

    monitor-enter v2

    .line 833
    :try_start_5
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mThemeColorArray:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 836
    :cond_6
    sget-object v2, Landroid/content/res/HwResourcesImpl;->sThemeColorArrayLock:Ljava/lang/Object;

    monitor-enter v2

    .line 837
    :try_start_6
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mOutThemeColorIdArray:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 838
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mOutThemeColorIdArray:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_7
    monitor-exit v2

    .line 842
    :goto_3
    return-object v1

    .line 840
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 808
    .end local v1    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .end local v12    # "themeRes":Landroid/content/res/AbsResourcesImpl$ThemeResource;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "isFramework":Z
    .restart local v10    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    :catchall_3
    move-exception v0

    move/from16 v11, p2

    move-object v2, v10

    goto :goto_4

    .end local v10    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    .restart local v2    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    :catchall_4
    move-exception v0

    move/from16 v11, p2

    :goto_4
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_4

    .line 801
    .end local v2    # "cachedThemeColor":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    :cond_8
    :goto_5
    move/from16 v11, p2

    new-instance v0, Landroid/content/res/AbsResourcesImpl$ThemeColor;

    iget v2, v8, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, v2, v1}, Landroid/content/res/AbsResourcesImpl$ThemeColor;-><init>(IZ)V

    return-object v0

    .line 799
    :catchall_6
    move-exception v0

    move/from16 v11, p2

    move v1, v9

    goto :goto_6

    .end local v9    # "isOutThemeColorId":Z
    .local v1, "isOutThemeColorId":Z
    :catchall_7
    move-exception v0

    move/from16 v11, p2

    :goto_6
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_6
.end method

.method public getThemeDir()Ljava/lang/String;
    .locals 2

    .line 1665
    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 1667
    :try_start_0
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mThemeAbsoluteDir:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1669
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getThemeDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 24
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 966
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    iget-boolean v0, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 967
    return-object v10

    .line 970
    :cond_0
    move/from16 v11, p2

    move-object/from16 v0, p4

    invoke-virtual {v7, v11, v0}, Landroid/content/res/HwResourcesImpl;->getThemeResource(ILjava/lang/String;)Landroid/content/res/AbsResourcesImpl$ThemeResource;

    move-result-object v12

    .line 971
    .local v12, "themeRes":Landroid/content/res/AbsResourcesImpl$ThemeResource;
    iget-object v13, v12, Landroid/content/res/AbsResourcesImpl$ThemeResource;->packageName:Ljava/lang/String;

    .line 972
    .end local p4    # "packageName":Ljava/lang/String;
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 973
    return-object v10

    .line 975
    :cond_1
    iget-object v0, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 976
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    .line 980
    :cond_2
    invoke-direct {v7, v13}, Landroid/content/res/HwResourcesImpl;->isEmptyPreloadZip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v7, Landroid/content/res/HwResourcesImpl;->mCurrentDeepTheme:I

    if-nez v0, :cond_3

    .line 984
    return-object v10

    .line 988
    :cond_3
    iget-object v0, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_e

    .line 992
    :cond_4
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 993
    .end local v0    # "file":Ljava/lang/String;
    .local v14, "file":Ljava/lang/String;
    const/4 v0, 0x0

    .line 998
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const-string v1, "framework-res"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    const-string v1, "_holo"

    invoke-virtual {v14, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 999
    return-object v10

    .line 1001
    :cond_5
    const-string v1, "-land"

    invoke-virtual {v14, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v16, 0x1

    if-ltz v1, :cond_6

    move/from16 v1, v16

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    move/from16 v17, v1

    .line 1002
    .local v17, "isLand":Z
    const-string v1, "framework-res"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1003
    .local v18, "isFramework":Z
    const-string v1, "framework-res-hwext"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 1006
    .local v19, "isHwFramework":Z
    iget-object v6, v7, Landroid/content/res/HwResourcesImpl;->mDeepThemeType:Ljava/lang/String;

    .line 1010
    .local v6, "themeType":Ljava/lang/String;
    const/4 v5, -0x1

    if-nez v18, :cond_8

    if-eqz v19, :cond_7

    goto :goto_1

    .line 1072
    :cond_7
    move v10, v5

    move-object/from16 v23, v6

    goto/16 :goto_a

    .line 1014
    :cond_8
    :goto_1
    iget-object v1, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1016
    invoke-direct {v7, v13}, Landroid/content/res/HwResourcesImpl;->isEmptyPreloadZip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1017
    move-object v1, v10

    goto :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v1

    .line 1020
    .local v1, "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    :goto_2
    const-string v2, "androidhwext"

    iget-object v3, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "android"

    iget-object v3, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    .line 1035
    .end local v1    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .local v4, "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    :cond_a
    :goto_3
    move-object v4, v1

    goto :goto_6

    .line 1021
    .end local v4    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .restart local v1    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    :cond_b
    :goto_4
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 1022
    .local v2, "activityThread":Landroid/app/ActivityThread;
    if-eqz v2, :cond_c

    .line 1023
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 1024
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_c

    .line 1025
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    .line 1029
    .end local v3    # "context":Landroid/content/Context;
    :cond_c
    invoke-direct {v7, v13}, Landroid/content/res/HwResourcesImpl;->isEmptyPreloadZip(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1030
    move-object v3, v10

    goto :goto_5

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v3

    :goto_5
    move-object v1, v3

    .end local v2    # "activityThread":Landroid/app/ActivityThread;
    goto :goto_3

    .line 1035
    .end local v1    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .restart local v4    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    .local v3, "key":Ljava/lang/String;
    if-eqz v4, :cond_12

    .line 1040
    invoke-virtual {v4, v9, v8, v3, v10}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1042
    if-nez v0, :cond_11

    const-string v1, "drawable-xxhdpi"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1044
    invoke-virtual {v4}, Lhuawei/android/hwutil/ZipFileCache;->initResDirInfo()V

    .line 1045
    if-eqz v18, :cond_f

    if-eqz v17, :cond_e

    const/4 v1, 0x3

    goto :goto_7

    :cond_e
    const/4 v1, 0x2

    goto :goto_7

    .line 1046
    :cond_f
    if-eqz v17, :cond_10

    const/4 v1, 0x5

    goto :goto_7

    :cond_10
    const/4 v1, 0x4

    .line 1047
    .local v1, "index":I
    :goto_7
    invoke-virtual {v4, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableDensity(I)I

    move-result v2

    .line 1048
    .local v2, "themeDensity":I
    invoke-virtual {v4, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableDir(I)Ljava/lang/String;

    move-result-object v15

    .line 1049
    .local v15, "dir":Ljava/lang/String;
    if-eq v2, v5, :cond_11

    if-eqz v15, :cond_11

    .line 1050
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1051
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    iput v2, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1052
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .local v21, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "newFile":Ljava/lang/String;
    invoke-virtual {v4, v9, v8, v0, v5}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v1    # "index":I
    .end local v2    # "themeDensity":I
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v15    # "dir":Ljava/lang/String;
    .end local v21    # "dr":Landroid/graphics/drawable/Drawable;
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_8

    .line 1056
    :cond_11
    move-object/from16 v21, v0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "dr":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    .end local v21    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_8
    if-eqz v0, :cond_12

    .line 1057
    return-object v0

    .line 1062
    :cond_12
    move-object v10, v0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .local v10, "dr":Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-nez v10, :cond_13

    if-nez v4, :cond_13

    .line 1063
    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v15, v3

    move-object v3, v13

    .end local v3    # "key":Ljava/lang/String;
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v21, v4

    move-object v4, v14

    .end local v4    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .local v21, "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    move-object/from16 v22, v10

    const/4 v10, -0x1

    move-object v5, v15

    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    .local v22, "dr":Landroid/graphics/drawable/Drawable;
    move-object/from16 v23, v6

    .end local v6    # "themeType":Ljava/lang/String;
    .local v23, "themeType":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/content/res/HwResourcesImpl;->getFwkDrawableFromAsset(Landroid/util/TypedValue;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v22    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 1065
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "key":Ljava/lang/String;
    .end local v21    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v23    # "themeType":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .restart local v6    # "themeType":Ljava/lang/String;
    .restart local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_13
    move-object v15, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v6

    move-object/from16 v22, v10

    const/4 v10, -0x1

    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v6    # "themeType":Ljava/lang/String;
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v21    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .restart local v22    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "themeType":Ljava/lang/String;
    move-object/from16 v0, v22

    .end local v22    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_9
    if-eqz v0, :cond_15

    .line 1066
    return-object v0

    .line 1072
    .end local v15    # "key":Ljava/lang/String;
    .end local v21    # "frameworkZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v23    # "themeType":Ljava/lang/String;
    .restart local v6    # "themeType":Ljava/lang/String;
    :cond_14
    move v10, v5

    move-object/from16 v23, v6

    .end local v6    # "themeType":Ljava/lang/String;
    .restart local v23    # "themeType":Ljava/lang/String;
    :cond_15
    :goto_a
    invoke-direct {v7, v13}, Landroid/content/res/HwResourcesImpl;->isEmptyPreloadZip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    goto :goto_b

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v1

    :goto_b
    move-object v6, v1

    .line 1075
    .local v6, "packageZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-eqz v6, :cond_17

    .line 1076
    const/4 v1, 0x0

    invoke-virtual {v6, v9, v8, v14, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1083
    :cond_17
    if-eqz v6, :cond_1a

    if-nez v0, :cond_1a

    const-string v1, "drawable-xxhdpi"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1086
    invoke-virtual {v6}, Lhuawei/android/hwutil/ZipFileCache;->initResDirInfo()V

    .line 1087
    if-eqz v17, :cond_18

    move/from16 v20, v16

    goto :goto_c

    :cond_18
    const/16 v20, 0x0

    :goto_c
    move/from16 v1, v20

    .line 1088
    .restart local v1    # "index":I
    invoke-virtual {v6, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableDensity(I)I

    move-result v2

    .line 1089
    .restart local v2    # "themeDensity":I
    invoke-virtual {v6, v1}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableDir(I)Ljava/lang/String;

    move-result-object v3

    .line 1090
    .local v3, "dir":Ljava/lang/String;
    if-eq v2, v10, :cond_1a

    if-eqz v3, :cond_1a

    .line 1091
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1092
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1094
    const-string v5, "xxxhdpi"

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1096
    const-string v5, "xxxhdpi"

    const-string v10, "xxhdpi"

    invoke-virtual {v14, v5, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1097
    .local v5, "fhdPath":Ljava/lang/String;
    invoke-virtual {v6, v9, v8, v5, v4}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1098
    .end local v5    # "fhdPath":Ljava/lang/String;
    goto :goto_d

    .line 1099
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v14, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1100
    .local v5, "newFile":Ljava/lang/String;
    invoke-virtual {v6, v9, v8, v5, v4}, Lhuawei/android/hwutil/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1108
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "index":I
    .end local v2    # "themeDensity":I
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "newFile":Ljava/lang/String;
    .restart local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1a
    :goto_d
    move-object v10, v0

    move-object/from16 v15, v23

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .end local v23    # "themeType":Ljava/lang/String;
    .local v15, "themeType":Ljava/lang/String;
    if-nez v0, :cond_1b

    if-nez v10, :cond_1b

    if-nez v6, :cond_1b

    if-nez v18, :cond_1b

    if-nez v19, :cond_1b

    .line 1113
    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/content/res/HwResourcesImpl;->getAppDrawableFromAsset(Landroid/util/TypedValue;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1117
    :cond_1b
    return-object v10

    .line 990
    .end local v6    # "packageZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v14    # "file":Ljava/lang/String;
    .end local v15    # "themeType":Ljava/lang/String;
    .end local v17    # "isLand":Z
    .end local v18    # "isFramework":Z
    .end local v19    # "isHwFramework":Z
    .local v0, "file":Ljava/lang/String;
    :cond_1c
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getThemeIconByName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 448
    move-object v0, p1

    .line 449
    .local v0, "imgFile":Ljava/lang/String;
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    const-string v1, "portal_ring_inner_holo.png.animate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    const-string v0, "portal_ring_inner_holo.png"

    .line 455
    :cond_1
    const/4 v1, 0x0

    .line 456
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const-class v2, Landroid/content/res/HwResourcesImpl;

    monitor-enter v2

    .line 458
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v3

    const-string v4, "icons"

    invoke-static {v3, v4}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v3

    .line 459
    .local v3, "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-eqz v3, :cond_2

    .line 460
    iget-object v4, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v3, v4, v0}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 462
    :cond_2
    if-eqz v1, :cond_3

    .line 463
    sget v4, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lhuawei/android/hwutil/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 464
    .local v4, "srcBitmap":Landroid/graphics/Bitmap;
    monitor-exit v2

    return-object v4

    .line 466
    .end local v3    # "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v4    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_3
    monitor-exit v2

    .line 467
    return-object v1

    .line 466
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getThemeResource(ILjava/lang/String;)Landroid/content/res/AbsResourcesImpl$ThemeResource;
    .locals 4
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1126
    if-nez p2, :cond_0

    .line 1127
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p2

    .line 1131
    :cond_0
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "resName":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    const-string p2, "framework-res"

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1141
    :cond_1
    const-string v1, "androidhwext"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1142
    const-string p2, "framework-res-hwext"

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-res-hwext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1144
    :cond_2
    const-string v1, "com.android.frameworkhwext.dark"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1f

    if-eqz v1, :cond_3

    .line 1145
    const-string p2, "framework-res-hwext"

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res-hwext"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1147
    :cond_3
    const-string v1, "com.android.frameworkhwext.honor"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1148
    const-string p2, "framework-res-hwext"

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-res-hwext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1150
    :cond_4
    const-string v1, "com.android.frameworkhwext.nova"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1151
    const-string p2, "framework-res-hwext"

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res-hwext"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    :cond_5
    :goto_0
    new-instance v1, Landroid/content/res/AbsResourcesImpl$ThemeResource;

    invoke-direct {v1, p2, v0}, Landroid/content/res/AbsResourcesImpl$ThemeResource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected handleAddIconBackground(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 579
    if-eqz p2, :cond_c

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "idAndPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 583
    .local v1, "resourcesPackageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v2, p2}, Landroid/content/res/ResourcesImpl;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Lhuawei/android/hwutil/IconCache;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 586
    instance-of v2, p3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 587
    .local v2, "isAdaptiveIcon":Z
    iget-object v3, p0, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 588
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Lhuawei/android/hwutil/IconBitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 589
    .local v4, "bmp":Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 590
    return-object p3

    .line 593
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget v6, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    const/4 v7, 0x3

    mul-int/2addr v6, v7

    const/4 v8, 0x1

    if-gt v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget v6, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    mul-int/2addr v7, v6

    if-le v5, v7, :cond_3

    .line 594
    :cond_2
    const-string v5, "HwResourcesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "icon in pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is too large.sDefaultSizeWithoutEdge = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "bmp.getWidth() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget v5, Landroid/content/res/HwResourcesImpl;->sDefaultSizeWithoutEdge:I

    invoke-static {v4, v5, v8}, Lhuawei/android/hwutil/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 597
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, p1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p3, v5

    .line 598
    nop

    .line 599
    move-object v5, p3

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v6}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 603
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v5

    const-string v6, "icons"

    invoke-static {v5, v6}, Lhuawei/android/hwutil/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;

    move-result-object v5

    .line 604
    .local v5, "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    if-nez v5, :cond_4

    .line 605
    return-object p3

    .line 607
    :cond_4
    invoke-direct {p0, v5}, Landroid/content/res/HwResourcesImpl;->initMask(Lhuawei/android/hwutil/ZipFileCache;)V

    .line 608
    const/4 v6, 0x0

    .line 610
    .local v6, "resultBitmap":Landroid/graphics/Bitmap;
    sget-boolean v7, Landroid/content/res/HwResourcesImpl;->isIconSupportCut:Z

    if-nez v7, :cond_5

    invoke-virtual {p0}, Landroid/content/res/HwResourcesImpl;->getThemeDir()Ljava/lang/String;

    move-result-object v7

    const-string v9, "description.xml"

    invoke-direct {p0, v7, v9}, Landroid/content/res/HwResourcesImpl;->isCurrentHwTheme(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    invoke-direct {p0, v3}, Landroid/content/res/HwResourcesImpl;->checkWhiteListApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 614
    :cond_6
    invoke-direct {p0, v4, v0, v2}, Landroid/content/res/HwResourcesImpl;->addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 616
    :cond_7
    invoke-static {}, Landroid/content/res/HwResourcesImpl;->getHwCustHwResources()Landroid/content/res/HwCustHwResources;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-static {}, Landroid/content/res/HwResourcesImpl;->getHwCustHwResources()Landroid/content/res/HwCustHwResources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/HwCustHwResources;->isUseThemeIconAndBackground()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 617
    :cond_8
    sget-object v7, Landroid/content/res/HwResourcesImpl;->sDisThemeBackground:Ljava/util/HashSet;

    if-eqz v7, :cond_9

    sget-object v7, Landroid/content/res/HwResourcesImpl;->sDisThemeBackground:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 620
    :cond_9
    invoke-direct {p0, v4, v0, v8}, Landroid/content/res/HwResourcesImpl;->addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 625
    :cond_a
    :goto_1
    if-nez v6, :cond_b

    .line 627
    sget v7, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lhuawei/android/hwutil/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 629
    :cond_b
    if-eqz v6, :cond_c

    .line 630
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p3, v7

    .line 631
    nop

    .line 632
    move-object v7, p3

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v8}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 634
    return-object p3

    .line 639
    .end local v0    # "idAndPackageName":Ljava/lang/String;
    .end local v1    # "resourcesPackageName":Ljava/lang/String;
    .end local v2    # "isAdaptiveIcon":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "iconZipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    .end local v6    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_c
    return-object p3
.end method

.method protected handleClearCache(IZ)V
    .locals 2
    .param p1, "configChanges"    # I
    .param p2, "themeChanged"    # Z

    .line 1260
    if-eqz p2, :cond_0

    .line 1261
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sThemeColorArrayLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1262
    :try_start_0
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mThemeColorArray:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1263
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mOutThemeColorIdArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1264
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1266
    :cond_0
    :goto_0
    const-class v0, Landroid/content/res/HwResourcesImpl;

    monitor-enter v0

    .line 1270
    if-eqz p2, :cond_1

    .line 1271
    :try_start_1
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1272
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mAssetCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1273
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mPreloadedThemeColorList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1274
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mNonThemedPackage:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1276
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mPreloadedAssetsPackage:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1277
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mCacheAssetsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1279
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->clearHwThemeZipsAndIconsCache()V

    .line 1281
    const/4 v1, 0x0

    sput-boolean v1, Landroid/content/res/HwResourcesImpl;->sThemeDescripHasRead:Z

    .line 1282
    const/4 v1, 0x1

    sput-boolean v1, Landroid/content/res/HwResourcesImpl;->sIsHWThemes:Z

    goto :goto_1

    .line 1292
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 1288
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDynamicDrawableCache:Landroid/content/res/DrawableCache;

    if-eqz v1, :cond_2

    .line 1289
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDynamicDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v1, p1}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 1292
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1293
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1294
    :try_start_2
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mColorDrawableCacheEx:Landroid/content/res/DrawableCache;

    if-eqz v0, :cond_3

    .line 1295
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mColorDrawableCacheEx:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, p1}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 1297
    :cond_3
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mDrawableCacheEx:Landroid/content/res/DrawableCache;

    if-eqz v0, :cond_4

    .line 1298
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mDrawableCacheEx:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, p1}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 1300
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1301
    if-eqz p2, :cond_5

    .line 1302
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->clearPreloadedHwThemeZipsCache()V

    .line 1305
    :cond_5
    return-void

    .line 1300
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 1292
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public hwGetDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 2132
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public initDeepTheme()V
    .locals 3

    .line 1974
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 1975
    const-string v0, "HwResourcesImpl"

    const-string v1, "zygote not need to initDeepTheme"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    return-void

    .line 1980
    :cond_0
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1985
    .local v0, "asset":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getDeepType()I

    move-result v1

    iput v1, p0, Landroid/content/res/HwResourcesImpl;->mCurrentDeepTheme:I

    .line 1987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.deep.theme_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/content/res/HwResourcesImpl;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDarkThemeType:Ljava/lang/String;

    .line 1988
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->isDeepDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/hwtheme/HwThemeManager;->isHonorProduct()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/hwtheme/HwThemeManager;->isNovaProduct()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1989
    return-void

    .line 1992
    :cond_1
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->getThemeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDeepThemeType:Ljava/lang/String;

    .line 1994
    return-void
.end method

.method public initResource()V
    .locals 3

    .line 1164
    sget v0, Landroid/content/res/HwResourcesImpl;->sStandardBgSize:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_2

    .line 1165
    sget v0, Landroid/content/res/HwResourcesImpl;->sConfigAppBigIconSize:I

    if-ne v0, v1, :cond_0

    .line 1166
    const v0, 0x20e0080

    invoke-virtual {p0, v0}, Landroid/content/res/HwResourcesImpl;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Landroid/content/res/HwResourcesImpl;->sConfigAppBigIconSize:I

    .line 1167
    .local v0, "standardBgSize":I
    :goto_0
    sget v2, Landroid/content/res/HwResourcesImpl;->sConfigAppInnerIconSize:I

    if-ne v2, v1, :cond_1

    .line 1168
    const v1, 0x20e007f

    invoke-virtual {p0, v1}, Landroid/content/res/HwResourcesImpl;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    sget v1, Landroid/content/res/HwResourcesImpl;->sConfigAppInnerIconSize:I

    .line 1169
    .local v1, "standardIconSize":I
    :goto_1
    invoke-static {v0, v1}, Landroid/content/res/HwResourcesImpl;->setStandardSize(II)V

    .line 1178
    .end local v0    # "standardBgSize":I
    .end local v1    # "standardIconSize":I
    :cond_2
    const-string v0, "sr"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroid/content/res/HwResources;->setIsSRLocale(Z)V

    .line 1180
    return-void
.end method

.method public isInMultiDpiWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1557
    sget-boolean v0, Landroid/content/res/HwResourcesImpl;->sMultiDirHasRead:Z

    if-nez v0, :cond_0

    .line 1558
    invoke-static {}, Landroid/content/res/HwResourcesImpl;->loadMultiDpiWhiteList()V

    .line 1560
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1561
    .local v0, "result":Ljava/lang/Boolean;
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sMultiDirPkgNames:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1562
    const-string v1, "HwResourcesImpl"

    const-string v2, "open lock res on whitelist, but not provide the whitelist, so lock resource"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1563
    :cond_1
    if-nez p1, :cond_2

    .line 1564
    const-string v1, "HwResourcesImpl"

    const-string v2, "can\'t get the package name, so lock resource"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1565
    :cond_2
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sMultiDirPkgNames:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1566
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1568
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 849
    iget v0, v3, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    iget v0, v3, Landroid/util/TypedValue;->data:I

    int-to-long v8, v0

    or-long/2addr v6, v8

    .line 850
    .local v6, "key":J
    const/4 v8, 0x0

    .line 851
    .local v8, "isThemeColor":Z
    const/4 v9, 0x0

    .line 852
    .local v9, "dr":Landroid/graphics/drawable/Drawable;
    iget v0, v3, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x0

    const/16 v11, 0x1c

    if-lt v0, v11, :cond_7

    iget v0, v3, Landroid/util/TypedValue;->type:I

    const/16 v11, 0x1f

    if-gt v0, v11, :cond_7

    .line 854
    if-eqz v4, :cond_6

    .line 855
    sget-object v11, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 856
    :try_start_0
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mColorDrawableCacheEx:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, v6, v7, v2, v5}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    .line 857
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 858
    if-eqz v9, :cond_0

    .line 859
    return-object v9

    .line 861
    :cond_0
    const/4 v11, 0x0

    .line 862
    .local v11, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    sget-object v12, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    monitor-enter v12

    .line 863
    :try_start_1
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    iget-boolean v0, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroid/content/res/HwResourcesImpl;->mThemeChanged:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedColorDrawablesEx:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/drawable/Drawable$ConstantState;

    nop

    :cond_2
    :goto_0
    move-object v11, v10

    .line 864
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 865
    if-eqz v11, :cond_3

    .line 866
    invoke-virtual {v11, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 875
    :goto_1
    move-object v9, v0

    goto :goto_2

    .line 868
    :cond_3
    invoke-virtual {v1, v3, v4}, Landroid/content/res/HwResourcesImpl;->getThemeColor(Landroid/util/TypedValue;I)Landroid/content/res/AbsResourcesImpl$ThemeColor;

    move-result-object v0

    .line 870
    .local v0, "colorValue":Landroid/content/res/AbsResourcesImpl$ThemeColor;
    if-eqz v0, :cond_4

    iget-boolean v10, v0, Landroid/content/res/AbsResourcesImpl$ThemeColor;->mIsThemed:Z

    if-eqz v10, :cond_4

    .line 871
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    iget v12, v0, Landroid/content/res/AbsResourcesImpl$ThemeColor;->mColor:I

    invoke-direct {v10, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v0, v10

    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 875
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    if-eqz v9, :cond_6

    .line 876
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    .line 877
    .end local v11    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .local v10, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v10, :cond_6

    .line 878
    sget-object v11, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 879
    :try_start_2
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    iget-boolean v0, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_5

    .line 880
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedColorDrawablesEx:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 882
    :cond_5
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mColorDrawableCacheEx:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, v6, v7, v5, v10}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 884
    :goto_3
    monitor-exit v11

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 864
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v11    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 857
    .end local v11    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 889
    :cond_6
    :goto_4
    return-object v9

    .line 891
    :cond_7
    sget-object v11, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 892
    :try_start_5
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mDrawableCacheEx:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, v6, v7, v2, v5}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    .line 893
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 894
    if-eqz v9, :cond_8

    .line 895
    return-object v9

    .line 897
    :cond_8
    sget-object v12, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    monitor-enter v12

    .line 898
    :try_start_6
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    iget-boolean v0, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Landroid/content/res/HwResourcesImpl;->mThemeChanged:Z

    if-eqz v0, :cond_9

    goto :goto_5

    .line 899
    :cond_9
    sget-object v0, Landroid/content/res/HwResourcesImpl;->resUtils:Landroid/content/res/ResourcesUtils;

    iget-object v11, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, v11}, Landroid/content/res/ResourcesUtils;->getPreloadedDensity(Landroid/content/res/ResourcesImpl;)I

    move-result v0

    iget-object v11, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v11}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v11, :cond_a

    .line 900
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedDrawablesEx:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/drawable/Drawable$ConstantState;

    goto :goto_6

    :cond_a
    goto :goto_6

    .line 898
    :cond_b
    :goto_5
    nop

    .line 900
    :goto_6
    move-object v0, v10

    .line 901
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_c

    .line 902
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v9, v10

    .line 903
    monitor-exit v12

    return-object v9

    .line 905
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_c
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 907
    if-eqz v4, :cond_13

    .line 909
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, v4}, Landroid/content/res/ResourcesImpl;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 910
    .local v10, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 911
    .local v11, "iconKey":Ljava/lang/String;
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v12

    .line 917
    .local v12, "resName":Ljava/lang/String;
    invoke-static {v11}, Lhuawei/android/hwutil/IconCache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 918
    const/4 v0, 0x0

    .line 919
    .local v0, "drIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/content/res/HwResourcesImpl;->readDefaultConfig()V

    .line 920
    invoke-direct {v1, v2, v11, v10}, Landroid/content/res/HwResourcesImpl;->getThemeIcon(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 921
    .end local v0    # "drIcon":Landroid/graphics/drawable/Drawable;
    .local v13, "drIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_f

    .line 922
    if-eqz v12, :cond_d

    const-string v0, "ic_statusbar_battery"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 923
    const-string v0, "battery_debug"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HwResourcesImpl#loadDrawable iconKey = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " mPackageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " packageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " resName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 923
    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_d
    sget-object v14, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    monitor-enter v14

    .line 927
    :try_start_7
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    iget-boolean v0, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_e

    .line 928
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedDrawablesEx:Landroid/util/LongSparseArray;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v15

    invoke-virtual {v0, v6, v7, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_7

    .line 930
    :cond_e
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mDrawableCacheEx:Landroid/content/res/DrawableCache;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v15

    invoke-virtual {v0, v6, v7, v5, v15}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 932
    :goto_7
    monitor-exit v14

    .line 933
    return-object v13

    .line 932
    :catchall_3
    move-exception v0

    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 935
    .end local v13    # "drIcon":Landroid/graphics/drawable/Drawable;
    :cond_f
    goto :goto_9

    .line 937
    :cond_10
    invoke-virtual {v1, v3, v4, v2, v10}, Landroid/content/res/HwResourcesImpl;->getThemeDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 938
    if-eqz v9, :cond_11

    if-eqz v12, :cond_11

    const-string v0, "ic_statusbar_battery"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 939
    const-string v0, "battery_debug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HwResourcesImpl#loadDrawable after getThemeDrawable  dr.getIntrinsicWidth() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "dr.getIntrinsicHeight() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " id = 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " resName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 939
    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_11
    if-eqz v9, :cond_13

    .line 944
    sget-object v13, Landroid/content/res/HwResourcesImpl;->sCacheLock:Ljava/lang/Object;

    monitor-enter v13

    .line 945
    :try_start_8
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    iget-boolean v0, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_12

    .line 946
    sget-object v0, Landroid/content/res/HwResourcesImpl;->sPreloadedDrawablesEx:Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    invoke-virtual {v0, v6, v7, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_8

    .line 948
    :cond_12
    iget-object v0, v1, Landroid/content/res/HwResourcesImpl;->mDrawableCacheEx:Landroid/content/res/DrawableCache;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    invoke-virtual {v0, v6, v7, v5, v14}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    .line 950
    :goto_8
    monitor-exit v13

    .line 951
    return-object v9

    .line 950
    :catchall_4
    move-exception v0

    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 955
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "iconKey":Ljava/lang/String;
    .end local v12    # "resName":Ljava/lang/String;
    :cond_13
    :goto_9
    return-object v9

    .line 905
    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    .line 893
    :catchall_6
    move-exception v0

    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0
.end method

.method protected obtainTempTypedValue()Landroid/util/TypedValue;
    .locals 3

    .line 1237
    const/4 v0, 0x0

    .line 1238
    .local v0, "tmpValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1239
    :try_start_0
    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mTmpValue:Landroid/util/TypedValue;

    if-eqz v2, :cond_0

    .line 1240
    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mTmpValue:Landroid/util/TypedValue;

    move-object v0, v2

    .line 1241
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/HwResourcesImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 1243
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    if-nez v0, :cond_1

    .line 1245
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    return-object v1

    .line 1247
    :cond_1
    return-object v0

    .line 1243
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public preloadHwThemeZipsAndSomeIcons(I)V
    .locals 9
    .param p1, "currentUserId"    # I

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/themes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1731
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/content/res/HwResourcesImpl;->setHwThemeAbsoluteDir(Ljava/lang/String;I)V

    .line 1732
    sget-object v1, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZipLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1733
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/content/res/HwResourcesImpl;->mThemeAbsoluteDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1734
    .local v2, "themePath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1735
    new-instance v3, Landroid/content/res/HwResourcesImpl$HwThemeFileFilter;

    invoke-direct {v3}, Landroid/content/res/HwResourcesImpl$HwThemeFileFilter;-><init>()V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1736
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_0

    .line 1737
    monitor-exit v1

    return-void

    .line 1739
    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1740
    .local v6, "f":Ljava/io/File;
    sget-object v7, Landroid/content/res/HwResourcesImpl;->sPreloadedHwThemeZips:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1739
    .end local v6    # "f":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1747
    .end local v2    # "themePath":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    const-string v1, "sr"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Landroid/content/res/HwResources;->setIsSRLocale(Z)V

    .line 1753
    return-void

    .line 1747
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected releaseTempTypedValue(Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;

    .line 1223
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_0
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mTmpValue:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    .line 1225
    iput-object p1, p0, Landroid/content/res/HwResourcesImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 1227
    :cond_0
    monitor-exit v0

    .line 1228
    return-void

    .line 1227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setHwTheme(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1322
    if-eqz p1, :cond_1

    .line 1323
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/content/res/IHwConfiguration;->getConfigItem(I)I

    move-result v0

    iput v0, p0, Landroid/content/res/HwResourcesImpl;->mConfigHwt:I

    .line 1324
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    invoke-interface {v0, v1}, Landroid/content/res/IHwConfiguration;->getConfigItem(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/content/res/HwResourcesImpl;->mThemeChanged:Z

    .line 1326
    :cond_1
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1309
    const-string v0, "androidhwext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1312
    :cond_0
    iput-object p1, p0, Landroid/content/res/HwResourcesImpl;->mPackageName:Ljava/lang/String;

    .line 1313
    return-void

    .line 1310
    :cond_1
    :goto_0
    return-void
.end method

.method public setResourcesImpl(Landroid/content/res/ResourcesImpl;)V
    .locals 0
    .param p1, "resourcesImpl"    # Landroid/content/res/ResourcesImpl;

    .line 1160
    iput-object p1, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 1161
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;I)V
    .locals 7
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "configChanges"    # I

    .line 1331
    iget-object v0, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IHwConfiguration;

    .line 1332
    .local v0, "configEx":Landroid/content/res/IHwConfiguration;
    iget v1, p0, Landroid/content/res/HwResourcesImpl;->mConfigHwt:I

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/content/res/IHwConfiguration;->getConfigItem(I)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 1333
    invoke-interface {v0, v2}, Landroid/content/res/IHwConfiguration;->getConfigItem(I)I

    move-result v1

    iput v1, p0, Landroid/content/res/HwResourcesImpl;->mConfigHwt:I

    .line 1334
    const-class v1, Landroid/content/res/HwResourcesImpl;

    monitor-enter v1

    .line 1336
    :try_start_0
    iput-boolean v2, p0, Landroid/content/res/HwResourcesImpl;->mThemeChanged:Z

    .line 1337
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1340
    iget-boolean v1, p0, Landroid/content/res/HwResourcesImpl;->mThemeChanged:Z

    invoke-virtual {p0, p2, v1}, Landroid/content/res/HwResourcesImpl;->handleClearCache(IZ)V

    .line 1350
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/content/res/IHwConfiguration;->getConfigItem(I)I

    move-result v2

    .line 1351
    .local v2, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/themes/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1353
    .local v3, "path":Ljava/lang/String;
    const-class v4, Landroid/content/res/HwResourcesImpl;

    monitor-enter v4

    .line 1354
    :try_start_1
    sget-object v1, Landroid/content/res/HwResourcesImpl;->mThemeAbsoluteDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1355
    invoke-direct {p0, v3, v2}, Landroid/content/res/HwResourcesImpl;->setHwThemeAbsoluteDir(Ljava/lang/String;I)V

    .line 1356
    const-string v1, "HwResourcesImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConfiguration! the new theme absolute directory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/content/res/HwResourcesImpl;->mThemeAbsoluteDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.deep.theme_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDarkThemeType:Ljava/lang/String;

    .line 1360
    invoke-direct {p0}, Landroid/content/res/HwResourcesImpl;->getThemeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/HwResourcesImpl;->mDeepThemeType:Ljava/lang/String;

    .end local v2    # "userId":I
    .end local v3    # "path":Ljava/lang/String;
    goto :goto_0

    .line 1358
    .restart local v2    # "userId":I
    .restart local v3    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1337
    .end local v2    # "userId":I
    .end local v3    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1363
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    .line 1364
    const-string v1, "sr"

    iget-object v2, p0, Landroid/content/res/HwResourcesImpl;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Landroid/content/res/HwResources;->setIsSRLocale(Z)V

    .line 1366
    :cond_2
    return-void
.end method
