.class public Landroid/widget/sr/SRBitmapManagerImpl;
.super Landroid/widget/sr/HwSuperResolutionListener;
.source "SRBitmapManagerImpl.java"

# interfaces
.implements Landroid/widget/sr/SRBitmapManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/sr/SRBitmapManagerImpl$ManagerHandler;
    }
.end annotation


# static fields
.field private static final DB:Z = true

.field private static final DO_SR:I = 0x1

.field private static final HISI_DDK_MODE:I = 0x1

.field public static final NOT_STARTED_STATE:I = 0x1

.field private static final PROCESS_ERROR_CALLBACK_NOT_START:I = 0x12

.field private static final PROCESS_ERROR_COUNT_LIMIT:I = 0x1e

.field private static final PROCESS_RETURN_NOT_START:I = 0x2

.field private static final PROCESS_TIMEOUT_CODE:I = -0x1

.field private static final QUEUE_LIMIT:I = 0x3

.field private static final RET_OK:I = 0x0

.field private static SR_MAX_EDGE_LIMIT:I = 0x0

.field private static SR_MAX_PIXEL:I = 0x0

.field private static SR_MIN_EDGE_LIMIT:I = 0x0

.field private static SR_MIN_PIXEL:I = 0x0

.field private static final SR_RATIO:I = 0x1

.field public static final STARTED_STATE:I = 0x3

.field private static final START_COUNT_LIMIT:I = 0x5

.field private static final START_TWICE:I = 0x10

.field private static final STOP_DDK:I = 0x2

.field private static final STOP_WAIT_TIME:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "SRBitmapManager"

.field private static sInstance:Landroid/widget/sr/SRBitmapManagerImpl;


# instance fields
.field private volatile mCondition:Z

.field private mDoing:Z

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private final mManagerThread:Landroid/os/HandlerThread;

.field private mNeverDoSR:Z

.field private final mNeverDoSRLock:Ljava/lang/Object;

.field private mProcessErrorCount:I

.field private mProcessSrcBitmap:Landroid/graphics/Bitmap;

.field private mProcesseDstBitmap:Landroid/graphics/Bitmap;

.field private mSRStatus:I

.field private mSuperResolution:Landroid/widget/sr/HwSuperResolution;

.field private mTaskQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/sr/SRBitmapTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const v0, 0x3d090

    sput v0, Landroid/widget/sr/SRBitmapManagerImpl;->SR_MIN_PIXEL:I

    .line 24
    const v0, 0xa8c00

    sput v0, Landroid/widget/sr/SRBitmapManagerImpl;->SR_MAX_PIXEL:I

    .line 25
    const/16 v0, 0x12c

    sput v0, Landroid/widget/sr/SRBitmapManagerImpl;->SR_MIN_EDGE_LIMIT:I

    .line 26
    const/16 v0, 0x3c0

    sput v0, Landroid/widget/sr/SRBitmapManagerImpl;->SR_MAX_EDGE_LIMIT:I

    .line 67
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/sr/SRBitmapManagerImpl;->sInstance:Landroid/widget/sr/SRBitmapManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Landroid/widget/sr/HwSuperResolutionListener;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mDoing:Z

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSRStatus:I

    .line 52
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mNeverDoSRLock:Ljava/lang/Object;

    .line 53
    iput-boolean v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mNeverDoSR:Z

    .line 64
    iput v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mErrorCode:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "queueThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mManagerThread:Landroid/os/HandlerThread;

    .line 83
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 84
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/widget/sr/SRBitmapManagerImpl$ManagerHandler;

    iget-object v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/sr/SRBitmapManagerImpl$ManagerHandler;-><init>(Landroid/widget/sr/SRBitmapManagerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/widget/sr/HwSuperResolution;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/widget/sr/HwSuperResolution;-><init>(Landroid/content/Context;Landroid/widget/sr/HwSuperResolutionListener;)V

    iput-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    .line 87
    return-void
.end method

.method private SRClientProcess(Landroid/widget/sr/SRBitmapTask;)V
    .locals 6
    .param p1, "task"    # Landroid/widget/sr/SRBitmapTask;

    .line 173
    const-string v0, "SRBitmapManager"

    const-string v1, "sr SRClientProcess start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Landroid/widget/sr/SRBitmapTask;->getAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "ashBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->getSuperResolution()Landroid/widget/sr/HwSuperResolution;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/sr/HwSuperResolution;->process(Landroid/graphics/Bitmap;I)I

    move-result v1

    .line 176
    .local v1, "process_return":I
    if-nez v1, :cond_2

    .line 177
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->waitQueueThread()V

    .line 178
    iget v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mErrorCode:I

    if-eqz v3, :cond_1

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    .line 189
    goto :goto_0

    .line 185
    :cond_0
    iget v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessErrorCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessErrorCount:I

    .line 186
    const-string v3, "SRBitmapManager"

    const-string v4, "sr SRClientProcess not start in callback"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    goto :goto_0

    .line 180
    :cond_1
    const-string v3, "SRBitmapManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sr SRClientProcess success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/sr/SRBitmapTask;->getAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcesseDstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v4}, Landroid/widget/sr/SRBitmapTask;->setAshmemBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 182
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessErrorCount:I

    .line 183
    goto :goto_0

    .line 191
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 192
    iget v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessErrorCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessErrorCount:I

    .line 193
    const-string v3, "SRBitmapManager"

    const-string v4, "sr SRClientProcess not start in return"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyBitmapThread(Landroid/widget/sr/SRBitmapTask;)V

    .line 198
    iget v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessErrorCount:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_4

    .line 199
    invoke-direct {p0, v2}, Landroid/widget/sr/SRBitmapManagerImpl;->setNeverDoSR(Z)V

    .line 201
    :cond_4
    const-string v2, "SRBitmapManager"

    const-string v3, "sr SRClientProcess end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method private SRClientStart()V
    .locals 5

    .line 146
    iget v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSRStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    const-string v0, "SRBitmapManager"

    const-string v2, "before client start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    .line 153
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->getSuperResolution()Landroid/widget/sr/HwSuperResolution;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/sr/HwSuperResolution;->start(I)I

    move-result v2

    .line 154
    .local v2, "start_return":I
    if-nez v2, :cond_1

    .line 155
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->waitQueueThread()V

    .line 156
    iget v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mErrorCode:I

    if-nez v3, :cond_3

    .line 157
    iput v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSRStatus:I

    .line 158
    const-string v1, "SRBitmapManager"

    const-string v3, "after client start success"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 161
    :cond_1
    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    .line 162
    goto :goto_1

    .line 164
    :cond_2
    new-instance v3, Landroid/widget/sr/HwSuperResolution;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/widget/sr/HwSuperResolution;-><init>(Landroid/content/Context;Landroid/widget/sr/HwSuperResolutionListener;)V

    iput-object v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    .line 152
    .end local v2    # "start_return":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_4
    :goto_1
    invoke-direct {p0, v3}, Landroid/widget/sr/SRBitmapManagerImpl;->setNeverDoSR(Z)V

    .line 168
    const-string v0, "SRBitmapManager"

    const-string v1, "after client start for error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method private SRClientStop()V
    .locals 3

    .line 205
    const-string v0, "SRBitmapManager"

    const-string v1, "sr SRClientStop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->getSuperResolution()Landroid/widget/sr/HwSuperResolution;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/sr/HwSuperResolution;->stop()I

    move-result v0

    .line 207
    .local v0, "stop_return":I
    if-eqz v0, :cond_0

    .line 212
    new-instance v1, Landroid/widget/sr/HwSuperResolution;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroid/widget/sr/HwSuperResolution;-><init>(Landroid/content/Context;Landroid/widget/sr/HwSuperResolutionListener;)V

    iput-object v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->waitQueueThread()V

    .line 210
    nop

    .line 215
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessErrorCount:I

    .line 216
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSRStatus:I

    .line 217
    const-string v1, "SRBitmapManager"

    const-string v2, "sr SRClientStop end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method static synthetic access$000(Landroid/widget/sr/SRBitmapManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/sr/SRBitmapManagerImpl;

    .line 16
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->doSuperResolution()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/sr/SRBitmapManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/sr/SRBitmapManagerImpl;

    .line 16
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->SRClientStop()V

    return-void
.end method

.method private declared-synchronized clearBitmapQueue()V
    .locals 3

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 244
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 245
    iget-object v2, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/sr/SRBitmapTask;

    invoke-direct {p0, v2}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyBitmapThread(Landroid/widget/sr/SRBitmapTask;)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 242
    .end local v0    # "size":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapManagerImpl;
    throw v0
.end method

.method private doSuperResolution()V
    .locals 1

    .line 412
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->SRClientStart()V

    .line 413
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->getNeverDOSR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->clearBitmapQueue()V

    .line 415
    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->pollTask()Landroid/widget/sr/SRBitmapTask;

    move-result-object v0

    .line 423
    .local v0, "bitmapTask":Landroid/widget/sr/SRBitmapTask;
    if-eqz v0, :cond_1

    .line 424
    invoke-direct {p0, v0}, Landroid/widget/sr/SRBitmapManagerImpl;->SRClientProcess(Landroid/widget/sr/SRBitmapTask;)V

    .line 428
    :cond_1
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->sendNextSrMessage()V

    .line 429
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/widget/sr/SRBitmapManagerImpl;
    .locals 2

    const-class v0, Landroid/widget/sr/SRBitmapManagerImpl;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Landroid/widget/sr/SRBitmapManagerImpl;->sInstance:Landroid/widget/sr/SRBitmapManagerImpl;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Landroid/widget/sr/SRBitmapManagerImpl;

    invoke-direct {v1}, Landroid/widget/sr/SRBitmapManagerImpl;-><init>()V

    sput-object v1, Landroid/widget/sr/SRBitmapManagerImpl;->sInstance:Landroid/widget/sr/SRBitmapManagerImpl;

    .line 92
    sget-object v1, Landroid/widget/sr/SRBitmapManagerImpl;->sInstance:Landroid/widget/sr/SRBitmapManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 94
    :cond_0
    :try_start_1
    sget-object v1, Landroid/widget/sr/SRBitmapManagerImpl;->sInstance:Landroid/widget/sr/SRBitmapManagerImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNeverDOSR()Z
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mNeverDoSRLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-boolean v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mNeverDoSR:Z

    monitor-exit v0

    return v1

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSuperResolution()Landroid/widget/sr/HwSuperResolution;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSuperResolution:Landroid/widget/sr/HwSuperResolution;

    return-object v0
.end method

.method private notifyBitmapThread(Landroid/widget/sr/SRBitmapTask;)V
    .locals 0
    .param p1, "task"    # Landroid/widget/sr/SRBitmapTask;

    .line 382
    invoke-virtual {p1}, Landroid/widget/sr/SRBitmapTask;->notifyTask()V

    .line 383
    return-void
.end method

.method private notifyQueueThread()V
    .locals 3

    .line 386
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mManagerThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 387
    :try_start_0
    const-string v1, "SRBitmapManager"

    const-string v2, "queue thread notify"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mCondition:Z

    .line 389
    iget-object v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized pollTask()Landroid/widget/sr/SRBitmapTask;
    .locals 2

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "SRBitmapManager"

    const-string v1, "pollTask : queue has no task"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 229
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mDoing:Z

    .line 230
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/sr/SRBitmapTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapManagerImpl;
    throw v0
.end method

.method private declared-synchronized pushTask(Landroid/widget/sr/SRBitmapTask;)V
    .locals 4
    .param p1, "task"    # Landroid/widget/sr/SRBitmapTask;

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/sr/SRBitmapTask;

    .line 267
    .local v0, "headTask":Landroid/widget/sr/SRBitmapTask;
    const-string v1, "SRBitmapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queue oversize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and pollTask head task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, v0}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyBitmapThread(Landroid/widget/sr/SRBitmapTask;)V

    .line 271
    .end local v0    # "headTask":Landroid/widget/sr/SRBitmapTask;
    :cond_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mDoing:Z

    if-nez v0, :cond_1

    .line 275
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->sendDoSRMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_1
    monitor-exit p0

    return-void

    .line 264
    .end local p1    # "task":Landroid/widget/sr/SRBitmapTask;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapManagerImpl;
    throw p1
.end method

.method private sendDoSRMessage()V
    .locals 2

    .line 221
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    return-void
.end method

.method private declared-synchronized sendNextSrMessage()V
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->SRClientStop()V

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->sendDoSRMessage()V

    .line 260
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mDoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapManagerImpl;
    throw v0
.end method

.method private setNeverDoSR(Z)V
    .locals 2
    .param p1, "neverDoSR"    # Z

    .line 302
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mNeverDoSRLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iput-boolean p1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mNeverDoSR:Z

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitQueueThread()V
    .locals 5

    .line 394
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mManagerThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 395
    :try_start_0
    const-string v1, "SRBitmapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCondition is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mCondition:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    iget-boolean v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 398
    :try_start_1
    const-string v1, "SRBitmapManager"

    const-string v2, "queue thread wait"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :goto_1
    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "SRBitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SRbitmapManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 405
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mCondition:Z

    .line 407
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getSRStatus()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSRStatus:I

    return v0
.end method

.method public onError(I)V
    .locals 3
    .param p1, "errCode"    # I

    .line 351
    invoke-super {p0, p1}, Landroid/widget/sr/HwSuperResolutionListener;->onError(I)V

    .line 352
    iput p1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mErrorCode:I

    .line 353
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyQueueThread()V

    .line 354
    const-string v0, "SRBitmapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public onProcessDone(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "des"    # Landroid/graphics/Bitmap;

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mErrorCode:I

    .line 330
    iput-object p1, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcessSrcBitmap:Landroid/graphics/Bitmap;

    .line 331
    iput-object p2, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mProcesseDstBitmap:Landroid/graphics/Bitmap;

    .line 332
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyQueueThread()V

    .line 333
    const-string v0, "SRBitmapManager"

    const-string v1, "process Done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public onServiceDied()V
    .locals 2

    .line 373
    invoke-super {p0}, Landroid/widget/sr/HwSuperResolutionListener;->onServiceDied()V

    .line 374
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mSRStatus:I

    .line 375
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyQueueThread()V

    .line 376
    const-string v0, "SRBitmapManager"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method

.method public onStartDone()V
    .locals 2

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mErrorCode:I

    .line 320
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyQueueThread()V

    .line 321
    const-string v0, "SRBitmapManager"

    const-string v1, "start Done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method public onStopDone()V
    .locals 2

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mErrorCode:I

    .line 342
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyQueueThread()V

    .line 343
    const-string v0, "SRBitmapManager"

    const-string v1, "stop Done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public onTimeOut(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 362
    invoke-super {p0, p1}, Landroid/widget/sr/HwSuperResolutionListener;->onTimeOut(Landroid/graphics/Bitmap;)V

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mErrorCode:I

    .line 364
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->notifyQueueThread()V

    .line 365
    const-string v0, "SRBitmapManager"

    const-string v1, "process timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method

.method public declared-synchronized removeTaskFromQueue(Landroid/widget/sr/SRBitmapTask;)V
    .locals 2
    .param p1, "task"    # Landroid/widget/sr/SRBitmapTask;

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "SRBitmapManager"

    const-string v1, "removeTaskFromQueue : queue has no task"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 234
    .end local p1    # "task":Landroid/widget/sr/SRBitmapTask;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRBitmapManagerImpl;
    throw p1
.end method

.method public srBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 102
    const-string v0, "SRBitmapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 109
    .local v0, "h":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 110
    .local v1, "w":I
    if-le v1, v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 111
    .local v2, "maxEdge":I
    :goto_0
    if-le v1, v0, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    .line 112
    .local v3, "minEdge":I
    :goto_1
    sget v4, Landroid/widget/sr/SRBitmapManagerImpl;->SR_MIN_EDGE_LIMIT:I

    if-lt v3, v4, :cond_8

    sget v4, Landroid/widget/sr/SRBitmapManagerImpl;->SR_MAX_EDGE_LIMIT:I

    if-le v2, v4, :cond_3

    goto :goto_3

    .line 117
    :cond_3
    mul-int v4, v1, v0

    .line 118
    .local v4, "pixelCount":I
    sget v5, Landroid/widget/sr/SRBitmapManagerImpl;->SR_MIN_PIXEL:I

    if-lt v4, v5, :cond_7

    sget v5, Landroid/widget/sr/SRBitmapManagerImpl;->SR_MAX_PIXEL:I

    if-le v4, v5, :cond_4

    goto :goto_2

    .line 124
    :cond_4
    invoke-direct {p0}, Landroid/widget/sr/SRBitmapManagerImpl;->getNeverDOSR()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 125
    const-string v5, "SRBitmapManager"

    const-string v6, "srBitmapManager stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 130
    :cond_5
    new-instance v5, Landroid/widget/sr/SRBitmapTask;

    invoke-direct {v5, p1}, Landroid/widget/sr/SRBitmapTask;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v5, "task":Landroid/widget/sr/SRBitmapTask;
    invoke-virtual {v5}, Landroid/widget/sr/SRBitmapTask;->getAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_6

    .line 132
    return-void

    .line 134
    :cond_6
    invoke-direct {p0, v5}, Landroid/widget/sr/SRBitmapManagerImpl;->pushTask(Landroid/widget/sr/SRBitmapTask;)V

    .line 135
    invoke-virtual {v5, p0}, Landroid/widget/sr/SRBitmapTask;->waitTask(Landroid/widget/sr/SRBitmapManagerImpl;)V

    .line 137
    invoke-static {p1}, Landroid/widget/sr/DebugUtil;->drawBitmapPixel(Landroid/graphics/Bitmap;)V

    .line 138
    return-void

    .line 119
    .end local v5    # "task":Landroid/widget/sr/SRBitmapTask;
    :cond_7
    :goto_2
    invoke-static {p1}, Landroid/widget/sr/DebugUtil;->debugPixelFail(Landroid/graphics/Bitmap;)V

    .line 120
    return-void

    .line 113
    .end local v4    # "pixelCount":I
    :cond_8
    :goto_3
    invoke-static {p1}, Landroid/widget/sr/DebugUtil;->debugPixelFail(Landroid/graphics/Bitmap;)V

    .line 114
    return-void

    .line 104
    .end local v0    # "h":I
    .end local v1    # "w":I
    .end local v2    # "maxEdge":I
    .end local v3    # "minEdge":I
    :cond_9
    :goto_4
    const-string v0, "SRBitmapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srBitmap: bitmap null or unMutable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
