.class public final Landroid/util/SmartLog;
.super Ljava/lang/Object;
.source "SmartLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/SmartLog$LogHandler;,
        Landroid/util/SmartLog$ReadOnlyLocalLog;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_LINES:I = 0x14

.field private static final MAX_LOG_LINES:I = 0x3e8

.field private static final MAX_MESSAGE_ID:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "SmartLog"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/util/SmartLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCacheLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/util/SmartLog$1;

    invoke-direct {v0}, Landroid/util/SmartLog$1;-><init>()V

    sput-object v0, Landroid/util/SmartLog;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/SmartLog;->mMessageId:I

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/util/SmartLog;->mLog:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/util/SmartLog;->mCacheLog:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmartLog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Landroid/util/SmartLog$LogHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/SmartLog$LogHandler;-><init>(Landroid/util/SmartLog;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/util/SmartLog;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SmartLog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/SmartLog$1;

    .line 30
    invoke-direct {p0}, Landroid/util/SmartLog;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/util/SmartLog;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SmartLog;

    .line 30
    invoke-direct {p0}, Landroid/util/SmartLog;->moveCacheToLog()V

    return-void
.end method

.method static synthetic access$200(Landroid/util/SmartLog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SmartLog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Landroid/util/SmartLog;->addToLog(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addToCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/util/SmartLog;->mCacheLog:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    iget-object v0, p0, Landroid/util/SmartLog;->mCacheLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Landroid/util/SmartLog;->mCacheLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/util/SmartLog;
    throw p1
.end method

.method private declared-synchronized addToLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/util/SmartLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 110
    :goto_0
    iget-object v0, p0, Landroid/util/SmartLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Landroid/util/SmartLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "log":Ljava/lang/String;
    const-string v1, "SmartLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v0    # "log":Ljava/lang/String;
    goto :goto_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 108
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/util/SmartLog;
    throw p1
.end method

.method public static getInstance()Landroid/util/SmartLog;
    .locals 1

    .line 56
    sget-object v0, Landroid/util/SmartLog;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SmartLog;

    return-object v0
.end method

.method private declared-synchronized getLog(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "msgId"    # I
    .param p2, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, "now":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 133
    .local v3, "c":Ljava/util/Calendar;
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 134
    const-string v4, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    aput-object v3, v5, v6

    const/4 v6, 0x5

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 129
    .end local v0    # "now":J
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "c":Ljava/util/Calendar;
    .end local p1    # "msgId":I
    .end local p2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/util/SmartLog;
    throw p1
.end method

.method private declared-synchronized getMessageId()I
    .locals 2

    monitor-enter p0

    .line 139
    :try_start_0
    iget v0, p0, Landroid/util/SmartLog;->mMessageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SmartLog;->mMessageId:I

    const v1, 0x186a0

    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/util/SmartLog;
    throw v0
.end method

.method private declared-synchronized moveCacheToLog()V
    .locals 1

    monitor-enter p0

    .line 124
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/util/SmartLog;->mCacheLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/util/SmartLog;->mCacheLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/util/SmartLog;->addToLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/util/SmartLog;
    throw v0
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/util/SmartLog;->mLog:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 82
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/util/SmartLog;
    throw p1
.end method

.method public endRecord(ILjava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "log"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/util/SmartLog;->getLog(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "msgLog":Ljava/lang/String;
    iget-object v1, p0, Landroid/util/SmartLog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Landroid/util/SmartLog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/util/SmartLog;->addToCache(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/util/SmartLog;->addToLog(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void
.end method

.method public readOnlyLocalLog()Landroid/util/SmartLog$ReadOnlyLocalLog;
    .locals 1

    .line 105
    new-instance v0, Landroid/util/SmartLog$ReadOnlyLocalLog;

    invoke-direct {v0, p0}, Landroid/util/SmartLog$ReadOnlyLocalLog;-><init>(Landroid/util/SmartLog;)V

    return-object v0
.end method

.method public declared-synchronized reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/util/SmartLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 89
    iget-object v1, p0, Landroid/util/SmartLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/util/SmartLog;
    throw p1
.end method

.method public startRecord(Ljava/lang/String;I)I
    .locals 6
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "waitMillis"    # I

    .line 60
    invoke-direct {p0}, Landroid/util/SmartLog;->getMessageId()I

    move-result v0

    .line 61
    .local v0, "messageId":I
    invoke-direct {p0, v0, p1}, Landroid/util/SmartLog;->getLog(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "msgLog":Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 63
    .local v2, "msg":Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->what:I

    .line 64
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/SmartLog;->addToCache(Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Landroid/util/SmartLog;->mHandler:Landroid/os/Handler;

    int-to-long v4, p2

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    return v0
.end method
