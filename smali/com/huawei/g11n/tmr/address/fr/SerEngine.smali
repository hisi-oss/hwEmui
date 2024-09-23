.class public Lcom/huawei/g11n/tmr/address/fr/SerEngine;
.super Ljava/lang/Object;
.source "SerEngine.java"


# static fields
.field private static final BUI_MARK:I = 0x1

.field private static final POS_MARK:I = 0x4

.field private static final STR_MARK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cal(Ljava/util/regex/Matcher;Ljava/util/List;I)Ljava/util/List;
    .locals 9
    .param p0, "m2"    # Ljava/util/regex/Matcher;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 260
    .local p1, "beginList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 261
    .local v0, "indAddr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 262
    .local v1, "address":Ljava/lang/String;
    const/4 v2, 0x0

    .line 263
    .local v2, "n":I
    const/4 v3, 0x0

    .line 264
    .local v3, "t":I
    const/4 v4, 0x0

    .line 265
    .local v4, "lenSpe":I
    const/4 v5, 0x0

    .line 266
    .local v5, "index":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 285
    return-object v0

    .line 267
    :cond_1
    const/4 v6, 0x0

    .line 268
    .local v6, "flag":Z
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 269
    .local v7, "mb":I
    invoke-virtual {p0, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 270
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 272
    const/4 v6, 0x1

    .line 274
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 275
    if-eqz v6, :cond_0

    .line 276
    and-int/lit8 v8, p2, 0x1

    if-lez v8, :cond_3

    .line 277
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 278
    invoke-static {v1}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->cleanSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v4, v8

    add-int/2addr v3, v8

    .line 281
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v6    # "flag":Z
    .end local v7    # "mb":I
    goto :goto_0
.end method

.method private static cleanSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .line 234
    const-string v0, "pSpe"

    invoke-static {p0, v0}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 235
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 239
    :cond_0
    return-object p0
.end method

.method private static filteDual([I)[I
    .locals 5
    .param p0, "r"    # [I

    .line 45
    new-instance v0, Lcom/huawei/g11n/tmr/util/ItemList;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/util/ItemList;-><init>()V

    .line 46
    .local v0, "list":Lcom/huawei/g11n/tmr/util/ItemList;
    const/4 v1, 0x0

    aget v1, p0, v1

    .line 47
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 50
    .end local v2    # "i":I
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->sort()V

    .line 51
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->delRel()V

    .line 52
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->getData()[I

    move-result-object v2

    return-object v2

    .line 48
    .restart local v2    # "i":I
    :cond_0
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, p0, v4

    invoke-virtual {v0, v3, v4}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static filter([ILjava/lang/String;)Lcom/huawei/g11n/tmr/util/ItemList;
    .locals 12
    .param p0, "r"    # [I
    .param p1, "sentence"    # Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/huawei/g11n/tmr/util/ItemList;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/util/ItemList;-><init>()V

    .line 57
    .local v0, "il":Lcom/huawei/g11n/tmr/util/ItemList;
    const/4 v1, 0x0

    aget v1, p0, v1

    .line 58
    .local v1, "size":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v1, :cond_0

    .line 59
    aget v4, p0, v2

    aget v5, p0, v3

    invoke-virtual {v0, v4, v5}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 61
    :cond_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_1

    .line 96
    .end local v4    # "i":I
    return-object v0

    .line 62
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->getCurrenBegin()I

    move-result v5

    .line 63
    .local v5, "b1":I
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->getCurrenEnd()I

    move-result v6

    .line 64
    .local v6, "e1":I
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v2

    aget v7, p0, v7

    .line 65
    .local v7, "b":I
    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v3

    aget v8, p0, v8

    .line 66
    .local v8, "e":I
    if-le v6, v7, :cond_4

    .line 67
    if-ge v6, v8, :cond_3

    .line 68
    if-le v7, v5, :cond_2

    .line 69
    invoke-virtual {v0, v7}, Lcom/huawei/g11n/tmr/util/ItemList;->changeEnd(I)V

    .line 70
    invoke-virtual {v0, v7, v8}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 71
    goto :goto_1

    :cond_2
    if-ne v7, v5, :cond_7

    .line 72
    invoke-virtual {v0, v8}, Lcom/huawei/g11n/tmr/util/ItemList;->changeEnd(I)V

    .line 74
    goto :goto_1

    :cond_3
    if-ne v6, v8, :cond_7

    .line 75
    if-le v7, v5, :cond_7

    .line 76
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->getType(Ljava/lang/String;)I

    move-result v9

    .line 77
    .local v9, "type0":I
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->getType(Ljava/lang/String;)I

    move-result v10

    .line 78
    .local v10, "type1":I
    and-int v11, v9, v10

    and-int/2addr v11, v3

    if-eqz v11, :cond_7

    .line 79
    invoke-virtual {v0, v7}, Lcom/huawei/g11n/tmr/util/ItemList;->changeEnd(I)V

    .line 80
    invoke-virtual {v0, v7, v8}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 84
    .end local v9    # "type0":I
    .end local v10    # "type1":I
    goto :goto_1

    :cond_4
    if-ne v6, v7, :cond_6

    .line 85
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->getType(Ljava/lang/String;)I

    move-result v9

    .line 86
    .restart local v9    # "type0":I
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->getType(Ljava/lang/String;)I

    move-result v10

    .line 87
    .restart local v10    # "type1":I
    and-int v11, v9, v10

    and-int/2addr v11, v3

    if-eqz v11, :cond_5

    .line 88
    invoke-virtual {v0, v7, v8}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-virtual {v0, v8}, Lcom/huawei/g11n/tmr/util/ItemList;->changeEnd(I)V

    .line 93
    .end local v9    # "type0":I
    .end local v10    # "type1":I
    goto :goto_1

    .line 94
    :cond_6
    invoke-virtual {v0, v7, v8}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 61
    .end local v5    # "b1":I
    .end local v6    # "e1":I
    .end local v7    # "b":I
    .end local v8    # "e":I
    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static findAddress(Ljava/lang/String;)[I
    .locals 19
    .param p0, "sentence"    # Ljava/lang/String;

    .line 133
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 135
    .local v1, "m2":Ljava/util/regex/Matcher;
    const-string v2, "pBui1"

    invoke-static {v0, v2}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 136
    .local v2, "mBui1":Ljava/util/regex/Matcher;
    const-string v3, "pStr1"

    invoke-static {v0, v3}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 137
    .local v3, "mStr1":Ljava/util/regex/Matcher;
    const-string v4, "mPos1"

    invoke-static {v0, v4}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 138
    .local v4, "mPos1":Ljava/util/regex/Matcher;
    const-string v5, "pNumber"

    invoke-static {v0, v5}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 140
    .local v5, "mNum":Ljava/util/regex/Matcher;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v6, "beginListB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v7, "beginListS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v8, "beginListC":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_8

    .line 145
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_7

    .line 147
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_6

    .line 149
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 152
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 153
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 154
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 155
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 158
    const/4 v9, 0x0

    .line 159
    .local v9, "type":I
    const/4 v10, 0x0

    .line 160
    .local v10, "beginList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 161
    or-int/lit8 v9, v9, 0x1

    .line 163
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 164
    or-int/lit8 v9, v9, 0x2

    .line 166
    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 167
    or-int/lit8 v9, v9, 0x4

    .line 169
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v11, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Matcher;>;"
    packed-switch v9, :pswitch_data_0

    .line 204
    :pswitch_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v12

    goto/16 :goto_3

    .line 196
    :pswitch_1
    const-string v12, "pBuiCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v12, "pBuiStrPos"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v12, "pBuiStrCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v12, "pStrPos"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v12, "pStrCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    move-object v10, v8

    .line 202
    goto :goto_3

    .line 190
    :pswitch_2
    const-string v12, "pStrPos"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v12, "pStrCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    move-object v10, v7

    .line 193
    goto :goto_3

    .line 186
    :pswitch_3
    const-string v12, "pBuiCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    move-object v10, v6

    .line 188
    goto :goto_3

    .line 180
    :pswitch_4
    const-string v12, "pBuiStrCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v12, "pBuiCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v12, "pStrCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    move-object v10, v8

    .line 184
    goto :goto_3

    .line 176
    :pswitch_5
    const-string v12, "pStrCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    move-object v10, v7

    .line 178
    goto :goto_3

    .line 172
    :pswitch_6
    const-string v12, "pBuiCity"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    move-object v10, v6

    .line 174
    nop

    .line 208
    :goto_3
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 210
    .local v12, "indAddr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 214
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_3

    .line 215
    new-array v13, v14, [I

    return-object v13

    .line 217
    :cond_3
    const/4 v13, 0x0

    .line 218
    .local v13, "t":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    move v13, v15

    add-int/2addr v15, v14

    new-array v14, v15, [I

    .line 219
    .local v14, "re":[I
    const/4 v15, 0x0

    div-int/lit8 v16, v13, 0x2

    aput v16, v14, v15

    .line 220
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-lt v15, v13, :cond_4

    .line 224
    .end local v15    # "i":I
    return-object v14

    .line 221
    .restart local v15    # "i":I
    :cond_4
    add-int/lit8 v16, v15, 0x1

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v14, v16

    .line 220
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    .line 210
    .end local v13    # "t":I
    .end local v14    # "re":[I
    .end local v15    # "i":I
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Matcher;

    .line 212
    .local v0, "mam":Ljava/util/regex/Matcher;
    invoke-static {v0, v10, v9}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->cal(Ljava/util/regex/Matcher;Ljava/util/List;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    .end local v0    # "mam":Ljava/util/regex/Matcher;
    move-object/from16 v0, p0

    goto :goto_4

    .line 148
    .end local v9    # "type":I
    .end local v10    # "beginList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "mList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Matcher;>;"
    .end local v12    # "indAddr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 146
    :cond_7
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 144
    :cond_8
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    move-object/from16 v0, p0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 4
    .param p0, "sentence"    # Ljava/lang/String;

    .line 20
    const-string v0, "pBui1"

    invoke-static {p0, v0}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 21
    .local v0, "mBui1":Ljava/util/regex/Matcher;
    const-string v1, "pStr1"

    invoke-static {p0, v1}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 22
    .local v1, "mStr1":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 23
    .local v2, "type":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    or-int/lit8 v2, v2, 0x1

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    or-int/lit8 v2, v2, 0x2

    .line 29
    :cond_1
    return v2
.end method

.method private static matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .line 247
    const-string v0, "com.huawei.g11n.tmr.address.fr.ReguExp"

    invoke-static {p1, v0}, Lcom/huawei/g11n/tmr/util/PatternCache;->getPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 248
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 249
    .local v1, "m":Ljava/util/regex/Matcher;
    return-object v1
.end method

.method private static merge([ILjava/lang/String;)Lcom/huawei/g11n/tmr/util/ItemList;
    .locals 13
    .param p0, "r"    # [I
    .param p1, "sentence"    # Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/huawei/g11n/tmr/util/ItemList;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/util/ItemList;-><init>()V

    .line 101
    .local v0, "il":Lcom/huawei/g11n/tmr/util/ItemList;
    const/4 v1, 0x0

    aget v1, p0, v1

    .line 102
    .local v1, "size":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v1, :cond_0

    .line 103
    aget v4, p0, v2

    aget v5, p0, v3

    invoke-virtual {v0, v4, v5}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 105
    :cond_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_1

    .line 123
    .end local v4    # "i":I
    return-object v0

    .line 106
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->getCurrenBegin()I

    move-result v5

    .line 107
    .local v5, "b1":I
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->getCurrenEnd()I

    move-result v6

    .line 108
    .local v6, "e1":I
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v2

    aget v7, p0, v7

    .line 109
    .local v7, "b":I
    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v3

    aget v8, p0, v8

    .line 110
    .local v8, "e":I
    if-gt v6, v7, :cond_2

    .line 111
    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/util/ItemList;->getCurrenEnd()I

    move-result v9

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cat"

    invoke-static {v9, v10}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 112
    .local v9, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 113
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->getType(Ljava/lang/String;)I

    move-result v10

    .line 114
    .local v10, "type0":I
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->getType(Ljava/lang/String;)I

    move-result v11

    .line 115
    .local v11, "type1":I
    and-int v12, v10, v11

    if-nez v12, :cond_2

    .line 116
    invoke-virtual {v0, v8}, Lcom/huawei/g11n/tmr/util/ItemList;->changeEnd(I)V

    .line 117
    goto :goto_1

    .line 121
    .end local v9    # "m":Ljava/util/regex/Matcher;
    .end local v10    # "type0":I
    .end local v11    # "type1":I
    :cond_2
    invoke-virtual {v0, v7, v8}, Lcom/huawei/g11n/tmr/util/ItemList;->add(II)V

    .line 105
    .end local v5    # "b1":I
    .end local v6    # "e1":I
    .end local v7    # "b":I
    .end local v8    # "e":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static search(Ljava/lang/String;)[I
    .locals 5
    .param p0, "sentence"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->findAddress(Ljava/lang/String;)[I

    move-result-object v0

    .line 34
    .local v0, "r":[I
    invoke-static {v0}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->filteDual([I)[I

    move-result-object v1

    .line 35
    .local v1, "r2":[I
    invoke-static {v1, p0}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->filter([ILjava/lang/String;)Lcom/huawei/g11n/tmr/util/ItemList;

    move-result-object v2

    .line 36
    .local v2, "listitem":Lcom/huawei/g11n/tmr/util/ItemList;
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/util/ItemList;->getData()[I

    move-result-object v3

    invoke-static {v3, p0}, Lcom/huawei/g11n/tmr/address/fr/SerEngine;->merge([ILjava/lang/String;)Lcom/huawei/g11n/tmr/util/ItemList;

    move-result-object v3

    .line 37
    .local v3, "il":Lcom/huawei/g11n/tmr/util/ItemList;
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/util/ItemList;->toArray()[I

    move-result-object v4

    return-object v4
.end method
