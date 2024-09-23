.class public final Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;
.super Ljava/lang/Object;
.source "AppEyeFwkBlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/zrhung/appeye/AppEyeFwkBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerChecker"
.end annotation


# instance fields
.field private mCompleted:Z

.field public mCurrentMonitor:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field public final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/zrhung/appeye/AppEyeFwkBlock;


# direct methods
.method constructor <init>(Landroid/zrhung/appeye/AppEyeFwkBlock;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Landroid/zrhung/appeye/AppEyeFwkBlock;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->this$0:Landroid/zrhung/appeye/AppEyeFwkBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 86
    iput-object p2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mName:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCompleted:Z

    .line 89
    return-void
.end method


# virtual methods
.method public addMonitor(Ljava/lang/Object;)V
    .locals 1
    .param p1, "monitor"    # Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public describeBlockedStateLocked()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCurrentMonitor:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked in handler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked in monitor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCurrentMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doMonitor(Ljava/lang/Object;)V
    .locals 1
    .param p1, "monitor"    # Ljava/lang/Object;

    .line 126
    monitor-enter p1

    :try_start_0
    monitor-exit p1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCompletionStateLocked()I
    .locals 1

    .line 111
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .line 131
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->this$0:Landroid/zrhung/appeye/AppEyeFwkBlock;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCurrentMonitor:Ljava/lang/Object;

    .line 135
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCurrentMonitor:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->doMonitor(Ljava/lang/Object;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 139
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->this$0:Landroid/zrhung/appeye/AppEyeFwkBlock;

    monitor-enter v1

    .line 140
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCompleted:Z

    .line 141
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCurrentMonitor:Ljava/lang/Object;

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public scheduleCheckLocked()V
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCompleted:Z

    .line 98
    return-void

    .line 101
    :cond_0
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCompleted:Z

    if-nez v0, :cond_1

    .line 102
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCompleted:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCurrentMonitor:Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method
