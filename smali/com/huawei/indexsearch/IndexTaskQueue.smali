.class public Lcom/huawei/indexsearch/IndexTaskQueue;
.super Ljava/lang/Object;
.source "IndexTaskQueue.java"

# interfaces
.implements Lcom/huawei/indexsearch/IndexQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/indexsearch/IndexQueue<",
        "Lcom/huawei/indexsearch/SearchTaskItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexTaskQueue"

.field private static instance:Lcom/huawei/indexsearch/IndexTaskQueue;


# instance fields
.field private final indexQueues:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/huawei/indexsearch/SearchTaskItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/indexsearch/IndexTaskQueue;->instance:Lcom/huawei/indexsearch/IndexTaskQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexTaskQueue;->indexQueues:Ljava/util/concurrent/BlockingQueue;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/huawei/indexsearch/IndexTaskQueue;
    .locals 2

    .line 20
    const-class v0, Lcom/huawei/indexsearch/IndexTaskQueue;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/huawei/indexsearch/IndexTaskQueue;->instance:Lcom/huawei/indexsearch/IndexTaskQueue;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/huawei/indexsearch/IndexTaskQueue;

    invoke-direct {v1}, Lcom/huawei/indexsearch/IndexTaskQueue;-><init>()V

    sput-object v1, Lcom/huawei/indexsearch/IndexTaskQueue;->instance:Lcom/huawei/indexsearch/IndexTaskQueue;

    .line 24
    :cond_0
    sget-object v1, Lcom/huawei/indexsearch/IndexTaskQueue;->instance:Lcom/huawei/indexsearch/IndexTaskQueue;

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Lcom/huawei/indexsearch/SearchTaskItem;)Z
    .locals 1
    .param p1, "searchTaskItem"    # Lcom/huawei/indexsearch/SearchTaskItem;

    .line 40
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexTaskQueue;->indexQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Lcom/huawei/indexsearch/SearchTaskItem;

    invoke-virtual {p0, p1}, Lcom/huawei/indexsearch/IndexTaskQueue;->add(Lcom/huawei/indexsearch/SearchTaskItem;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexTaskQueue;->indexQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public getQueueSize()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexTaskQueue;->indexQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public take()Lcom/huawei/indexsearch/SearchTaskItem;
    .locals 3

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexTaskQueue;->indexQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/indexsearch/SearchTaskItem;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "IndexTaskQueue"

    const-string v2, " SearchTaskItem take operate InterruptedException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v0    # "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/huawei/indexsearch/IndexTaskQueue;->take()Lcom/huawei/indexsearch/SearchTaskItem;

    move-result-object v0

    return-object v0
.end method
