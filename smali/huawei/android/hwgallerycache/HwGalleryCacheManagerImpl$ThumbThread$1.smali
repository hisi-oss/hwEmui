.class Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread$1;
.super Ljava/lang/Object;
.source "HwGalleryCacheManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;


# direct methods
.method constructor <init>(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;

    .line 775
    iput-object p1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread$1;->this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 778
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread$1;->this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;

    invoke-static {v0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->access$500(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;)Landroid/widget/ImageView;

    move-result-object v0

    iget v0, v0, Landroid/widget/ImageView;->mInBigView:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 779
    iget-object v0, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread$1;->this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;

    invoke-static {v0}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->access$500(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread$1;->this$0:Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;

    invoke-static {v1}, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;->access$600(Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$ThumbThread;)Landroid/graphics/Bitmap$GalleryCacheInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$GalleryCacheInfo;->getWechatThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 781
    :cond_0
    return-void
.end method
