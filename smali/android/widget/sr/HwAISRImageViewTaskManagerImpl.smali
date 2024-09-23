.class public Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
.super Landroid/widget/sr/HwSuperResolutionListener;
.source "HwAISRImageViewTaskManagerImpl.java"

# interfaces
.implements Landroid/widget/sr/HwAISRImageViewTaskManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    }
.end annotation


# static fields
.field private static final DDK_STATUS_NOT_STARTED:I = 0x0

.field private static final DDK_STATUS_PROCESSING:I = 0x4

.field private static final DDK_STATUS_STARTED:I = 0x2

.field private static final DDK_STATUS_STARTING:I = 0x1

.field private static final DDK_STATUS_STOPPING:I = 0x3

.field private static final HISI_DDK_WECHAT_MODE:I = 0x1

.field private static final KEEP_WAITING_DURATION:J = 0xea60L

.field private static final MAX_PROCESS_ERROR_COUNT:I = 0x1e

.field private static final MAX_START_ERROR_COUNT:I = 0x5

.field private static final SR_IMAGEVIEW_RATIO:I = 0x3

.field private static final SR_TAG:Ljava/lang/String; = "SuperResolution"

.field private static final TIMEOUT_DURATION:J = 0xbb8L

.field private static sInstance:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

.field private static sIsDDKStatusAvailable:Z

.field private static sIsSuperResolutionSupport:Z


# instance fields
.field private mClearWhenTimeoutRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

.field private mDDKStatus:I

.field private mManageHandler:Landroid/os/Handler;

.field private mManageThread:Landroid/os/HandlerThread;

.field private mMemoryRecorder:Landroid/widget/sr/SRMemoryRecorder;

.field private mProcessErrorCount:I

.field private mStartErrorCount:I

.field private mSuperResolution:Landroid/widget/sr/HwSuperResolution;

.field private mTaskQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Landroid/widget/sr/Utils;->isSuperResolutionSupport()Z

    move-result v0

    sput-boolean v0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->sIsSuperResolutionSupport:Z

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->sIsDDKStatusAvailable:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Landroid/widget/sr/HwSuperResolutionListener;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    .line 81
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    .line 82
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mProcessErrorCount:I

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    .line 91
    new-instance v0, Landroid/widget/sr/SRMemoryRecorder;

    invoke-direct {v0}, Landroid/widget/sr/SRMemoryRecorder;-><init>()V

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mMemoryRecorder:Landroid/widget/sr/SRMemoryRecorder;

    .line 376
    new-instance v0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$2;-><init>(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;)V

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mClearWhenTimeoutRunnable:Ljava/lang/Runnable;

    .line 131
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->createManageThread()V

    .line 132
    iput-object p1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method static synthetic access$100(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    .param p1, "x1"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->scheduleTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;)Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    .locals 1
    .param p0, "x0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    .line 20
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    .param p1, "x1"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->doCancelTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V

    return-void
.end method

.method private declared-synchronized clearCurrentTaskAndGetNext()V
    .locals 2

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mClearWhenTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 458
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    .line 460
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 464
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->stop()Z

    goto :goto_0

    .line 467
    :cond_0
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->getAndDoNextTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :goto_0
    monitor-exit p0

    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw v0
.end method

.method private createManageThread()V
    .locals 2

    .line 207
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SRManagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageThread:Landroid/os/HandlerThread;

    .line 208
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 209
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageHandler:Landroid/os/Handler;

    .line 210
    return-void
.end method

.method private declared-synchronized doCancelTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V
    .locals 4
    .param p1, "taskInfo"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    monitor-enter p0

    .line 416
    :try_start_0
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancelTask: taskInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->isSuperResolutionAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const-string v0, "SuperResolution"

    const-string v1, "doCancelTask: SuperResolution is not available now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 423
    :cond_0
    if-nez p1, :cond_1

    .line 424
    :try_start_1
    const-string v0, "SuperResolution"

    const-string v1, "doCancelTask: can\'t cancel an null taskInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 428
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 434
    :cond_2
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 435
    .local v1, "iSRTaskInfoImpl":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    if-ne p1, v1, :cond_3

    .line 436
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 438
    const-string v0, "SuperResolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCancelTask: remove taskInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 442
    .end local v1    # "iSRTaskInfoImpl":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    :cond_3
    goto :goto_0

    .line 443
    :cond_4
    :try_start_3
    const-string v0, "SuperResolution"

    const-string v1, "doCancelTask: can\'t find taskInfo, it has been processed or removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    :goto_1
    monitor-exit p0

    return-void

    .line 415
    .end local p1    # "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw p1
.end method

.method private declared-synchronized doNewTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Z
    .locals 8
    .param p1, "taskInfo"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    monitor-enter p0

    .line 284
    :try_start_0
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doNewTask: taskInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput-object p1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->isSuperResolutionAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "SuperResolution"

    const-string v3, "postNewTask: SuperResolution is not available now."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    monitor-exit p0

    return v1

    .line 299
    :cond_0
    nop

    .line 300
    :try_start_2
    invoke-static {p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$300(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$300(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 299
    :goto_0
    invoke-static {v2}, Landroid/widget/sr/SRUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$202(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 302
    invoke-static {p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 303
    const-string v2, "SuperResolution"

    const-string v3, "doNewTask: mSrcBitmap is empty ! "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    monitor-exit p0

    return v1

    .line 310
    :cond_2
    const/4 v2, 0x3

    .line 311
    .local v2, "ratio":I
    :try_start_3
    invoke-static {p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    mul-int/2addr v3, v2

    mul-int/2addr v3, v2

    .line 312
    .local v3, "dstAshmemSize":I
    invoke-virtual {p0, v3}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->enoughRoomForSize(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 313
    const-string v4, "SuperResolution"

    const-string v5, "doNewTask: there is not enough room ! "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    monitor-exit p0

    return v1

    .line 319
    :cond_3
    :try_start_4
    invoke-static {p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->process(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 320
    const-string v4, "SuperResolution"

    const-string v5, "doNewTask: process fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    monitor-exit p0

    return v1

    .line 326
    :cond_4
    :try_start_5
    iget-object v4, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mClearWhenTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 328
    .end local v2    # "ratio":I
    .end local v3    # "dstAshmemSize":I
    :catch_0
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "SuperResolution"

    const-string v4, "doNewTask: some exception happened!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 335
    monitor-exit p0

    return v1

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    .end local p1    # "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw p1
.end method

.method private declared-synchronized getAndDoNextTask()V
    .locals 3

    monitor-enter p0

    .line 342
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "getAndDoNextTask: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->isCurrentTaskProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "SuperResolution"

    const-string v1, "getAndDoNextTask: there is a task still doing. We shall never call this method at this point. "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 351
    const-string v0, "SuperResolution"

    const-string v1, "getAndDoNextTask: the taskQueue is empty. "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 355
    :cond_1
    :try_start_2
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 371
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndDoNextTask: some exception mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 362
    .local v0, "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    iget-object v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 363
    invoke-direct {p0, v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->doNewTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 365
    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->onProcessFail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 358
    .end local v0    # "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    :cond_3
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->start()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    nop

    .line 374
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->sInstance:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    if-nez v1, :cond_1

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "appContext":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 119
    :cond_0
    new-instance v2, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    invoke-direct {v2, v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->sInstance:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    .line 120
    const-string v2, "SuperResolution"

    const-string v3, "HwEMUI create ManagerImpl instance"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_1
    sget-object v1, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->sInstance:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 113
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSuperResolution()Landroid/widget/sr/HwSuperResolution;
    .locals 2

    .line 140
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/widget/sr/HwSuperResolution;

    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/widget/sr/HwSuperResolution;-><init>(Landroid/content/Context;Landroid/widget/sr/HwSuperResolutionListener;)V

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    return-object v0
.end method

.method private increaseProcessErrorCount()V
    .locals 2

    .line 160
    const-string v0, "SuperResolution"

    const-string v1, "increaseProcessErrorCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mProcessErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mProcessErrorCount:I

    .line 162
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mProcessErrorCount:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 163
    const-string v0, "SuperResolution"

    const-string v1, "increaseProcessErrorCount: process error too many times"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->setIsDDKStatusAvailable(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method private increaseStartErrorCount()V
    .locals 2

    .line 151
    const-string v0, "SuperResolution"

    const-string v1, "increaseStartErrorCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    .line 153
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 154
    const-string v0, "SuperResolution"

    const-string v1, "increaseStartErrorCount: start error too many times"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->setIsDDKStatusAvailable(Z)V

    .line 157
    :cond_0
    return-void
.end method

.method private isCurrentTaskProcessing()Z
    .locals 1

    .line 213
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSuperResolutionAvailable()Z
    .locals 1

    .line 98
    sget-boolean v0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->sIsSuperResolutionSupport:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->sIsDDKStatusAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized onProcessFail(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 710
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "onProcessFail: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 712
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessFail: DDK status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Abnormal callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit p0

    return-void

    .line 716
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 718
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$600(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 719
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$600(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/sr/SRTaskCallback;

    .line 720
    .local v0, "callback":Landroid/widget/sr/SRTaskCallback;
    :goto_0
    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 722
    .local v1, "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    if-eqz v0, :cond_2

    .line 724
    invoke-interface {v0, v1}, Landroid/widget/sr/SRTaskCallback;->onSRTaskFail(Landroid/widget/sr/SRTaskInfo;)V

    .line 728
    :cond_2
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->clearCurrentTaskAndGetNext()V

    .line 729
    .end local v0    # "callback":Landroid/widget/sr/SRTaskCallback;
    .end local v1    # "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    goto :goto_1

    .line 731
    :cond_3
    const-string v0, "SuperResolution"

    const-string v1, "onProcessFail: this task doesn\'t match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    :goto_1
    monitor-exit p0

    return-void

    .line 709
    .end local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw p1
.end method

.method private postNewTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 246
    const-string v0, "SuperResolution"

    const-string v1, "postNewTask: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;-><init>(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_0
    return-void
.end method

.method private declared-synchronized process(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 532
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "process: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 535
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    .line 536
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->getSuperResolution()Landroid/widget/sr/HwSuperResolution;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/widget/sr/HwSuperResolution;->process(Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 537
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 538
    const-string v1, "SuperResolution"

    const-string v2, "process: command success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 541
    :cond_0
    :try_start_1
    const-string v2, "SuperResolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process: command fail, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 543
    :cond_1
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->increaseProcessErrorCount()V

    .line 546
    .end local v0    # "result":I
    :cond_2
    goto :goto_0

    .line 547
    :cond_3
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process: DDK status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Can not call process now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 531
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw p1
.end method

.method private resetStatus()V
    .locals 2

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 174
    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 175
    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method private declared-synchronized scheduleTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->isCurrentTaskProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->getAndDoNextTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_0
    monitor-exit p0

    return-void

    .line 266
    .end local p1    # "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw p1
.end method

.method private static setIsDDKStatusAvailable(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 103
    sput-boolean p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->sIsDDKStatusAvailable:Z

    .line 104
    return-void
.end method

.method private declared-synchronized start()Z
    .locals 4

    monitor-enter p0

    .line 499
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "start: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    if-nez v0, :cond_2

    .line 502
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    .line 503
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->getSuperResolution()Landroid/widget/sr/HwSuperResolution;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/sr/HwSuperResolution;->start(I)I

    move-result v1

    .line 504
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 505
    const-string v2, "SuperResolution"

    const-string v3, "start: command success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return v0

    .line 508
    :cond_0
    :try_start_1
    const-string v0, "SuperResolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: command fail, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    .line 510
    const-string v0, "SuperResolution"

    const-string v2, "start: already called"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    .line 515
    :goto_0
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->increaseStartErrorCount()V

    .line 516
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->resetStatus()V

    .line 518
    .end local v1    # "result":I
    goto :goto_1

    .line 519
    :cond_2
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: DDK status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Can not call start now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :goto_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw v0
.end method

.method private declared-synchronized stop()Z
    .locals 5

    monitor-enter p0

    .line 559
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "stop: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 562
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    .line 563
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->getSuperResolution()Landroid/widget/sr/HwSuperResolution;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/sr/HwSuperResolution;->stop()I

    move-result v0

    .line 564
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 565
    const-string v1, "SuperResolution"

    const-string v2, "stop: command success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 568
    :cond_0
    :try_start_1
    const-string v1, "SuperResolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop: command fail, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    .line 571
    iput v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    .line 572
    iput v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mProcessErrorCount:I

    .line 573
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->resetStatus()V

    .line 575
    .end local v0    # "result":I
    goto :goto_0

    .line 576
    :cond_1
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop: DDK status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Can not call process now"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :goto_0
    monitor-exit p0

    return v2

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw v0
.end method


# virtual methods
.method public addMemory(I)V
    .locals 1
    .param p1, "size"    # I

    .line 475
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mMemoryRecorder:Landroid/widget/sr/SRMemoryRecorder;

    invoke-virtual {v0, p1}, Landroid/widget/sr/SRMemoryRecorder;->add(I)V

    .line 476
    return-void
.end method

.method public enoughRoomForSize(I)Z
    .locals 1
    .param p1, "size"    # I

    .line 489
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mMemoryRecorder:Landroid/widget/sr/SRMemoryRecorder;

    invoke-virtual {v0, p1}, Landroid/widget/sr/SRMemoryRecorder;->enoughRoomForSize(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onError(I)V
    .locals 3
    .param p1, "errCode"    # I

    monitor-enter p0

    .line 583
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/sr/HwSuperResolutionListener;->onError(I)V

    .line 584
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 605
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: DDK status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Abnormal callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    :pswitch_0
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->onProcessFail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 600
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    .line 601
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mProcessErrorCount:I

    .line 602
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->resetStatus()V

    .line 603
    goto :goto_0

    .line 588
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    .line 590
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->increaseStartErrorCount()V

    .line 591
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->resetStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    nop

    .line 608
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 582
    .end local p1    # "errCode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized onProcessDone(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "des"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 612
    :try_start_0
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 613
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessDone: DDK status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Abnormal callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 617
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 619
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$600(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 620
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$600(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/sr/SRTaskCallback;

    .line 621
    .local v0, "callback":Landroid/widget/sr/SRTaskCallback;
    :goto_0
    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    .line 622
    .local v1, "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    if-eqz v0, :cond_2

    .line 624
    invoke-interface {v0, v1, p2}, Landroid/widget/sr/SRTaskCallback;->onSRTaskSuccess(Landroid/widget/sr/SRTaskInfo;Landroid/graphics/Bitmap;)V

    .line 628
    :cond_2
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->clearCurrentTaskAndGetNext()V

    .line 629
    .end local v0    # "callback":Landroid/widget/sr/SRTaskCallback;
    .end local v1    # "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    goto :goto_1

    .line 631
    :cond_3
    const-string v0, "SuperResolution"

    const-string v1, "onProcessDone: this task doesn\'t match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    :goto_1
    monitor-exit p0

    return-void

    .line 611
    .end local p1    # "src":Landroid/graphics/Bitmap;
    .end local p2    # "des":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw p1
.end method

.method public declared-synchronized onServiceDied()V
    .locals 2

    monitor-enter p0

    .line 650
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "onServiceDied: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-super {p0}, Landroid/widget/sr/HwSuperResolutionListener;->onServiceDied()V

    .line 653
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mCurrentSRTaskInfoImpl:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->onProcessFail(Landroid/graphics/Bitmap;)V

    .line 658
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    .line 659
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    .line 660
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mProcessErrorCount:I

    .line 661
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->resetStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw v0
.end method

.method public declared-synchronized onStartDone()V
    .locals 3

    monitor-enter p0

    .line 666
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "onStartDone: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 668
    const-string v0, "SuperResolution"

    const-string v1, "onStartDone: DDK has been started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    .line 670
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    .line 674
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 675
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->getAndDoNextTask()V

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 677
    const-string v0, "SuperResolution"

    const-string v1, "onStartDone: no task to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->stop()Z

    goto :goto_0

    .line 682
    :cond_1
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartDone: DDK status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Abnormal callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw v0
.end method

.method public declared-synchronized onStopDone()V
    .locals 3

    monitor-enter p0

    .line 688
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "onStopDone: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 690
    const-string v0, "SuperResolution"

    const-string v1, "onStopDone: DDK has been stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    .line 692
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mStartErrorCount:I

    .line 693
    iput v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mProcessErrorCount:I

    .line 696
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 697
    invoke-direct {p0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->getAndDoNextTask()V

    goto :goto_0

    .line 700
    :cond_0
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopDone:  DDK status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Abnormal callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw v0
.end method

.method public declared-synchronized onTimeOut(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 637
    :try_start_0
    const-string v0, "SuperResolution"

    const-string v1, "onTimeOut: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-super {p0, p1}, Landroid/widget/sr/HwSuperResolutionListener;->onTimeOut(Landroid/graphics/Bitmap;)V

    .line 640
    iget v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 641
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeOut: DDK status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mDDKStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Abnormal callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit p0

    return-void

    .line 645
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->onProcessFail(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    .line 636
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
    throw p1
.end method

.method public postCancelTask(Landroid/widget/sr/SRTaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/widget/sr/SRTaskInfo;

    .line 391
    invoke-static {}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->isSuperResolutionAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const-string v0, "SuperResolution"

    const-string v1, "postCancelTask: SuperResolution is not available now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void

    .line 395
    :cond_0
    instance-of v0, p1, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    if-nez v0, :cond_1

    .line 396
    const-string v0, "SuperResolution"

    const-string v1, "postCancelTask: taskInfo is not SRTaskInfoImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mManageHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$3;

    invoke-direct {v1, p0, p1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$3;-><init>(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;Landroid/widget/sr/SRTaskInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public postNewTask(Landroid/widget/sr/SRTaskCallback;Landroid/graphics/drawable/Drawable;)Landroid/widget/sr/SRTaskInfo;
    .locals 3
    .param p1, "callback"    # Landroid/widget/sr/SRTaskCallback;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 225
    invoke-static {}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->isSuperResolutionAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "SuperResolution"

    const-string v2, "postNewTask: SuperResolution is not available now."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-object v1

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 231
    new-instance v0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-direct {v0, p1, v1, p2, v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;-><init>(Landroid/widget/sr/SRTaskCallback;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;)V

    .line 232
    .local v0, "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    invoke-direct {p0, v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->postNewTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V

    .line 233
    return-object v0

    .line 235
    .end local v0    # "taskInfo":Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;
    :cond_1
    return-object v1
.end method

.method public removeMemory(I)V
    .locals 1
    .param p1, "size"    # I

    .line 479
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->mMemoryRecorder:Landroid/widget/sr/SRMemoryRecorder;

    invoke-virtual {v0, p1}, Landroid/widget/sr/SRMemoryRecorder;->remove(I)V

    .line 480
    return-void
.end method
