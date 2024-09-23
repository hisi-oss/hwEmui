.class Lcom/huawei/indexsearch/IndexSearchManager$1;
.super Ljava/lang/Object;
.source "IndexSearchManager.java"

# interfaces
.implements Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/indexsearch/IndexSearchManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/indexsearch/IndexSearchManager;


# direct methods
.method constructor <init>(Lcom/huawei/indexsearch/IndexSearchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/indexsearch/IndexSearchManager;

    .line 43
    iput-object p1, p0, Lcom/huawei/indexsearch/IndexSearchManager$1;->this$0:Lcom/huawei/indexsearch/IndexSearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .line 46
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 50
    return-void
.end method
