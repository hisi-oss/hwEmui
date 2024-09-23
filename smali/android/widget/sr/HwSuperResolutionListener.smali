.class public abstract Landroid/widget/sr/HwSuperResolutionListener;
.super Ljava/lang/Object;
.source "HwSuperResolutionListener.java"


# static fields
.field public static final FRAMEWORK_REPORT_PROCESS_ID:I = 0x0

.field private static final REPORT_PROCESS_COUNT_LIMIT:I = 0x14

.field public static final REPORT_PROCESS_ID:I = 0x3615d355

.field private static final RET_ERROR:I = -0x1

.field private static final RET_OK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HwSuperResolutionListener"


# instance fields
.field private mCurrentCount:I

.field private mDesAshBmps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/sr/NativeBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcAshBmps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/sr/NativeBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mDesAshBmps:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mCurrentCount:I

    return-void
.end method


# virtual methods
.method public addDesFdBitmap(ILandroid/widget/sr/NativeBitmap;)V
    .locals 2
    .param p1, "fd"    # I
    .param p2, "dnb"    # Landroid/widget/sr/NativeBitmap;

    .line 88
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mDesAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public addSrcFdBitmap(ILandroid/widget/sr/NativeBitmap;)V
    .locals 2
    .param p1, "fd"    # I
    .param p2, "snb"    # Landroid/widget/sr/NativeBitmap;

    .line 84
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public clearBmpData()V
    .locals 2

    .line 96
    const-string v0, "HwSuperResolutionListener"

    const-string v1, "clearBmpData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mDesAshBmps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    return-void
.end method

.method public getCurrentCount()I
    .locals 1

    .line 48
    iget v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mCurrentCount:I

    return v0
.end method

.method public onError(I)V
    .locals 0
    .param p1, "errCode"    # I

    .line 34
    invoke-virtual {p0}, Landroid/widget/sr/HwSuperResolutionListener;->clearBmpData()V

    .line 35
    return-void
.end method

.method public abstract onProcessDone(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public onProcessDoneInt(I)I
    .locals 5
    .param p1, "fd"    # I

    .line 56
    iget v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mCurrentCount:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 57
    const v0, 0x3615d355

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/hwcontrol/HwWidgetFactory;->reportSrBigData(IILjava/lang/Object;)V

    .line 58
    iput v2, p0, Landroid/widget/sr/HwSuperResolutionListener;->mCurrentCount:I

    .line 60
    :cond_0
    iget v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mCurrentCount:I

    .line 62
    invoke-static {p1}, Landroid/widget/sr/HwSuperResolution;->nativeSetReadOnly(I)I

    .line 63
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mDesAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/sr/NativeBitmap;

    .line 65
    .local v0, "srcNbmp":Landroid/widget/sr/NativeBitmap;
    iget-object v1, p0, Landroid/widget/sr/HwSuperResolutionListener;->mDesAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/sr/NativeBitmap;

    .line 66
    .local v1, "desNbmp":Landroid/widget/sr/NativeBitmap;
    invoke-virtual {v0}, Landroid/widget/sr/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/sr/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/sr/HwSuperResolutionListener;->onProcessDone(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67
    iget-object v3, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, p0, Landroid/widget/sr/HwSuperResolutionListener;->mDesAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return v2

    .line 71
    .end local v0    # "srcNbmp":Landroid/widget/sr/NativeBitmap;
    .end local v1    # "desNbmp":Landroid/widget/sr/NativeBitmap;
    :cond_1
    const-string v0, "HwSuperResolutionListener"

    const-string v1, "onProcessDoneInt failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public onServiceDied()V
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroid/widget/sr/HwSuperResolutionListener;->clearBmpData()V

    .line 45
    return-void
.end method

.method public abstract onStartDone()V
.end method

.method public abstract onStopDone()V
.end method

.method public onTimeOut(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {p0}, Landroid/widget/sr/HwSuperResolutionListener;->clearBmpData()V

    .line 40
    return-void
.end method

.method public onTimeOutInt(I)V
    .locals 2
    .param p1, "fd"    # I

    .line 77
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mSrcAshBmps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/sr/NativeBitmap;

    .line 79
    .local v0, "srcNbmp":Landroid/widget/sr/NativeBitmap;
    invoke-virtual {v0}, Landroid/widget/sr/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/sr/HwSuperResolutionListener;->onTimeOut(Landroid/graphics/Bitmap;)V

    .line 81
    .end local v0    # "srcNbmp":Landroid/widget/sr/NativeBitmap;
    :cond_0
    return-void
.end method

.method public resetCurrentCount()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/HwSuperResolutionListener;->mCurrentCount:I

    .line 53
    return-void
.end method
