.class public Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;
.super Ljava/lang/Object;
.source "HwGalleryCacheManagerImpl.java"

# interfaces
.implements Landroid/hwgallerycache/HwGalleryCacheManager$IHwGalleryCacheManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;,
        Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;,
        Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static CONFIG_FILEPATH:Ljava/lang/String; = null

.field private static final Debug:Z = true

.field private static SWITCH_FILEPATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HwGalleryCacheManagerImpl"

.field private static final TEXT_NAME:Ljava/lang/String; = "CacheList"

.field private static final TYPE_MICROTHUMBNAIL:I = 0x2

.field private static final TYPE_MICROTHUMBNAIL_SCALE:I = 0x1

.field private static final XML_TAG_APPNAME:Ljava/lang/String; = "packageName"

.field private static final XML_TAG_CONFIG:Ljava/lang/String; = "config"

.field private static final XML_TAG_ITEM:Ljava/lang/String; = "item"

.field private static final XML_TAG_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_TAG_THREADNAME:Ljava/lang/String; = "threadName"

.field private static final XML_TAG_VERSION:Ljava/lang/String; = "supportVersion"

.field private static mDecoderLock:Ljava/lang/Object;


# instance fields
.field private mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

.field private final mCacheLock:Ljava/lang/Object;

.field private mCacheTail:Landroid/graphics/Bitmap$GalleryCacheInfo;

.field private mContext:Landroid/content/Context;

.field private mCurrentPackageName:Ljava/lang/String;

.field private mGalleryLazyWorking:I

.field private mHwGalleryCacheNative:Lhuawei/android/hwgallerycache/HwGalleryCacheNative;

.field private mIsEffect:Z

.field private mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

.field private mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

.field private mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-string v0, "/data/app_acc/app_switch.xml"

    sput-object v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->SWITCH_FILEPATH:Ljava/lang/String;

    .line 79
    const-string v0, "/data/app_acc/app_config.xml"

    sput-object v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->CONFIG_FILEPATH:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mDecoderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mHwGalleryCacheNative:Lhuawei/android/hwgallerycache/HwGalleryCacheNative;

    .line 95
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mIsEffect:Z

    .line 98
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCurrentPackageName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    .line 101
    iput v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mGalleryLazyWorking:I

    .line 103
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheTail:Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 104
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheLock:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    .line 110
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    .line 111
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mPath:Ljava/lang/String;

    .line 129
    const-string v0, "persist.sys.enable_iaware"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 130
    .local v0, "enableiAware":Z
    if-nez v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCurrentPackageName:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    const-string v1, "com.tencent.mm"

    iget-object v2, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-direct {p0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->isSwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->loadConfigFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    new-instance v1, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;

    invoke-direct {v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;-><init>()V

    iput-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mHwGalleryCacheNative:Lhuawei/android/hwgallerycache/HwGalleryCacheNative;

    .line 141
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/kvdb/HwKVDatabase;->getInstance(Landroid/content/Context;)Lcom/huawei/kvdb/HwKVDatabase;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mIsEffect:Z

    .line 146
    :cond_2
    const-string v1, "HwGalleryCacheManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsEffect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mIsEffect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 136
    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap$GalleryCacheInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 74
    invoke-static {p0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->needDecode(Landroid/graphics/Bitmap$GalleryCacheInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 74
    sget-object v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mDecoderLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addCacheToTail(Landroid/graphics/Bitmap$GalleryCacheInfo;)V
    .locals 2
    .param p1, "cache"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 637
    if-nez p1, :cond_0

    .line 638
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheTail:Landroid/graphics/Bitmap$GalleryCacheInfo;

    if-eqz v1, :cond_1

    .line 642
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheTail:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setNext(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 643
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheTail:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setLast(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 645
    :cond_1
    iput-object p1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheTail:Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 646
    monitor-exit v0

    .line 647
    return-void

    .line 646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkAppListFromXml(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 272
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 274
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 275
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 276
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 277
    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "tagName":Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 281
    new-instance v5, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    invoke-direct {v5}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;-><init>()V

    iput-object v5, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    .line 282
    iget-object v5, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    invoke-direct {p0, p1, v5}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->readAppDataFromXml(Lorg/xmlpull/v1/XmlPullParser;Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;)V

    .line 283
    iget-object v5, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    iget-object v5, v5, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mAppName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    iget-object v5, v5, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mSupportVersion:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 284
    iget-object v5, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    iget-object v5, v5, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mAppName:Ljava/lang/String;

    iget-object v6, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 285
    iget-object v5, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    iget-object v5, v5, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mAppName:Ljava/lang/String;

    iget-object v6, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    iget-object v6, v6, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mSupportVersion:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->isWechatVersionSupport(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    return v4

    .line 288
    :cond_3
    return v3

    .line 293
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 294
    :cond_5
    return v3
.end method

.method private decodeInLastThread(Landroid/graphics/Bitmap$GalleryCacheInfo;)V
    .locals 3
    .param p1, "cache"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 687
    invoke-static {p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->needDecode(Landroid/graphics/Bitmap$GalleryCacheInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    return-void

    .line 691
    :cond_0
    sget-object v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mDecoderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    iget-boolean v1, v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mStopped:Z

    if-eqz v1, :cond_2

    .line 693
    :cond_1
    new-instance v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    const-string v2, "LastDecoderThread"

    invoke-direct {v1, v2}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    .line 694
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-virtual {v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->start()V

    .line 697
    :cond_2
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    if-eqz v1, :cond_3

    .line 698
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-static {v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->access$300(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;)V

    .line 699
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mLastThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-static {v1, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->access$400(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 701
    :cond_3
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decodeInNextThread(Landroid/graphics/Bitmap$GalleryCacheInfo;)V
    .locals 3
    .param p1, "cache"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 705
    invoke-static {p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->needDecode(Landroid/graphics/Bitmap$GalleryCacheInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    return-void

    .line 709
    :cond_0
    sget-object v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mDecoderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    iget-boolean v1, v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mStopped:Z

    if-eqz v1, :cond_2

    .line 711
    :cond_1
    new-instance v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    const-string v2, "NextDecoderThread"

    invoke-direct {v1, v2}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    .line 712
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-virtual {v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->start()V

    .line 715
    :cond_2
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    if-eqz v1, :cond_3

    .line 716
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-static {v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->access$300(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;)V

    .line 717
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mNextThread:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-static {v1, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->access$400(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 719
    :cond_3
    monitor-exit v0

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getExifThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .line 480
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 481
    .local v1, "exifInterface":Landroid/media/ExifInterface;
    const/4 v2, 0x0

    .line 482
    .local v2, "thumbData":[B
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v3

    move-object v2, v3

    .line 483
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 484
    if-eqz v2, :cond_2

    .line 485
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 486
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 487
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 489
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v6, 0x100

    if-lt v4, v6, :cond_1

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v4, v6, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 493
    array-length v4, v2

    invoke-static {v2, v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 495
    return-object v4

    .line 490
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 500
    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    .end local v2    # "thumbData":[B
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    goto :goto_1

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "HwGalleryCacheManagerImpl"

    const-string v3, "getExifThumbnail fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getFileID(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mHwGalleryCacheNative:Lhuawei/android/hwgallerycache/HwGalleryCacheNative;

    if-nez v1, :cond_0

    .line 345
    const/4 v1, 0x0

    return-object v1

    .line 347
    :cond_0
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mHwGalleryCacheNative:Lhuawei/android/hwgallerycache/HwGalleryCacheNative;

    invoke-virtual {v1, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;->getFileID(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method private getFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mHwGalleryCacheNative:Lhuawei/android/hwgallerycache/HwGalleryCacheNative;

    if-nez v1, :cond_0

    .line 336
    const/4 v1, 0x0

    return-object v1

    .line 338
    :cond_0
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mHwGalleryCacheNative:Lhuawei/android/hwgallerycache/HwGalleryCacheNative;

    invoke-virtual {v1, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;->getFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    .line 339
    return-object v0
.end method

.method private declared-synchronized getGalleryCachedImageInner(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    monitor-enter p0

    .line 505
    if-eqz p2, :cond_0

    :try_start_0
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v0, :cond_4

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    goto :goto_0

    .line 504
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 506
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 507
    .local v0, "myOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 508
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v0, v2

    .line 509
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 510
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 512
    :cond_1
    invoke-direct {p0, p1, p2}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->getImageCache(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 513
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 516
    const-string v4, "HwGalleryCacheManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thumb from gallery: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    nop

    :cond_2
    invoke-direct {p0, p1, v2, v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->resizeToWechat(Ljava/io/InputStream;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 519
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .local v1, "bm":Landroid/graphics/Bitmap;
    iput-boolean v3, v1, Landroid/graphics/Bitmap;->mGalleryCached:Z

    .line 521
    new-instance v2, Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-direct {v2}, Landroid/graphics/Bitmap$GalleryCacheInfo;-><init>()V

    .line 522
    .local v2, "cache":Landroid/graphics/Bitmap$GalleryCacheInfo;
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 523
    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setPath(Ljava/lang/String;)V

    .line 525
    iput-object v2, v1, Landroid/graphics/Bitmap;->mCacheInfo:Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 526
    invoke-direct {p0, v2}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->addCacheToTail(Landroid/graphics/Bitmap$GalleryCacheInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-object v1

    .line 529
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .local v2, "bm":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->getExifThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 530
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 531
    iput-boolean v3, v1, Landroid/graphics/Bitmap;->mGalleryCached:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    monitor-exit p0

    return-object v1

    .line 536
    .end local v0    # "myOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 504
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;
    throw p1
.end method

.method private getImageCache(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 354
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 355
    .local v2, "rowId":I
    const-wide/16 v3, 0x0

    .line 356
    .local v3, "key":J
    const/4 v5, 0x0

    if-eqz p1, :cond_7

    iget-object v6, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    if-nez v6, :cond_0

    goto :goto_2

    .line 360
    :cond_0
    invoke-direct {p0, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->getFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    goto :goto_1

    .line 366
    :cond_1
    invoke-direct {p0, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->getFileID(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_2

    goto :goto_0

    .line 373
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    .line 377
    nop

    .line 379
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 381
    return-object v5

    .line 383
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 384
    .local v8, "timeModified":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_4

    .line 385
    return-object v5

    .line 387
    :cond_4
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mPath:Ljava/lang/String;

    .line 388
    iget-object v5, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    const/4 v5, 0x2

    invoke-static {v2, v8, v9, v7, v5}, Lcom/huawei/kvdb/HwKVDatabase;->generateKey(IJII)J

    move-result-wide v3

    .line 389
    iget-object v5, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    invoke-virtual {v5, v3, v4, p2}, Lcom/huawei/kvdb/HwKVDatabase;->getBitmap(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 374
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "timeModified":J
    :catch_0
    move-exception v6

    .line 375
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v7, "HwGalleryCacheManagerImpl"

    const-string v8, "NumberFormatException!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-object v5

    .line 368
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_0
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "Can\'t get id from fd!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-object v5

    .line 362
    :cond_6
    :goto_1
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "Can\'t get path from fd!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-object v5

    .line 357
    :cond_7
    :goto_2
    return-object v5
.end method

.method private getImageCache(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "fd":Ljava/io/FileDescriptor;
    instance-of v1, p1, Ljava/io/FilterInputStream;

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Ljava/io/FilterFD;

    move-object v2, p1

    check-cast v2, Ljava/io/FilterInputStream;

    invoke-direct {v1, v2}, Ljava/io/FilterFD;-><init>(Ljava/io/FilterInputStream;)V

    invoke-virtual {v1}, Ljava/io/FilterFD;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 398
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 401
    goto :goto_0

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2

    .line 403
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p2}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->getImageCache(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private isGalleryLazyThread()Z
    .locals 3

    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "currentThreadName":Ljava/lang/String;
    const-string v1, "album-image-gallery-lazy-loader"

    .line 417
    .local v1, "threadName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/4 v2, 0x1

    return v2

    .line 420
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isGalleryThread()Z
    .locals 2

    .line 407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "currentThreadName":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mAppData:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;

    iget-object v1, v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    const/4 v1, 0x1

    return v1

    .line 411
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isNeedRevert(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .line 820
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    .line 823
    :cond_0
    iget-boolean v1, p2, Landroid/graphics/Bitmap;->mGalleryCached:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    iget-object v1, p2, Landroid/graphics/Bitmap;->mCacheInfo:Landroid/graphics/Bitmap$GalleryCacheInfo;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget v1, p1, Landroid/widget/ImageView;->mInBigView:I

    if-ne v3, v1, :cond_1

    goto :goto_2

    .line 827
    :cond_1
    iget v1, p1, Landroid/widget/ImageView;->mInBigView:I

    if-ne v2, v1, :cond_2

    .line 828
    iput v3, p1, Landroid/widget/ImageView;->mInBigView:I

    .line 830
    :cond_2
    iget v1, p1, Landroid/widget/ImageView;->mInBigView:I

    if-gez v1, :cond_4

    .line 831
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "parent":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "com.tencent.mm.plugin.gallery.ui.ImagePreviewUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 833
    iput v3, p1, Landroid/widget/ImageView;->mInBigView:I

    goto :goto_0

    .line 835
    :cond_3
    iput v0, p1, Landroid/widget/ImageView;->mInBigView:I

    .line 837
    .end local v1    # "parent":Ljava/lang/String;
    :goto_0
    goto :goto_1

    :cond_4
    iget v1, p1, Landroid/widget/ImageView;->mInBigView:I

    if-nez v1, :cond_5

    .line 838
    return v0

    .line 840
    :cond_5
    :goto_1
    return v3

    .line 824
    :cond_6
    :goto_2
    iput v2, p1, Landroid/widget/ImageView;->mInBigView:I

    .line 825
    return v0

    .line 821
    :cond_7
    :goto_3
    return v0
.end method

.method private isSwitchEnabled()Z
    .locals 10

    .line 155
    sget-object v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->SWITCH_FILEPATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 156
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 157
    return v2

    .line 159
    :cond_0
    const/4 v1, 0x0

    .line 160
    .local v1, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    move-object v4, v3

    .line 162
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 163
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v4, v5

    .line 164
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 165
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 167
    .local v5, "outerDepth":I
    nop

    .line 168
    .local v3, "tagName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_7

    const/4 v6, 0x3

    if-ne v7, v6, :cond_2

    .line 169
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 170
    :cond_2
    if-eq v7, v6, :cond_1

    const/4 v6, 0x4

    if-ne v7, v6, :cond_3

    .line 171
    goto :goto_0

    .line 173
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 174
    const-string v6, "switch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v8, :cond_5

    .line 176
    nop

    .line 192
    nop

    .line 194
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    const/4 v1, 0x0

    .line 198
    goto :goto_1

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v9, "close file input stream fail!"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_4

    .line 202
    :try_start_2
    move-object v2, v4

    check-cast v2, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v2}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    const/4 v4, 0x0

    .line 206
    goto :goto_2

    .line 204
    :catch_1
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v9, "parser close error"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return v8

    .line 178
    :cond_5
    nop

    .line 192
    nop

    .line 194
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 195
    const/4 v1, 0x0

    .line 198
    goto :goto_3

    .line 196
    :catch_2
    move-exception v6

    .line 197
    .local v6, "ioe":Ljava/io/IOException;
    const-string v8, "HwGalleryCacheManagerImpl"

    const-string v9, "close file input stream fail!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v6    # "ioe":Ljava/io/IOException;
    :goto_3
    if-eqz v4, :cond_6

    .line 202
    :try_start_4
    move-object v6, v4

    check-cast v6, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v6}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 203
    const/4 v4, 0x0

    .line 206
    goto :goto_4

    .line 204
    :catch_3
    move-exception v6

    .line 205
    .local v6, "e":Ljava/lang/Exception;
    const-string v8, "HwGalleryCacheManagerImpl"

    const-string v9, "parser close error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_4
    return v2

    .line 192
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v7    # "type":I
    :cond_7
    nop

    .line 194
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 195
    const/4 v1, 0x0

    .line 198
    goto :goto_5

    .line 196
    :catch_4
    move-exception v3

    .line 197
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "close file input stream fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_5
    if-eqz v4, :cond_8

    .line 202
    :try_start_6
    move-object v3, v4

    check-cast v3, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v3}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 203
    const/4 v4, 0x0

    .line 206
    :goto_6
    goto :goto_7

    .line 204
    :catch_5
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "parser close error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 209
    :cond_8
    :goto_7
    return v2

    .line 192
    :catchall_0
    move-exception v2

    goto/16 :goto_e

    .line 188
    :catch_6
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "switch number format error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 190
    nop

    .line 192
    if-eqz v1, :cond_9

    .line 194
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 195
    const/4 v1, 0x0

    .line 198
    goto :goto_8

    .line 196
    :catch_7
    move-exception v5

    .line 197
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_9
    :goto_8
    if-eqz v4, :cond_a

    .line 202
    :try_start_9
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 203
    const/4 v4, 0x0

    .line 206
    goto :goto_9

    .line 204
    :catch_8
    move-exception v5

    .line 205
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_9
    return v2

    .line 185
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v3

    .line 186
    .local v3, "e":Ljava/io/IOException;
    :try_start_a
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "failed parsing config file IO error "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 187
    nop

    .line 192
    if-eqz v1, :cond_b

    .line 194
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 195
    const/4 v1, 0x0

    .line 198
    goto :goto_a

    .line 196
    :catch_a
    move-exception v5

    .line 197
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_b
    :goto_a
    if-eqz v4, :cond_c

    .line 202
    :try_start_c
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 203
    const/4 v4, 0x0

    .line 206
    goto :goto_b

    .line 204
    :catch_b
    move-exception v5

    .line 205
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_b
    return v2

    .line 182
    .end local v3    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v3

    .line 183
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "failed parsing config file parser error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 184
    nop

    .line 192
    if-eqz v1, :cond_d

    .line 194
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 195
    const/4 v1, 0x0

    .line 198
    goto :goto_c

    .line 196
    :catch_d
    move-exception v5

    .line 197
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_d
    :goto_c
    if-eqz v4, :cond_e

    .line 202
    :try_start_f
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 203
    const/4 v4, 0x0

    .line 206
    goto :goto_d

    .line 204
    :catch_e
    move-exception v5

    .line 205
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_d
    return v2

    .line 192
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_e
    if-eqz v1, :cond_f

    .line 194
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 195
    const/4 v1, 0x0

    .line 198
    goto :goto_f

    .line 196
    :catch_f
    move-exception v3

    .line 197
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "close file input stream fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_f
    :goto_f
    if-eqz v4, :cond_10

    .line 202
    :try_start_11
    move-object v3, v4

    check-cast v3, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v3}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    .line 203
    const/4 v4, 0x0

    .line 206
    goto :goto_10

    .line 204
    :catch_10
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "parser close error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    throw v2
.end method

.method private isWechatVersionSupport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "supportVersion"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "currentVersionCode":I
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 322
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 323
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    move v0, v4

    .line 325
    const-string v4, "HwGalleryCacheManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWechatVersionSupport currentVersionCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    nop

    .line 330
    invoke-static {v0, p2}, Lhuawei/android/hwgallerycache/Utils;->versionInRange(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 327
    :catch_0
    move-exception v3

    .line 328
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method private loadConfigFile()Z
    .locals 10

    .line 213
    sget-object v0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->CONFIG_FILEPATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 215
    return v2

    .line 217
    :cond_0
    const/4 v1, 0x0

    .line 218
    .local v1, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    move-object v4, v3

    .line 220
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 221
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v4, v5

    .line 222
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 223
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 225
    .local v5, "outerDepth":I
    move-object v6, v3

    .line 226
    .local v6, "tagName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_6

    const/4 v7, 0x3

    if-ne v8, v7, :cond_2

    .line 227
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_6

    .line 228
    :cond_2
    if-eq v8, v7, :cond_1

    const/4 v7, 0x4

    if-ne v8, v7, :cond_3

    .line 229
    goto :goto_0

    .line 231
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 232
    const-string v7, "config"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "CacheList"

    const-string v9, "name"

    invoke-interface {v4, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, "appOptimized":Z
    invoke-direct {p0, v4}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->checkAppListFromXml(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    .line 235
    const/4 v3, 0x1

    .line 237
    :cond_4
    nop

    .line 250
    nop

    .line 252
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    const/4 v1, 0x0

    .line 256
    goto :goto_1

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, "ioe":Ljava/io/IOException;
    const-string v7, "HwGalleryCacheManagerImpl"

    const-string v9, "close file input stream fail!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_5

    .line 260
    :try_start_2
    move-object v2, v4

    check-cast v2, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v2}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    const/4 v4, 0x0

    .line 264
    goto :goto_2

    .line 262
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "HwGalleryCacheManagerImpl"

    const-string v9, "parser close error"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return v3

    .line 250
    .end local v3    # "appOptimized":Z
    .end local v5    # "outerDepth":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_6
    nop

    .line 252
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 253
    const/4 v1, 0x0

    .line 256
    goto :goto_3

    .line 254
    :catch_2
    move-exception v3

    .line 255
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "close file input stream fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_3
    if-eqz v4, :cond_7

    .line 260
    :try_start_4
    move-object v3, v4

    check-cast v3, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v3}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 261
    const/4 v4, 0x0

    .line 264
    :goto_4
    goto :goto_5

    .line 262
    :catch_3
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "parser close error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 267
    :cond_7
    :goto_5
    return v2

    .line 250
    :catchall_0
    move-exception v2

    goto/16 :goto_c

    .line 246
    :catch_4
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "config number format error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 248
    nop

    .line 250
    if-eqz v1, :cond_8

    .line 252
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 253
    const/4 v1, 0x0

    .line 256
    goto :goto_6

    .line 254
    :catch_5
    move-exception v5

    .line 255
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    .line 260
    :try_start_7
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 261
    const/4 v4, 0x0

    .line 264
    goto :goto_7

    .line 262
    :catch_6
    move-exception v5

    .line 263
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_7
    return v2

    .line 243
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v3

    .line 244
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "failed parsing config file IO error "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 245
    nop

    .line 250
    if-eqz v1, :cond_a

    .line 252
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 253
    const/4 v1, 0x0

    .line 256
    goto :goto_8

    .line 254
    :catch_8
    move-exception v5

    .line 255
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_a
    :goto_8
    if-eqz v4, :cond_b

    .line 260
    :try_start_a
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 261
    const/4 v4, 0x0

    .line 264
    goto :goto_9

    .line 262
    :catch_9
    move-exception v5

    .line 263
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_9
    return v2

    .line 240
    .end local v3    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v3

    .line 241
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "failed parsing config file parser error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 242
    nop

    .line 250
    if-eqz v1, :cond_c

    .line 252
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 253
    const/4 v1, 0x0

    .line 256
    goto :goto_a

    .line 254
    :catch_b
    move-exception v5

    .line 255
    .local v5, "ioe":Ljava/io/IOException;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "close file input stream fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_c
    :goto_a
    if-eqz v4, :cond_d

    .line 260
    :try_start_d
    move-object v5, v4

    check-cast v5, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 261
    const/4 v4, 0x0

    .line 264
    goto :goto_b

    .line 262
    :catch_c
    move-exception v5

    .line 263
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwGalleryCacheManagerImpl"

    const-string v7, "parser close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_b
    return v2

    .line 250
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_c
    if-eqz v1, :cond_e

    .line 252
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 253
    const/4 v1, 0x0

    .line 256
    goto :goto_d

    .line 254
    :catch_d
    move-exception v3

    .line 255
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "close file input stream fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_e
    :goto_d
    if-eqz v4, :cond_f

    .line 260
    :try_start_f
    move-object v3, v4

    check-cast v3, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v3}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 261
    const/4 v4, 0x0

    .line 264
    goto :goto_e

    .line 262
    :catch_e
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HwGalleryCacheManagerImpl"

    const-string v6, "parser close error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_e
    throw v2
.end method

.method private static needDecode(Landroid/graphics/Bitmap$GalleryCacheInfo;)Z
    .locals 1
    .param p0, "cache"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 676
    if-eqz p0, :cond_1

    .line 677
    invoke-virtual {p0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getIsDecoding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    invoke-virtual {p0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getWechatThumb()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 680
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private readAppDataFromXml(Lorg/xmlpull/v1/XmlPullParser;Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "appdata"    # Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 300
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 301
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6

    .line 302
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 303
    goto :goto_0

    .line 305
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "packageName"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mAppName:Ljava/lang/String;

    goto :goto_1

    .line 308
    :cond_3
    const-string v3, "supportVersion"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mSupportVersion:Ljava/lang/String;

    goto :goto_1

    .line 310
    :cond_4
    const-string v3, "threadName"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 311
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mThreadName:Ljava/lang/String;

    goto :goto_1

    .line 313
    :cond_5
    const-string v3, "HwGalleryCacheManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown  tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v1    # "tag":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 316
    :cond_6
    return-void
.end method

.method private removeCache(Landroid/graphics/Bitmap$GalleryCacheInfo;)V
    .locals 3
    .param p1, "cache"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 650
    if-nez p1, :cond_0

    .line 651
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 656
    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getNext()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setNext(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 659
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getNext()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 660
    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getNext()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setLast(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    goto :goto_0

    .line 662
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mCacheTail:Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 665
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getWechatThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 666
    invoke-virtual {p1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getWechatThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 669
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setNext(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 670
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setLast(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 671
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setWechatThumb(Landroid/graphics/Bitmap;)V

    .line 672
    monitor-exit v0

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resizeToWechat(Ljava/io/InputStream;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "sampleSize"    # I

    move-object/from16 v0, p2

    .line 424
    move/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 425
    .local v2, "srcWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 426
    .local v3, "srcHeight":I
    const/4 v4, -0x1

    .line 427
    .local v4, "dstWidth":I
    const/4 v5, -0x1

    .line 429
    .local v5, "dstHeight":I
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 430
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 431
    const/4 v7, 0x0

    move-object/from16 v8, p1

    invoke-static {v8, v7, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 433
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 434
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 437
    const-string v9, "HwGalleryCacheManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resize Cache("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    if-lez v1, :cond_0

    .line 442
    div-int/2addr v4, v1

    .line 443
    div-int/2addr v5, v1

    .line 446
    :cond_0
    if-lez v4, :cond_4

    if-gtz v5, :cond_1

    goto :goto_2

    .line 450
    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 451
    .local v9, "newBm":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_3

    .line 452
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 453
    .local v10, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 454
    .local v11, "src":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 455
    .local v13, "dst":Landroid/graphics/Rect;
    const/4 v14, 0x0

    .line 457
    .local v14, "diff":I
    if-le v4, v5, :cond_2

    .line 458
    sub-int v15, v4, v5

    div-int/lit8 v15, v15, 0x2

    .line 459
    .end local v14    # "diff":I
    .local v15, "diff":I
    new-instance v14, Landroid/graphics/Rect;

    sub-int v7, v4, v15

    invoke-direct {v14, v15, v12, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v14

    .end local v13    # "dst":Landroid/graphics/Rect;
    .local v7, "dst":Landroid/graphics/Rect;
    :goto_0
    goto :goto_1

    .line 461
    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v15    # "diff":I
    .restart local v13    # "dst":Landroid/graphics/Rect;
    .restart local v14    # "diff":I
    :cond_2
    sub-int v7, v5, v4

    div-int/lit8 v15, v7, 0x2

    .line 462
    .end local v14    # "diff":I
    .restart local v15    # "diff":I
    new-instance v7, Landroid/graphics/Rect;

    sub-int v14, v5, v15

    invoke-direct {v7, v12, v15, v4, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 465
    .end local v13    # "dst":Landroid/graphics/Rect;
    .restart local v7    # "dst":Landroid/graphics/Rect;
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v7, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 466
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 467
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 470
    move-object v0, v9

    .line 472
    .end local p2    # "bm":Landroid/graphics/Bitmap;
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-string v12, "HwGalleryCacheManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resize "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "src":Landroid/graphics/Rect;
    .end local v15    # "diff":I
    :cond_3
    return-object v0

    .line 447
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v9    # "newBm":Landroid/graphics/Bitmap;
    .restart local p2    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getGalleryCachedImage(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 798
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 799
    return-object v0

    .line 801
    :cond_0
    invoke-direct {p0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->isGalleryLazyThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 803
    const/4 v1, 0x6

    iput v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mGalleryLazyWorking:I

    goto :goto_0

    .line 804
    :cond_1
    invoke-direct {p0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->isGalleryThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 805
    iget v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mGalleryLazyWorking:I

    if-lez v1, :cond_2

    .line 806
    iget v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mGalleryLazyWorking:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mGalleryLazyWorking:I

    goto :goto_0

    .line 808
    :cond_2
    invoke-direct {p0, p1, p2}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->getGalleryCachedImageInner(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 812
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getGalleryCachedVideo(IJLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "rowid"    # I
    .param p2, "timeModified"    # J
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 874
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 875
    return-object v1

    .line 878
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_1

    .line 879
    return-object v1

    .line 882
    :cond_1
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-static {p1, p2, p3, v0, v2}, Lcom/huawei/kvdb/HwKVDatabase;->generateKey(IJII)J

    move-result-wide v2

    .line 883
    .local v2, "key":J
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    invoke-virtual {v0, v2, v3}, Lcom/huawei/kvdb/HwKVDatabase;->hasKey(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 884
    const-string v0, "HwGalleryCacheManagerImpl"

    const-string v4, "wechatopti getGalleryCachedVideo no key in kvdb!"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-object v1

    .line 887
    :cond_2
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mKVvDatabase:Lcom/huawei/kvdb/HwKVDatabase;

    invoke-virtual {v0, v2, v3, p4}, Lcom/huawei/kvdb/HwKVDatabase;->getBitmap(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isGalleryCacheEffect()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->mIsEffect:Z

    return v0
.end method

.method public recycleCacheInfo(Landroid/graphics/Bitmap$GalleryCacheInfo;)V
    .locals 0
    .param p1, "cache"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 816
    invoke-direct {p0, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->removeCache(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 817
    return-void
.end method

.method public revertWechatThumb(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .line 844
    invoke-direct {p0, p1, p2}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->isNeedRevert(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    const/4 v0, 0x0

    return v0

    .line 848
    :cond_0
    iget-object v0, p2, Landroid/graphics/Bitmap;->mCacheInfo:Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 852
    .local v0, "cache":Landroid/graphics/Bitmap$GalleryCacheInfo;
    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getNext()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getNext()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getNext()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 853
    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getNext()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getNext()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->decodeInNextThread(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 856
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 857
    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getLast()Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->decodeInLastThread(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    .line 860
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getWechatThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 862
    const-string v1, "HwGalleryCacheManagerImpl"

    const-string v2, "Wechat thumb is ready, replace with this one!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getWechatThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 867
    :cond_3
    new-instance v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, v0, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;-><init>(Landroid/os/Handler;Landroid/graphics/Bitmap$GalleryCacheInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->start()V

    .line 870
    :goto_0
    const/4 v1, 0x1

    return v1
.end method
