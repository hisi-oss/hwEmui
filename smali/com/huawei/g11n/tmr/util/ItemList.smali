.class public Lcom/huawei/g11n/tmr/util/ItemList;
.super Ljava/lang/Object;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/g11n/tmr/util/ItemList$Item;
    }
.end annotation


# instance fields
.field private cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/g11n/tmr/util/ItemList$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 2
    .param p1, "b"    # I
    .param p2, "e"    # I

    .line 17
    new-instance v0, Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-direct {v0, p1, p2}, Lcom/huawei/g11n/tmr/util/ItemList$Item;-><init>(II)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

    .line 18
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/huawei/g11n/tmr/util/ItemList;->cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public changeEnd(I)V
    .locals 1
    .param p1, "e"    # I

    .line 24
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/util/ItemList$Item;->setEnd(I)V

    .line 25
    return-void
.end method

.method public delRel()V
    .locals 10

    .line 60
    new-instance v0, Lcom/huawei/g11n/tmr/util/ItemList;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/util/ItemList;-><init>()V

    .line 61
    .local v0, "il":Lcom/huawei/g11n/tmr/util/ItemList;
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/util/ItemList;->getData()[I

    move-result-object v1

    .line 62
    .local v1, "r":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 63
    .local v2, "size":I
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lez v2, :cond_0

    .line 64
    aget v5, v1, v3

    aget v6, v1, v4

    invoke-virtual {v0, v5, v6}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 66
    :cond_0
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-lt v5, v2, :cond_1

    .line 75
    .end local v5    # "i":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    .line 76
    return-void

    .line 67
    .restart local v5    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->getCurrenBegin()I

    move-result v6

    .line 68
    .local v6, "b1":I
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->getCurrenEnd()I

    move-result v7

    .line 69
    .local v7, "e1":I
    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v3

    aget v8, v1, v8

    .line 70
    .local v8, "b":I
    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v4

    aget v9, v1, v9

    .line 71
    .local v9, "e":I
    if-ne v6, v8, :cond_2

    if-eq v7, v9, :cond_3

    .line 72
    :cond_2
    invoke-virtual {v0, v8, v9}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 66
    .end local v6    # "b1":I
    .end local v7    # "e1":I
    .end local v8    # "b":I
    .end local v9    # "e":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getCurrenBegin()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList$Item;->getBegin()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrenEnd()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->cItem:Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList$Item;->getEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getData()[I
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 45
    .local v0, "r":[I
    iget-object v1, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 50
    .end local v1    # "i":I
    return-object v0

    .line 47
    .restart local v1    # "i":I
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/util/ItemList$Item;->getBegin()I

    move-result v3

    aput v3, v0, v2

    .line 48
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/util/ItemList$Item;->getEnd()I

    move-result v3

    aput v3, v0, v2

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sort()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 57
    :cond_0
    return-void
.end method

.method public toArray()[I
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 35
    .local v0, "r":[I
    iget-object v1, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 40
    .end local v1    # "i":I
    return-object v0

    .line 37
    .restart local v1    # "i":I
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/util/ItemList$Item;->getBegin()I

    move-result v3

    aput v3, v0, v2

    .line 38
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/huawei/g11n/tmr/util/ItemList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/g11n/tmr/util/ItemList$Item;

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/util/ItemList$Item;->getEnd()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v0, v2

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
