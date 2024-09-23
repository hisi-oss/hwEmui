.class public Landroid/os/HwExHandler;
.super Landroid/os/Handler;
.source "HwExHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwExHandler"


# instance fields
.field mLastStartTime:J

.field private runningTimeout:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 13
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/HwExHandler;->mLastStartTime:J

    .line 10
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroid/os/HwExHandler;->runningTimeout:J

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;J)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "timeout"    # J

    .line 17
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/HwExHandler;->mLastStartTime:J

    .line 10
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroid/os/HwExHandler;->runningTimeout:J

    .line 18
    iput-wide p2, p0, Landroid/os/HwExHandler;->runningTimeout:J

    .line 19
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/HwExHandler;->mLastStartTime:J

    .line 23
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/HwExHandler;->mLastStartTime:J

    .line 25
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 29
    .local v0, "mNowStartTime":J
    iget-wide v2, p0, Landroid/os/HwExHandler;->mLastStartTime:J

    sub-long v2, v0, v2

    .line 30
    .local v2, "threadRunningTime":J
    iget-wide v4, p0, Landroid/os/HwExHandler;->mLastStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroid/os/HwExHandler;->runningTimeout:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Landroid/os/HwExHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    const-string v4, "HwExHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/HwExHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",threadRunningTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Landroid/os/HwExHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 33
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_0

    .line 34
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 35
    .local v7, "stack":Ljava/lang/StackTraceElement;
    const-string v8, "HwExHandler"

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v7    # "stack":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 39
    .end local v4    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v4

    return v4
.end method
