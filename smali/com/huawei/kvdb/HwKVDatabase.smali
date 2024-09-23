.class public Lcom/huawei/kvdb/HwKVDatabase;
.super Ljava/lang/Object;
.source "HwKVDatabase.java"


# static fields
.field public static final IMAGE:I = 0x1

.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field public static final VIDEO:I = 0x3

.field private static database:Lcom/huawei/kvdb/HwKVDatabase;

.field private static sCrcTable:[J


# instance fields
.field private kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/kvdb/HwKVDatabase;->database:Lcom/huawei/kvdb/HwKVDatabase;

    .line 39
    const/16 v0, 0x100

    new-array v1, v0, [J

    sput-object v1, Lcom/huawei/kvdb/HwKVDatabase;->sCrcTable:[J

    .line 56
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 57
    int-to-long v3, v2

    .line 58
    .local v3, "part":J
    move-wide v4, v3

    move v3, v1

    .local v3, "j":I
    .local v4, "part":J
    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    .line 59
    long-to-int v6, v4

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    const-wide v8, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    goto :goto_2

    :cond_0
    const-wide/16 v8, 0x0

    .line 60
    .local v8, "x":J
    :goto_2
    shr-long v6, v4, v7

    xor-long v4, v6, v8

    .line 58
    .end local v8    # "x":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v3    # "j":I
    :cond_1
    sget-object v3, Lcom/huawei/kvdb/HwKVDatabase;->sCrcTable:[J

    aput-wide v4, v3, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    .end local v4    # "part":J
    :cond_2
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-direct {v0, p1}, Lcom/huawei/kvdb/HwKVConnectionPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    .line 128
    return-void
.end method

.method private static crc64Long([B)J
    .locals 8
    .param p0, "buffer"    # [B

    .line 89
    const-wide/16 v0, -0x1

    .line 90
    .local v0, "crc":J
    const/4 v2, 0x0

    .local v2, "k":I
    array-length v3, p0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 91
    sget-object v4, Lcom/huawei/kvdb/HwKVDatabase;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "k":I
    .end local v3    # "n":I
    :cond_0
    return-wide v0
.end method

.method public static generateKey(IJII)J
    .locals 4
    .param p0, "id"    # I
    .param p1, "timeModified"    # J
    .param p3, "mediaType"    # I
    .param p4, "type"    # I

    .line 112
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/image/item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "path":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 114
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/video/item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    .restart local v0    # "path":Ljava/lang/String;
    :goto_1
    nop

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/kvdb/HwKVDatabase;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 118
    .local v1, "keys":[B
    invoke-static {v1}, Lcom/huawei/kvdb/HwKVDatabase;->crc64Long([B)J

    move-result-wide v2

    return-wide v2

    .line 116
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "keys":[B
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 74
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 75
    .local v1, "output":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-char v5, v2, v4

    .line 76
    .local v5, "ch":C
    add-int/lit8 v6, v1, 0x1

    .local v6, "output":I
    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 77
    .end local v1    # "output":I
    add-int/lit8 v1, v6, 0x1

    .restart local v1    # "output":I
    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 75
    .end local v5    # "ch":C
    .end local v6    # "output":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/kvdb/HwKVDatabase;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/huawei/kvdb/HwKVDatabase;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/huawei/kvdb/HwKVDatabase;->database:Lcom/huawei/kvdb/HwKVDatabase;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lcom/huawei/kvdb/HwKVDatabase;

    invoke-direct {v1, p0}, Lcom/huawei/kvdb/HwKVDatabase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/kvdb/HwKVDatabase;->database:Lcom/huawei/kvdb/HwKVDatabase;

    .line 141
    :cond_0
    sget-object v1, Lcom/huawei/kvdb/HwKVDatabase;->database:Lcom/huawei/kvdb/HwKVDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 137
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->closeConnection()V

    .line 152
    return-void
.end method

.method public getAllKeys()Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->getReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v0

    .line 341
    .local v0, "kvConnection":Lcom/huawei/kvdb/HwKVConnection;
    if-nez v0, :cond_0

    .line 342
    const/4 v1, 0x0

    return-object v1

    .line 344
    :cond_0
    const/4 v1, 0x0

    .line 345
    .local v1, "hashTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    move v3, v2

    .line 347
    .local v3, "connectionException":Z
    :try_start_0
    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnection;->getAllKeys()Ljava/util/Hashtable;

    move-result-object v4
    :try_end_0
    .catch Lcom/huawei/kvdb/HwKVDatabaseDeleteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 353
    if-nez v3, :cond_1

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v2, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    goto :goto_1

    .line 353
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 348
    :catch_0
    move-exception v4

    .line 349
    .local v4, "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    const/4 v1, 0x0

    .line 350
    :try_start_1
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v5, v0, v2}, Lcom/huawei/kvdb/HwKVConnectionPool;->closeExceptionConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    const/4 v3, 0x1

    .line 353
    .end local v4    # "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    if-nez v3, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    :goto_1
    return-object v1

    .line 353
    :goto_2
    if-nez v3, :cond_2

    .line 354
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v4, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    :cond_2
    throw v2
.end method

.method public getBitmap(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "key"    # J
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 230
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->getReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v0

    .line 231
    .local v0, "kvConnection":Lcom/huawei/kvdb/HwKVConnection;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 232
    return-object v1

    .line 234
    :cond_0
    const/4 v2, 0x0

    .line 235
    .local v2, "res":Lcom/huawei/kvdb/HwKVData;
    const/4 v3, 0x1

    .line 237
    .local v3, "openConnection":Z
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->get(J)Lcom/huawei/kvdb/HwKVData;

    move-result-object v5
    :try_end_0
    .catch Lcom/huawei/kvdb/HwKVDatabaseDeleteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 242
    goto :goto_0

    .line 238
    :catch_0
    move-exception v5

    .line 239
    .local v5, "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    const/4 v2, 0x0

    .line 240
    iget-object v6, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v6, v0, v4}, Lcom/huawei/kvdb/HwKVConnectionPool;->closeExceptionConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V

    .line 241
    const/4 v3, 0x0

    .line 243
    .end local v5    # "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    :goto_0
    nop

    .line 245
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 246
    :try_start_1
    iget-object v5, v2, Lcom/huawei/kvdb/HwKVData;->value:[B

    iget v6, v2, Lcom/huawei/kvdb/HwKVData;->size:I

    invoke-static {v5, v4, v6, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 250
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v5, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    :cond_1
    throw v4

    .line 249
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 250
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v4, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    .line 252
    :cond_3
    return-object v1
.end method

.method public getKVConnection()Lcom/huawei/kvdb/HwKVConnection;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->getReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v0

    return-object v0
.end method

.method public getKVConnectionPool()Lcom/huawei/kvdb/HwKVConnectionPool;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    return-object v0
.end method

.method public getKeyNum()I
    .locals 6

    .line 314
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->getReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v0

    .line 315
    .local v0, "kvConnection":Lcom/huawei/kvdb/HwKVConnection;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 316
    return v1

    .line 318
    :cond_0
    const/4 v2, 0x0

    .line 319
    .local v2, "res":I
    move v3, v1

    .line 321
    .local v3, "connectionException":Z
    :try_start_0
    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnection;->getKeyNum()I

    move-result v4
    :try_end_0
    .catch Lcom/huawei/kvdb/HwKVDatabaseDeleteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 327
    .end local v2    # "res":I
    .local v1, "res":I
    if-nez v3, :cond_2

    .line 328
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v2, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    goto :goto_0

    .line 327
    .end local v1    # "res":I
    .restart local v2    # "res":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 322
    :catch_0
    move-exception v4

    .line 323
    .local v4, "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    const/4 v2, 0x0

    .line 324
    :try_start_1
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v5, v0, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->closeExceptionConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    const/4 v3, 0x1

    .line 327
    .end local v4    # "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    if-nez v3, :cond_1

    .line 328
    iget-object v1, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v1, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    .line 330
    :cond_1
    move v1, v2

    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_2
    :goto_0
    return v1

    .line 327
    .end local v1    # "res":I
    .restart local v2    # "res":I
    :goto_1
    if-nez v3, :cond_3

    .line 328
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v4, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    :cond_3
    throw v1
.end method

.method public hasKey(J)Z
    .locals 6
    .param p1, "key"    # J

    .line 262
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->getReadOnlyConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v0

    .line 263
    .local v0, "kvConnection":Lcom/huawei/kvdb/HwKVConnection;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    return v1

    .line 266
    :cond_0
    const/4 v2, 0x0

    .line 267
    .local v2, "res":Z
    move v3, v1

    .line 269
    .local v3, "connectionException":Z
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->hasKey(J)Z

    move-result v4
    :try_end_0
    .catch Lcom/huawei/kvdb/HwKVDatabaseDeleteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 275
    .end local v2    # "res":Z
    .local v1, "res":Z
    if-nez v3, :cond_1

    .line 276
    :goto_0
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v2, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    goto :goto_1

    .line 275
    .end local v1    # "res":Z
    .restart local v2    # "res":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 270
    :catch_0
    move-exception v4

    .line 271
    .local v4, "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    :try_start_1
    iget-object v5, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v5, v0, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->closeExceptionConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    const/4 v1, 0x0

    .line 273
    .end local v2    # "res":Z
    .restart local v1    # "res":Z
    const/4 v3, 0x1

    .line 275
    .end local v4    # "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    if-nez v3, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    :goto_1
    return v1

    .line 275
    .end local v1    # "res":Z
    .restart local v2    # "res":Z
    :goto_2
    if-nez v3, :cond_2

    .line 276
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v4, v0}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    :cond_2
    throw v1
.end method

.method public put(J[BI)Z
    .locals 6
    .param p1, "key"    # J
    .param p3, "value"    # [B
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVFullException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    array-length v1, p3

    if-eqz v1, :cond_4

    array-length v1, p3

    if-eq v1, p4, :cond_0

    goto :goto_3

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, "res":Z
    iget-object v2, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v2}, Lcom/huawei/kvdb/HwKVConnectionPool;->getWriteConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v2

    .line 170
    .local v2, "kvConnection":Lcom/huawei/kvdb/HwKVConnection;
    if-nez v2, :cond_1

    .line 171
    return v0

    .line 173
    :cond_1
    nop

    .line 175
    .local v0, "connectionException":Z
    :try_start_0
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/huawei/kvdb/HwKVConnection;->put(J[BI)Z

    move-result v3
    :try_end_0
    .catch Lcom/huawei/kvdb/HwKVDatabaseDeleteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/huawei/kvdb/HwKVFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 183
    if-nez v0, :cond_2

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v3, v2}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseWriteConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 180
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Lcom/huawei/kvdb/HwKVFullException;
    :try_start_1
    new-instance v4, Lcom/huawei/kvdb/HwKVFullException;

    invoke-direct {v4}, Lcom/huawei/kvdb/HwKVFullException;-><init>()V

    throw v4

    .line 176
    .end local v3    # "e":Lcom/huawei/kvdb/HwKVFullException;
    :catch_1
    move-exception v3

    .line 177
    .local v3, "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/huawei/kvdb/HwKVConnectionPool;->closeExceptionConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    const/4 v1, 0x0

    .line 179
    const/4 v0, 0x1

    .line 183
    .end local v3    # "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    if-nez v0, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    :goto_1
    return v1

    .line 183
    :goto_2
    if-nez v0, :cond_3

    .line 184
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v4, v2}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseWriteConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    :cond_3
    throw v3

    .line 166
    .end local v0    # "connectionException":Z
    .end local v1    # "res":Z
    .end local v2    # "kvConnection":Lcom/huawei/kvdb/HwKVConnection;
    :cond_4
    :goto_3
    return v0
.end method

.method public releaseKVConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V
    .locals 2
    .param p1, "kvConnection"    # Lcom/huawei/kvdb/HwKVConnection;
    .param p2, "isDatabaseExist"    # Z

    .line 302
    if-eqz p2, :cond_0

    .line 303
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v0, p1}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseReadOnlyConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->closeExceptionConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V

    .line 306
    :goto_0
    return-void
.end method

.method public remove(J)Z
    .locals 6
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/kvdb/HwKVFullException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "res":Z
    iget-object v1, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->getWriteConnection()Lcom/huawei/kvdb/HwKVConnection;

    move-result-object v1

    .line 201
    .local v1, "kvConnection":Lcom/huawei/kvdb/HwKVConnection;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 202
    return v2

    .line 204
    :cond_0
    nop

    .line 206
    .local v2, "connectionException":Z
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/huawei/kvdb/HwKVConnection;->remove(J)Z

    move-result v3
    :try_end_0
    .catch Lcom/huawei/kvdb/HwKVDatabaseDeleteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/huawei/kvdb/HwKVFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 214
    if-nez v2, :cond_1

    .line 215
    :goto_0
    iget-object v3, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v3, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseWriteConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    goto :goto_1

    .line 214
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 211
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Lcom/huawei/kvdb/HwKVFullException;
    :try_start_1
    new-instance v4, Lcom/huawei/kvdb/HwKVFullException;

    invoke-direct {v4}, Lcom/huawei/kvdb/HwKVFullException;-><init>()V

    throw v4

    .line 207
    .end local v3    # "e":Lcom/huawei/kvdb/HwKVFullException;
    :catch_1
    move-exception v3

    .line 208
    .local v3, "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/huawei/kvdb/HwKVConnectionPool;->closeExceptionConnection(Lcom/huawei/kvdb/HwKVConnection;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const/4 v0, 0x0

    .line 210
    const/4 v2, 0x1

    .line 214
    .end local v3    # "e":Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
    if-nez v2, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    :goto_1
    return v0

    .line 214
    :goto_2
    if-nez v2, :cond_2

    .line 215
    iget-object v4, p0, Lcom/huawei/kvdb/HwKVDatabase;->kvConnectionPool:Lcom/huawei/kvdb/HwKVConnectionPool;

    invoke-virtual {v4, v1}, Lcom/huawei/kvdb/HwKVConnectionPool;->releaseWriteConnection(Lcom/huawei/kvdb/HwKVConnection;)V

    :cond_2
    throw v3
.end method
