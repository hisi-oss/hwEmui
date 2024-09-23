.class Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;
.super Ljava/lang/Thread;
.source "HwGalleryCacheManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecoderThread"
.end annotation


# static fields
.field private static final MSG_STOP:I = 0x1

.field private static final MSG_TASK:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field public mStopped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .line 547
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mHandler:Landroid/os/Handler;

    .line 543
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mLock:Ljava/lang/Object;

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mStopped:Z

    .line 548
    return-void
.end method

.method static synthetic access$200(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    .line 539
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    .line 539
    invoke-direct {p0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->resetTimer()V

    return-void
.end method

.method static synthetic access$400(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;Landroid/graphics/Bitmap$GalleryCacheInfo;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;
    .param p1, "x1"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 539
    invoke-direct {p0, p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->decodeAsync(Landroid/graphics/Bitmap$GalleryCacheInfo;)V

    return-void
.end method

.method private decodeAsync(Landroid/graphics/Bitmap$GalleryCacheInfo;)V
    .locals 4
    .param p1, "cache"    # Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 602
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :goto_0
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 605
    :try_start_1
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    :goto_1
    goto :goto_0

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "HwGalleryCacheManagerImpl"

    const-string v3, "Interrupted while waiting for decode response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 610
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 613
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 614
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 615
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 616
    return-void

    .line 610
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private resetTimer()V
    .locals 4

    .line 620
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :goto_0
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 623
    :try_start_1
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :goto_1
    goto :goto_0

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "HwGalleryCacheManagerImpl"

    const-string v3, "Interrupted while waiting for decode response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 628
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 632
    return-void

    .line 628
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 552
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 554
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    new-instance v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread$1;

    invoke-direct {v1, p0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread$1;-><init>(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;)V

    iput-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mHandler:Landroid/os/Handler;

    .line 595
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 596
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 599
    return-void

    .line 596
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
