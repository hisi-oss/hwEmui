.class public Landroid/graphics/AwareBitmapCacher;
.super Ljava/lang/Object;
.source "AwareBitmapCacher.java"

# interfaces
.implements Landroid/graphics/IAwareBitmapCacher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/AwareBitmapCacher$FileContent;,
        Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;,
        Landroid/graphics/AwareBitmapCacher$MyHandler;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHER_SIZE:Ljava/lang/String; = "persist.sys.iaware.size.BitmapDeocodeCache"

.field private static final BITMAP_CACHER_SWITCH:Ljava/lang/String; = "persist.sys.iaware.switch.BitmapDeocodeCache"

.field private static final INIT_FIAILED_STATUS:I = -0x2

.field private static final MAX_BITMAP_POINT:I = 0x3e8

.field private static final MAX_BITMAP_SIZE:I = 0x1e8480

.field private static final MSG_BITMAP_CACHER_INIT:I = 0x3e8

.field private static final MSG_BITMAP_CACHER_RELEASE:I = 0x3ea

.field private static final MSG_CHECK_IS_BG_AND_RELEASE:I = 0x3e9

.field private static final MUTIUSER_ADD_UID:I = 0x186a0

.field private static final SYSTEM_UID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AwareBitmapCacher"

.field private static final TIME_DELAY_BITMAP_CACHER_INIT:I = 0x1388

.field private static final TIME_DELAY_CACHE_RELEASE:I = 0xea60

.field private static final TIME_DELAY_CHECK_RELEASE:I = 0x1388

.field private static final UNINITED_STATUS:I = -0x1

.field private static final UNIT_K2BYTES:I = 0xa

.field private static final groupBG:Ljava/lang/String; = "background"

.field private static volatile mInstance:Landroid/graphics/AwareBitmapCacher; = null

.field private static final matcher:Ljava/lang/String; = "cpuset"


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mBitampCacherSize:I

.field private mBitmapCacherSwitch:Z

.field private mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMyHandler:Landroid/graphics/AwareBitmapCacher$MyHandler;

.field private mProcessName:Ljava/lang/String;

.field private mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Landroid/graphics/AwareBitmapCacher;

    invoke-direct {v0}, Landroid/graphics/AwareBitmapCacher;-><init>()V

    sput-object v0, Landroid/graphics/AwareBitmapCacher;->mInstance:Landroid/graphics/AwareBitmapCacher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/AwareBitmapCacher;->mBitmapCacherSwitch:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/AwareBitmapCacher;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/AwareBitmapCacher;

    .line 47
    invoke-direct {p0}, Landroid/graphics/AwareBitmapCacher;->handleInit()V

    return-void
.end method

.method static synthetic access$100(Landroid/graphics/AwareBitmapCacher;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/AwareBitmapCacher;

    .line 47
    invoke-direct {p0}, Landroid/graphics/AwareBitmapCacher;->handleCheckBgAndRelease()V

    return-void
.end method

.method static synthetic access$200(Landroid/graphics/AwareBitmapCacher;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/AwareBitmapCacher;

    .line 47
    invoke-direct {p0}, Landroid/graphics/AwareBitmapCacher;->handleReleaseCache()V

    return-void
.end method

.method static synthetic access$300(Landroid/graphics/AwareBitmapCacher;)Landroid/graphics/AwareBitmapCacher$MyHandler;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/AwareBitmapCacher;

    .line 47
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mMyHandler:Landroid/graphics/AwareBitmapCacher$MyHandler;

    return-object v0
.end method

.method public static getDefault()Landroid/graphics/IAwareBitmapCacher;
    .locals 1

    .line 87
    sget-object v0, Landroid/graphics/AwareBitmapCacher;->mInstance:Landroid/graphics/AwareBitmapCacher;

    return-object v0
.end method

.method private getString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 270
    if-eqz p1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleCheckBgAndRelease()V
    .locals 10

    .line 309
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 310
    .local v0, "myPid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cgroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "pathName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, "tmpFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 318
    :cond_0
    const/4 v3, 0x1

    .line 319
    .local v3, "procIsBg":Z
    const/4 v4, 0x0

    .line 320
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 321
    .local v5, "isr":Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    move-object v7, v6

    .line 324
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v8

    .line 325
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v5, v8

    .line 326
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v8

    .line 328
    nop

    .line 330
    .local v6, "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 331
    if-eqz v6, :cond_3

    .line 332
    const-string v8, "cpuset"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 333
    const-string v8, "background"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    .line 334
    const/4 v3, 0x1

    goto :goto_0

    .line 336
    :cond_2
    const/4 v3, 0x0

    .line 339
    goto :goto_0

    .line 354
    .end local v6    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 351
    :catch_0
    move-exception v6

    .line 352
    .local v6, "e":Ljava/io/IOException;
    :try_start_1
    const-string v8, "AwareBitmapCacher"

    const-string v9, "IOException!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 349
    :catch_1
    move-exception v6

    .line 350
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v8, "AwareBitmapCacher"

    const-string v9, "UnsupportedEncodingException!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 347
    :catch_2
    move-exception v6

    .line 348
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v8, "AwareBitmapCacher"

    const-string v9, "FileNotFoundException!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 345
    :catch_3
    move-exception v6

    .line 346
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v8, "AwareBitmapCacher"

    const-string v9, "NumberFormatException!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_0
    invoke-static {v7}, Landroid/graphics/AwareBitmapCacher$FileContent;->close(Ljava/io/BufferedReader;)V

    .line 355
    invoke-static {v5}, Landroid/graphics/AwareBitmapCacher$FileContent;->close(Ljava/io/InputStreamReader;)V

    .line 356
    invoke-static {v4}, Landroid/graphics/AwareBitmapCacher$FileContent;->close(Ljava/io/FileInputStream;)V

    .line 357
    nop

    .line 359
    if-eqz v3, :cond_4

    .line 360
    invoke-direct {p0}, Landroid/graphics/AwareBitmapCacher;->handleReleaseCache()V

    .line 362
    :cond_4
    return-void

    .line 354
    :goto_1
    invoke-static {v7}, Landroid/graphics/AwareBitmapCacher$FileContent;->close(Ljava/io/BufferedReader;)V

    .line 355
    invoke-static {v5}, Landroid/graphics/AwareBitmapCacher$FileContent;->close(Ljava/io/InputStreamReader;)V

    .line 356
    invoke-static {v4}, Landroid/graphics/AwareBitmapCacher$FileContent;->close(Ljava/io/FileInputStream;)V

    throw v6

    .line 314
    .end local v3    # "procIsBg":Z
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    const-string v3, "AwareBitmapCacher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCheckBgAndRelease can\'t access:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method private handleInit()V
    .locals 6

    .line 126
    const/4 v0, -0x2

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 127
    const-string v2, "AwareBitmapCacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInit reinit pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget v2, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    if-gtz v2, :cond_0

    .line 161
    .end local p0    # "this":Landroid/graphics/AwareBitmapCacher;
    :goto_0
    iput v0, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    .line 162
    iput-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mApplication:Landroid/app/Application;

    .line 163
    iput-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mMyHandler:Landroid/graphics/AwareBitmapCacher$MyHandler;

    .line 166
    return-void

    .line 128
    .restart local p0    # "this":Landroid/graphics/AwareBitmapCacher;
    :cond_0
    return-void

    .line 131
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const v3, 0x186a0

    rem-int/2addr v2, v3

    .line 132
    .local v2, "result":I
    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_3

    .line 133
    const-string v3, "AwareBitmapCacher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInit system app disable uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    iget v3, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    if-gtz v3, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    return-void

    .line 137
    :cond_3
    :try_start_2
    iget-object v3, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 138
    const-string v3, "AwareBitmapCacher"

    const-string v4, "handleInit disable mProcessName=null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    iget v3, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    if-gtz v3, :cond_4

    goto :goto_0

    .line 139
    :cond_4
    return-void

    .line 143
    :cond_5
    :try_start_3
    iget-object v3, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    const-string v4, "com.android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    const-string v4, "com.huawei."

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    const-string v4, "com.google."

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    const-string v4, "android.process."

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    const-string v4, ":"

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 152
    :cond_6
    const-string v3, "persist.sys.iaware.switch.BitmapDeocodeCache"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/graphics/AwareBitmapCacher;->mBitmapCacherSwitch:Z

    .line 153
    iget-boolean v3, p0, Landroid/graphics/AwareBitmapCacher;->mBitmapCacherSwitch:Z

    if-nez v3, :cond_8

    .line 154
    const-string v3, "AwareBitmapCacher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInit switch not opened pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    iget v3, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    if-gtz v3, :cond_7

    goto/16 :goto_0

    .line 155
    :cond_7
    return-void

    .line 158
    :cond_8
    :try_start_4
    const-string v3, "persist.sys.iaware.size.BitmapDeocodeCache"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    .end local v2    # "result":I
    iget v2, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    if-gtz v2, :cond_9

    goto/16 :goto_0

    .line 170
    :cond_9
    iget v0, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    shl-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    .line 171
    invoke-direct {p0}, Landroid/graphics/AwareBitmapCacher;->registerActivityCallback()V

    .line 172
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 173
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 174
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 175
    iget v0, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    invoke-direct {p0, v0}, Landroid/graphics/AwareBitmapCacher;->initCache(I)V

    .line 176
    return-void

    .line 148
    .restart local v2    # "result":I
    :cond_a
    :goto_1
    :try_start_5
    const-string v3, "AwareBitmapCacher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInit disable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    iget v3, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    if-gtz v3, :cond_b

    goto/16 :goto_0

    .line 149
    :cond_b
    return-void

    .line 160
    .end local v2    # "result":I
    :catchall_0
    move-exception v2

    iget v3, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    if-gtz v3, :cond_c

    goto/16 :goto_0

    .line 166
    :cond_c
    throw v2
.end method

.method private handleReleaseCache()V
    .locals 3

    .line 263
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "AwareBitmapCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReleaseCache: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget v0, p0, Landroid/graphics/AwareBitmapCacher;->mBitampCacherSize:I

    invoke-direct {p0, v0}, Landroid/graphics/AwareBitmapCacher;->initCache(I)V

    .line 267
    :cond_0
    return-void
.end method

.method private initCache(I)V
    .locals 3
    .param p1, "cacheSize"    # I

    .line 106
    const-string v0, "AwareBitmapCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init lrucache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-gtz p1, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 112
    :try_start_0
    new-instance v0, Landroid/graphics/AwareBitmapCacher$1;

    invoke-direct {v0, p0, p1}, Landroid/graphics/AwareBitmapCacher$1;-><init>(Landroid/graphics/AwareBitmapCacher;I)V

    iput-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mLruCache:Landroid/util/LruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private registerActivityCallback()V
    .locals 2

    .line 179
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mApplication:Landroid/app/Application;

    new-instance v1, Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;

    invoke-direct {v1, p0}, Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;-><init>(Landroid/graphics/AwareBitmapCacher;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheBitmap(Landroid/content/res/Resources;ILandroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 258
    invoke-direct {p0, p1, p2}, Landroid/graphics/AwareBitmapCacher;->getString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "pathName":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Landroid/graphics/AwareBitmapCacher;->cacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    .line 260
    return-void
.end method

.method public cacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 4
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 216
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mLruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    if-nez p1, :cond_1

    .line 221
    const-string v0, "AwareBitmapCacher"

    const-string v1, "cacheBitmap pathName null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 228
    if-eqz p2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 234
    .local v0, "bmByteCount":I
    const v1, 0x1e8480

    if-ge v0, v1, :cond_5

    if-gtz v0, :cond_3

    goto :goto_0

    .line 238
    :cond_3
    iget-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v0    # "bmByteCount":I
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 241
    nop

    .line 243
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mMyHandler:Landroid/graphics/AwareBitmapCacher$MyHandler;

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mMyHandler:Landroid/graphics/AwareBitmapCacher$MyHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/graphics/AwareBitmapCacher$MyHandler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mMyHandler:Landroid/graphics/AwareBitmapCacher$MyHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/AwareBitmapCacher$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 247
    :cond_4
    return-void

    .line 240
    .restart local v0    # "bmByteCount":I
    :cond_5
    :goto_0
    iget-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 235
    return-void

    .line 240
    .end local v0    # "bmByteCount":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 229
    :cond_6
    :goto_1
    :try_start_1
    const-string v0, "AwareBitmapCacher"

    const-string v1, "cacheBitmap bitmap null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 230
    return-void

    .line 240
    :goto_2
    iget-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public getCachedBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 251
    invoke-direct {p0, p1, p2}, Landroid/graphics/AwareBitmapCacher;->getString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "pathName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/graphics/AwareBitmapCacher;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "pathName"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mLruCache:Landroid/util/LruCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 187
    return-object v1

    .line 190
    :cond_0
    if-nez p1, :cond_1

    .line 191
    const-string v0, "AwareBitmapCacher"

    const-string v2, "getCachedBitmap pathName null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-object v1

    .line 196
    :cond_1
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 198
    :try_start_0
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 199
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->incReference()V

    goto :goto_1

    .line 201
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/graphics/AwareBitmapCacher;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v2, "AwareBitmapCacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCachedBitmap remove for isRecycled @pathName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    nop

    .line 209
    iget-object v2, p0, Landroid/graphics/AwareBitmapCacher;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 203
    return-object v1

    .line 209
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 210
    nop

    .line 209
    nop

    .line 211
    return-object v0

    .line 209
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/graphics/AwareBitmapCacher;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public init(Ljava/lang/String;Landroid/app/Application;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "app"    # Landroid/app/Application;

    .line 91
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "AwareBitmapCacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p2, p0, Landroid/graphics/AwareBitmapCacher;->mApplication:Landroid/app/Application;

    .line 98
    iput-object p1, p0, Landroid/graphics/AwareBitmapCacher;->mProcessName:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/graphics/AwareBitmapCacher$MyHandler;

    invoke-direct {v0, p0}, Landroid/graphics/AwareBitmapCacher$MyHandler;-><init>(Landroid/graphics/AwareBitmapCacher;)V

    iput-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mMyHandler:Landroid/graphics/AwareBitmapCacher$MyHandler;

    .line 100
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher;->mMyHandler:Landroid/graphics/AwareBitmapCacher$MyHandler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/AwareBitmapCacher$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 101
    return-void

    .line 92
    :cond_1
    :goto_0
    return-void
.end method
