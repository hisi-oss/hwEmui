.class public Lcom/huawei/kvdb/HwKVConnection;
.super Ljava/lang/Object;
.source "HwKVConnection.java"


# static fields
.field private static final DATABASE_MALFORMED:I = -0x1

.field private static final DB_NAME:Ljava/lang/String; = "thumbnail.db"

.field private static final FILE_NOT_DELETE:I = 0x0

.field private static final MEDIA_PROVIDER:Ljava/lang/String; = "com.android.providers.media"

.field private static final SQLITE_FULL:I = 0xd

.field private static final STEP_CONTINUE:I = 0x0

.field private static final STEP_DONE:I = 0x1

.field private static final STEP_ERROR:I = 0x2

.field private static final SUCCESS:I = 0x0

.field private static final TABLE_NAME:Ljava/lang/String; = "kv"

.field private static final TAG:Ljava/lang/String; = "kvdb_thumbnail"


# instance fields
.field public kvData:Lcom/huawei/kvdb/HwKVData;

.field private mBlob:J

.field private mCanOpen:Z

.field public mData:[B

.field private mDataSize:I

.field private mDbName:Ljava/lang/String;

.field private mHandle:J

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mReadOnly:Z

.field private mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "kvdb_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "readOnly"    # Ljava/lang/Boolean;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    .line 47
    iput-wide v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mReadOnly:Z

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mPath:Ljava/lang/String;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mDbName:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mPackageName:Ljava/lang/String;

    .line 109
    const/high16 v1, 0x100000

    iput v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mDataSize:I

    .line 111
    iput-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mCanOpen:Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mData:[B

    .line 115
    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnection;->kvData:Lcom/huawei/kvdb/HwKVData;

    .line 300
    const/4 v0, 0x0

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iput-object p4, p0, Lcom/huawei/kvdb/HwKVConnection;->mPackageName:Ljava/lang/String;

    goto :goto_1

    .line 301
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mCanOpen:Z

    .line 305
    :goto_1
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "externalPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/0/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Android/data/com.android.providers.media/thumbnail_cache"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mPath:Ljava/lang/String;

    .line 308
    .end local v1    # "externalPath":Ljava/lang/String;
    goto :goto_2

    .line 309
    :cond_2
    iput-object p1, p0, Lcom/huawei/kvdb/HwKVConnection;->mPath:Ljava/lang/String;

    .line 311
    :goto_2
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mReadOnly:Z

    .line 312
    iput-object p2, p0, Lcom/huawei/kvdb/HwKVConnection;->mDbName:Ljava/lang/String;

    .line 313
    iput-object p3, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    .line 314
    return-void
.end method

.method private callNativeBlobBytes(J)I
    .locals 1
    .param p1, "BlobHandle"    # J

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->nativeBlobBytes(J)I

    move-result v0

    return v0
.end method

.method private callNativeBlobClose(J)I
    .locals 1
    .param p1, "BlobHandle"    # J

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->nativeBlobClose(J)I

    move-result v0

    return v0
.end method

.method private callNativeBlobOpen(JJLjava/lang/String;)J
    .locals 2
    .param p1, "Handle"    # J
    .param p3, "Key"    # J
    .param p5, "TableName"    # Ljava/lang/String;

    .line 179
    invoke-direct/range {p0 .. p5}, Lcom/huawei/kvdb/HwKVConnection;->nativeBlobOpen(JJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private callNativeBlobRead(J[BI)I
    .locals 1
    .param p1, "BlobHandle"    # J
    .param p3, "Value"    # [B
    .param p4, "ValueSize"    # I

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/kvdb/HwKVConnection;->nativeBlobRead(J[BI)I

    move-result v0

    return v0
.end method

.method private callNativeClose(J)I
    .locals 1
    .param p1, "Handle"    # J

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->nativeClose(J)I

    move-result v0

    return v0
.end method

.method private callNativeFinalize(J)I
    .locals 1
    .param p1, "StmtHandle"    # J

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->nativeFinalize(J)I

    move-result v0

    return v0
.end method

.method private callNativeGetKeyNum(JLjava/lang/String;)I
    .locals 1
    .param p1, "Handle"    # J
    .param p3, "TableName"    # Ljava/lang/String;

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/kvdb/HwKVConnection;->nativeGetKeyNum(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private callNativeGetLong(J)J
    .locals 2
    .param p1, "StmtHandle"    # J

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->nativeGetLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private callNativeIsFileDeleted(J)I
    .locals 1
    .param p1, "Handle"    # J

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->nativeIsFileDeleted(J)I

    move-result v0

    return v0
.end method

.method private callNativeOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 2
    .param p1, "Path"    # Ljava/lang/String;
    .param p2, "DbName"    # Ljava/lang/String;
    .param p3, "TableName"    # Ljava/lang/String;
    .param p4, "ReadOnly"    # Z

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/kvdb/HwKVConnection;->nativeOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private callNativePrepare(Ljava/lang/String;J)J
    .locals 2
    .param p1, "TableName"    # Ljava/lang/String;
    .param p2, "Handle"    # J

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/kvdb/HwKVConnection;->nativePrepare(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private callNativePut(JJ[BILjava/lang/String;)I
    .locals 1
    .param p1, "Handle"    # J
    .param p3, "Key"    # J
    .param p5, "Value"    # [B
    .param p6, "ValueSize"    # I
    .param p7, "TableName"    # Ljava/lang/String;

    .line 152
    invoke-direct/range {p0 .. p7}, Lcom/huawei/kvdb/HwKVConnection;->nativePut(JJ[BILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private callNativeRemove(JJLjava/lang/String;)I
    .locals 1
    .param p1, "Handle"    # J
    .param p3, "Key"    # J
    .param p5, "TableName"    # Ljava/lang/String;

    .line 164
    invoke-direct/range {p0 .. p5}, Lcom/huawei/kvdb/HwKVConnection;->nativeRemove(JJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private callNativeStep(J)I
    .locals 1
    .param p1, "StmtHandle"    # J

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->nativeStep(J)I

    move-result v0

    return v0
.end method

.method private deleteDbFiles()V
    .locals 9

    .line 326
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mDbName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .local v1, "db":Ljava/lang/String;
    nop

    .line 332
    nop

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "shm":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "wal":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    .line 338
    .local v4, "res1":Z
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    .line 340
    .local v5, "res2":Z
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    .line 342
    .local v6, "res3":Z
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 343
    :cond_0
    const-string v7, "kvdb_thumbnail"

    const-string v8, "Failure: delete database files."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    return-void

    .line 330
    .end local v1    # "db":Ljava/lang/String;
    .end local v2    # "shm":Ljava/lang/String;
    .end local v3    # "wal":Ljava/lang/String;
    .end local v4    # "res1":Z
    .end local v5    # "res2":Z
    .end local v6    # "res3":Z
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "kvdb_thumbnail"

    const-string v3, "Failure: delete dbPath is invalible."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method private doCheck()V
    .locals 3

    .line 354
    iget-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mReadOnly:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 355
    const-string v0, "com.android.providers.media"

    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iput-boolean v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mCanOpen:Z

    .line 357
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mPath:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    const-string v0, "thumbnail.db"

    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    iput-boolean v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mCanOpen:Z

    .line 366
    return-void

    .line 368
    :cond_2
    const-string v0, "kv"

    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    iput-boolean v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mCanOpen:Z

    .line 370
    return-void

    .line 372
    :cond_3
    return-void

    .line 361
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mCanOpen:Z

    .line 362
    return-void
.end method

.method private native nativeBlobBytes(J)I
.end method

.method private native nativeBlobClose(J)I
.end method

.method private native nativeBlobOpen(JJLjava/lang/String;)J
.end method

.method private native nativeBlobRead(J[BI)I
.end method

.method private native nativeClose(J)I
.end method

.method private native nativeFinalize(J)I
.end method

.method private native nativeGetKeyNum(JLjava/lang/String;)I
.end method

.method private native nativeGetLong(J)J
.end method

.method private native nativeIsFileDeleted(J)I
.end method

.method private native nativeOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method private native nativePrepare(Ljava/lang/String;J)J
.end method

.method private native nativePut(JJ[BILjava/lang/String;)I
.end method

.method private native nativeRemove(JJLjava/lang/String;)I
.end method

.method private native nativeStep(J)I
.end method


# virtual methods
.method close()Z
    .locals 2

    .line 401
    iget-wide v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/kvdb/HwKVConnection;->callNativeClose(J)I

    move-result v0

    .line 402
    .local v0, "rc":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public get(J)Lcom/huawei/kvdb/HwKVData;
    .locals 11
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
        }
    .end annotation

    .line 414
    iget-wide v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/kvdb/HwKVConnection;->callNativeIsFileDeleted(J)I

    move-result v0

    .line 415
    .local v0, "res":I
    if-nez v0, :cond_b

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "value":[B
    const/4 v2, 0x0

    .line 421
    .local v2, "size":I
    const-wide/16 v3, 0x0

    :try_start_0
    iget-wide v6, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    iget-object v10, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    move-object v5, p0

    move-wide v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobOpen(JJLjava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    .line 422
    iget-wide v5, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v5, v5, v3

    const/4 v6, 0x0

    if-gtz v5, :cond_2

    .line 423
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :cond_0
    nop

    .line 444
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_1

    .line 445
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v7, v8}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobClose(J)I

    .line 447
    :cond_1
    iput-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    .line 425
    return-object v6

    .line 427
    :cond_2
    :try_start_1
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v7, v8}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobBytes(J)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v5

    .line 428
    if-gtz v2, :cond_4

    .line 429
    nop

    .line 444
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_3

    .line 445
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v7, v8}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobClose(J)I

    .line 447
    :cond_3
    iput-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    .line 429
    return-object v6

    .line 431
    :cond_4
    :try_start_2
    iget v5, p0, Lcom/huawei/kvdb/HwKVConnection;->mDataSize:I

    if-gt v2, v5, :cond_5

    iget-object v5, p0, Lcom/huawei/kvdb/HwKVConnection;->mData:[B

    if-eqz v5, :cond_5

    .line 432
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVConnection;->mData:[B

    move-object v1, v5

    goto :goto_0

    .line 433
    :cond_5
    new-array v5, v2, [B

    move-object v1, v5

    .line 434
    :goto_0
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v7, v8, v1, v2}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobRead(J[BI)I

    move-result v5

    .line 435
    .local v5, "rc":I
    if-eqz v5, :cond_8

    .line 436
    const/4 v7, -0x1

    if-ne v5, v7, :cond_6

    .line 437
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    :cond_6
    nop

    .line 444
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v7, v7, v3

    if-lez v7, :cond_7

    .line 445
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v7, v8}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobClose(J)I

    .line 447
    :cond_7
    iput-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    .line 438
    return-object v6

    .line 440
    :cond_8
    :try_start_3
    iget-object v6, p0, Lcom/huawei/kvdb/HwKVConnection;->kvData:Lcom/huawei/kvdb/HwKVData;

    iput-object v1, v6, Lcom/huawei/kvdb/HwKVData;->value:[B

    .line 441
    iget-object v6, p0, Lcom/huawei/kvdb/HwKVConnection;->kvData:Lcom/huawei/kvdb/HwKVData;

    iput v2, v6, Lcom/huawei/kvdb/HwKVData;->size:I

    .line 442
    iget-object v6, p0, Lcom/huawei/kvdb/HwKVConnection;->kvData:Lcom/huawei/kvdb/HwKVData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 444
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v7, v7, v3

    if-lez v7, :cond_9

    .line 445
    iget-wide v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v7, v8}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobClose(J)I

    .line 447
    :cond_9
    iput-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    .line 442
    return-object v6

    .line 444
    .end local v5    # "rc":I
    :catchall_0
    move-exception v5

    iget-wide v6, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v6, v6, v3

    if-lez v6, :cond_a

    .line 445
    iget-wide v6, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v6, v7}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobClose(J)I

    .line 447
    :cond_a
    iput-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    throw v5

    .line 416
    .end local v1    # "value":[B
    .end local v2    # "size":I
    :cond_b
    new-instance v1, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;

    invoke-direct {v1}, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;-><init>()V

    throw v1
.end method

.method getAllKeys()Ljava/util/Hashtable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
        }
    .end annotation

    .line 552
    iget-wide v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/kvdb/HwKVConnection;->callNativeIsFileDeleted(J)I

    move-result v0

    .line 553
    .local v0, "rc":I
    if-nez v0, :cond_9

    .line 556
    const-wide/16 v1, 0x0

    .line 557
    .local v1, "stmt":J
    const/4 v0, -0x1

    .line 559
    const-wide/16 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    invoke-direct {p0, v5, v6, v7}, Lcom/huawei/kvdb/HwKVConnection;->callNativePrepare(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v1, v5

    .line 560
    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-gtz v5, :cond_2

    .line 561
    const-wide/16 v7, -0x1

    cmp-long v5, v1, v7

    if-nez v5, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_0
    nop

    .line 581
    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 582
    invoke-direct {p0, v1, v2}, Lcom/huawei/kvdb/HwKVConnection;->callNativeFinalize(J)I

    .line 563
    :cond_1
    return-object v6

    .line 565
    :cond_2
    :try_start_1
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 567
    .local v5, "hashTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/huawei/kvdb/HwKVConnection;->callNativeStep(J)I

    move-result v7

    move v0, v7

    .line 568
    if-nez v0, :cond_3

    .line 569
    invoke-direct {p0, v1, v2}, Lcom/huawei/kvdb/HwKVConnection;->callNativeGetLong(J)J

    move-result-wide v7

    .line 570
    .local v7, "res":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .end local v7    # "res":J
    goto :goto_0

    .line 572
    :cond_3
    const/4 v7, -0x1

    if-ne v0, v7, :cond_4

    .line 573
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :cond_4
    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    .line 578
    nop

    .line 581
    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    .line 582
    invoke-direct {p0, v1, v2}, Lcom/huawei/kvdb/HwKVConnection;->callNativeFinalize(J)I

    .line 578
    :cond_5
    return-object v5

    .line 579
    :cond_6
    nop

    .line 581
    cmp-long v3, v1, v3

    if-lez v3, :cond_7

    .line 582
    invoke-direct {p0, v1, v2}, Lcom/huawei/kvdb/HwKVConnection;->callNativeFinalize(J)I

    .line 579
    :cond_7
    return-object v6

    .line 581
    .end local v5    # "hashTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_8

    .line 582
    invoke-direct {p0, v1, v2}, Lcom/huawei/kvdb/HwKVConnection;->callNativeFinalize(J)I

    :cond_8
    throw v5

    .line 554
    .end local v1    # "stmt":J
    :cond_9
    new-instance v1, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;

    invoke-direct {v1}, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;-><init>()V

    throw v1
.end method

.method getKeyNum()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
        }
    .end annotation

    .line 593
    iget-wide v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/kvdb/HwKVConnection;->callNativeIsFileDeleted(J)I

    move-result v0

    .line 594
    .local v0, "rc":I
    if-nez v0, :cond_1

    .line 597
    iget-wide v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    iget-object v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/kvdb/HwKVConnection;->callNativeGetKeyNum(JLjava/lang/String;)I

    move-result v1

    .line 598
    .local v1, "res":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V

    .line 600
    const/4 v2, 0x0

    return v2

    .line 602
    :cond_0
    return v1

    .line 595
    .end local v1    # "res":I
    :cond_1
    new-instance v1, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;

    invoke-direct {v1}, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;-><init>()V

    throw v1
.end method

.method hasKey(J)Z
    .locals 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
        }
    .end annotation

    .line 521
    iget-wide v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/kvdb/HwKVConnection;->callNativeIsFileDeleted(J)I

    move-result v0

    .line 522
    .local v0, "rc":I
    if-nez v0, :cond_4

    .line 527
    const-wide/16 v1, 0x0

    :try_start_0
    iget-wide v4, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    iget-object v8, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    move-object v3, p0

    move-wide v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobOpen(JJLjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    .line 528
    iget-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 529
    iget-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_0
    const/4 v3, 0x0

    .local v3, "res":Z
    goto :goto_0

    .line 533
    .end local v3    # "res":Z
    :cond_1
    const/4 v3, 0x1

    .line 535
    .restart local v3    # "res":Z
    :goto_0
    nop

    .line 537
    iget-wide v4, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_2

    .line 538
    iget-wide v4, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v4, v5}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobClose(J)I

    .line 540
    :cond_2
    iput-wide v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    .line 535
    return v3

    .line 537
    .end local v3    # "res":Z
    :catchall_0
    move-exception v3

    iget-wide v4, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_3

    .line 538
    iget-wide v4, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    invoke-direct {p0, v4, v5}, Lcom/huawei/kvdb/HwKVConnection;->callNativeBlobClose(J)I

    .line 540
    :cond_3
    iput-wide v1, p0, Lcom/huawei/kvdb/HwKVConnection;->mBlob:J

    throw v3

    .line 523
    :cond_4
    new-instance v1, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;

    invoke-direct {v1}, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;-><init>()V

    throw v1
.end method

.method open()Z
    .locals 6

    .line 381
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->doCheck()V

    .line 382
    iget-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mCanOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 383
    return v1

    .line 384
    :cond_0
    new-instance v0, Lcom/huawei/kvdb/HwKVData;

    invoke-direct {v0}, Lcom/huawei/kvdb/HwKVData;-><init>()V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnection;->kvData:Lcom/huawei/kvdb/HwKVData;

    .line 385
    iget v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mDataSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mData:[B

    .line 386
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mDbName:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/huawei/kvdb/HwKVConnection;->mReadOnly:Z

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/huawei/kvdb/HwKVConnection;->callNativeOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    .line 387
    iget-wide v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 388
    iget-wide v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V

    .line 390
    :cond_1
    return v1

    .line 392
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method put(J[BI)Z
    .locals 10
    .param p1, "key"    # J
    .param p3, "value"    # [B
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVDatabaseDeleteException;,
            Lcom/huawei/kvdb/HwKVFullException;
        }
    .end annotation

    .line 463
    iget-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mReadOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 464
    return v1

    .line 465
    :cond_0
    if-eqz p3, :cond_6

    array-length v0, p3

    if-eqz v0, :cond_6

    array-length v0, p3

    if-eq v0, p4, :cond_1

    goto :goto_1

    .line 467
    :cond_1
    iget-wide v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    invoke-direct {p0, v2, v3}, Lcom/huawei/kvdb/HwKVConnection;->callNativeIsFileDeleted(J)I

    move-result v0

    .line 468
    .local v0, "res":I
    if-nez v0, :cond_5

    .line 471
    iget-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    iget-object v9, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/huawei/kvdb/HwKVConnection;->callNativePut(JJ[BILjava/lang/String;)I

    move-result v2

    .line 472
    .local v2, "rc":I
    if-nez v2, :cond_2

    .line 473
    const/4 v1, 0x1

    return v1

    .line 475
    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 476
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V

    goto :goto_0

    .line 477
    :cond_3
    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    .line 479
    :goto_0
    return v1

    .line 478
    :cond_4
    new-instance v1, Lcom/huawei/kvdb/HwKVFullException;

    invoke-direct {v1}, Lcom/huawei/kvdb/HwKVFullException;-><init>()V

    throw v1

    .line 469
    .end local v2    # "rc":I
    :cond_5
    new-instance v1, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;

    invoke-direct {v1}, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;-><init>()V

    throw v1

    .line 466
    .end local v0    # "res":I
    :cond_6
    :goto_1
    return v1
.end method

.method remove(J)Z
    .locals 8
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVDatabaseDeleteException;,
            Lcom/huawei/kvdb/HwKVFullException;
        }
    .end annotation

    .line 495
    iget-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnection;->mReadOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 496
    return v1

    .line 497
    :cond_0
    iget-wide v2, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    invoke-direct {p0, v2, v3}, Lcom/huawei/kvdb/HwKVConnection;->callNativeIsFileDeleted(J)I

    move-result v0

    .line 498
    .local v0, "res":I
    if-nez v0, :cond_4

    .line 501
    iget-wide v3, p0, Lcom/huawei/kvdb/HwKVConnection;->mHandle:J

    iget-object v7, p0, Lcom/huawei/kvdb/HwKVConnection;->mTableName:Ljava/lang/String;

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/huawei/kvdb/HwKVConnection;->callNativeRemove(JJLjava/lang/String;)I

    move-result v2

    .line 502
    .local v2, "rc":I
    if-nez v2, :cond_1

    .line 503
    const/4 v1, 0x1

    return v1

    .line 505
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 506
    invoke-direct {p0}, Lcom/huawei/kvdb/HwKVConnection;->deleteDbFiles()V

    goto :goto_0

    .line 507
    :cond_2
    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    .line 509
    :goto_0
    return v1

    .line 508
    :cond_3
    new-instance v1, Lcom/huawei/kvdb/HwKVFullException;

    invoke-direct {v1}, Lcom/huawei/kvdb/HwKVFullException;-><init>()V

    throw v1

    .line 499
    .end local v2    # "rc":I
    :cond_4
    new-instance v1, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;

    invoke-direct {v1}, Lcom/huawei/kvdb/HwKVDatabaseDeleteException;-><init>()V

    throw v1
.end method
