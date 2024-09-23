.class Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler$1;
.super Ljava/lang/Object;
.source "IndexClearManager.java"

# interfaces
.implements Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;


# direct methods
.method constructor <init>(Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;

    .line 72
    iput-object p1, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler$1;->this$1:Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler$1;->this$1:Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;->sendEmptyMessage(I)Z

    .line 76
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 81
    return-void
.end method
