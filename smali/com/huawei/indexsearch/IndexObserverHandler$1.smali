.class Lcom/huawei/indexsearch/IndexObserverHandler$1;
.super Ljava/lang/Object;
.source "IndexObserverHandler.java"

# interfaces
.implements Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/indexsearch/IndexObserverHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/indexsearch/IndexObserverHandler;


# direct methods
.method constructor <init>(Lcom/huawei/indexsearch/IndexObserverHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/indexsearch/IndexObserverHandler;

    .line 41
    iput-object p1, p0, Lcom/huawei/indexsearch/IndexObserverHandler$1;->this$0:Lcom/huawei/indexsearch/IndexObserverHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexObserverHandler$1;->this$0:Lcom/huawei/indexsearch/IndexObserverHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/huawei/indexsearch/IndexObserverHandler;->sendEmptyMessage(I)Z

    .line 45
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 50
    return-void
.end method
