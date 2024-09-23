.class Lcom/huawei/indexsearch/IndexClearManager$CachedItem;
.super Ljava/lang/Object;
.source "IndexClearManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/indexsearch/IndexClearManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachedItem"
.end annotation


# instance fields
.field public pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/huawei/indexsearch/IndexClearManager;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/huawei/indexsearch/IndexClearManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/indexsearch/IndexClearManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 50
    iput-object p1, p0, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;->this$0:Lcom/huawei/indexsearch/IndexClearManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;->pkgName:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;->userId:I

    .line 53
    return-void
.end method
