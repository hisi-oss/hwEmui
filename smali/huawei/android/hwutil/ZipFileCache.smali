.class public final Lhuawei/android/hwutil/ZipFileCache;
.super Ljava/lang/Object;
.source "ZipFileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hwutil/ZipFileCache$ZipResDir;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ICON:Z = false

.field private static ICONS:Ljava/lang/String; = null

.field public static final RES_INDEX_DEFAULT:I = 0x0

.field public static final RES_INDEX_FRW:I = 0x2

.field public static final RES_INDEX_HW_FRW:I = 0x4

.field public static final RES_INDEX_LAND:I = 0x1

.field public static final RES_INDEX_LAND_FRW:I = 0x3

.field public static final RES_INDEX_LAND_HW_FRW:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ZipFileCache"

.field private static final TRY_TIMES:I = 0x3

.field private static final sZipFileCacheMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lhuawei/android/hwutil/ZipFileCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private HWT_PATH_SKIN:Ljava/lang/String;

.field private HWT_PATH_TEMP_SKIN:Ljava/lang/String;

.field private mFileNotExist:Z

.field private mInited:Z

.field private mPath:Ljava/lang/String;

.field private mZip:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field private mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lhuawei/android/hwutil/ZipFileCache;->sZipFileCacheMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    const-string v0, "icons"

    sput-object v0, Lhuawei/android/hwutil/ZipFileCache;->ICONS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "zip"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mFileNotExist:Z

    .line 59
    const-string v1, "/data/skin"

    iput-object v1, p0, Lhuawei/android/hwutil/ZipFileCache;->HWT_PATH_SKIN:Ljava/lang/String;

    .line 60
    const-string v1, "/data/skin.tmp"

    iput-object v1, p0, Lhuawei/android/hwutil/ZipFileCache;->HWT_PATH_TEMP_SKIN:Ljava/lang/String;

    .line 63
    iput-boolean v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mInited:Z

    .line 70
    const/4 v1, 0x6

    new-array v1, v1, [Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    new-instance v2, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    invoke-direct {v0, v4, v3}, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    invoke-direct {v0, v4, v3}, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    invoke-direct {v0, v4, v3}, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    invoke-direct {v0, v4, v3}, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    invoke-direct {v0, v4, v3}, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    .line 84
    iput-object p1, p0, Lhuawei/android/hwutil/ZipFileCache;->mPath:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lhuawei/android/hwutil/ZipFileCache;->mZip:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lhuawei/android/hwutil/ZipFileCache;->openZipFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lhuawei/android/hwutil/ZipFileCache;->ICONS:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "ZipFileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init icons failed when open zip file. mPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/android/hwutil/ZipFileCache;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mZip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/android/hwutil/ZipFileCache;->mZip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mFileNotExist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lhuawei/android/hwutil/ZipFileCache;->mFileNotExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 4

    const-class v0, Lhuawei/android/hwutil/ZipFileCache;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-object v1, Lhuawei/android/hwutil/ZipFileCache;->sZipFileCacheMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lhuawei/android/hwutil/ZipFileCache;>;"
    const/4 v2, 0x0

    .line 142
    .local v2, "zip":Lhuawei/android/hwutil/ZipFileCache;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhuawei/android/hwutil/ZipFileCache;

    move-object v2, v3

    .line 144
    if-eqz v2, :cond_0

    .line 145
    invoke-direct {v2}, Lhuawei/android/hwutil/ZipFileCache;->closeZipFile()V

    goto :goto_0

    .line 149
    :cond_1
    sget-object v3, Lhuawei/android/hwutil/ZipFileCache;->sZipFileCacheMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit v0

    return-void

    .line 139
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lhuawei/android/hwutil/ZipFileCache;>;"
    .end local v2    # "zip":Lhuawei/android/hwutil/ZipFileCache;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 191
    if-eqz p1, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 197
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized closeZipFile()V
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 182
    :try_start_1
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 186
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw v0
.end method

.method public static getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Lhuawei/android/hwutil/ZipFileCache;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "zip"    # Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 107
    .local v1, "zipFileCache":Lhuawei/android/hwutil/ZipFileCache;
    const/4 v2, 0x0

    .line 109
    .local v2, "oldValue":Lhuawei/android/hwutil/ZipFileCache;
    const-class v3, Lhuawei/android/hwutil/ZipFileCache;

    monitor-enter v3

    .line 110
    :try_start_0
    sget-object v4, Lhuawei/android/hwutil/ZipFileCache;->sZipFileCacheMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhuawei/android/hwutil/ZipFileCache;

    move-object v1, v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 111
    new-instance v4, Lhuawei/android/hwutil/ZipFileCache;

    invoke-direct {v4, p0, p1}, Lhuawei/android/hwutil/ZipFileCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 112
    iget-object v4, v1, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 113
    iget-boolean v4, v1, Lhuawei/android/hwutil/ZipFileCache;->mFileNotExist:Z

    if-eqz v4, :cond_0

    .line 114
    sget-object v4, Lhuawei/android/hwutil/ZipFileCache;->sZipFileCacheMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhuawei/android/hwutil/ZipFileCache;

    move-object v2, v4

    .line 115
    if-eqz v2, :cond_0

    .line 116
    monitor-exit v3

    return-object v2

    .line 119
    :cond_0
    monitor-exit v3

    return-object v5

    .line 121
    :cond_1
    sget-object v4, Lhuawei/android/hwutil/ZipFileCache;->sZipFileCacheMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhuawei/android/hwutil/ZipFileCache;

    move-object v2, v4

    .line 122
    if-eqz v2, :cond_2

    .line 123
    monitor-exit v3

    return-object v2

    .line 125
    :cond_2
    monitor-exit v3

    return-object v1

    .line 128
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-boolean v3, v1, Lhuawei/android/hwutil/ZipFileCache;->mFileNotExist:Z

    if-eqz v3, :cond_4

    .line 132
    return-object v5

    .line 135
    :cond_4
    return-object v1

    .line 128
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getZipResDirMap(I)Ljava/util/HashMap;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v1, 0x1e0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 533
    :pswitch_0
    const-string v2, "framework-res-hwext/res/drawable-land-xxhdpi"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    goto :goto_0

    .line 530
    :pswitch_1
    const-string v2, "framework-res-hwext/res/drawable-xxhdpi"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    goto :goto_0

    .line 527
    :pswitch_2
    const-string v2, "framework-res/res/drawable-land-xxhdpi"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    goto :goto_0

    .line 524
    :pswitch_3
    const-string v2, "framework-res/res/drawable-xxhdpi"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    goto :goto_0

    .line 520
    :pswitch_4
    const-string v2, "res/drawable-land-xxhdpi"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v2, "res/drawable-sw360dp-land-xxhdpi"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    goto :goto_0

    .line 516
    :pswitch_5
    const-string v2, "res/drawable-xxhdpi"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v2, "res/drawable-sw360dp-xxhdpi"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    nop

    .line 539
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized openZipFile()Z
    .locals 4

    monitor-enter p0

    .line 159
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lhuawei/android/hwutil/ZipFileCache;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lhuawei/android/hwutil/ZipFileCache;->mZip:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v2, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    .line 165
    iput-boolean v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mInited:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return v3

    .line 161
    :goto_0
    :try_start_1
    iput-boolean v3, p0, Lhuawei/android/hwutil/ZipFileCache;->mFileNotExist:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return v0

    .line 158
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "io":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0}, Lhuawei/android/hwutil/ZipFileCache;->closeZipFile()V

    .line 169
    invoke-direct {p0}, Lhuawei/android/hwutil/ZipFileCache;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    monitor-exit p0

    return v0

    .line 158
    .end local v1    # "io":Ljava/io/IOException;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw v0
.end method

.method private declared-synchronized setEmpty()V
    .locals 1

    monitor-enter p0

    .line 200
    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mPath:Ljava/lang/String;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZip:Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mFileNotExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw v0
.end method


# virtual methods
.method public declared-synchronized getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "fileName"    # Ljava/lang/String;

    monitor-enter p0

    .line 323
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw p1
.end method

.method public declared-synchronized getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "padding"    # Landroid/graphics/Rect;

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    monitor-exit p0

    return-object v1

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 296
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 297
    .local v2, "is":Ljava/io/InputStream;
    if-nez p4, :cond_1

    .line 298
    :try_start_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object p4, v3

    .line 300
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 301
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    goto :goto_0

    :cond_2
    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_0
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    :try_start_2
    iget-object v4, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, p3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 305
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_4

    .line 306
    iget-object v5, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 307
    invoke-static {p1, p2, v2, p4, v3}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    .line 309
    if-eqz v0, :cond_4

    .line 310
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1

    :cond_3
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_1
    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :cond_4
    :try_start_3
    invoke-direct {p0, v2}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    nop

    .line 319
    monitor-exit p0

    return-object v0

    .line 317
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 313
    :catch_0
    move-exception v4

    .line 314
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "ZipFileCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBitmapEntry(res,value,filename) occur exception fileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    nop

    .line 317
    :try_start_5
    invoke-direct {p0, v2}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 315
    monitor-exit p0

    return-object v1

    .line 317
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-direct {p0, v2}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 291
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "fileName":Ljava/lang/String;
    .end local p4    # "padding":Landroid/graphics/Rect;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw p1
.end method

.method public declared-synchronized getBitmapEntry(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "fileName"    # Ljava/lang/String;

    monitor-enter p0

    .line 274
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 275
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0, v0, p2}, Lhuawei/android/hwutil/ZipFileCache;->getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 278
    :cond_0
    :try_start_1
    const-string v1, "ZipFileCache"

    const-string v2, "resourcesImpl is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 273
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw p1
.end method

.method public declared-synchronized getBitmapEntry(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "fileName"    # Ljava/lang/String;

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "ZipFileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap entry from zip file failed fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    monitor-exit p0

    return-object v1

    .line 224
    :cond_0
    const/4 v0, 0x3

    .line 225
    .local v0, "reTryCount":I
    const/4 v2, 0x0

    .line 226
    .local v2, "bmp":Landroid/graphics/Bitmap;
    nop

    .line 227
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    if-lez v0, :cond_2

    .line 228
    add-int/lit8 v0, v0, -0x1

    .line 230
    :try_start_1
    iget-object v3, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 231
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_1

    .line 232
    iget-object v4, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    .line 233
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 235
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    nop

    .line 241
    if-eqz v2, :cond_1

    .line 242
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AbsResourcesImpl;->hwGetDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_1

    .line 236
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ZipFileCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZipFileCache#getBitmapEntry e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :cond_1
    :goto_1
    :try_start_4
    invoke-direct {p0, v1}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 252
    :catch_1
    move-exception v3

    .line 253
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-direct {p0}, Lhuawei/android/hwutil/ZipFileCache;->closeZipFile()V

    .line 254
    invoke-direct {p0}, Lhuawei/android/hwutil/ZipFileCache;->openZipFile()Z

    .line 255
    const-string v4, "ZipFileCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapEntry occur exception fileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-direct {p0, v1}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 258
    goto :goto_0

    .line 257
    :goto_2
    invoke-direct {p0, v1}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 261
    :cond_2
    :goto_3
    monitor-exit p0

    return-object v2

    .line 218
    .end local v0    # "reTryCount":I
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local p1    # "impl":Landroid/content/res/ResourcesImpl;
    .end local p2    # "fileName":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw p1
.end method

.method public declared-synchronized getBitmapList(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "filePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 395
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, "bmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 397
    monitor-exit p0

    return-object v0

    .line 399
    :cond_0
    const/4 v1, 0x0

    .line 400
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 401
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 402
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 403
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 405
    .local v5, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :try_start_1
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 406
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    if-eqz p1, :cond_1

    .line 407
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    goto :goto_0

    :cond_1
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_0
    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    iget-object v7, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    move-object v5, v7

    .line 411
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 412
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    move-object v2, v7

    .line 413
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 415
    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 416
    .local v7, "indexfile":I
    const-string v8, ".png"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 417
    .local v8, "indexofpng":I
    if-nez v7, :cond_3

    if-lez v8, :cond_3

    .line 418
    iget-object v9, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    move-object v4, v9

    .line 420
    const/4 v9, 0x0

    invoke-static {v4, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v1, v9

    .line 422
    invoke-direct {p0, v4}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 423
    if-eqz v1, :cond_3

    .line 425
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_2

    :cond_2
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_2
    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    .end local v7    # "indexfile":I
    .end local v8    # "indexofpng":I
    :cond_3
    goto :goto_1

    .line 439
    :cond_4
    nop

    .line 440
    monitor-exit p0

    return-object v0

    .line 435
    :catch_0
    move-exception v7

    .line 436
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0, v4}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 437
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 438
    monitor-exit p0

    return-object v0

    .line 431
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 432
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-direct {p0, v4}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 434
    monitor-exit p0

    return-object v0

    .line 394
    .end local v0    # "bmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "filePattern":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw p1
.end method

.method public declared-synchronized getBitmapList(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "filePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ResourcesImpl;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 336
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v0, "bmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 338
    monitor-exit p0

    return-object v0

    .line 340
    :cond_0
    const/4 v1, 0x0

    .line 341
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 342
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 343
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 344
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 346
    .local v5, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :try_start_1
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 347
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AbsResourcesImpl;->hwGetDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    goto :goto_0

    :cond_1
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_0
    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :try_start_2
    iget-object v7, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    move-object v5, v7

    .line 352
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 353
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    move-object v2, v7

    .line 354
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 356
    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 357
    .local v7, "indexfile":I
    const-string v8, ".png"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 358
    .local v8, "indexofpng":I
    if-nez v7, :cond_3

    if-lez v8, :cond_3

    .line 359
    iget-object v9, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    move-object v4, v9

    .line 361
    const/4 v9, 0x0

    invoke-static {v4, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v1, v9

    .line 363
    invoke-direct {p0, v4}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 364
    if-eqz v1, :cond_3

    .line 366
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getHwResourcesImpl()Landroid/content/res/AbsResourcesImpl;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AbsResourcesImpl;->hwGetDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_2

    :cond_2
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_2
    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 368
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    .end local v7    # "indexfile":I
    .end local v8    # "indexofpng":I
    :cond_3
    goto :goto_1

    .line 380
    :cond_4
    nop

    .line 381
    monitor-exit p0

    return-object v0

    .line 376
    :catch_0
    move-exception v7

    .line 377
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0, v4}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 378
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    monitor-exit p0

    return-object v0

    .line 372
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 373
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-direct {p0, v4}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 375
    monitor-exit p0

    return-object v0

    .line 335
    .end local v0    # "bmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local p1    # "impl":Landroid/content/res/ResourcesImpl;
    .end local p2    # "filePattern":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw p1
.end method

.method public getDrawableDensity(I)I
    .locals 1
    .param p1, "index"    # I

    .line 543
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 544
    const/4 v0, -0x1

    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    aget-object v0, v0, p1

    iget v0, v0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;->mDensity:I

    return v0
.end method

.method public getDrawableDir(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 550
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 551
    const/4 v0, 0x0

    return-object v0

    .line 553
    :cond_0
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    aget-object v0, v0, p1

    iget-object v0, v0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;->mDir:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 453
    monitor-exit p0

    return-object v1

    .line 456
    :cond_0
    const/4 v0, 0x3

    .line 457
    .local v0, "reTryCount":I
    const/4 v2, 0x0

    .line 458
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    nop

    .line 459
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    if-lez v0, :cond_2

    .line 460
    add-int/lit8 v0, v0, -0x1

    .line 462
    :try_start_1
    iget-object v3, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, p3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 463
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_1

    .line 464
    iget-object v4, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    .line 465
    invoke-static {p1, p2, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 475
    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 470
    :catch_0
    move-exception v3

    .line 471
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0}, Lhuawei/android/hwutil/ZipFileCache;->closeZipFile()V

    .line 472
    invoke-direct {p0}, Lhuawei/android/hwutil/ZipFileCache;->openZipFile()Z

    .line 473
    const-string v4, "ZipFileCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrawableEntry occur exception fileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 475
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0, v1}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 476
    goto :goto_0

    .line 475
    :goto_1
    invoke-direct {p0, v1}, Lhuawei/android/hwutil/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 479
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v2

    .line 451
    .end local v0    # "reTryCount":I
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "fileName":Ljava/lang/String;
    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw p1
.end method

.method public declared-synchronized getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    monitor-enter p0

    .line 561
    :try_start_0
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 562
    monitor-exit p0

    return-object v1

    .line 565
    :cond_0
    move-object v0, v1

    .line 567
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 568
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 569
    iget-object v3, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 573
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    nop

    .line 574
    monitor-exit p0

    return-object v0

    .line 571
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    monitor-exit p0

    return-object v1

    .line 560
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local p1    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw p1
.end method

.method public declared-synchronized initResDirInfo()V
    .locals 6

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lhuawei/android/hwutil/ZipFileCache;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 488
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    .line 489
    .local v1, "it":Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    iget-object v3, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 490
    invoke-direct {p0, v2}, Lhuawei/android/hwutil/ZipFileCache;->getZipResDirMap(I)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .line 491
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 493
    .local v3, "mapEntry":Ljava/util/Map$Entry;
    iget-object v4, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    move-object v0, v4

    .line 497
    if-eqz v0, :cond_1

    .line 499
    iget-object v4, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    aget-object v4, v4, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;->mDir:Ljava/lang/String;

    .line 500
    iget-object v4, p0, Lhuawei/android/hwutil/ZipFileCache;->mZipResDir:[Lhuawei/android/hwutil/ZipFileCache$ZipResDir;

    aget-object v4, v4, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;->mDensity:I

    .line 501
    goto :goto_2

    .line 503
    .end local v3    # "mapEntry":Ljava/util/Map$Entry;
    :cond_1
    goto :goto_1

    .line 489
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lhuawei/android/hwutil/ZipFileCache;->mInited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .end local v0    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v1    # "it":Ljava/util/Iterator;
    :goto_3
    goto :goto_4

    .line 508
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "ZipFileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initResDirInfo Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 510
    :goto_4
    monitor-exit p0

    return-void

    .line 508
    :goto_5
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 484
    :cond_4
    :goto_6
    monitor-exit p0

    return-void

    .line 482
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/hwutil/ZipFileCache;
    throw v0
.end method
