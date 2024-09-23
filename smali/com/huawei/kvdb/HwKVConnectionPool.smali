.class public Lcom/huawei/kvdb/HwKVConnectionPool;
.super Ljava/lang/Object;
.source "HwKVConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    }
.end annotation


# static fields
.field private static final FIND_CONTINUE:I = -0x1

.field private static final FIND_DONE:I = 0x1

.field private static final NOT_FIND:I = 0x0

.field private static final READ_SLEEP:I = 0x3

.field static final RELATIVE_PATH:Ljava/lang/String; = "Android/data/com.android.providers.media/thumbnail_cache"

.field private static final TAG:Ljava/lang/String; = "kvdb_thumbnail"

.field private static final THRESHOLD:I = 0x4

.field private static final WRITE_SLEEP:I = 0x1e


# instance fields
.field private connectionQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/kvdb/HwKVConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionQueueLock:Ljava/lang/Object;

.field private curConnectionNum:I

.field private mContext:Landroid/content/Context;

.field private mDbName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mTableName:Ljava/lang/String;

.field private waiterPool:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

.field private final waiterPoolLock:Ljava/lang/Object;

.field private waiterQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private final waiterQueueLock:Ljava/lang/Object;

.field private writeConnection:Lcom/huawei/kvdb/HwKVConnection;

.field private final writeConnectionLock:Ljava/lang/Object;

.field private writeConnectionNum:I

.field private writeWaiterQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private final writeWaiterQueueLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterPoolLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterQueueLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueueLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeWaiterQueueLock:Ljava/lang/Object;

    .line 116
    const-string v0, "thumbnail.db"

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mDbName:Ljava/lang/String;

    .line 118
    const-string v0, "kv"

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mTableName:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mContext:Landroid/content/Context;

    .line 129
    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterPool:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterQueue:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueue:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeWaiterQueue:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->curConnectionNum:I

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    .line 135
    iput-object p1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mPackageName:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android/data/com.android.providers.media/thumbnail_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mPath:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const-string v1, "kvdb_thumbnail"

    const-string v2, "Making cache directory failed for some reasons."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "kvdb_thumbnail"

    const-string v3, "permission denied to create the named directory, please check."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_0
    return-void
.end method

.method private doGetReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "connection":Lcom/huawei/kvdb/HwKVConnection;
    const/4 v1, 0x0

    .line 345
    .local v1, "NoConnection":Z
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 347
    .local v3, "size":I
    if-lez v3, :cond_0

    .line 348
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/kvdb/HwKVConnection;

    move-object v0, v4

    .line 349
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 352
    :cond_0
    iget v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->curConnectionNum:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 353
    new-instance v4, Lcom/huawei/kvdb/HwKVConnection;

    iget-object v7, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mDbName:Ljava/lang/String;

    iget-object v9, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mTableName:Ljava/lang/String;

    iget-object v10, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/huawei/kvdb/HwKVConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;)V

    move-object v0, v4

    .line 354
    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnection;->open()Z

    move-result v4

    .line 355
    .local v4, "res":Z
    if-eqz v4, :cond_1

    .line 356
    iget v6, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->curConnectionNum:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->curConnectionNum:I

    goto :goto_0

    .line 358
    :cond_1
    iget v5, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->curConnectionNum:I

    if-gtz v5, :cond_2

    .line 359
    const/4 v1, 0x1

    goto :goto_0

    .line 360
    :cond_2
    const/4 v0, 0x0

    .line 364
    .end local v3    # "size":I
    .end local v4    # "res":Z
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    if-nez v1, :cond_4

    .line 367
    return-object v0

    .line 366
    :cond_4
    new-instance v2, Lcom/huawei/kvdb/HwKVException;

    const-string v3, "No Connection Found."

    invoke-direct {v2, v3}, Lcom/huawei/kvdb/HwKVException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private doGetWriteConnection()Lcom/huawei/kvdb/HwKVConnection;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "connection":Lcom/huawei/kvdb/HwKVConnection;
    const/4 v1, 0x0

    .line 207
    .local v1, "NoConnection":Z
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 208
    :try_start_0
    iget v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 209
    new-instance v3, Lcom/huawei/kvdb/HwKVConnection;

    iget-object v7, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mDbName:Ljava/lang/String;

    iget-object v9, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mTableName:Ljava/lang/String;

    iget-object v10, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/huawei/kvdb/HwKVConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;)V

    move-object v0, v3

    .line 210
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 213
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 214
    const-string v4, "kvdb_thumbnail"

    const-string v6, "Making cache directory failed for some reasons."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_0
    goto :goto_0

    .line 215
    :catch_0
    move-exception v4

    .line 216
    .local v4, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v6, "kvdb_thumbnail"

    const-string v7, "permission denied to create the named directory, please check."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnection;->open()Z

    move-result v4

    .line 220
    .local v4, "res":Z
    if-eqz v4, :cond_2

    .line 221
    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnection:Lcom/huawei/kvdb/HwKVConnection;

    .line 222
    iput v5, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    goto :goto_1

    .line 224
    :cond_2
    const/4 v1, 0x1

    .line 226
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "res":Z
    :goto_1
    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 227
    iget-object v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnection:Lcom/huawei/kvdb/HwKVConnection;

    move-object v0, v3

    .line 228
    iput v5, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    .line 230
    :cond_4
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    if-nez v1, :cond_5

    .line 233
    return-object v0

    .line 232
    :cond_5
    new-instance v2, Lcom/huawei/kvdb/HwKVException;

    const-string v3, "No Connection Found."

    invoke-direct {v2, v3}, Lcom/huawei/kvdb/HwKVException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private getWaiter()Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    .locals 3

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    iget-object v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterPool:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    move-object v0, v2

    .line 475
    if-eqz v0, :cond_0

    .line 476
    iget-object v2, v0, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->next:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    iput-object v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterPool:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    .line 477
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->next:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    goto :goto_0

    .line 479
    :cond_0
    new-instance v2, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    invoke-direct {v2}, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;-><init>()V

    move-object v0, v2

    .line 481
    :goto_0
    monitor-exit v1

    .line 482
    return-object v0

    .line 481
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private releaseWaiter(Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;)V
    .locals 2
    .param p1, "waiter"    # Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    .line 491
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->connection:Lcom/huawei/kvdb/HwKVConnection;

    .line 493
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    .line 494
    iget-object v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterPool:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    iput-object v1, p1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->next:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    .line 495
    iput-object p1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterPool:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    .line 496
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method closeConnection()V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnection:Lcom/huawei/kvdb/HwKVConnection;

    invoke-virtual {v1}, Lcom/huawei/kvdb/HwKVConnection;->close()Z

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnection:Lcom/huawei/kvdb/HwKVConnection;

    .line 157
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    .line 159
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    iget-object v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, "size":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 163
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/kvdb/HwKVConnection;

    .line 164
    .local v4, "connection":Lcom/huawei/kvdb/HwKVConnection;
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    invoke-virtual {v4}, Lcom/huawei/kvdb/HwKVConnection;->close()Z

    .line 162
    .end local v4    # "connection":Lcom/huawei/kvdb/HwKVConnection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v3    # "i":I
    :cond_1
    iput v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->curConnectionNum:I

    .line 168
    .end local v0    # "size":I
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 159
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method closeExceptionConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V
    .locals 2
    .param p1, "connection"    # Lcom/huawei/kvdb/HwKVConnection;
    .param p2, "writable"    # Z

    .line 178
    if-nez p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/kvdb/HwKVConnection;->close()Z

    .line 181
    iget v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->curConnectionNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->curConnectionNum:I

    .line 182
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_1
    invoke-virtual {p1}, Lcom/huawei/kvdb/HwKVConnection;->close()Z

    .line 186
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnection:Lcom/huawei/kvdb/HwKVConnection;

    .line 188
    monitor-exit v0

    .line 190
    :goto_0
    return-void

    .line 188
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method getReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;
    .locals 5

    .line 381
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnectionPool;->doGetReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/kvdb/HwKVException; {:try_start_0 .. :try_end_0} :catch_2

    .line 384
    .local v0, "connection":Lcom/huawei/kvdb/HwKVConnection;
    nop

    .line 383
    nop

    .line 385
    if-nez v0, :cond_3

    .line 387
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnectionPool;->getWaiter()Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    move-result-object v1

    .line 388
    .local v1, "w":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    const/4 v2, 0x0

    .line 389
    .local v2, "isInQueue":Z
    :goto_0
    if-nez v0, :cond_3

    .line 390
    monitor-enter v1

    .line 391
    if-nez v2, :cond_0

    .line 392
    :try_start_1
    iget-object v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 393
    :try_start_2
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    const/4 v2, 0x1

    .line 395
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 398
    :cond_0
    :goto_1
    const-wide/16 v3, 0x3

    :try_start_4
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    goto :goto_2

    .line 399
    :catch_0
    move-exception v3

    .line 402
    :goto_2
    :try_start_5
    iget-boolean v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    if-eqz v3, :cond_1

    .line 403
    iget-object v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->connection:Lcom/huawei/kvdb/HwKVConnection;

    move-object v0, v3

    .line 404
    invoke-direct {p0, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseWaiter(Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 408
    :cond_1
    const/4 v3, 0x1

    :try_start_6
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnectionPool;->doGetReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v4
    :try_end_6
    .catch Lcom/huawei/kvdb/HwKVException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v4

    .line 412
    nop

    .line 413
    if-eqz v0, :cond_2

    .line 414
    :try_start_7
    iput-boolean v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    .line 417
    :cond_2
    :goto_3
    monitor-exit v1

    goto :goto_0

    .line 409
    :catch_1
    move-exception v4

    .line 410
    .local v4, "e":Lcom/huawei/kvdb/HwKVException;
    iput-boolean v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    .line 411
    monitor-exit v1

    goto :goto_5

    .line 417
    .end local v4    # "e":Lcom/huawei/kvdb/HwKVException;
    :goto_4
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 420
    .end local v1    # "w":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    .end local v2    # "isInQueue":Z
    :cond_3
    :goto_5
    return-object v0

    .line 382
    .end local v0    # "connection":Lcom/huawei/kvdb/HwKVConnection;
    :catch_2
    move-exception v0

    .line 383
    .local v0, "e":Lcom/huawei/kvdb/HwKVException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getWriteConnection()Lcom/huawei/kvdb/HwKVConnection;
    .locals 5

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnectionPool;->doGetWriteConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/kvdb/HwKVException; {:try_start_0 .. :try_end_0} :catch_2

    .line 293
    .local v0, "connection":Lcom/huawei/kvdb/HwKVConnection;
    nop

    .line 292
    nop

    .line 294
    if-nez v0, :cond_3

    .line 296
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnectionPool;->getWaiter()Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    move-result-object v1

    .line 297
    .local v1, "w":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    const/4 v2, 0x0

    .line 298
    .local v2, "isInQueue":Z
    :goto_0
    if-nez v0, :cond_3

    .line 299
    monitor-enter v1

    .line 300
    if-nez v2, :cond_0

    .line 301
    :try_start_1
    iget-object v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeWaiterQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    :try_start_2
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeWaiterQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v2, 0x1

    .line 304
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 307
    :cond_0
    :goto_1
    const-wide/16 v3, 0x1e

    :try_start_4
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 310
    goto :goto_2

    .line 308
    :catch_0
    move-exception v3

    .line 311
    :goto_2
    :try_start_5
    iget-boolean v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    if-eqz v3, :cond_1

    .line 312
    iget-object v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->connection:Lcom/huawei/kvdb/HwKVConnection;

    move-object v0, v3

    .line 313
    invoke-direct {p0, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseWaiter(Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 316
    :cond_1
    const/4 v3, 0x1

    :try_start_6
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnectionPool;->doGetWriteConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v4
    :try_end_6
    .catch Lcom/huawei/kvdb/HwKVException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v4

    .line 320
    nop

    .line 321
    if-eqz v0, :cond_2

    .line 322
    :try_start_7
    iput-boolean v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    .line 325
    :cond_2
    :goto_3
    monitor-exit v1

    goto :goto_0

    .line 317
    :catch_1
    move-exception v4

    .line 318
    .local v4, "e":Lcom/huawei/kvdb/HwKVException;
    iput-boolean v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    .line 319
    monitor-exit v1

    goto :goto_5

    .line 325
    .end local v4    # "e":Lcom/huawei/kvdb/HwKVException;
    :goto_4
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 328
    .end local v1    # "w":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    .end local v2    # "isInQueue":Z
    :cond_3
    :goto_5
    return-object v0

    .line 291
    .end local v0    # "connection":Lcom/huawei/kvdb/HwKVConnection;
    :catch_2
    move-exception v0

    .line 292
    .local v0, "e":Lcom/huawei/kvdb/HwKVException;
    const/4 v1, 0x0

    return-object v1
.end method

.method releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V
    .locals 7
    .param p1, "connection"    # Lcom/huawei/kvdb/HwKVConnection;

    .line 431
    const/4 v0, -0x1

    .line 432
    .local v0, "found":I
    const/4 v1, 0x0

    .line 433
    .local v1, "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 434
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 436
    .local v3, "size":I
    if-lez v3, :cond_0

    .line 437
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    move-object v1, v4

    .line 438
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->waiterQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 440
    .end local v3    # "size":I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 441
    if-nez v1, :cond_1

    .line 442
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :cond_1
    monitor-enter v1

    .line 445
    :try_start_1
    iget-boolean v2, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    if-eqz v2, :cond_2

    .line 446
    invoke-direct {p0, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseWaiter(Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;)V

    .line 447
    const/4 v0, -0x1

    .line 448
    const/4 v2, 0x0

    .local v2, "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    goto :goto_1

    .line 450
    .end local v2    # "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    :cond_2
    iput-object p1, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->connection:Lcom/huawei/kvdb/HwKVConnection;

    .line 451
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    .line 452
    const/4 v0, 0x1

    .line 453
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 455
    move-object v2, v1

    .restart local v2    # "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    .end local v1    # "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    move-object v1, v2

    goto :goto_0

    .line 455
    .restart local v1    # "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    :catchall_0
    move-exception v3

    move-object v6, v3

    move v3, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_2

    .end local v2    # "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    :catchall_1
    move-exception v2

    move v3, v0

    move-object v0, v1

    .local v0, "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    .local v3, "found":I
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v1    # "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    throw v2

    .restart local v1    # "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    :catchall_2
    move-exception v2

    goto :goto_2

    .line 440
    .end local v3    # "found":I
    .local v0, "found":I
    :catchall_3
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    .line 458
    :cond_3
    if-nez v0, :cond_4

    .line 459
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 460
    :try_start_5
    iget-object v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->connectionQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    monitor-exit v2

    goto :goto_3

    :catchall_4
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v3

    .line 463
    :cond_4
    :goto_3
    return-void
.end method

.method releaseWriteConnection(Lcom/huawei/kvdb/HwKVConnection;)V
    .locals 7
    .param p1, "connection"    # Lcom/huawei/kvdb/HwKVConnection;

    .line 244
    const/4 v0, -0x1

    .line 245
    .local v0, "found":I
    const/4 v1, 0x0

    .line 246
    .local v1, "waiter":Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 247
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeWaiterQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeWaiterQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 249
    .local v4, "size":I
    if-lez v4, :cond_0

    .line 250
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeWaiterQueue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    move-object v1, v5

    .line 251
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeWaiterQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 253
    .end local v4    # "size":I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    if-nez v1, :cond_1

    .line 255
    const/4 v0, 0x0

    .line 256
    goto :goto_2

    .line 258
    :cond_1
    monitor-enter v1

    .line 259
    :try_start_1
    iget-boolean v2, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    if-eqz v2, :cond_2

    .line 260
    invoke-direct {p0, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseWaiter(Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;)V

    .line 261
    const/4 v0, -0x1

    goto :goto_1

    .line 264
    :cond_2
    iput-boolean v3, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    .line 265
    iput-object p1, v1, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->connection:Lcom/huawei/kvdb/HwKVConnection;

    .line 266
    const/4 v0, 0x1

    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 269
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 253
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 272
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 273
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_3
    iput v3, p0, Lcom/huawei/kvdb/HwKVConnectionPool;->writeConnectionNum:I

    .line 275
    monitor-exit v2

    goto :goto_3

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 277
    :cond_4
    :goto_3
    return-void
.end method
