.class public Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
.super Ljava/lang/Object;
.source "HwAISRImageViewTaskManagerImpl.java"

# interfaces
.implements Landroid/widget/sr/SRTaskInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SRTaskInfoImpl"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/sr/SRTaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private mSrcDrawable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/sr/SRTaskCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/widget/sr/SRTaskCallback;

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;-><init>(Landroid/widget/sr/SRTaskCallback;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method private constructor <init>(Landroid/widget/sr/SRTaskCallback;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "callback"    # Landroid/widget/sr/SRTaskCallback;
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->mCallback:Ljava/lang/ref/WeakReference;

    .line 198
    iput-object p2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 199
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->mSrcDrawable:Ljava/lang/ref/WeakReference;

    .line 200
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/sr/SRTaskCallback;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/sr/SRTaskCallback;
    .param p2, "x1"    # Landroid/graphics/Bitmap;
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;-><init>(Landroid/widget/sr/SRTaskCallback;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 181
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->mSrcBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 181
    iput-object p1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->mSrcBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 181
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->mSrcDrawable:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 181
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
