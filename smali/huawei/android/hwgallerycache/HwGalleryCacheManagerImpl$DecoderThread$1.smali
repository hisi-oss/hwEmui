.class Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread$1;
.super Landroid/os/Handler;
.source "HwGalleryCacheManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;


# direct methods
.method constructor <init>(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    .line 555
    iput-object p1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread$1;->this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 558
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 559
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap$GalleryCacheInfo;

    .line 560
    .local v0, "cache":Landroid/graphics/Bitmap$GalleryCacheInfo;
    const/4 v3, 0x0

    .line 562
    .local v3, "wechatThumb":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->access$000(Landroid/graphics/Bitmap$GalleryCacheInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    monitor-enter v0

    .line 566
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setIsDecoding(Z)V

    .line 567
    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 569
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 570
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 571
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 572
    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getFilter()Z

    move-result v10

    .line 570
    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 574
    :cond_1
    move-object v3, v2

    .line 577
    :goto_0
    if-eqz v3, :cond_2

    .line 578
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setWechatThumb(Landroid/graphics/Bitmap;)V

    .line 580
    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->setIsDecoding(Z)V

    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 582
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    monitor-exit v0

    .line 583
    .end local v0    # "cache":Landroid/graphics/Bitmap$GalleryCacheInfo;
    .end local v3    # "wechatThumb":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 582
    .restart local v0    # "cache":Landroid/graphics/Bitmap$GalleryCacheInfo;
    .restart local v3    # "wechatThumb":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 583
    .end local v0    # "cache":Landroid/graphics/Bitmap$GalleryCacheInfo;
    .end local v3    # "wechatThumb":Landroid/graphics/Bitmap;
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_5

    .line 584
    invoke-static {}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 585
    :try_start_1
    iget-object v3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread$1;->this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-static {v3}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->access$200(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 586
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread$1;->this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    invoke-static {v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->access$300(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;)V

    goto :goto_1

    .line 588
    :cond_4
    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread$1;->this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;

    iput-boolean v2, v1, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$DecoderThread;->mStopped:Z

    .line 589
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 591
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 593
    :cond_5
    :goto_2
    return-void
.end method
