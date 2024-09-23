.class public Landroid/app/servertransaction/ClientTransactionUtils;
.super Ljava/lang/Object;
.source "ClientTransactionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "clientTransaction"    # Ljava/lang/Object;
    .param p1, "clientTransactionItem"    # Ljava/lang/Object;

    .line 35
    instance-of v0, p0, Landroid/app/servertransaction/ClientTransaction;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/servertransaction/IClientTransactionItem;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 37
    .local v0, "ct":Landroid/app/servertransaction/ClientTransaction;
    new-instance v1, Landroid/app/servertransaction/ClientTransactionItemImpl;

    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/IClientTransactionItem;

    invoke-direct {v1, v2}, Landroid/app/servertransaction/ClientTransactionItemImpl;-><init>(Landroid/app/servertransaction/IClientTransactionItem;)V

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 39
    .end local v0    # "ct":Landroid/app/servertransaction/ClientTransaction;
    :cond_0
    return-void
.end method

.method static getCallbacks(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p0, "clientTransaction"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 24
    instance-of v0, p0, Landroid/app/servertransaction/ClientTransaction;

    if-eqz v0, :cond_0

    .line 25
    move-object v0, p0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 26
    .local v0, "ct":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransaction;->getCallbacks()Ljava/util/List;

    move-result-object v1

    .line 27
    .local v1, "org":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    return-object v2

    .line 31
    .end local v0    # "ct":Landroid/app/servertransaction/ClientTransaction;
    .end local v1    # "org":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
