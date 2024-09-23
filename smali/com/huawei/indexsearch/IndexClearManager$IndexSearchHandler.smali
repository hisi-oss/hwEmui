.class Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;
.super Landroid/os/Handler;
.source "IndexClearManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/indexsearch/IndexClearManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexSearchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/indexsearch/IndexClearManager;


# direct methods
.method public constructor <init>(Lcom/huawei/indexsearch/IndexClearManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/indexsearch/IndexClearManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 57
    iput-object p1, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    .line 58
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const/16 v2, 0x3ea

    packed-switch v0, :pswitch_data_0

    .line 117
    const-string v0, "IndexClearManager"

    const-string v1, "msg unhandled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    iget-object v0, v0, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 112
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v0}, Lcom/huawei/indexsearch/IndexClearManager;->access$000(Lcom/huawei/indexsearch/IndexClearManager;)Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->disconnect()Z

    goto/16 :goto_1

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v0}, Lcom/huawei/indexsearch/IndexClearManager;->access$000(Lcom/huawei/indexsearch/IndexClearManager;)Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v0}, Lcom/huawei/indexsearch/IndexClearManager;->access$000(Lcom/huawei/indexsearch/IndexClearManager;)Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->isBinded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    const-string v0, "IndexClearManager"

    const-string v1, "failed to bind observer service, clear all cache task"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    iget-object v0, v0, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    iget-object v0, v0, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    iget-object v0, v0, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;

    .line 98
    .local v0, "item":Lcom/huawei/indexsearch/IndexClearManager$CachedItem;
    iget-object v3, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v3}, Lcom/huawei/indexsearch/IndexClearManager;->access$000(Lcom/huawei/indexsearch/IndexClearManager;)Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    move-result-object v3

    iget-object v4, v0, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;->pkgName:Ljava/lang/String;

    iget v5, v0, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;->userId:I

    invoke-virtual {v3, v4, v5}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->clearUserIndexSearchData(Ljava/lang/String;I)V

    .line 99
    iget-object v3, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    iget-object v3, v3, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 100
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v1}, Lcom/huawei/indexsearch/IndexClearManager;->access$000(Lcom/huawei/indexsearch/IndexClearManager;)Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v1}, Lcom/huawei/indexsearch/IndexClearManager;->access$100(Lcom/huawei/indexsearch/IndexClearManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v1}, Lcom/huawei/indexsearch/IndexClearManager;->access$100(Lcom/huawei/indexsearch/IndexClearManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, v1}, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->sendEmptyMessage(I)Z

    .line 107
    .end local v0    # "item":Lcom/huawei/indexsearch/IndexClearManager$CachedItem;
    :cond_2
    :goto_0
    goto :goto_1

    .line 63
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;

    .line 64
    .restart local v0    # "item":Lcom/huawei/indexsearch/IndexClearManager$CachedItem;
    iget-object v3, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    iget-object v3, v3, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 65
    .local v3, "size":I
    iget-object v4, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v4}, Lcom/huawei/indexsearch/IndexClearManager;->access$000(Lcom/huawei/indexsearch/IndexClearManager;)Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    iget-object v4, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    iget-object v4, v4, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    if-nez v3, :cond_5

    .line 68
    iget-object v4, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v4}, Lcom/huawei/indexsearch/IndexClearManager;->access$100(Lcom/huawei/indexsearch/IndexClearManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object v2, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v2}, Lcom/huawei/indexsearch/IndexClearManager;->access$100(Lcom/huawei/indexsearch/IndexClearManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-static {v1}, Lcom/huawei/indexsearch/IndexClearManager;->access$000(Lcom/huawei/indexsearch/IndexClearManager;)Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    move-result-object v1

    new-instance v2, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler$1;

    invoke-direct {v2, p0}, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler$1;-><init>(Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;)V

    invoke-virtual {v1, v2}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connect(Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    iget-object v1, v1, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_4
    const-string v1, "IndexClearManager"

    const-string v2, "failed to bind search service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    nop

    .line 120
    .end local v0    # "item":Lcom/huawei/indexsearch/IndexClearManager$CachedItem;
    .end local v3    # "size":I
    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
