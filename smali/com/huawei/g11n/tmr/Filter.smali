.class public Lcom/huawei/g11n/tmr/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field private locale:Ljava/lang/String;

.field private rlevel:Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/huawei/g11n/tmr/Filter;->locale:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/Filter;->rlevel:Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;

    .line 24
    return-void
.end method

.method private filterByPast(Ljava/lang/String;Ljava/util/List;Lcom/huawei/g11n/tmr/RuleInit;)Ljava/util/List;
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "obj"    # Lcom/huawei/g11n/tmr/RuleInit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;",
            "Lcom/huawei/g11n/tmr/RuleInit;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .line 433
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-virtual {p3, p1}, Lcom/huawei/g11n/tmr/RuleInit;->pastFind(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "past":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    return-object p2

    .line 436
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/Match;

    .line 437
    .local v2, "p":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 438
    .local v3, "name":Ljava/lang/Integer;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 439
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .end local v2    # "p":Lcom/huawei/g11n/tmr/Match;
    .end local v3    # "name":Ljava/lang/Integer;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    goto :goto_0

    .line 440
    .restart local v2    # "p":Lcom/huawei/g11n/tmr/Match;
    .restart local v3    # "name":Ljava/lang/Integer;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/g11n/tmr/Match;

    .line 441
    .local v5, "m":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xc8

    if-ge v6, v7, :cond_4

    .line 442
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v6

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 443
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 444
    goto :goto_0

    .line 447
    :cond_4
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v6

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 448
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 449
    goto :goto_0

    .line 435
    .end local v2    # "p":Lcom/huawei/g11n/tmr/Match;
    .end local v3    # "name":Ljava/lang/Integer;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v5    # "m":Lcom/huawei/g11n/tmr/Match;
    :cond_5
    :goto_1
    return-object p2
.end method

.method private filterByRules(Ljava/lang/String;Ljava/util/List;Lcom/huawei/g11n/tmr/RuleInit;)Ljava/util/List;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "obj"    # Lcom/huawei/g11n/tmr/RuleInit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;",
            "Lcom/huawei/g11n/tmr/RuleInit;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .line 406
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-virtual {p3, p1}, Lcom/huawei/g11n/tmr/RuleInit;->clear(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, "clears":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 409
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 410
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    return-object p2

    .line 411
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/Match;

    .line 412
    .local v2, "m":Lcom/huawei/g11n/tmr/Match;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .end local v2    # "m":Lcom/huawei/g11n/tmr/Match;
    goto :goto_0

    .restart local v2    # "m":Lcom/huawei/g11n/tmr/Match;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/Match;

    .line 413
    .local v4, "t":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v5

    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v6

    if-lt v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v5

    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 416
    goto :goto_0

    .line 408
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v2    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v4    # "t":Lcom/huawei/g11n/tmr/Match;
    :cond_4
    :goto_1
    return-object p2
.end method

.method private filterDate(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 17
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    move-object/from16 v0, p1

    .line 177
    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 222
    .end local v3    # "i":I
    return-object v2

    .line 179
    .restart local v3    # "i":I
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/Match;

    .line 180
    .local v4, "m":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v5

    .line 181
    .local v5, "type":I
    invoke-virtual {v4, v5}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 182
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    const/4 v7, 0x6

    if-eq v5, v7, :cond_1

    const/4 v7, 0x7

    if-eq v5, v7, :cond_1

    .line 183
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    nop

    .line 178
    move-object/from16 v10, p0

    .end local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v5    # "type":I
    :goto_1
    move v0, v6

    goto/16 :goto_5

    .line 186
    .restart local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .restart local v5    # "type":I
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v3

    .line 187
    .local v7, "hasNum":I
    const/4 v8, 0x0

    .line 188
    .local v8, "sub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    if-le v7, v6, :cond_2

    .line 189
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v3, 0x3

    invoke-interface {v1, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 190
    goto :goto_2

    :cond_2
    if-ne v7, v6, :cond_3

    .line 191
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v3, 0x2

    invoke-interface {v1, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 192
    :cond_3
    :goto_2
    if-eqz v7, :cond_9

    if-nez v8, :cond_4

    goto :goto_4

    .line 198
    :cond_4
    const/4 v9, -0x1

    move-object/from16 v10, p0

    invoke-direct {v10, v0, v4, v8, v9}, Lcom/huawei/g11n/tmr/Filter;->nestDealDate(Ljava/lang/String;Lcom/huawei/g11n/tmr/Match;Ljava/util/List;I)I

    move-result v11

    .line 199
    .local v11, "status":I
    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 200
    if-nez v11, :cond_5

    .line 201
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_1

    .line 203
    :cond_5
    if-ne v11, v6, :cond_6

    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 205
    goto :goto_3

    :cond_6
    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 206
    add-int/lit8 v3, v3, 0x2

    .line 208
    :cond_7
    :goto_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/g11n/tmr/Match;

    .line 209
    .local v12, "e":Lcom/huawei/g11n/tmr/Match;
    const/4 v13, 0x0

    .line 210
    .local v13, "add":I
    const/16 v14, 0x28

    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 211
    .local v14, "be":I
    if-eq v14, v9, :cond_8

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v15

    if-ge v14, v15, :cond_8

    .line 212
    const/16 v15, 0x29

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v6

    invoke-virtual {v0, v15, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 213
    .local v6, "end":I
    if-eq v6, v9, :cond_8

    .line 214
    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v0, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "c":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v0

    sub-int v0, v6, v0

    const/4 v15, 0x1

    add-int/lit8 v13, v0, 0x1

    .line 219
    .end local v6    # "end":I
    .end local v9    # "c":Ljava/lang/String;
    :cond_8
    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {v4, v0}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 220
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v5    # "type":I
    .end local v7    # "hasNum":I
    .end local v8    # "sub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v11    # "status":I
    .end local v12    # "e":Lcom/huawei/g11n/tmr/Match;
    .end local v13    # "add":I
    .end local v14    # "be":I
    const/4 v0, 0x1

    goto :goto_5

    .line 194
    .restart local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .restart local v5    # "type":I
    .restart local v7    # "hasNum":I
    .restart local v8    # "sub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_9
    :goto_4
    move-object/from16 v10, p0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 195
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    nop

    .line 178
    .end local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v5    # "type":I
    .end local v7    # "hasNum":I
    .end local v8    # "sub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :goto_5
    add-int/2addr v3, v0

    move-object/from16 v0, p1

    goto/16 :goto_0
.end method

.method private filterDatePeriod(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "ps"    # Ljava/lang/String;
    .param p4, "dts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .line 371
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-direct {p0, p1, p2}, Lcom/huawei/g11n/tmr/Filter;->filterDate(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 372
    invoke-direct {p0, p1, p2, p4}, Lcom/huawei/g11n/tmr/Filter;->filterDateTime(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/g11n/tmr/Filter;->filterPeriod(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/huawei/g11n/tmr/Filter;->filterDateTimePunc(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 375
    return-object p2
.end method

.method private filterDateTime(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "dts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    move-object/from16 v0, p1

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\s*(at|\u00e0s|\u060c\u200f|u|kl\\.|\u0915\u094b|\u7684|o|\u00e0|a\\s+les|ve|la|pada|kl|\u03c3\u03c4\u03b9\u03c2|alle|jam|\u092e\u093e|\u098f|\u0e82\u0ead\u0e87\u0ea7\u0eb1\u0e99\u0e97\u0eb5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\\s*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 258
    .local v1, "dt":Ljava/util/regex/Pattern;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 259
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v5, 0x0

    .line 260
    .local v5, "curren":Lcom/huawei/g11n/tmr/Match;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 332
    return-object p2

    .line 261
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/g11n/tmr/Match;

    .line 262
    .local v7, "m":Lcom/huawei/g11n/tmr/Match;
    if-nez v5, :cond_1

    .line 264
    move-object v5, v7

    .line 265
    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v8

    .line 268
    .local v8, "ctype":I
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v9

    .line 269
    .local v9, "type":I
    const/4 v10, 0x0

    .line 270
    .local v10, "flag":Z
    const/4 v11, 0x3

    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    if-eq v9, v3, :cond_5

    :cond_2
    if-ne v8, v12, :cond_3

    if-ne v9, v11, :cond_3

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->isTimePeriod()Z

    move-result v13

    if-nez v13, :cond_5

    :cond_3
    if-ne v8, v3, :cond_4

    if-eq v9, v12, :cond_5

    :cond_4
    if-ne v8, v11, :cond_11

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->isTimePeriod()Z

    move-result v13

    if-eqz v13, :cond_11

    if-ne v9, v12, :cond_11

    .line 271
    :cond_5
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v13

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v14

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 272
    .local v13, "ss":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 273
    const/4 v10, 0x1

    goto :goto_1

    .line 275
    :cond_6
    invoke-virtual {v1, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    .line 276
    :goto_1
    const/4 v14, 0x0

    if-eqz v10, :cond_a

    .line 277
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 278
    if-ne v8, v12, :cond_7

    if-eq v9, v3, :cond_8

    :cond_7
    if-ne v8, v3, :cond_9

    if-ne v9, v12, :cond_9

    .line 279
    :cond_8
    invoke-virtual {v5, v14}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 280
    goto :goto_2

    .line 281
    :cond_9
    invoke-virtual {v5, v11}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 283
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 284
    nop

    .line 260
    move-object/from16 v19, v1

    move v1, v3

    goto/16 :goto_6

    .line 286
    :cond_a
    const/4 v11, 0x1

    .line 287
    .local v11, "change":Z
    if-ne v8, v3, :cond_d

    if-ne v9, v12, :cond_d

    .line 288
    const/4 v15, 0x0

    .line 289
    .local v15, "flag15":Z
    const/16 v16, 0x0

    .line 290
    .local v16, "add":I
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "bStr":Ljava/lang/String;
    const-string v14, "\\s*\\((.*?)\\s*\\)"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 292
    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 291
    nop

    .line 293
    .local v14, "bcm":Ljava/util/regex/Matcher;
    const/16 v17, 0x0

    .line 294
    .local v17, "d":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 295
    invoke-virtual {v14, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 296
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    .line 298
    .end local v17    # "d":Ljava/lang/String;
    .local v12, "d":Ljava/lang/String;
    :cond_b
    move-object/from16 v12, v17

    if-eqz v12, :cond_c

    move-object/from16 v19, v1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 299
    .end local v1    # "dt":Ljava/util/regex/Pattern;
    .local v19, "dt":Ljava/util/regex/Pattern;
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v2

    move-object/from16 v20, v3

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v3

    .line 298
    .end local v3    # "bStr":Ljava/lang/String;
    .local v20, "bStr":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 299
    goto :goto_3

    .end local v19    # "dt":Ljava/util/regex/Pattern;
    .end local v20    # "bStr":Ljava/lang/String;
    .restart local v1    # "dt":Ljava/util/regex/Pattern;
    .restart local v3    # "bStr":Ljava/lang/String;
    :cond_c
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    .line 298
    .end local v1    # "dt":Ljava/util/regex/Pattern;
    .end local v3    # "bStr":Ljava/lang/String;
    .restart local v19    # "dt":Ljava/util/regex/Pattern;
    .restart local v20    # "bStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 300
    .end local v15    # "flag15":Z
    .local v1, "flag15":Z
    :goto_3
    if-eqz v1, :cond_e

    .line 301
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v2

    add-int v2, v2, v16

    invoke-virtual {v5, v2}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 302
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 303
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 304
    const/4 v11, 0x0

    .end local v1    # "flag15":Z
    .end local v12    # "d":Ljava/lang/String;
    .end local v14    # "bcm":Ljava/util/regex/Matcher;
    .end local v16    # "add":I
    .end local v20    # "bStr":Ljava/lang/String;
    goto :goto_4

    .line 308
    .end local v19    # "dt":Ljava/util/regex/Pattern;
    .local v1, "dt":Ljava/util/regex/Pattern;
    :cond_d
    move-object/from16 v19, v1

    .end local v1    # "dt":Ljava/util/regex/Pattern;
    .restart local v19    # "dt":Ljava/util/regex/Pattern;
    :cond_e
    :goto_4
    const/4 v1, 0x1

    if-ne v8, v1, :cond_f

    const/4 v1, 0x2

    if-ne v9, v1, :cond_10

    .line 310
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "bStr":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v3

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v12

    invoke-virtual {v0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "eStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 314
    const/16 v12, 0x28

    invoke-virtual {v2, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 315
    .local v12, "b":I
    invoke-virtual {v5, v12}, Lcom/huawei/g11n/tmr/Match;->setBegin(I)V

    .line 316
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 317
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 318
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 319
    const/4 v11, 0x0

    .end local v2    # "bStr":Ljava/lang/String;
    .end local v3    # "eStr":Ljava/lang/String;
    .end local v12    # "b":I
    goto :goto_5

    .line 322
    :cond_f
    const/4 v1, 0x2

    :cond_10
    :goto_5
    if-eqz v11, :cond_12

    .line 323
    move-object v5, v7

    .line 325
    .end local v11    # "change":Z
    .end local v13    # "ss":Ljava/lang/String;
    goto :goto_6

    .line 326
    .end local v19    # "dt":Ljava/util/regex/Pattern;
    .restart local v1    # "dt":Ljava/util/regex/Pattern;
    :cond_11
    move-object/from16 v19, v1

    move v1, v3

    .end local v1    # "dt":Ljava/util/regex/Pattern;
    .restart local v19    # "dt":Ljava/util/regex/Pattern;
    move-object v5, v7

    .line 260
    .end local v7    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v8    # "ctype":I
    .end local v9    # "type":I
    .end local v10    # "flag":Z
    .end local v19    # "dt":Ljava/util/regex/Pattern;
    .restart local v1    # "dt":Ljava/util/regex/Pattern;
    :cond_12
    :goto_6
    move v3, v1

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    goto/16 :goto_0
.end method

.method private filterDateTimePunc(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .line 336
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 337
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v1, 0x0

    .line 338
    .local v1, "curren":Lcom/huawei/g11n/tmr/Match;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    return-object p2

    .line 339
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/Match;

    .line 340
    .local v2, "m":Lcom/huawei/g11n/tmr/Match;
    if-nez v1, :cond_1

    .line 342
    move-object v1, v2

    .line 343
    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v3

    .line 346
    .local v3, "ctype":I
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v4

    .line 347
    .local v4, "type":I
    const/4 v5, 0x0

    .line 348
    .local v5, "flag":Z
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    if-eq v4, v7, :cond_5

    :cond_2
    if-ne v3, v8, :cond_3

    if-ne v4, v6, :cond_3

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->isTimePeriod()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    if-ne v3, v7, :cond_4

    if-eq v4, v8, :cond_5

    :cond_4
    if-ne v3, v6, :cond_c

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->isTimePeriod()Z

    move-result v9

    if-eqz v9, :cond_c

    if-ne v4, v8, :cond_c

    .line 349
    :cond_5
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "ss":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\uff0c"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 351
    :cond_6
    const/4 v5, 0x1

    .line 352
    :cond_7
    if-eqz v5, :cond_b

    .line 353
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 354
    if-ne v3, v8, :cond_8

    if-eq v4, v7, :cond_9

    :cond_8
    if-ne v3, v7, :cond_a

    if-ne v4, v8, :cond_a

    .line 355
    :cond_9
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 356
    goto :goto_1

    .line 357
    :cond_a
    invoke-virtual {v1, v6}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 359
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 360
    goto :goto_0

    .line 361
    :cond_b
    move-object v1, v2

    .line 363
    .end local v9    # "ss":Ljava/lang/String;
    goto :goto_0

    .line 364
    :cond_c
    move-object v1, v2

    .end local v2    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v3    # "ctype":I
    .end local v4    # "type":I
    .end local v5    # "flag":Z
    goto :goto_0
.end method

.method private filterPeriod(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "ps"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .line 225
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\.?\\s*(-{1,2}|~|\u8d77?\u81f3|\u5230|au|\u2013|\u2014|\uff5e|\u062a\u0627|\u0926\u0947\u0916\u093f|\u0434\u0430|\u043f\u0430|\u09a5\u09c7\u0995\u09c7|\u0eab\u0eb2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 226
    .local v0, "rel":Ljava/util/regex/Pattern;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 227
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v3, 0x0

    .line 228
    .local v3, "curren":Lcom/huawei/g11n/tmr/Match;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    return-object p2

    .line 229
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/Match;

    .line 230
    .local v4, "m":Lcom/huawei/g11n/tmr/Match;
    if-nez v3, :cond_1

    .line 232
    move-object v3, v4

    .line 233
    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v5

    .line 236
    .local v5, "ctype":I
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v6

    .line 238
    .local v6, "ntype":I
    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    if-eq v5, v7, :cond_3

    if-eq v5, v1, :cond_3

    if-eqz v5, :cond_3

    :cond_2
    if-nez v5, :cond_6

    if-ne v6, v1, :cond_6

    .line 239
    :cond_3
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v8

    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    .line 240
    .local v8, "flag":Z
    if-eqz v8, :cond_5

    .line 241
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 242
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 243
    if-ne v5, v1, :cond_4

    if-ne v6, v1, :cond_4

    .line 244
    invoke-virtual {v3, v7}, Lcom/huawei/g11n/tmr/Match;->setIsTimePeriod(Z)V

    .line 245
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 246
    goto :goto_0

    .line 247
    :cond_5
    move-object v3, v4

    .line 249
    .end local v8    # "flag":Z
    goto :goto_0

    .line 250
    :cond_6
    move-object v3, v4

    .end local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v5    # "ctype":I
    .end local v6    # "ntype":I
    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 384
    const/4 v0, -0x1

    .line 385
    .local v0, "i":I
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 386
    .local v1, "n":I
    const/16 v2, 0x4e1f

    if-le v1, v2, :cond_3

    const/16 v2, 0x7530

    if-ge v1, v2, :cond_3

    .line 387
    const/16 v2, 0x4e29

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4e2b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5222

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    const/16 v2, 0x4e2a

    if-ne v1, v2, :cond_1

    .line 390
    const/4 v0, 0x5

    goto :goto_1

    .line 392
    :cond_1
    const/4 v0, 0x1

    .line 393
    goto :goto_1

    .line 388
    :cond_2
    :goto_0
    const/4 v0, 0x6

    goto :goto_1

    .line 393
    :cond_3
    const/16 v2, 0x752f

    if-le v1, v2, :cond_4

    const v2, 0x9c40

    if-ge v1, v2, :cond_4

    .line 394
    const/4 v0, 0x2

    .line 395
    goto :goto_1

    :cond_4
    const/16 v2, 0x270f

    if-le v1, v2, :cond_5

    const/16 v2, 0x4e20

    if-ge v1, v2, :cond_5

    .line 396
    const/4 v0, 0x0

    .line 397
    goto :goto_1

    .line 398
    :cond_5
    const/4 v0, 0x3

    .line 399
    :goto_1
    return v0
.end method

.method private nestDealDate(Ljava/lang/String;Lcom/huawei/g11n/tmr/Match;Ljava/util/List;I)I
    .locals 16
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "curren"    # Lcom/huawei/g11n/tmr/Match;
    .param p4, "pptype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/g11n/tmr/Match;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;I)I"
        }
    .end annotation

    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "result":I
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/g11n/tmr/Match;

    .line 125
    .local v5, "next":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v6

    .line 126
    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    const/4 v8, 0x5

    if-eq v6, v8, :cond_0

    const/4 v8, 0x6

    if-eq v6, v8, :cond_0

    .line 127
    return v3

    .line 129
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v8

    if-eq v6, v8, :cond_b

    move/from16 v8, p4

    if-ne v6, v8, :cond_1

    goto/16 :goto_2

    .line 131
    :cond_1
    const/4 v9, 0x0

    .line 132
    .local v9, "isThree":Z
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "ss":Ljava/lang/String;
    iget-object v11, v0, Lcom/huawei/g11n/tmr/Filter;->locale:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->isRelDates(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 134
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v7, :cond_3

    .line 135
    nop

    .line 136
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v2, v7, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v12

    .line 135
    invoke-direct {v0, v1, v5, v11, v12}, Lcom/huawei/g11n/tmr/Filter;->nestDealDate(Ljava/lang/String;Lcom/huawei/g11n/tmr/Match;Ljava/util/List;I)I

    move-result v11

    .line 137
    .local v11, "r":I
    if-ne v11, v7, :cond_3

    .line 138
    const/4 v9, 0x1

    .line 141
    .end local v11    # "r":I
    :cond_3
    const/4 v11, 0x0

    .line 142
    .local v11, "flag15":Z
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 143
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "bStr":Ljava/lang/String;
    const-string v13, "\\s*\\((.*?)\\s*\\)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 145
    nop

    .line 144
    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 146
    .local v13, "bcm":Ljava/util/regex/Matcher;
    const/4 v14, 0x0

    .line 147
    .local v14, "d":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 148
    invoke-virtual {v13, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 150
    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/g11n/tmr/Match;

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v7

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v7

    .line 151
    .local v7, "end":I
    :goto_0
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v15

    invoke-virtual {v1, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 153
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 151
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 153
    :cond_6
    nop

    .line 151
    move v11, v4

    .line 156
    .end local v7    # "end":I
    .end local v12    # "bStr":Ljava/lang/String;
    .end local v13    # "bcm":Ljava/util/regex/Matcher;
    .end local v14    # "d":Ljava/lang/String;
    :cond_7
    iget-object v4, v0, Lcom/huawei/g11n/tmr/Filter;->locale:Ljava/lang/String;

    invoke-static {v10, v4}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->isRelDates(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v11, :cond_a

    .line 157
    :cond_8
    if-eqz v9, :cond_9

    .line 158
    const/4 v3, 0x2

    goto :goto_1

    .line 160
    :cond_9
    const/4 v3, 0x1

    .line 165
    .end local v11    # "flag15":Z
    :cond_a
    :goto_1
    return v3

    .line 130
    .end local v9    # "isThree":Z
    .end local v10    # "ss":Ljava/lang/String;
    :cond_b
    move/from16 v8, p4

    :goto_2
    return v3
.end method


# virtual methods
.method public filter(Ljava/lang/String;Ljava/util/List;Lcom/huawei/g11n/tmr/RuleInit;)Ljava/util/List;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "obj"    # Lcom/huawei/g11n/tmr/RuleInit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;",
            "Lcom/huawei/g11n/tmr/RuleInit;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .line 462
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-virtual {p0, p2}, Lcom/huawei/g11n/tmr/Filter;->filterOverlay(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 463
    invoke-virtual {p3}, Lcom/huawei/g11n/tmr/RuleInit;->getPeriodString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/huawei/g11n/tmr/RuleInit;->getDTBridgeString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huawei/g11n/tmr/Filter;->filterDatePeriod(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 464
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/g11n/tmr/Filter;->filterByRules(Ljava/lang/String;Ljava/util/List;Lcom/huawei/g11n/tmr/RuleInit;)Ljava/util/List;

    move-result-object p2

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/g11n/tmr/Filter;->filterByPast(Ljava/lang/String;Ljava/util/List;Lcom/huawei/g11n/tmr/RuleInit;)Ljava/util/List;

    move-result-object p2

    .line 467
    return-object p2
.end method

.method public filterOverlay(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .line 32
    .local p1, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "r2":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lt v1, v2, :cond_c

    .line 67
    .end local v1    # "i":I
    move-object v2, v0

    .line 68
    .end local p1    # "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .local v2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p1

    .line 69
    .local v5, "r":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 p1, 0x0

    .local p1, "i":I
    move v6, p1

    .end local p1    # "i":I
    .local v6, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lt v6, p1, :cond_1

    .line 100
    .end local v6    # "i":I
    invoke-virtual {p0, v5}, Lcom/huawei/g11n/tmr/Filter;->order(Ljava/util/List;)V

    .line 101
    return-object v5

    .line 70
    .restart local v6    # "i":I
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/huawei/g11n/tmr/Match;

    .line 71
    .local v7, "c":Lcom/huawei/g11n/tmr/Match;
    const/4 p1, 0x1

    .line 72
    .local p1, "valid":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 73
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 97
    if-ne p1, v3, :cond_3

    .line 98
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v7    # "c":Lcom/huawei/g11n/tmr/Match;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    .end local p1    # "valid":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 74
    .restart local v7    # "c":Lcom/huawei/g11n/tmr/Match;
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    .restart local p1    # "valid":I
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/Match;

    .line 75
    .local v1, "cp":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    if-le v9, v10, :cond_5

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 76
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 77
    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    if-le v9, v10, :cond_6

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 78
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 79
    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    if-ne v9, v10, :cond_7

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 80
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 81
    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    if-gt v9, v10, :cond_8

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    if-lt v9, v10, :cond_8

    .line 82
    const/4 p1, -0x1

    .line 83
    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 84
    iget-object v9, p0, Lcom/huawei/g11n/tmr/Filter;->rlevel:Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->compare(II)I

    move-result v9

    if-le v9, v4, :cond_9

    .line 85
    const/4 p1, -0x1

    .line 86
    goto/16 :goto_2

    .line 87
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 89
    goto/16 :goto_2

    :cond_a
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    if-le v9, v10, :cond_2

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 90
    iget-object v9, p0, Lcom/huawei/g11n/tmr/Filter;->rlevel:Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->compare(II)I

    move-result v9

    if-le v9, v4, :cond_b

    .line 91
    const/4 p1, -0x1

    .line 92
    goto/16 :goto_2

    .line 93
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .end local v1    # "cp":Lcom/huawei/g11n/tmr/Match;
    goto/16 :goto_2

    .line 38
    .end local v2    # "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v5    # "r":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v6    # "i":I
    .end local v7    # "c":Lcom/huawei/g11n/tmr/Match;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    .local v1, "i":I
    .local p1, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/Match;

    .line 39
    .local v2, "c":Lcom/huawei/g11n/tmr/Match;
    const/4 v5, 0x1

    .line 40
    .local v5, "valid":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 41
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_d
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_f

    .line 64
    if-ne v5, v3, :cond_e

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v2    # "c":Lcom/huawei/g11n/tmr/Match;
    .end local v5    # "valid":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 42
    .restart local v2    # "c":Lcom/huawei/g11n/tmr/Match;
    .restart local v5    # "valid":I
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/g11n/tmr/Match;

    .line 44
    .local v7, "cp":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v8

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    if-ne v8, v9, :cond_11

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v8

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    if-ne v8, v9, :cond_11

    .line 45
    iget-object v8, p0, Lcom/huawei/g11n/tmr/Filter;->rlevel:Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->compare(II)I

    move-result v8

    if-le v8, v4, :cond_10

    .line 46
    const/4 v5, -0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 50
    goto :goto_3

    :cond_11
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v8

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    if-ge v8, v9, :cond_13

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v8

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    if-ge v8, v9, :cond_13

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v8

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    if-ge v8, v9, :cond_13

    .line 51
    iget-object v8, p0, Lcom/huawei/g11n/tmr/Filter;->rlevel:Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->compare(II)I

    move-result v8

    if-le v8, v4, :cond_12

    .line 52
    const/4 v5, -0x1

    .line 53
    goto :goto_3

    .line 54
    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 56
    goto/16 :goto_3

    :cond_13
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v8

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    if-ge v8, v9, :cond_d

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v8

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v9

    if-le v8, v9, :cond_d

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v8

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    if-ge v8, v9, :cond_d

    .line 57
    iget-object v8, p0, Lcom/huawei/g11n/tmr/Filter;->rlevel:Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->compare(II)I

    move-result v8

    if-le v8, v4, :cond_14

    .line 58
    const/4 v5, -0x1

    .line 59
    goto/16 :goto_3

    .line 60
    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .end local v7    # "cp":Lcom/huawei/g11n/tmr/Match;
    goto/16 :goto_3
.end method

.method public order(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 107
    return-void
.end method
