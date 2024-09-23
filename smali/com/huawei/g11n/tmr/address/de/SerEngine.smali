.class public Lcom/huawei/g11n/tmr/address/de/SerEngine;
.super Ljava/lang/Object;
.source "SerEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static keyNotOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "wordsFirst"    # Ljava/lang/String;
    .param p1, "wordBlank"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    const-string v1, "pRegBlackKeyNoSingal"

    invoke-static {p2, v1}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 272
    .local v1, "mBlack":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 273
    return v0

    .line 274
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 269
    .end local v1    # "mBlack":Ljava/util/regex/Matcher;
    :cond_2
    :goto_0
    return v0
.end method

.method private static matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .line 281
    const-string v0, "com.huawei.g11n.tmr.address.de.ReguExp"

    invoke-static {p1, v0}, Lcom/huawei/g11n/tmr/util/PatternCache;->getPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 282
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 283
    .local v1, "m":Ljava/util/regex/Matcher;
    return-object v1
.end method

.method private static merge(Ljava/util/List;I)I
    .locals 6
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I)I"
        }
    .end annotation

    .line 170
    .local p0, "indx":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v0, Lcom/huawei/g11n/tmr/address/de/SerEngine$1;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/address/de/SerEngine$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    add-int/lit8 p1, p1, -0x1

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 202
    .end local v0    # "i":I
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 182
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-lt v1, v3, :cond_3

    .line 183
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v2

    if-ge v1, v3, :cond_3

    .line 184
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v4

    if-le v1, v3, :cond_1

    .line 185
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v4

    aput v3, v1, v2

    .line 187
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v3, 0x0

    aget v1, v1, v3

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v5, v5, v3

    and-int/2addr v1, v5

    if-nez v1, :cond_3

    .line 188
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v3

    if-ne v1, v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v3

    if-eq v1, v2, :cond_3

    .line 189
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v5, v5, v2

    aput v5, v1, v2

    .line 190
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v3

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v5, v5, v3

    or-int/2addr v2, v5

    aput v2, v1, v3

    .line 192
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    add-int/lit8 p1, p1, -0x1

    .line 195
    add-int/lit8 v0, v0, -0x1

    .line 181
    :cond_3
    add-int/2addr v0, v4

    goto/16 :goto_0
.end method

.method private static noBlack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "wordsFirst"    # Ljava/lang/String;
    .param p1, "wordSecond"    # Ljava/lang/String;
    .param p2, "wordBlank"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x1

    .line 215
    .local v0, "flagNotDelete":Z
    const/4 v1, 0x0

    .line 217
    .local v1, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-lez v2, :cond_4

    .line 220
    const-string v2, "pRegBlackKeyIndi_withBlank"

    invoke-static {p0, v2}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 221
    .local v2, "mBlack":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 225
    return v1

    .line 227
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 229
    return v1

    .line 232
    :cond_1
    const-string v4, "pRegBlackKeyUnIndi"

    invoke-static {p1, v4}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    const/4 v0, 0x0

    .line 236
    return v3

    .line 238
    :cond_2
    return v1

    .line 240
    :cond_3
    return v1

    .line 243
    .end local v2    # "mBlack":Ljava/util/regex/Matcher;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 246
    const-string v2, "pRegBlackKeyIndi"

    invoke-static {p1, v2}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 247
    .restart local v2    # "mBlack":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 248
    const/4 v0, 0x0

    .line 249
    return v3

    .line 251
    :cond_5
    return v1

    .line 255
    .end local v2    # "mBlack":Ljava/util/regex/Matcher;
    :cond_6
    const-string v2, "pRegBlackKeyUnIndi"

    invoke-static {p1, v2}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 256
    .restart local v2    # "mBlack":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 257
    const/4 v0, 0x0

    .line 258
    return v3

    .line 260
    :cond_7
    return v1
.end method

.method public static search(Ljava/lang/String;)[I
    .locals 28
    .param p0, "sentence"    # Ljava/lang/String;

    .line 46
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 47
    .local v1, "start":I
    const/4 v2, 0x0

    .line 48
    .local v2, "end":I
    const/4 v3, 0x0

    .line 49
    .local v3, "offset":I
    const/4 v4, 0x0

    .line 50
    .local v4, "type":I
    const/4 v5, 0x1

    .line 51
    .local v5, "flag":Z
    const/4 v6, 0x1

    .line 52
    .local v6, "flagNotDelete":Z
    const/4 v7, 0x0

    .line 53
    .local v7, "mAddr":Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .line 54
    .local v8, "temp":Ljava/lang/String;
    const/4 v9, 0x0

    .line 55
    .local v9, "mTemp":Ljava/util/regex/Matcher;
    const/4 v10, 0x0

    .line 57
    .local v10, "prepTemp":Ljava/util/regex/Matcher;
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .local v11, "indAddr":Ljava/util/List;, "Ljava/util/List<[I>;"
    const-string v12, "pRegWT"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 60
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-nez v12, :cond_12

    .line 64
    const-string v12, "pRegED"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 65
    .end local v7    # "mAddr":Ljava/util/regex/Matcher;
    .local v12, "mAddr":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_e

    .line 84
    const/4 v7, 0x0

    .line 85
    .local v7, "hasPrep":Z
    const/16 v17, 0x0

    .line 86
    .local v17, "hasOther":Z
    const-string v18, ""

    .line 87
    .local v18, "sub":Ljava/lang/String;
    const-string v13, "pRegED_Independ"

    invoke-static {v0, v13}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 88
    .end local v12    # "mAddr":Ljava/util/regex/Matcher;
    .local v13, "mAddr":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_6

    .line 129
    const-string v12, "pRegST"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 130
    .end local v13    # "mAddr":Ljava/util/regex/Matcher;
    .restart local v12    # "mAddr":Ljava/util/regex/Matcher;
    :goto_3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_2

    .line 151
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    .line 152
    .local v13, "n":I
    if-nez v13, :cond_0

    .line 154
    new-array v14, v15, [I

    return-object v14

    .line 156
    :cond_0
    invoke-static {v11, v13}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->merge(Ljava/util/List;I)I

    move-result v13

    .line 158
    mul-int/2addr v14, v13

    add-int/2addr v14, v15

    new-array v14, v14, [I

    .line 159
    .local v14, "re":[I
    const/16 v19, 0x0

    aput v13, v14, v19

    .line 160
    const/16 v19, 0x0

    .local v19, "i":I
    move/from16 v15, v19

    .end local v19    # "i":I
    .local v15, "i":I
    :goto_4
    if-lt v15, v13, :cond_1

    .line 165
    .end local v15    # "i":I
    return-object v14

    .line 161
    .restart local v15    # "i":I
    :cond_1
    move/from16 v21, v1

    const/4 v1, 0x2

    mul-int v16, v1, v15

    .end local v1    # "start":I
    .local v21, "start":I
    const/4 v1, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    aget v19, v19, v1

    aput v19, v14, v16

    .line 162
    const/4 v1, 0x2

    mul-int v16, v1, v15

    add-int/lit8 v16, v16, 0x2

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    aget v19, v19, v1

    const/4 v1, 0x1

    add-int/lit8 v19, v19, -0x1

    aput v19, v14, v16

    .line 160
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v21

    goto :goto_4

    .line 131
    .end local v13    # "n":I
    .end local v14    # "re":[I
    .end local v15    # "i":I
    .end local v21    # "start":I
    .restart local v1    # "start":I
    :cond_2
    move/from16 v21, v1

    move v1, v15

    .end local v1    # "start":I
    .restart local v21    # "start":I
    const/4 v4, 0x1

    .line 132
    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x2

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v15, v1}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->noBlack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 133
    if-eqz v6, :cond_5

    .line 134
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 135
    .end local v21    # "start":I
    .restart local v1    # "start":I
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 137
    .local v13, "mat":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 138
    const-string v15, "pReg_city"

    invoke-static {v8, v15}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 140
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 143
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    add-int/2addr v2, v15

    .line 144
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 145
    const/4 v5, 0x0

    goto :goto_5

    .line 147
    :cond_3
    const/4 v15, 0x1

    :cond_4
    :goto_5
    move/from16 v22, v3

    new-array v3, v14, [I

    .end local v3    # "offset":I
    .local v22, "offset":I
    const/16 v19, 0x0

    aput v4, v3, v19

    aput v1, v3, v15

    const/16 v16, 0x2

    aput v2, v3, v16

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v13    # "mat":Ljava/lang/String;
    move/from16 v3, v22

    goto/16 :goto_3

    .end local v1    # "start":I
    .end local v22    # "offset":I
    .restart local v3    # "offset":I
    .restart local v21    # "start":I
    :cond_5
    move/from16 v22, v3

    move/from16 v1, v21

    const/4 v15, 0x1

    .end local v3    # "offset":I
    .restart local v22    # "offset":I
    goto/16 :goto_3

    .line 89
    .end local v12    # "mAddr":Ljava/util/regex/Matcher;
    .end local v21    # "start":I
    .end local v22    # "offset":I
    .restart local v1    # "start":I
    .restart local v3    # "offset":I
    .local v13, "mAddr":Ljava/util/regex/Matcher;
    :cond_6
    const/4 v4, 0x2

    .line 90
    invoke-virtual {v13, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v15, v14}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->keyNotOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 92
    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x2

    invoke-virtual {v13, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v23, v1

    const/4 v12, 0x3

    invoke-virtual {v13, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "start":I
    .local v23, "start":I
    invoke-static {v14, v15, v1}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->noBlack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 93
    if-eqz v6, :cond_c

    .line 94
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 95
    .end local v23    # "start":I
    .restart local v1    # "start":I
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 97
    .local v12, "mat":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    const/4 v14, 0x0

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v14, "pRegPrep"

    invoke-static {v15, v14}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 99
    const-string v14, "pReg_city"

    invoke-static {v8, v14}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 100
    const-string v14, "pRegST"

    invoke-static {v8, v14}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 101
    .local v14, "strTemp":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 102
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v15

    add-int/2addr v15, v2

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 103
    .end local v18    # "sub":Ljava/lang/String;
    .local v15, "sub":Ljava/lang/String;
    move/from16 v24, v3

    const-string v3, "(\\p{Blank}+|\\p{Blank}*(-)\\p{Blank}*|\\p{Blank}*,\\p{Blank}*)"

    .end local v3    # "offset":I
    .local v24, "offset":I
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 104
    .local v3, "blank":Ljava/util/regex/Pattern;
    move/from16 v25, v5

    invoke-virtual {v3, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 105
    .local v5, "mBlank":Ljava/util/regex/Matcher;
    .local v25, "flag":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 107
    .end local v5    # "mBlank":Ljava/util/regex/Matcher;
    .end local v17    # "hasOther":Z
    .local v3, "hasOther":Z
    move/from16 v17, v3

    goto :goto_6

    .end local v15    # "sub":Ljava/lang/String;
    .end local v24    # "offset":I
    .end local v25    # "flag":Z
    .local v3, "offset":I
    .local v5, "flag":Z
    .restart local v17    # "hasOther":Z
    .restart local v18    # "sub":Ljava/lang/String;
    :cond_7
    move/from16 v24, v3

    move/from16 v25, v5

    move-object/from16 v15, v18

    .end local v3    # "offset":I
    .end local v5    # "flag":Z
    .end local v18    # "sub":Ljava/lang/String;
    .restart local v15    # "sub":Ljava/lang/String;
    .restart local v24    # "offset":I
    .restart local v25    # "flag":Z
    :goto_6
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 110
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/2addr v2, v3

    .line 111
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 112
    const/4 v3, 0x0

    .line 114
    .end local v25    # "flag":Z
    .local v3, "flag":Z
    move v5, v3

    goto :goto_7

    .end local v3    # "flag":Z
    .restart local v25    # "flag":Z
    :cond_8
    move/from16 v5, v25

    .end local v25    # "flag":Z
    .restart local v5    # "flag":Z
    :goto_7
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 115
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 117
    .local v3, "prepEnd":I
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 118
    move/from16 v26, v3

    const-string v3, "\\p{Blank}{0,6}"

    .end local v3    # "prepEnd":I
    .local v26, "prepEnd":I
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 119
    .local v3, "blank":Ljava/util/regex/Pattern;
    move/from16 v27, v5

    invoke-virtual {v3, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 120
    .local v5, "mBlank":Ljava/util/regex/Matcher;
    .local v27, "flag":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 122
    .end local v5    # "mBlank":Ljava/util/regex/Matcher;
    .end local v7    # "hasPrep":Z
    .end local v26    # "prepEnd":I
    .local v3, "hasPrep":Z
    move v7, v3

    move-object/from16 v18, v15

    goto :goto_8

    .end local v3    # "hasPrep":Z
    .end local v27    # "flag":Z
    .local v5, "flag":Z
    .restart local v7    # "hasPrep":Z
    :cond_9
    move/from16 v27, v5

    move-object/from16 v18, v15

    .end local v5    # "flag":Z
    .end local v15    # "sub":Ljava/lang/String;
    .restart local v18    # "sub":Ljava/lang/String;
    .restart local v27    # "flag":Z
    :goto_8
    if-nez v7, :cond_b

    if-eqz v17, :cond_a

    goto :goto_9

    .line 88
    .end local v12    # "mat":Ljava/lang/String;
    .end local v14    # "strTemp":Ljava/util/regex/Matcher;
    :cond_a
    const/4 v3, 0x2

    const/4 v15, 0x1

    goto :goto_a

    .line 123
    .restart local v12    # "mat":Ljava/lang/String;
    .restart local v14    # "strTemp":Ljava/util/regex/Matcher;
    :cond_b
    :goto_9
    const/4 v3, 0x3

    new-array v5, v3, [I

    const/4 v3, 0x0

    aput v4, v5, v3

    const/4 v15, 0x1

    aput v1, v5, v15

    const/4 v3, 0x2

    aput v2, v5, v3

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v12    # "mat":Ljava/lang/String;
    .end local v14    # "strTemp":Ljava/util/regex/Matcher;
    :goto_a
    move/from16 v3, v24

    move/from16 v5, v27

    const/4 v14, 0x3

    goto/16 :goto_2

    .end local v1    # "start":I
    .end local v24    # "offset":I
    .end local v27    # "flag":Z
    .local v3, "offset":I
    .restart local v5    # "flag":Z
    .restart local v23    # "start":I
    :cond_c
    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v1, v23

    const/4 v14, 0x3

    const/4 v15, 0x1

    .end local v3    # "offset":I
    .end local v5    # "flag":Z
    .restart local v24    # "offset":I
    .restart local v25    # "flag":Z
    goto/16 :goto_2

    .end local v23    # "start":I
    .end local v24    # "offset":I
    .end local v25    # "flag":Z
    .restart local v1    # "start":I
    .restart local v3    # "offset":I
    .restart local v5    # "flag":Z
    :cond_d
    move/from16 v23, v1

    move/from16 v25, v5

    const/4 v14, 0x3

    const/4 v15, 0x1

    .end local v1    # "start":I
    .end local v5    # "flag":Z
    .restart local v23    # "start":I
    .restart local v25    # "flag":Z
    goto/16 :goto_2

    .line 66
    .end local v7    # "hasPrep":Z
    .end local v13    # "mAddr":Ljava/util/regex/Matcher;
    .end local v17    # "hasOther":Z
    .end local v18    # "sub":Ljava/lang/String;
    .end local v23    # "start":I
    .end local v25    # "flag":Z
    .restart local v1    # "start":I
    .restart local v5    # "flag":Z
    .local v12, "mAddr":Ljava/util/regex/Matcher;
    :cond_e
    const/4 v14, 0x2

    const/4 v4, 0x2

    .line 67
    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v13, v15}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->noBlack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 68
    if-eqz v6, :cond_11

    .line 69
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int v1, v7, v3

    .line 70
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 72
    const-string v7, "pReg_city"

    invoke-static {v8, v7}, Lcom/huawei/g11n/tmr/address/de/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 73
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 75
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    add-int/2addr v2, v7

    .line 77
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 78
    const/4 v5, 0x0

    goto :goto_b

    .line 80
    :cond_f
    const/4 v13, 0x1

    :cond_10
    :goto_b
    const/4 v14, 0x3

    new-array v7, v14, [I

    const/4 v15, 0x0

    aput v4, v7, v15

    aput v1, v7, v13

    const/16 v16, 0x2

    aput v2, v7, v16

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    move v15, v13

    goto/16 :goto_1

    :cond_11
    const/16 v16, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x1

    goto/16 :goto_1

    .line 61
    .end local v12    # "mAddr":Ljava/util/regex/Matcher;
    .local v7, "mAddr":Ljava/util/regex/Matcher;
    :cond_12
    move v13, v15

    const/4 v15, 0x0

    const/16 v16, 0x2

    new-array v12, v14, [I

    const/4 v14, 0x7

    aput v14, v12, v15

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    aput v14, v12, v13

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    aput v13, v12, v16

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
