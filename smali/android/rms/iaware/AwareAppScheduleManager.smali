.class public Landroid/rms/iaware/AwareAppScheduleManager;
.super Ljava/lang/Object;
.source "AwareAppScheduleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;,
        Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;
    }
.end annotation


# static fields
.field private static final APP_VERSION:Ljava/lang/String; = "AppVersion"

.field private static final APP_WECHAT_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static final ART64_PATH:Ljava/lang/String; = "/oat/arm64/base.art"

.field private static final ART_PATH:Ljava/lang/String; = "/oat/arm/base.art"

.field private static final BASE_APK:Ljava/lang/String; = "/base.apk"

.field private static final DATA_APP:Ljava/lang/String; = "/data/app/"

.field private static final FILE_NAME_DECODEBITMAP:Ljava/lang/String; = "hw_cached_resid.list"

.field private static final FINISH_HANDLER_DELAY_TIME:I = 0x4e20

.field private static final FINISH_LEARNED_DELAY_TIME:I = 0x1388

.field private static final FRAMEWORK_RES_RESOURCE:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final LEARNING_DATA:Ljava/lang/String; = "aware_learning_data"

.field private static final LENGTH_POLICY:I = 0x8

.field private static final LOAD_URL:Ljava/lang/String; = "feature_1"

.field private static final MAX_CACHED_SIZE:I = 0x100

.field private static final MAX_RESID_COUNT:I = 0x14

.field private static final MSG_FINISH_HANDLER:I = 0x3

.field private static final MSG_FINISH_LEARNED:I = 0x2

.field private static final MSG_READ_FROM_DISK:I = 0x1

.field private static final MSG_UPDATE_WEB_VIEW_LEARNED:I = 0x4

.field private static final OPT_VALID_TIME:J = 0x1d4c0L

.field private static final PRIMARY_PROF:Ljava/lang/String; = "primary.prof"

.field private static final SPLIT_NAME:Ljava/lang/String; = "/"

.field private static final STATUS_FINISH_HANDLER:I = 0x3

.field private static final STATUS_FINISH_LEARN:I = 0x2

.field private static final STATUS_INIT:I = 0x0

.field private static final STATUS_INIT_SUCCESS:I = 0x1

.field private static final SYSTEM_VERSION:Ljava/lang/String; = "SystemVersion"

.field private static final TAG:Ljava/lang/String; = "AwareAppScheduleManager"

.field private static final TEMP_ART64_PATH:Ljava/lang/String; = "/oat/arm64/temp.art"

.field private static final TEMP_ART_PATH:Ljava/lang/String; = "/oat/arm/temp.art"

.field private static final TEMP_ODEX64_PATH:Ljava/lang/String; = "/oat/arm64/temp.odex"

.field private static final TEMP_ODEX_PATH:Ljava/lang/String; = "/oat/arm/temp.odex"

.field private static final TRY_MAX_TIMES:I = 0x19

.field private static final UPDATE_LEARNED_DELAY_TIME:I = 0x3a98

.field private static final VDEX64_PATH:Ljava/lang/String; = "/oat/arm64/base.vdex"

.field private static final VDEX_PATH:Ljava/lang/String; = "/oat/arm/base.vdex"

.field private static sInstance:Landroid/rms/iaware/AwareAppScheduleManager;


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mAppVersionCode:I

.field private mCacheDir:Ljava/io/File;

.field private mCacheDrawableResIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDecodeBitmapFileLock:Ljava/lang/Object;

.field private mDecodeTime:I

.field private mDisableGlInit:Z

.field private mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDrawableCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHadInitWebView:Z

.field private mHadLoadUrl:Z

.field private volatile mHandler:Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasNewResId:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLearningDataLock:Ljava/lang/Object;

.field private mLoadDrawableResId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mPreloadWebViewSwitch:Z

.field private mResultShouldReplaced:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartTime:J

.field private mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSystemVersion:Ljava/lang/String;

.field private mWechatScanActivity:Ljava/lang/String;

.field private mWechatScanOpt:Z

.field private mWillLoadUrl:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWechatScanOpt:Z

    .line 60
    iput v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppVersionCode:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mSystemVersion:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHasNewResId:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLoadDrawableResId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mResultShouldReplaced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandler:Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    const v0, 0x989680

    iput v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeTime:I

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    .line 110
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStartTime:J

    .line 112
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPreloadWebViewSwitch:Z

    .line 114
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadInitWebView:Z

    .line 115
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadLoadUrl:Z

    .line 117
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWillLoadUrl:Z

    .line 119
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDisableGlInit:Z

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLearningDataLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCaches:Landroid/util/SparseArray;

    .line 137
    return-void
.end method

.method private IsValidTimeScope(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "appPath"    # Ljava/lang/String;
    .param p3, "cmpPath"    # Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v0, "cmpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 160
    .local v3, "apkTime":J
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 161
    .local v5, "cmpTime":J
    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    sub-long v7, v5, v3

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    .line 163
    .local v7, "duration":J
    :goto_0
    const-wide/32 v9, 0x1d4c0

    cmp-long v1, v7, v9

    if-gtz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    .line 165
    .end local v3    # "apkTime":J
    .end local v5    # "cmpTime":J
    .end local v7    # "duration":J
    :cond_2
    return v2
.end method

.method static synthetic access$000(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;

    .line 46
    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->hasArt(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;

    .line 46
    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->hasValidProfile(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/rms/iaware/AwareAppScheduleManager;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Ljava/io/File;

    .line 46
    iput-object p1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDir:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/rms/iaware/AwareAppScheduleManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeTime:I

    return p1
.end method

.method static synthetic access$1502(Landroid/rms/iaware/AwareAppScheduleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWechatScanOpt:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/rms/iaware/AwareAppScheduleManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPreloadWebViewSwitch:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/rms/iaware/AwareAppScheduleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPreloadWebViewSwitch:Z

    return p1
.end method

.method static synthetic access$1702(Landroid/rms/iaware/AwareAppScheduleManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mSystemVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .line 46
    iput-object p1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandler:Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    .line 46
    iput-object p1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandler:Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    return-object p1
.end method

.method static synthetic access$200(Landroid/rms/iaware/AwareAppScheduleManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->readFromDisk()V

    return-void
.end method

.method static synthetic access$2000(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;

    .line 46
    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->compileArt(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method static synthetic access$300(Landroid/rms/iaware/AwareAppScheduleManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->handleReadWebViewLearning()V

    return-void
.end method

.method static synthetic access$400(Landroid/rms/iaware/AwareAppScheduleManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->finishLearn()V

    return-void
.end method

.method static synthetic access$500(Landroid/rms/iaware/AwareAppScheduleManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->handleUpdateWebViewLearning()V

    return-void
.end method

.method static synthetic access$600(Landroid/rms/iaware/AwareAppScheduleManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->finishHandler()V

    return-void
.end method

.method static synthetic access$700(Landroid/rms/iaware/AwareAppScheduleManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-wide v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$802(Landroid/rms/iaware/AwareAppScheduleManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWechatScanActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppScheduleManager;

    .line 46
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private checkCookie(IILandroid/content/res/AssetManager;)Z
    .locals 5
    .param p1, "resId"    # I
    .param p2, "cookie"    # I
    .param p3, "asset"    # Landroid/content/res/AssetManager;

    .line 316
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v1

    array-length v1, v1

    if-ge v1, p2, :cond_0

    goto :goto_1

    .line 319
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "cookieName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 321
    return v0

    .line 323
    :cond_1
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 326
    :cond_2
    const-string v2, "AwareAppScheduleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache drawable cookieName is not main package, resId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cookieName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return v0

    .line 324
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 317
    .end local v1    # "cookieName":Ljava/lang/String;
    :cond_4
    :goto_1
    return v0
.end method

.method private checkNewWebViewSafe()Z
    .locals 4

    .line 742
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    nop

    .line 750
    const-string v1, "AwareAppScheduleManager"

    const-string v2, "webViewOpt, set success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return v0

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "AwareAppScheduleManager"

    const-string v3, "webViewOpt, not safe "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return v0

    .line 743
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "AwareAppScheduleManager"

    const-string v2, "webViewOpt, now safe "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v1, 0x1

    return v1
.end method

.method private compileArt(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 196
    const-string v0, "persist.sys.aware.compile.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 197
    .local v0, "compile_art_feature":Z
    if-nez v0, :cond_0

    .line 198
    const-string v1, "AwareAppScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " compile feature is closed. setprop persist.sys.aware.compile.enable true or false."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->needNotCompile(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    const-string v1, "AwareAppScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", source dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 206
    :cond_1
    new-instance v1, Landroid/rms/iaware/AwareAppScheduleManager$1;

    const-string v2, "queued-work-looper-fast-compile"

    invoke-direct {v1, p0, v2, p1}, Landroid/rms/iaware/AwareAppScheduleManager$1;-><init>(Landroid/rms/iaware/AwareAppScheduleManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 237
    invoke-virtual {v1}, Landroid/rms/iaware/AwareAppScheduleManager$1;->start()V

    .line 238
    return-void
.end method

.method private deleteFile(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "filename"    # Ljava/lang/String;

    .line 521
    monitor-enter p1

    .line 522
    :try_start_0
    new-instance v0, Landroid/rms/iaware/AtomicFileUtils;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/rms/iaware/AtomicFileUtils;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/rms/iaware/AtomicFileUtils;->deleteFile()V

    .line 523
    monitor-exit p1

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private finishHandler()V
    .locals 2

    .line 555
    const-string v0, "AwareAppScheduleManager"

    const-string v1, "finishHandler"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandler:Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    .line 558
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->writeDrawable()V

    .line 559
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 561
    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCaches:Landroid/util/SparseArray;

    monitor-enter v0

    .line 564
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCaches:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 565
    monitor-exit v0

    .line 566
    return-void

    .line 565
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private finishLearn()V
    .locals 2

    .line 568
    const-string v0, "AwareAppScheduleManager"

    const-string v1, "finishLearn"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 570
    return-void
.end method

.method private generateDrawable()V
    .locals 9

    .line 438
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v1, "hw_cached_resid.list"

    const/16 v2, 0x100

    invoke-direct {p0, v0, v1, v2}, Landroid/rms/iaware/AwareAppScheduleManager;->readFromFile(Ljava/lang/Object;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 442
    .local v0, "resIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "AwareAppScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read cache resid from disk, packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 444
    .local v1, "size":I
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 445
    if-eqz v1, :cond_1

    const-string v2, "AwareAppScheduleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read cached resid size not right , its:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_1
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mResultShouldReplaced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 447
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v3, "hw_cached_resid.list"

    invoke-direct {p0, v2, v3}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    return-void

    .line 452
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 453
    .local v4, "systemVersion":Ljava/lang/String;
    iget-object v5, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mSystemVersion:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 454
    const-string v2, "AwareAppScheduleManager"

    const-string v5, "system version has changed"

    invoke-static {v2, v5}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mResultShouldReplaced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 456
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v5, "hw_cached_resid.list"

    invoke-direct {p0, v2, v5}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    return-void

    .line 459
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 461
    .local v5, "versioncode":I
    iget v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppVersionCode:I

    if-eq v5, v6, :cond_4

    .line 462
    const-string v2, "AwareAppScheduleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " version has changed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mResultShouldReplaced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 464
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v6, "hw_cached_resid.list"

    invoke-direct {p0, v2, v6}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 465
    return-void

    .line 472
    .end local v4    # "systemVersion":Ljava/lang/String;
    .end local v5    # "versioncode":I
    :cond_4
    nop

    .line 473
    const/4 v3, 0x0

    .line 474
    .local v3, "resId":I
    const/16 v4, 0x16

    if-le v1, v4, :cond_5

    goto :goto_0

    :cond_5
    move v4, v1

    :goto_0
    move v1, v4

    .line 475
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_8

    .line 477
    :try_start_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 478
    iget-object v5, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 479
    :try_start_2
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 480
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_6
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 483
    :try_start_3
    iget-object v5, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLoadDrawableResId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 484
    iget-object v5, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 485
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLoadDrawableResId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 486
    if-eqz v5, :cond_7

    .line 487
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCaches:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 488
    :try_start_4
    iget-object v7, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCaches:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 503
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_2
    goto :goto_3

    .line 482
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 499
    :catch_0
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "AwareAppScheduleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create drawable failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v5, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v6, "hw_cached_resid.list"

    invoke-direct {p0, v5, v6}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    return-void

    .line 495
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 496
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "AwareAppScheduleManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create drawable not found error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v7, "hw_cached_resid.list"

    invoke-direct {p0, v6, v7}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    goto :goto_3

    .line 491
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v5

    .line 492
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "AwareAppScheduleManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create drawable parse resId error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v7, "hw_cached_resid.list"

    invoke-direct {p0, v6, v7}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    nop

    .line 475
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 506
    .end local v4    # "i":I
    :cond_8
    return-void

    .line 467
    .end local v3    # "resId":I
    :catch_3
    move-exception v2

    .line 468
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "AwareAppScheduleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " versioncode parse error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v4, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mResultShouldReplaced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 470
    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v4, "hw_cached_resid.list"

    invoke-direct {p0, v3, v4}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/iaware/AwareAppScheduleManager;
    .locals 2

    const-class v0, Landroid/rms/iaware/AwareAppScheduleManager;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Landroid/rms/iaware/AwareAppScheduleManager;->sInstance:Landroid/rms/iaware/AwareAppScheduleManager;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-direct {v1}, Landroid/rms/iaware/AwareAppScheduleManager;-><init>()V

    sput-object v1, Landroid/rms/iaware/AwareAppScheduleManager;->sInstance:Landroid/rms/iaware/AwareAppScheduleManager;

    .line 131
    :cond_0
    sget-object v1, Landroid/rms/iaware/AwareAppScheduleManager;->sInstance:Landroid/rms/iaware/AwareAppScheduleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleReadWebViewLearning()V
    .locals 3

    .line 719
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPreloadWebViewSwitch:Z

    if-nez v0, :cond_0

    .line 720
    return-void

    .line 722
    :cond_0
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->readLearningFile()Lorg/json/JSONObject;

    move-result-object v0

    .line 723
    .local v0, "learningData":Lorg/json/JSONObject;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 727
    :cond_1
    const-string v1, "SystemVersion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mSystemVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AppVersion"

    const/4 v2, -0x1

    .line 728
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppVersionCode:I

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 734
    :cond_2
    const-string v1, "feature_1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWillLoadUrl:Z

    .line 735
    iget-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWillLoadUrl:Z

    if-eqz v1, :cond_3

    .line 736
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->postNewWebViewToUi()V

    .line 738
    :cond_3
    return-void

    .line 729
    :cond_4
    :goto_0
    const-string v1, "AwareAppScheduleManager"

    const-string v2, "webViewOpt, system or app version update, clearData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLearningDataLock:Ljava/lang/Object;

    const-string v2, "aware_learning_data"

    invoke-direct {p0, v1, v2}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    return-void

    .line 724
    :cond_5
    :goto_1
    return-void
.end method

.method private handleUpdateWebViewLearning()V
    .locals 5

    .line 694
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPreloadWebViewSwitch:Z

    if-nez v0, :cond_0

    .line 695
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 698
    return-void

    .line 700
    :cond_1
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadLoadUrl:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWillLoadUrl:Z

    if-nez v0, :cond_3

    .line 701
    const-string v0, "AwareAppScheduleManager"

    const-string v1, "webViewOpt, app loadUrl, save data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :try_start_0
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->readLearningFile()Lorg/json/JSONObject;

    move-result-object v0

    .line 704
    .local v0, "learningData":Lorg/json/JSONObject;
    if-nez v0, :cond_2

    .line 705
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 707
    :cond_2
    const-string v1, "SystemVersion"

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mSystemVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    const-string v1, "AppVersion"

    iget v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppVersionCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 709
    const-string v1, "feature_1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 710
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLearningDataLock:Ljava/lang/Object;

    const-string v2, "aware_learning_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3}, Landroid/rms/iaware/AwareAppScheduleManager;->writeToFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v0    # "learningData":Lorg/json/JSONObject;
    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AwareAppScheduleManager"

    const-string v2, "webViewOpt, JSONException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_0
    return-void
.end method

.method private hasArt(Landroid/content/pm/ApplicationInfo;)Z
    .locals 9
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 144
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "appPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/oat/arm/base.art"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v1, "artFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/oat/arm64/base.art"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v3, "art64File":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/oat/arm/temp.art"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v4, "artTempFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "/oat/arm64/temp.art"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v5, "art64TempFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "/oat/arm/temp.odex"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v6, "odexTempFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "/oat/arm64/temp.odex"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v7, "odex64TempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 153
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 151
    :goto_1
    return v2
.end method

.method private hasBaseApk(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 140
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v1, "/base.apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private hasValidProfile(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, "profileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "primary.prof"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .local v1, "profileFile":Ljava/io/File;
    const-string v2, "AwareAppScheduleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private hasValidVdex(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 169
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "appPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/base.apk"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v1, "apkFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 172
    .local v3, "need_compile":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    const-string v4, "/oat/arm/base.vdex"

    invoke-direct {p0, v1, v0, v4}, Landroid/rms/iaware/AwareAppScheduleManager;->IsValidTimeScope(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "/oat/arm64/base.vdex"

    .line 174
    invoke-direct {p0, v1, v0, v4}, Landroid/rms/iaware/AwareAppScheduleManager;->IsValidTimeScope(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 176
    :cond_2
    return v3
.end method

.method private initWebView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 796
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 797
    return-void

    .line 801
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 802
    .local v0, "temp":Landroid/webkit/WebView;
    const-string v1, ""

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method private isDataApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 187
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isSystemUnRemovablePkg(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 276
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->hwFlags:I

    const/high16 v2, 0x6000000

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$postNewWebViewToUi$1(Landroid/rms/iaware/AwareAppScheduleManager;)Z
    .locals 4

    .line 784
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadInitWebView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->checkNewWebViewSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDisableGlInit:Z

    .line 786
    const-string v0, "AwareAppScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webViewOpt, webView init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/rms/iaware/AwareAppScheduleManager;->initWebView(Landroid/content/Context;)V

    .line 788
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDisableGlInit:Z

    .line 790
    :cond_0
    return v1
.end method

.method public static synthetic lambda$reportWebViewInit$0(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 673
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadLoadUrl:Z

    if-nez v0, :cond_0

    .line 674
    const-string v0, "AwareAppScheduleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webViewOpt, openGL init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->initWebView(Landroid/content/Context;)V

    .line 677
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private needNotCompile(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 191
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->isDataApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->hasBaseApk(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->hasArt(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->hasValidVdex(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 191
    :goto_1
    return v0
.end method

.method private postNewWebViewToUi()V
    .locals 3

    .line 769
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 770
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 774
    .local v0, "mainLooper":Landroid/os/Looper;
    if-nez v0, :cond_1

    .line 775
    return-void

    .line 778
    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    .line 779
    .local v1, "mainQueue":Landroid/os/MessageQueue;
    if-nez v1, :cond_2

    .line 780
    return-void

    .line 782
    :cond_2
    new-instance v2, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$TKAQZenujDzuEaxFjlKyhFel3Ns;

    invoke-direct {v2, p0}, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$TKAQZenujDzuEaxFjlKyhFel3Ns;-><init>(Landroid/rms/iaware/AwareAppScheduleManager;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 793
    return-void
.end method

.method private readFromDisk()V
    .locals 0

    .line 431
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppScheduleManager;->generateDrawable()V

    .line 432
    return-void
.end method

.method private readFromFile(Ljava/lang/Object;Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "maxsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    monitor-enter p1

    .line 511
    :try_start_0
    new-instance v0, Landroid/rms/iaware/AtomicFileUtils;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/rms/iaware/AtomicFileUtils;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p3}, Landroid/rms/iaware/AtomicFileUtils;->readFileLines(I)Ljava/util/List;

    move-result-object v0

    .line 512
    .local v0, "resIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit p1

    .line 513
    return-object v0

    .line 512
    .end local v0    # "resIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readLearningFile()Lorg/json/JSONObject;
    .locals 4

    .line 755
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLearningDataLock:Ljava/lang/Object;

    const-string v1, "aware_learning_data"

    const/16 v2, 0x100

    invoke-direct {p0, v0, v1, v2}, Landroid/rms/iaware/AwareAppScheduleManager;->readFromFile(Ljava/lang/Object;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 756
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 757
    return-object v2

    .line 761
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 762
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Lorg/json/JSONException;
    return-object v2
.end method

.method private writeDrawable()V
    .locals 7

    .line 396
    const-string v0, "AwareAppScheduleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin write cache data to disk, packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 399
    .local v1, "notHitCount":I
    const/4 v2, 0x0

    .line 400
    .local v2, "size":I
    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    monitor-enter v3

    .line 401
    :try_start_0
    iget-object v4, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    move v2, v4

    .line 402
    const/4 v4, 0x1

    if-lt v2, v4, :cond_5

    const/16 v4, 0x14

    if-le v2, v4, :cond_0

    goto/16 :goto_2

    .line 405
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    .line 406
    iget-object v4, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mSystemVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v4, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppVersionCode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    iget-object v4, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 410
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 411
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 414
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 416
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :goto_1
    goto :goto_0

    .line 417
    :cond_2
    const-string v4, "AwareAppScheduleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write cache resid to disk, packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-ne v1, v2, :cond_3

    .line 420
    const-string v3, "AwareAppScheduleManager"

    const-string v4, "hit rate is 0, clear learn result before and do not need to write"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v4, "hw_cached_resid.list"

    invoke-direct {p0, v3, v4}, Landroid/rms/iaware/AwareAppScheduleManager;->deleteFile(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    return-void

    .line 424
    :cond_3
    if-nez v1, :cond_4

    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHasNewResId:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    .line 425
    const-string v3, "AwareAppScheduleManager"

    const-string v4, "the learn result does not change, do not need to write"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void

    .line 428
    :cond_4
    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeBitmapFileLock:Ljava/lang/Object;

    const-string v4, "hw_cached_resid.list"

    invoke-direct {p0, v3, v4, v0}, Landroid/rms/iaware/AwareAppScheduleManager;->writeToFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 429
    return-void

    .line 403
    :cond_5
    :goto_2
    :try_start_1
    monitor-exit v3

    return-void

    .line 418
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private writeToFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .line 516
    monitor-enter p1

    .line 517
    :try_start_0
    new-instance v0, Landroid/rms/iaware/AtomicFileUtils;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/rms/iaware/AtomicFileUtils;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p3}, Landroid/rms/iaware/AtomicFileUtils;->writeFileLine(Ljava/lang/StringBuilder;)V

    .line 518
    monitor-exit p1

    .line 519
    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCacheDrawableFromAware(ILandroid/content/res/Resources;ILandroid/content/res/AssetManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "resId"    # I
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "cookie"    # I
    .param p4, "asset"    # Landroid/content/res/AssetManager;

    .line 281
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mResultShouldReplaced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 287
    :cond_1
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    goto/16 :goto_1

    .line 290
    :cond_2
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLoadDrawableResId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 291
    return-object v1

    .line 293
    :cond_3
    const/4 v0, 0x0

    .line 294
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCaches:Landroid/util/SparseArray;

    monitor-enter v2

    .line 295
    :try_start_0
    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCaches:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    move-object v0, v3

    .line 296
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    if-eqz v0, :cond_7

    .line 298
    instance-of v2, p2, Landroid/content/res/HwResources;

    if-nez v2, :cond_4

    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 299
    const-string v2, "AwareAppScheduleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get cache drawable wrapper is not HwResources, resId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-object v1

    .line 302
    :cond_4
    invoke-direct {p0, p1, p3, p4}, Landroid/rms/iaware/AwareAppScheduleManager;->checkCookie(IILandroid/content/res/AssetManager;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 303
    return-object v1

    .line 305
    :cond_5
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    monitor-enter v1

    .line 306
    :try_start_1
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 307
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    const-string v1, "AwareAppScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cache drawable from aware success resId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packagename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 312
    :cond_7
    :goto_0
    return-object v0

    .line 296
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 288
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_1
    return-object v1

    .line 285
    :cond_9
    :goto_2
    return-object v1

    .line 282
    :cond_a
    :goto_3
    return-object v1
.end method

.method public getWechatScanActivity()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWechatScanActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getWechatScanOpt()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWechatScanOpt:Z

    return v0
.end method

.method public hitDrawableCache(I)V
    .locals 4
    .param p1, "resId"    # I

    .line 367
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    const-string v1, "AwareAppScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cache drawable from cachedDrawable, resid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 377
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_2
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 371
    :cond_3
    :goto_0
    return-void

    .line 368
    :cond_4
    :goto_1
    return-void
.end method

.method public init(Ljava/lang/String;Landroid/app/Application;)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "app"    # Landroid/app/Application;

    .line 241
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 244
    :cond_0
    invoke-virtual {p2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    .line 245
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 246
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 250
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_2

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Landroid/rms/iaware/AwareAppScheduleManager;->isSystemUnRemovablePkg(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 260
    const-string v0, "AwareAppScheduleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not main process, processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .line 263
    :cond_4
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5

    .line 264
    const-string v0, "AwareAppScheduleManager"

    const-string v1, "has enabled"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void

    .line 267
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStartTime:J

    .line 268
    const/16 v0, 0xbd6

    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    new-instance v2, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;

    invoke-direct {v2, p0}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;-><init>(Landroid/rms/iaware/AwareAppScheduleManager;)V

    iget-wide v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStartTime:J

    invoke-static {v0, v1, v2, v3, v4}, Landroid/rms/iaware/IAwareSdk;->asyncReportDataWithCallback(ILjava/lang/String;Landroid/os/IBinder;J)V

    .line 269
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mAppVersionCode:I

    .line 271
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPid:I

    .line 273
    return-void

    .line 251
    :cond_6
    :goto_0
    const-string v0, "AwareAppScheduleManager"

    const-string v1, "special uid caller"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void

    .line 242
    :cond_7
    :goto_1
    return-void
.end method

.method public postCacheDrawableToAware(ILandroid/content/res/Resources;JILandroid/content/res/AssetManager;)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "time"    # J
    .param p5, "cookie"    # I
    .param p6, "asset"    # Landroid/content/res/AssetManager;

    .line 331
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDrawableCacheFeature:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDecodeTime:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    goto/16 :goto_1

    .line 335
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 339
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPid:I

    if-eq v0, v2, :cond_2

    .line 340
    const-string v0, "AwareAppScheduleManager"

    const-string v1, "postCacheDrawableToAware not UiThread"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void

    .line 344
    :cond_2
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mLoadDrawableResId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 345
    return-void

    .line 347
    :cond_3
    instance-of v0, p2, Landroid/content/res/HwResources;

    if-nez v0, :cond_4

    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 348
    const-string v0, "AwareAppScheduleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post cache drawable wrapper is not HwResources, resId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wrapper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void

    .line 351
    :cond_4
    invoke-direct {p0, p1, p5, p6}, Landroid/rms/iaware/AwareAppScheduleManager;->checkCookie(IILandroid/content/res/AssetManager;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 352
    return-void

    .line 354
    :cond_5
    const-string v0, "AwareAppScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post cache drawable res id to aware, resId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packagename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cost time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 357
    monitor-exit v0

    return-void

    .line 359
    :cond_6
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mCacheDrawableResIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHasNewResId:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    .line 362
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHasNewResId:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 364
    :cond_7
    return-void

    .line 360
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 336
    :cond_8
    :goto_0
    return-void

    .line 332
    :cond_9
    :goto_1
    return-void
.end method

.method public reportLoadUrl()V
    .locals 1

    .line 686
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDisableGlInit:Z

    if-eqz v0, :cond_0

    .line 687
    return-void

    .line 689
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadLoadUrl:Z

    .line 690
    return-void
.end method

.method public reportWebViewInit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 661
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mDisableGlInit:Z

    if-eqz v0, :cond_0

    .line 662
    return-void

    .line 664
    :cond_0
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mPreloadWebViewSwitch:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 665
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadInitWebView:Z

    .line 666
    return-void

    .line 669
    :cond_1
    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadInitWebView:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mWillLoadUrl:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 672
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v2, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$PntR8acH0vxKV0oG8bcjPluhFBY;

    invoke-direct {v2, p0, p1}, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$PntR8acH0vxKV0oG8bcjPluhFBY;-><init>(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 681
    :cond_2
    iput-boolean v1, p0, Landroid/rms/iaware/AwareAppScheduleManager;->mHadInitWebView:Z

    .line 682
    return-void
.end method
