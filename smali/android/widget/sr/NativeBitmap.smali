.class public Landroid/widget/sr/NativeBitmap;
.super Ljava/lang/Object;
.source "NativeBitmap.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field public mFd:I

.field public mPtr:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;JI)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "ptr"    # J
    .param p4, "fd"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroid/widget/sr/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-wide p2, p0, Landroid/widget/sr/NativeBitmap;->mPtr:J

    .line 18
    iput p4, p0, Landroid/widget/sr/NativeBitmap;->mFd:I

    .line 19
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 22
    iget-object v0, p0, Landroid/widget/sr/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFd()I
    .locals 1

    .line 30
    iget v0, p0, Landroid/widget/sr/NativeBitmap;->mFd:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 41
    iget-object v0, p0, Landroid/widget/sr/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, -0x1

    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Landroid/widget/sr/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPtr()J
    .locals 2

    .line 26
    iget-wide v0, p0, Landroid/widget/sr/NativeBitmap;->mPtr:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 34
    iget-object v0, p0, Landroid/widget/sr/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, -0x1

    return v0

    .line 37
    :cond_0
    iget-object v0, p0, Landroid/widget/sr/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
