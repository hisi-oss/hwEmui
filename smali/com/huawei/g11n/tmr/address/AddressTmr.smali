.class public Lcom/huawei/g11n/tmr/address/AddressTmr;
.super Ljava/lang/Object;
.source "AddressTmr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddr(Ljava/lang/String;)[I
    .locals 7
    .param p0, "txtMessage"    # Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/huawei/g11n/tmr/address/SerEn;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/address/SerEn;-><init>()V

    .line 19
    .local v0, "d":Lcom/huawei/g11n/tmr/address/SerEn;
    invoke-virtual {v0, p0}, Lcom/huawei/g11n/tmr/address/SerEn;->search(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 20
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/address/Match;>;"
    const/4 v2, 0x0

    .line 21
    .local v2, "r":[I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 23
    new-array v2, v4, [I

    .line 24
    aput v3, v2, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    new-array v2, v5, [I

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    aput v5, v2, v3

    .line 28
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 38
    .end local v3    # "index":I
    :goto_1
    return-object v2

    .line 29
    .restart local v3    # "index":I
    :cond_1
    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5

    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 32
    .local v5, "end":I
    if-le v5, v4, :cond_2

    .line 33
    add-int/lit8 v5, v5, -0x1

    .line 35
    :cond_2
    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x2

    aput v5, v2, v6

    .line 28
    .end local v5    # "end":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
