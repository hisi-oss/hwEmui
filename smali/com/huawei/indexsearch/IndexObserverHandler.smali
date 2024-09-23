.class public Lcom/huawei/indexsearch/IndexObserverHandler;
.super Landroid/os/Handler;
.source "IndexObserverHandler.java"


# static fields
.field public static final MSG_BOUND:I = 0x3e9

.field public static final MSG_BUILD:I = 0x3e8

.field public static final MSG_UNBOUND:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "IndexObserverHandler"


# instance fields
.field private indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

.field private searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    .line 25
    new-instance v0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-direct {v0, p2}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    .line 26
    invoke-static {}, Lcom/huawei/indexsearch/IndexTaskQueue;->getInstance()Lcom/huawei/indexsearch/IndexTaskQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    .line 27
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const/16 v2, 0x3ea

    packed-switch v0, :pswitch_data_0

    .line 89
    const-string v0, "IndexObserverHandler"

    const-string v1, "msg unhandled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->disconnect()Z

    .line 86
    goto/16 :goto_2

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->isBinded()Z

    move-result v0

    if-nez v0, :cond_6

    .line 62
    const-string v0, "IndexObserverHandler"

    const-string v1, "failed to bind observer service, clear all cache task"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    invoke-virtual {v0}, Lcom/huawei/indexsearch/IndexTaskQueue;->clear()V

    goto/16 :goto_2

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    invoke-virtual {v0}, Lcom/huawei/indexsearch/IndexTaskQueue;->getQueueSize()I

    move-result v0

    if-lez v0, :cond_6

    .line 66
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    invoke-virtual {v0}, Lcom/huawei/indexsearch/IndexTaskQueue;->take()Lcom/huawei/indexsearch/SearchTaskItem;

    move-result-object v0

    .line 67
    .local v0, "task":Lcom/huawei/indexsearch/SearchTaskItem;
    invoke-virtual {v0}, Lcom/huawei/indexsearch/SearchTaskItem;->getIds()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v0}, Lcom/huawei/indexsearch/SearchTaskItem;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/huawei/indexsearch/SearchTaskItem;->getIds()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/huawei/indexsearch/SearchTaskItem;->getOp()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->executeDBCrawl(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v3, "IndexObserverHandler"

    const-string v4, "task ids empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    invoke-virtual {v3}, Lcom/huawei/indexsearch/IndexTaskQueue;->getQueueSize()I

    move-result v3

    if-nez v3, :cond_2

    .line 74
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p0, v2}, Lcom/huawei/indexsearch/IndexObserverHandler;->removeMessages(I)V

    .line 76
    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v2, v3, v4}, Lcom/huawei/indexsearch/IndexObserverHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0, v1}, Lcom/huawei/indexsearch/IndexObserverHandler;->sendEmptyMessage(I)Z

    .line 81
    .end local v0    # "task":Lcom/huawei/indexsearch/SearchTaskItem;
    :cond_3
    :goto_1
    goto :goto_2

    .line 32
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/indexsearch/SearchTaskItem;

    .line 33
    .restart local v0    # "task":Lcom/huawei/indexsearch/SearchTaskItem;
    iget-object v3, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    invoke-virtual {v3}, Lcom/huawei/indexsearch/IndexTaskQueue;->getQueueSize()I

    move-result v3

    .line 34
    .local v3, "queueSize":I
    iget-object v4, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v4}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 35
    iget-object v4, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    invoke-virtual {v4, v0}, Lcom/huawei/indexsearch/IndexTaskQueue;->add(Lcom/huawei/indexsearch/SearchTaskItem;)Z

    .line 36
    if-nez v3, :cond_6

    .line 37
    invoke-virtual {p0, v2}, Lcom/huawei/indexsearch/IndexObserverHandler;->removeMessages(I)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/huawei/indexsearch/IndexObserverHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 41
    :cond_4
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    new-instance v2, Lcom/huawei/indexsearch/IndexObserverHandler$1;

    invoke-direct {v2, p0}, Lcom/huawei/indexsearch/IndexObserverHandler$1;-><init>(Lcom/huawei/indexsearch/IndexObserverHandler;)V

    invoke-virtual {v1, v2}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connect(Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexObserverHandler;->indexTaskQueue:Lcom/huawei/indexsearch/IndexTaskQueue;

    invoke-virtual {v1, v0}, Lcom/huawei/indexsearch/IndexTaskQueue;->add(Lcom/huawei/indexsearch/SearchTaskItem;)Z

    goto :goto_2

    .line 54
    :cond_5
    const-string v1, "IndexObserverHandler"

    const-string v2, "failed to bind search service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    nop

    .line 92
    .end local v0    # "task":Lcom/huawei/indexsearch/SearchTaskItem;
    .end local v3    # "queueSize":I
    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
