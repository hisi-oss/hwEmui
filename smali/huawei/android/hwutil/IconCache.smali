.class public Lhuawei/android/hwutil/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hwutil/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lhuawei/android/hwutil/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Lhuawei/android/hwutil/IconCache$CacheEntry;)V
    .locals 2
    .param p0, "idAndPackageName"    # Ljava/lang/String;
    .param p1, "entry"    # Lhuawei/android/hwutil/IconCache$CacheEntry;

    .line 36
    sget-object v0, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    sget-object v1, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 2
    .param p0, "idAndPackageName"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Ljava/lang/String;)Lhuawei/android/hwutil/IconCache$CacheEntry;
    .locals 2
    .param p0, "idAndPackageName"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/hwutil/IconCache$CacheEntry;

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2
    .param p0, "idAndPackageName"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lhuawei/android/hwutil/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
