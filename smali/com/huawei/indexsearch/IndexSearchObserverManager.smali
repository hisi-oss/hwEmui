.class public Lcom/huawei/indexsearch/IndexSearchObserverManager;
.super Ljava/lang/Object;
.source "IndexSearchObserverManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexSearchObserverManager"

.field private static volatile mInstance:Lcom/huawei/indexsearch/IndexSearchObserverManager;


# instance fields
.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchObserverManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexSearchObserverManager;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IndexSearchObserverManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 30
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    new-instance v0, Lcom/huawei/indexsearch/IndexObserverHandler;

    iget-object v1, p0, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/indexsearch/IndexSearchObserverManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/huawei/indexsearch/IndexObserverHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/indexsearch/IndexSearchObserverManager;
    .locals 2

    const-class v0, Lcom/huawei/indexsearch/IndexSearchObserverManager;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchObserverManager;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/huawei/indexsearch/IndexSearchObserverManager;

    invoke-direct {v1}, Lcom/huawei/indexsearch/IndexSearchObserverManager;-><init>()V

    sput-object v1, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchObserverManager;

    .line 24
    :cond_0
    sget-object v1, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchObserverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public buildIndex(Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .param p1, "mPkgName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 35
    .local p2, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/huawei/indexsearch/SearchTaskItem;

    invoke-direct {v0}, Lcom/huawei/indexsearch/SearchTaskItem;-><init>()V

    .line 36
    .local v0, "searchTaskItem":Lcom/huawei/indexsearch/SearchTaskItem;
    invoke-virtual {v0, p1}, Lcom/huawei/indexsearch/SearchTaskItem;->setPkgName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p2}, Lcom/huawei/indexsearch/SearchTaskItem;->setIds(Ljava/util/List;)V

    .line 38
    invoke-virtual {v0, p3}, Lcom/huawei/indexsearch/SearchTaskItem;->setOp(I)V

    .line 39
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexSearchObserverManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 40
    return-void
.end method
