.class public Landroid/widget/sr/SRBitmapTask;
.super Ljava/lang/Object;
.source "SRBitmapTask.java"


# static fields
.field private static final DB:Z = true

.field private static final TAG:Ljava/lang/String; = "SRBitmapTask"

.field private static final WAIT_TIME_OUT:I = 0x190


# instance fields
.field private mAshmemBitmap:Landroid/graphics/Bitmap;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private volatile mCondition:Z

.field private mSRSuccess:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/sr/SRBitmapTask;->mSRSuccess:Z

    .line 33
    iput-boolean v0, p0, Landroid/widget/sr/SRBitmapTask;->mCondition:Z

    .line 34
    iput-object p1, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/sr/SRBitmapTask;->mAshmemBitmap:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized getAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapTask;->mAshmemBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapTask;
    throw v0
.end method

.method public declared-synchronized notifyTask()V
    .locals 1

    monitor-enter p0

    .line 94
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/widget/sr/SRBitmapTask;->mCondition:Z

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapTask;
    throw v0
.end method

.method public declared-synchronized setAshmemBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dst"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapTask;->mAshmemBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v0, "SRBitmapTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAshmemBitmap: src changed !!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/widget/sr/SRBitmapTask;->mSRSuccess:Z

    .line 44
    iput-object p2, p0, Landroid/widget/sr/SRBitmapTask;->mAshmemBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 38
    .end local p1    # "src":Landroid/graphics/Bitmap;
    .end local p2    # "dst":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapTask;
    throw p1
.end method

.method public declared-synchronized waitTask(Landroid/widget/sr/SRBitmapManagerImpl;)V
    .locals 11
    .param p1, "manager"    # Landroid/widget/sr/SRBitmapManagerImpl;

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 54
    .local v0, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 56
    .local v2, "startTimeForDebug":J
    const-wide/16 v4, 0x190

    add-long/2addr v4, v0

    .line 57
    .local v4, "endMillis":J
    const-string v6, "SRBitmapTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCondition is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Landroid/widget/sr/SRBitmapTask;->mCondition:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    iget-boolean v6, p0, Landroid/widget/sr/SRBitmapTask;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 60
    :try_start_1
    const-string v6, "SRBitmapTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " start wait: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sub-long v6, v4, v0

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_1

    .line 62
    :catch_0
    move-exception v6

    .line 63
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v7, "SRBitmapTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "srBitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v6, v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ltz v6, :cond_2

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/sr/SRBitmapManagerImpl;->removeTaskFromQueue(Landroid/widget/sr/SRBitmapTask;)V

    .line 73
    iget-object v6, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/widget/sr/SRBitmapManagerImpl;->getSRStatus()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    goto :goto_2

    :cond_1
    move v7, v8

    :goto_2
    invoke-static {v6, v7}, Landroid/widget/sr/DebugUtil;->debugTimeout(Landroid/graphics/Bitmap;Z)V

    .line 74
    const-string v6, "SRBitmapTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time out : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 76
    :cond_2
    iget-boolean v6, p0, Landroid/widget/sr/SRBitmapTask;->mSRSuccess:Z

    if-eqz v6, :cond_3

    .line 78
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v9, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 80
    .local v9, "paint":Landroid/graphics/Paint;
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    iget-object v8, p0, Landroid/widget/sr/SRBitmapTask;->mAshmemBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    iget-object v8, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v8, v10, v2, v3, v7}, Landroid/widget/sr/DebugUtil;->debugDone(Landroid/graphics/Bitmap;FJZ)V

    .line 83
    const-string v7, "SRBitmapTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " success: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "paint":Landroid/graphics/Paint;
    goto :goto_3

    .line 86
    :cond_3
    iget-object v6, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v6, v7, v2, v3, v8}, Landroid/widget/sr/DebugUtil;->debugDone(Landroid/graphics/Bitmap;FJZ)V

    .line 87
    const-string v6, "SRBitmapTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "quit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/widget/sr/SRBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :goto_3
    monitor-exit p0

    return-void

    .line 51
    .end local v0    # "startTime":J
    .end local v2    # "startTimeForDebug":J
    .end local v4    # "endMillis":J
    .end local p1    # "manager":Landroid/widget/sr/SRBitmapManagerImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapTask;
    throw p1
.end method
