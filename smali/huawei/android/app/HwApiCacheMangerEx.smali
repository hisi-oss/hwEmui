.class public Lhuawei/android/app/HwApiCacheMangerEx;
.super Ljava/lang/Object;
.source "HwApiCacheMangerEx.java"

# interfaces
.implements Landroid/common/IHwApiCacheManagerEx;


# static fields
.field private static final CACHE_EXPIRED_TIME_NS:J

.field private static final DEBUG_PERF:Z

.field private static final TAG:Ljava/lang/String; = "HwApiCacheMangerEx"

.field private static USE_CACHE:Z

.field private static sInstance:Lhuawei/android/app/HwApiCacheMangerEx;


# instance fields
.field private bCanCache:Z

.field private final mAppInfoLock:Ljava/lang/Object;

.field private mAppInfoTimes:J

.field private mAppInfoUs:J

.field private final mPackageInfoLock:Ljava/lang/Object;

.field private mPackageInfoTimes:J

.field private mPackageInfoUs:J

.field private final mPackageUidLock:Ljava/lang/Object;

.field private mUidTimes:J

.field private mUidUs:J

.field private mVolumeCacheItemCnt:I

.field private final mVolumeLock:Ljava/lang/Object;

.field private sAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sPackageInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sPackageUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sVolumeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private totalTimes:J

.field private totalUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    const-string v0, "persist.sys.freqinfo.cache"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->USE_CACHE:Z

    .line 47
    const-string v0, "persist.sys.freqinfo.debugperf"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    .line 48
    const-string v0, "persist.sys.freqinfo.cachems"

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    sput-wide v0, Lhuawei/android/app/HwApiCacheMangerEx;->CACHE_EXPIRED_TIME_NS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sAppInfoCache:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageInfoCache:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageUidCache:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeCacheItemCnt:I

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->totalUs:J

    .line 55
    iput-wide v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->totalTimes:J

    .line 56
    iput-wide v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mUidUs:J

    .line 57
    iput-wide v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mUidTimes:J

    .line 58
    iput-wide v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoUs:J

    .line 59
    iput-wide v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoTimes:J

    .line 60
    iput-wide v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoUs:J

    .line 61
    iput-wide v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoTimes:J

    .line 62
    iput-boolean v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageUidLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method private cachePackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 432
    if-eqz p1, :cond_0

    .line 433
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 434
    const/16 v1, 0x40

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 435
    const/16 v1, 0x1000

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 438
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwApiCacheMangerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apicache getPackageInfo excption:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 442
    :cond_0
    :goto_0
    nop

    .line 443
    :goto_1
    return-void
.end method

.method private cacheVolumeList(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 420
    const/16 v0, 0x100

    :try_start_0
    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    .line 421
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwApiCacheMangerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apicache getVolumeList excption:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private doStorageVolume([Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 5
    .param p1, "volumes"    # [Landroid/os/storage/StorageVolume;
    .param p2, "key"    # Ljava/lang/String;

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "cantCache":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 345
    const-string v2, "HwApiCacheMangerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apicache path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 348
    goto :goto_1

    .line 340
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 352
    const/4 v0, 0x1

    .line 353
    const-string v1, "HwApiCacheMangerEx"

    const-string v2, "cant apicache now,because volumes is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    if-nez v0, :cond_4

    iget-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 360
    iget v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeCacheItemCnt:I

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    .line 361
    const-string v1, "HwApiCacheMangerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need clear apicache,because volumes changed,oldCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeCacheItemCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 363
    array-length v1, p1

    iput v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeCacheItemCnt:I

    .line 365
    :cond_3
    iget-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_4
    return-void
.end method

.method private doVolumeCacheItem(ZLjava/lang/String;)Z
    .locals 3
    .param p1, "canCache"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "bNeedCache":Z
    if-nez p1, :cond_1

    .line 322
    const-string v1, "HwApiCacheMangerEx"

    const-string v2, "clear apicache now,maybe insert card or remove card or rebooting system_server"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    iget v2, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeCacheItemCnt:I

    if-lez v2, :cond_0

    .line 325
    iget-object v2, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 326
    const/4 v2, 0x0

    iput v2, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeCacheItemCnt:I

    .line 328
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 330
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "curPackageName":Ljava/lang/String;
    iget-boolean v2, p0, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 335
    .end local v1    # "curPackageName":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method public static declared-synchronized getDefault()Lhuawei/android/app/HwApiCacheMangerEx;
    .locals 2

    const-class v0, Lhuawei/android/app/HwApiCacheMangerEx;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lhuawei/android/app/HwApiCacheMangerEx;->sInstance:Lhuawei/android/app/HwApiCacheMangerEx;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lhuawei/android/app/HwApiCacheMangerEx;

    invoke-direct {v1}, Lhuawei/android/app/HwApiCacheMangerEx;-><init>()V

    sput-object v1, Lhuawei/android/app/HwApiCacheMangerEx;->sInstance:Lhuawei/android/app/HwApiCacheMangerEx;

    .line 96
    :cond_0
    sget-object v1, Lhuawei/android/app/HwApiCacheMangerEx;->sInstance:Lhuawei/android/app/HwApiCacheMangerEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getUid(ZLjava/lang/String;I)I
    .locals 5
    .param p1, "bCanCache"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    const/4 v0, -0x2

    .line 304
    .local v0, "uid":I
    const/high16 v1, 0x10000000

    if-nez p1, :cond_0

    .line 305
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 309
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HwApiCacheMangerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apicache getPackageUidAsUser excption:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method


# virtual methods
.method public apiPreCache(Landroid/content/pm/PackageManager;)V
    .locals 12
    .param p1, "app"    # Landroid/content/pm/PackageManager;

    .line 370
    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->USE_CACHE:Z

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    .line 372
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "packageName":Ljava/lang/String;
    sget-boolean v1, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v1, :cond_0

    .line 374
    const-string v1, "HwApiCacheMangerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apicache mCurPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uptimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    const-wide/16 v1, 0x0

    .local v1, "start":J
    const-wide/16 v3, 0x0

    .line 377
    .local v3, "end":J
    const/4 v5, -0x1

    .line 378
    .local v5, "userId":I
    if-eqz v0, :cond_2

    .line 379
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 380
    invoke-direct {p0, v5}, Lhuawei/android/app/HwApiCacheMangerEx;->cacheVolumeList(I)V

    .line 381
    sget-boolean v6, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v6, :cond_1

    .line 382
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 383
    const-string v6, "HwApiCacheMangerEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apicache async read begin packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " userid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    invoke-direct {p0, p1, v0}, Lhuawei/android/app/HwApiCacheMangerEx;->cachePackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 394
    sget-boolean v6, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v6, :cond_2

    .line 395
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 396
    const-string v6, "HwApiCacheMangerEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apicache async read finished packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " userid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " totalus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v3, v1

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "start":J
    .end local v3    # "end":J
    .end local v5    # "userId":I
    :cond_2
    return-void
.end method

.method public disableCache()V
    .locals 3

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    .line 70
    sput-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->USE_CACHE:Z

    .line 71
    iget-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sAppInfoCache:Ljava/util/HashMap;

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 76
    iget-object v2, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 77
    :try_start_1
    iget-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 78
    iput-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageInfoCache:Ljava/util/HashMap;

    .line 79
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 81
    iget-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageUidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_2
    iget-object v2, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageUidCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 83
    iput-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageUidCache:Ljava/util/HashMap;

    .line 84
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    iget-object v2, p0, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_3
    iget-object v0, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 88
    iput-object v1, p0, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;

    .line 89
    monitor-exit v2

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 84
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 79
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 74
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method public getApplicationInfoAsUser(Landroid/content/pm/IPackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 22
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    .line 102
    .local v3, "key":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 103
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    const-wide/16 v5, 0x0

    .local v5, "start":J
    const-wide/16 v7, 0x0

    .line 104
    .local v7, "end":J
    const/4 v0, 0x0

    .line 105
    .local v0, "bNeedCache":Z
    iget-boolean v9, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v9, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 108
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "curPackageName":Ljava/lang/String;
    iget-boolean v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v10, :cond_1

    if-eqz v2, :cond_1

    if-eqz v9, :cond_1

    .line 110
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    .end local v0    # "bNeedCache":Z
    .local v10, "bNeedCache":Z
    :cond_1
    move v10, v0

    :try_start_0
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    const-wide/16 v15, 0x0

    if-eqz v0, :cond_6

    if-eqz v10, :cond_6

    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v11, p4

    :try_start_1
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v12, p3

    :try_start_2
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 115
    iget-object v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :try_start_3
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sAppInfoCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    .line 118
    :cond_2
    if-eqz v4, :cond_4

    .line 119
    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_3

    cmp-long v0, v5, v15

    if-lez v0, :cond_3

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-wide v7, v14

    .line 121
    iget-wide v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoUs:J

    sub-long v20, v7, v5

    const-wide/16 v18, 0x3e8

    div-long v20, v20, v18

    add-long v14, v14, v20

    iput-wide v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoUs:J

    .line 122
    iget-wide v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoTimes:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoTimes:J

    .line 124
    :cond_3
    monitor-exit v13

    return-object v4

    .line 126
    :cond_4
    invoke-interface/range {p1 .. p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v4, v0

    .line 127
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sAppInfoCache:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_5
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 144
    :catch_0
    move-exception v0

    move/from16 v12, p3

    goto :goto_1

    .line 131
    :cond_6
    move/from16 v12, p3

    move/from16 v11, p4

    invoke-interface/range {p1 .. p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 133
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    move-object v4, v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v4, :cond_8

    .line 137
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v0, :cond_7

    if-eqz v10, :cond_7

    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_7

    cmp-long v0, v5, v15

    if-lez v0, :cond_7

    .line 138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    move-wide v7, v13

    .line 139
    iget-wide v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoUs:J

    sub-long v15, v7, v5

    const-wide/16 v18, 0x3e8

    div-long v15, v15, v18

    add-long/2addr v13, v15

    iput-wide v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoUs:J

    .line 140
    iget-wide v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoTimes:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mAppInfoTimes:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 142
    :cond_7
    return-object v4

    .line 146
    :cond_8
    nop

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 144
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v12, p3

    move/from16 v11, p4

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v13

    throw v13
.end method

.method public getPackageInfoAsUser(Landroid/content/pm/IPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 22
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v0

    .line 155
    .local v4, "key":Ljava/lang/StringBuffer;
    const-wide/16 v5, 0x0

    .local v5, "start":J
    const-wide/16 v7, 0x0

    .line 156
    .local v7, "end":J
    const/4 v0, 0x0

    .line 157
    .local v0, "bNeedCache":Z
    iget-boolean v9, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v9, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 160
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "curPackageName":Ljava/lang/String;
    iget-boolean v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v10, :cond_1

    if-eqz v2, :cond_1

    if-eqz v9, :cond_1

    .line 162
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    .end local v0    # "bNeedCache":Z
    .local v10, "bNeedCache":Z
    :cond_1
    move v10, v0

    :try_start_0
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    const-wide/16 v15, 0x0

    if-eqz v0, :cond_6

    if-eqz v10, :cond_6

    .line 166
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v11, p4

    :try_start_1
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v12, p3

    :try_start_2
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 167
    iget-object v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    :try_start_3
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageInfoCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageInfoCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v3, v0

    .line 170
    :cond_2
    if-eqz v3, :cond_4

    .line 171
    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_3

    cmp-long v0, v5, v15

    if-lez v0, :cond_3

    .line 172
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-wide v7, v14

    .line 173
    iget-wide v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoUs:J

    sub-long v20, v7, v5

    const-wide/16 v18, 0x3e8

    div-long v20, v20, v18

    add-long v14, v14, v20

    iput-wide v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoUs:J

    .line 174
    iget-wide v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoTimes:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoTimes:J

    .line 176
    :cond_3
    monitor-exit v13

    return-object v3

    .line 178
    :cond_4
    invoke-interface/range {p1 .. p4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v3, v0

    .line 179
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageInfoCache:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageInfoCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_5
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 193
    :catch_0
    move-exception v0

    move/from16 v12, p3

    goto :goto_1

    .line 183
    :cond_6
    move/from16 v12, p3

    move/from16 v11, p4

    invoke-interface/range {p1 .. p4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 185
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    move-object v3, v0

    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v3, :cond_8

    .line 186
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v0, :cond_7

    if-eqz v10, :cond_7

    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_7

    cmp-long v0, v5, v15

    if-lez v0, :cond_7

    .line 187
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    move-wide v7, v13

    .line 188
    iget-wide v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoUs:J

    sub-long v15, v7, v5

    const-wide/16 v18, 0x3e8

    div-long v15, v15, v18

    add-long/2addr v13, v15

    iput-wide v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoUs:J

    .line 189
    iget-wide v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoTimes:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageInfoTimes:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 191
    :cond_7
    return-object v3

    .line 195
    :cond_8
    nop

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 193
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v12, p3

    move/from16 v11, p4

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v13

    throw v13
.end method

.method public getPackageUidAsUser(Landroid/content/pm/IPackageManager;Ljava/lang/String;II)I
    .locals 22
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "oUid":Ljava/lang/Integer;
    const/4 v4, -0x1

    .line 203
    .local v4, "uid":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v0

    .line 204
    .local v5, "key":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    .local v6, "start":J
    const-wide/16 v8, 0x0

    .line 205
    .local v8, "end":J
    const/4 v0, 0x0

    .line 206
    .local v0, "bNeedCache":Z
    iget-boolean v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v10, :cond_0

    sget-boolean v10, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v10, :cond_0

    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 209
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "curPackageName":Ljava/lang/String;
    iget-boolean v11, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v11, :cond_1

    if-eqz v2, :cond_1

    if-eqz v10, :cond_1

    .line 211
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    .end local v0    # "bNeedCache":Z
    .local v11, "bNeedCache":Z
    :cond_1
    move v11, v0

    :try_start_0
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    const-wide/16 v16, 0x0

    if-eqz v0, :cond_6

    if-eqz v11, :cond_6

    .line 215
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v12, p4

    :try_start_1
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v13, p3

    :try_start_2
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 216
    iget-object v14, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mPackageUidLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :try_start_3
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageUidCache:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 218
    :try_start_4
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageUidCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v21, v11

    goto :goto_2

    .line 219
    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    .line 220
    :try_start_5
    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_3

    cmp-long v0, v6, v16

    if-lez v0, :cond_3

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v8, v15

    .line 222
    move-object/from16 v20, v10

    move/from16 v21, v11

    :try_start_6
    iget-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mUidUs:J

    .end local v10    # "curPackageName":Ljava/lang/String;
    .end local v11    # "bNeedCache":Z
    .local v20, "curPackageName":Ljava/lang/String;
    .local v21, "bNeedCache":Z
    sub-long v15, v8, v6

    const-wide/16 v18, 0x3e8

    div-long v15, v15, v18

    add-long/2addr v10, v15

    iput-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mUidUs:J

    .line 223
    iget-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mUidTimes:J

    const-wide/16 v15, 0x1

    add-long/2addr v10, v15

    iput-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mUidTimes:J

    goto :goto_1

    .line 225
    .end local v20    # "curPackageName":Ljava/lang/String;
    .end local v21    # "bNeedCache":Z
    .restart local v10    # "curPackageName":Ljava/lang/String;
    .restart local v11    # "bNeedCache":Z
    :cond_3
    move-object/from16 v20, v10

    move/from16 v21, v11

    .end local v10    # "curPackageName":Ljava/lang/String;
    .end local v11    # "bNeedCache":Z
    .restart local v20    # "curPackageName":Ljava/lang/String;
    .restart local v21    # "bNeedCache":Z
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v14

    return v0

    .line 227
    .end local v20    # "curPackageName":Ljava/lang/String;
    .end local v21    # "bNeedCache":Z
    .restart local v10    # "curPackageName":Ljava/lang/String;
    .restart local v11    # "bNeedCache":Z
    :cond_4
    move-object/from16 v20, v10

    move/from16 v21, v11

    .end local v10    # "curPackageName":Ljava/lang/String;
    .end local v11    # "bNeedCache":Z
    .restart local v20    # "curPackageName":Ljava/lang/String;
    .restart local v21    # "bNeedCache":Z
    invoke-interface/range {p1 .. p4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    move v4, v0

    .line 228
    if-ltz v4, :cond_5

    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageUidCache:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 229
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sPackageUidCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_5
    monitor-exit v14

    goto :goto_3

    .end local v20    # "curPackageName":Ljava/lang/String;
    .end local v21    # "bNeedCache":Z
    .restart local v10    # "curPackageName":Ljava/lang/String;
    .restart local v11    # "bNeedCache":Z
    :catchall_1
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v21, v11

    .end local v10    # "curPackageName":Ljava/lang/String;
    .end local v11    # "bNeedCache":Z
    .restart local v20    # "curPackageName":Ljava/lang/String;
    .restart local v21    # "bNeedCache":Z
    :goto_2
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 243
    .end local v20    # "curPackageName":Ljava/lang/String;
    .end local v21    # "bNeedCache":Z
    .restart local v10    # "curPackageName":Ljava/lang/String;
    .restart local v11    # "bNeedCache":Z
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v13, p3

    goto :goto_4

    .line 233
    :cond_6
    move/from16 v13, p3

    move/from16 v12, p4

    move-object/from16 v20, v10

    move/from16 v21, v11

    .end local v10    # "curPackageName":Ljava/lang/String;
    .end local v11    # "bNeedCache":Z
    .restart local v20    # "curPackageName":Ljava/lang/String;
    .restart local v21    # "bNeedCache":Z
    invoke-interface/range {p1 .. p4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 235
    .end local v4    # "uid":I
    .local v0, "uid":I
    move v4, v0

    .end local v0    # "uid":I
    .restart local v4    # "uid":I
    :goto_3
    if-ltz v4, :cond_8

    .line 236
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v0, :cond_7

    if-eqz v21, :cond_7

    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_7

    cmp-long v0, v6, v16

    if-lez v0, :cond_7

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-wide v8, v10

    .line 238
    iget-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mUidUs:J

    sub-long v14, v8, v6

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    add-long/2addr v10, v14

    iput-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mUidUs:J

    .line 239
    iget-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mUidTimes:J

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    iput-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mUidTimes:J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 241
    :cond_7
    return v4

    .line 245
    :cond_8
    nop

    .line 246
    const/4 v0, -0x1

    return v0

    .line 243
    :catch_2
    move-exception v0

    goto :goto_5

    .end local v20    # "curPackageName":Ljava/lang/String;
    .end local v21    # "bNeedCache":Z
    .restart local v10    # "curPackageName":Ljava/lang/String;
    .restart local v11    # "bNeedCache":Z
    :catch_3
    move-exception v0

    move/from16 v13, p3

    move/from16 v12, p4

    :goto_4
    move-object/from16 v20, v10

    move/from16 v21, v11

    .line 244
    .end local v10    # "curPackageName":Ljava/lang/String;
    .end local v11    # "bNeedCache":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v20    # "curPackageName":Ljava/lang/String;
    .restart local v21    # "bNeedCache":Z
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v10

    throw v10
.end method

.method public getVolumeList(Landroid/os/storage/IStorageManager;Ljava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 25
    .param p1, "storageManager"    # Landroid/os/storage/IStorageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 251
    move/from16 v4, p4

    const-wide/16 v5, 0x0

    .local v5, "start":J
    const-wide/16 v7, 0x0

    .line 252
    .local v7, "end":J
    const/4 v0, 0x0

    .line 253
    .local v0, "bNeedCache":Z
    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 254
    const-string v10, "HwApiCacheMangerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apicache storageManager is null for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-array v9, v9, [Landroid/os/storage/StorageVolume;

    return-object v9

    .line 257
    :cond_0
    const-string v10, "persist.sys.getvolumelist.cache"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 258
    .local v10, "canCache":Z
    invoke-direct {v1, v10, v3}, Lhuawei/android/app/HwApiCacheMangerEx;->doVolumeCacheItem(ZLjava/lang/String;)Z

    move-result v11

    .line 259
    .end local v0    # "bNeedCache":Z
    .local v11, "bNeedCache":Z
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v0, :cond_1

    if-eqz v11, :cond_1

    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_1

    .line 260
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 262
    :cond_1
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    move/from16 v12, p3

    invoke-direct {v1, v0, v3, v12}, Lhuawei/android/app/HwApiCacheMangerEx;->getUid(ZLjava/lang/String;I)I

    move-result v13

    .line 263
    .local v13, "uid":I
    if-gtz v13, :cond_2

    .line 264
    new-array v0, v9, [Landroid/os/storage/StorageVolume;

    return-object v0

    .line 267
    :cond_2
    const/4 v9, 0x0

    .line 268
    .local v9, "volumes":[Landroid/os/storage/StorageVolume;
    :try_start_0
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    const-wide/16 v16, 0x3e8

    const-wide/16 v18, 0x0

    if-eqz v0, :cond_6

    if-eqz v11, :cond_6

    .line 269
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v20, v0

    .line 270
    .local v20, "key":Ljava/lang/StringBuffer;
    move-object/from16 v14, v20

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v20    # "key":Ljava/lang/StringBuffer;
    .local v14, "key":Ljava/lang/StringBuffer;
    const-string v0, "#"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 271
    iget-object v15, v1, Lhuawei/android/app/HwApiCacheMangerEx;->mVolumeLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 272
    :try_start_1
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v0, :cond_3

    .line 273
    :try_start_2
    iget-object v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->sVolumeCache:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v21, v7

    :try_start_3
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7    # "end":J
    .local v21, "end":J
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v0

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v10    # "canCache":Z
    .end local v11    # "bNeedCache":Z
    .end local v21    # "end":J
    .restart local v7    # "end":J
    .local v23, "canCache":Z
    .local v24, "bNeedCache":Z
    :goto_0
    move-wide/from16 v7, v21

    goto :goto_3

    .end local v23    # "canCache":Z
    .end local v24    # "bNeedCache":Z
    .restart local v10    # "canCache":Z
    .restart local v11    # "bNeedCache":Z
    :catchall_1
    move-exception v0

    move-wide/from16 v21, v7

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v7    # "end":J
    .restart local v21    # "end":J
    goto :goto_3

    .line 274
    .end local v21    # "end":J
    .restart local v7    # "end":J
    :cond_3
    move-wide/from16 v21, v7

    .end local v7    # "end":J
    .restart local v21    # "end":J
    :goto_1
    if-eqz v9, :cond_5

    .line 275
    :try_start_4
    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_4

    cmp-long v0, v5, v18

    if-lez v0, :cond_4

    .line 276
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 277
    .end local v21    # "end":J
    .restart local v7    # "end":J
    move/from16 v23, v10

    move/from16 v24, v11

    :try_start_5
    iget-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->totalUs:J

    .end local v10    # "canCache":Z
    .end local v11    # "bNeedCache":Z
    .restart local v23    # "canCache":Z
    .restart local v24    # "bNeedCache":Z
    sub-long v18, v7, v5

    div-long v18, v18, v16

    add-long v10, v10, v18

    iput-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->totalUs:J

    .line 278
    iget-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->totalTimes:J

    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    iput-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->totalTimes:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 280
    move-wide/from16 v21, v7

    goto :goto_2

    .end local v7    # "end":J
    .end local v23    # "canCache":Z
    .end local v24    # "bNeedCache":Z
    .restart local v10    # "canCache":Z
    .restart local v11    # "bNeedCache":Z
    .restart local v21    # "end":J
    :cond_4
    move/from16 v23, v10

    move/from16 v24, v11

    .end local v10    # "canCache":Z
    .end local v11    # "bNeedCache":Z
    .restart local v23    # "canCache":Z
    .restart local v24    # "bNeedCache":Z
    :goto_2
    :try_start_6
    monitor-exit v15

    return-object v9

    .line 284
    .end local v23    # "canCache":Z
    .end local v24    # "bNeedCache":Z
    .restart local v10    # "canCache":Z
    .restart local v11    # "bNeedCache":Z
    :catchall_2
    move-exception v0

    move/from16 v23, v10

    move/from16 v24, v11

    move-wide/from16 v7, v21

    .end local v10    # "canCache":Z
    .end local v11    # "bNeedCache":Z
    .restart local v23    # "canCache":Z
    .restart local v24    # "bNeedCache":Z
    goto :goto_3

    .line 282
    .end local v23    # "canCache":Z
    .end local v24    # "bNeedCache":Z
    .restart local v10    # "canCache":Z
    .restart local v11    # "bNeedCache":Z
    :cond_5
    move/from16 v23, v10

    move/from16 v24, v11

    .end local v10    # "canCache":Z
    .end local v11    # "bNeedCache":Z
    .restart local v23    # "canCache":Z
    .restart local v24    # "bNeedCache":Z
    invoke-interface {v2, v13, v3, v4}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    move-object v9, v0

    .line 283
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lhuawei/android/app/HwApiCacheMangerEx;->doStorageVolume([Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 284
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 285
    .end local v14    # "key":Ljava/lang/StringBuffer;
    goto :goto_4

    .line 284
    .restart local v14    # "key":Ljava/lang/StringBuffer;
    :catchall_3
    move-exception v0

    goto :goto_0

    .end local v21    # "end":J
    .end local v23    # "canCache":Z
    .end local v24    # "bNeedCache":Z
    .restart local v7    # "end":J
    .restart local v10    # "canCache":Z
    .restart local v11    # "bNeedCache":Z
    :catchall_4
    move-exception v0

    move-wide/from16 v21, v7

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v10    # "canCache":Z
    .end local v11    # "bNeedCache":Z
    .restart local v23    # "canCache":Z
    .restart local v24    # "bNeedCache":Z
    :goto_3
    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    throw v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_5
    move-exception v0

    goto :goto_3

    .line 286
    .end local v14    # "key":Ljava/lang/StringBuffer;
    .end local v23    # "canCache":Z
    .end local v24    # "bNeedCache":Z
    .restart local v10    # "canCache":Z
    .restart local v11    # "bNeedCache":Z
    :cond_6
    move-wide/from16 v21, v7

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v7    # "end":J
    .end local v10    # "canCache":Z
    .end local v11    # "bNeedCache":Z
    .restart local v21    # "end":J
    .restart local v23    # "canCache":Z
    .restart local v24    # "bNeedCache":Z
    :try_start_9
    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v0, :cond_7

    .line 287
    const-string v0, "HwApiCacheMangerEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get volume without apicache for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_7
    invoke-interface {v2, v13, v3, v4}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    move-object v9, v0

    .line 291
    :goto_4
    iget-boolean v0, v1, Lhuawei/android/app/HwApiCacheMangerEx;->bCanCache:Z

    if-eqz v0, :cond_8

    if-eqz v24, :cond_8

    sget-boolean v0, Lhuawei/android/app/HwApiCacheMangerEx;->DEBUG_PERF:Z

    if-eqz v0, :cond_8

    cmp-long v0, v5, v18

    if-lez v0, :cond_8

    .line 292
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 293
    .end local v21    # "end":J
    .restart local v7    # "end":J
    :try_start_a
    iget-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->totalUs:J

    sub-long v14, v7, v5

    div-long v14, v14, v16

    add-long/2addr v10, v14

    iput-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->totalUs:J

    .line 294
    iget-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->totalTimes:J

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    iput-wide v10, v1, Lhuawei/android/app/HwApiCacheMangerEx;->totalTimes:J
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 296
    move-wide/from16 v21, v7

    goto :goto_5

    .line 297
    .end local v9    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    move-wide/from16 v21, v7

    goto :goto_6

    .line 296
    .end local v7    # "end":J
    .restart local v9    # "volumes":[Landroid/os/storage/StorageVolume;
    .restart local v21    # "end":J
    :cond_8
    :goto_5
    return-object v9

    .line 297
    .end local v9    # "volumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v21    # "end":J
    .end local v23    # "canCache":Z
    .end local v24    # "bNeedCache":Z
    .restart local v7    # "end":J
    .restart local v10    # "canCache":Z
    .restart local v11    # "bNeedCache":Z
    :catch_2
    move-exception v0

    move-wide/from16 v21, v7

    move/from16 v23, v10

    move/from16 v24, v11

    .line 298
    .end local v7    # "end":J
    .end local v10    # "canCache":Z
    .end local v11    # "bNeedCache":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v21    # "end":J
    .restart local v23    # "canCache":Z
    .restart local v24    # "bNeedCache":Z
    :goto_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method

.method public notifyVolumeStateChanged(II)V
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 403
    const-string v0, "HwApiCacheMangerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify for apicache oldState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    const-string v0, "persist.sys.getvolumelist.cache"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 408
    :cond_1
    :goto_0
    const-string v0, "persist.sys.getvolumelist.cache"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_1
    return-void
.end method
