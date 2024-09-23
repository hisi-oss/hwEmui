.class Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;
.super Ljava/lang/Thread;
.source "HwGalleryCacheManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbThread"
.end annotation


# instance fields
.field private mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/graphics/Bitmap$GalleryCacheInfo;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cache"    # Landroid/graphics/Bitmap$GalleryCacheInfo;
    .param p3, "view"    # Landroid/widget/ImageView;

    .line 727
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mHandler:Landroid/os/Handler;

    .line 724
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 725
    iput-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mImageView:Landroid/widget/ImageView;

    .line 728
    iput-object p1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mHandler:Landroid/os/Handler;

    .line 729
    iput-object p2, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 730
    iput-object p3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mImageView:Landroid/widget/ImageView;

    .line 731
    return-void
.end method

.method static synthetic access$500(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;

    .line 722
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;)Landroid/graphics/Bitmap$GalleryCacheInfo;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;

    .line 722
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 735
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    if-nez v0, :cond_0

    .line 736
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-static {v0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->access$000(Landroid/graphics/Bitmap$GalleryCacheInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    const/4 v0, 0x0

    .line 742
    .local v0, "wechatThumb":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    monitor-enter v1

    .line 743
    :try_start_0
    iget-object v2, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setIsDecoding(Z)V

    .line 744
    iget-object v2, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 746
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 747
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 748
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 749
    invoke-virtual {v3}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getFilter()Z

    move-result v9

    .line 747
    move-object v3, v2

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 751
    :cond_1
    move-object v0, v2

    .line 754
    :goto_0
    if-eqz v0, :cond_2

    .line 755
    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setWechatThumb(Landroid/graphics/Bitmap;)V

    .line 758
    :cond_2
    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setIsDecoding(Z)V

    .line 759
    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 760
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    monitor-exit v1

    .line 761
    .end local v0    # "wechatThumb":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 760
    .restart local v0    # "wechatThumb":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 762
    .end local v0    # "wechatThumb":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    monitor-enter v0

    .line 764
    :goto_1
    :try_start_1
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getIsDecoding()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_4

    .line 766
    :try_start_2
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 769
    :goto_2
    goto :goto_1

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HwGalleryCacheManagerImpl"

    const-string v3, "Interrupted while waiting for decode response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 771
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 774
    :goto_3
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mCache:Landroid/graphics/Bitmap$GalleryCacheInfo;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getWechatThumb()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 775
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread$1;

    invoke-direct {v1, p0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread$1;-><init>(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 784
    :cond_5
    return-void

    .line 771
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
