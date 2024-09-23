.class public Lcom/huawei/indexsearch/SearchTaskItem;
.super Ljava/lang/Object;
.source "SearchTaskItem.java"


# instance fields
.field private ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private op:I

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/huawei/indexsearch/SearchTaskItem;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getOp()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/huawei/indexsearch/SearchTaskItem;->op:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/huawei/indexsearch/SearchTaskItem;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/indexsearch/SearchTaskItem;->ids:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setOp(I)V
    .locals 0
    .param p1, "op"    # I

    .line 39
    iput p1, p0, Lcom/huawei/indexsearch/SearchTaskItem;->op:I

    .line 40
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/huawei/indexsearch/SearchTaskItem;->pkgName:Ljava/lang/String;

    .line 24
    return-void
.end method
