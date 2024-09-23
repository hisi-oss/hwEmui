.class public Lcom/huawei/g11n/tmr/address/es/SerEngine;
.super Ljava/lang/Object;
.source "SerEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .line 330
    const-string v0, "com.huawei.g11n.tmr.address.es.ReguExp"

    invoke-static {p1, v0}, Lcom/huawei/g11n/tmr/util/PatternCache;->getPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 331
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 332
    .local v1, "m":Ljava/util/regex/Matcher;
    return-object v1
.end method

.method private static merge(Ljava/util/List;ILjava/lang/String;)I
    .locals 6
    .param p1, "len"    # I
    .param p2, "sentence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 259
    .local p0, "indx":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v0, Lcom/huawei/g11n/tmr/address/es/SerEngine$2;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/address/es/SerEngine$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    add-int/lit8 p1, p1, -0x1

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 317
    .end local v0    # "i":I
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 280
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

    .line 281
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

    .line 282
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

    .line 283
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v4

    aput v3, v1, v2

    .line 285
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

    .line 286
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

    .line 287
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

    .line 288
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

    .line 290
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 291
    add-int/lit8 p1, p1, -0x1

    .line 293
    add-int/lit8 v0, v0, -0x1

    .line 279
    :cond_3
    add-int/2addr v0, v4

    goto/16 :goto_0
.end method

.method public static search(Ljava/lang/String;)[I
    .locals 24
    .param p0, "sentence"    # Ljava/lang/String;

    .line 47
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 49
    .local v1, "type":I
    const/4 v2, 0x0

    .line 50
    .local v2, "hasPrep":Z
    const/4 v3, 0x0

    .line 51
    .local v3, "hasOther":Z
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 52
    .local v5, "otherIndex":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v6, "listOther":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v7, 0x0

    .line 54
    .local v7, "temp":Ljava/lang/String;
    const/4 v8, -0x1

    .line 55
    .local v8, "start":I
    const/4 v9, 0x0

    .line 57
    .local v9, "end":I
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 61
    .local v10, "indAddr":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v11, 0x0

    .line 63
    .local v11, "n":I
    const-string v12, "p1"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 69
    .local v12, "mAll":Ljava/util/regex/Matcher;
    new-instance v13, Lcom/huawei/g11n/tmr/address/es/SerEngine$1;

    invoke-direct {v13}, Lcom/huawei/g11n/tmr/address/es/SerEngine$1;-><init>()V

    .line 135
    .local v13, "blackDictionary":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    const/4 v15, 0x1

    if-nez v14, :cond_0

    .line 164
    .end local v7    # "temp":Ljava/lang/String;
    .local v14, "temp":Ljava/lang/String;
    :goto_1
    move-object v14, v7

    goto :goto_2

    .line 137
    .end local v14    # "temp":Ljava/lang/String;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_0
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 138
    const/4 v1, 0x1

    .line 140
    invoke-virtual {v13, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 144
    goto :goto_1

    .line 164
    .end local v7    # "temp":Ljava/lang/String;
    .restart local v14    # "temp":Ljava/lang/String;
    :goto_2
    const-string v7, "p3"

    invoke-static {v0, v7}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 166
    .end local v12    # "mAll":Ljava/util/regex/Matcher;
    .local v7, "mAll":Ljava/util/regex/Matcher;
    :goto_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_b

    .line 194
    const-string v12, "p5"

    invoke-static {v0, v12}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 196
    .end local v7    # "mAll":Ljava/util/regex/Matcher;
    .restart local v12    # "mAll":Ljava/util/regex/Matcher;
    move/from16 v18, v3

    .end local v3    # "hasOther":Z
    .local v18, "hasOther":Z
    :goto_4
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_3

    .line 240
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .line 241
    .end local v11    # "n":I
    .local v3, "n":I
    if-nez v3, :cond_1

    .line 243
    new-array v4, v15, [I

    return-object v4

    .line 245
    :cond_1
    invoke-static {v10, v3, v0}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->merge(Ljava/util/List;ILjava/lang/String;)I

    move-result v3

    .line 247
    mul-int v7, v4, v3

    add-int/2addr v7, v15

    new-array v7, v7, [I

    .line 248
    .local v7, "re":[I
    const/4 v11, 0x0

    aput v3, v7, v11

    .line 249
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-lt v11, v3, :cond_2

    .line 254
    .end local v11    # "i":I
    return-object v7

    .line 250
    .restart local v11    # "i":I
    :cond_2
    mul-int v16, v4, v11

    add-int/lit8 v16, v16, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    aget v17, v17, v15

    aput v17, v7, v16

    .line 251
    mul-int v16, v4, v11

    add-int/lit8 v16, v16, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    aget v17, v17, v4

    add-int/lit8 v17, v17, -0x1

    aput v17, v7, v16

    .line 249
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 197
    .end local v3    # "n":I
    .end local v7    # "re":[I
    .local v11, "n":I
    :cond_3
    const/16 v19, 0x2

    .line 198
    .end local v1    # "type":I
    .local v19, "type":I
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 200
    .end local v8    # "start":I
    .local v1, "start":I
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 201
    .end local v9    # "end":I
    .local v3, "end":I
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v7, "pgrep"

    invoke-static {v8, v7}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 202
    .local v7, "mprep":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 203
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    .line 205
    .local v8, "prepEnd":I
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "sub":Ljava/lang/String;
    const-string v4, "\\p{Blank}{1,6}"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 207
    .local v4, "blank":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 208
    .local v15, "mBlank":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 210
    .end local v2    # "hasPrep":Z
    .end local v8    # "prepEnd":I
    .end local v9    # "sub":Ljava/lang/String;
    .end local v15    # "mBlank":Ljava/util/regex/Matcher;
    .local v4, "hasPrep":Z
    :cond_4
    move v4, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 211
    .local v2, "eachOther":[I
    const/4 v8, 0x0

    aget v9, v2, v8

    const/16 v8, 0xa

    if-le v9, v3, :cond_7

    const/4 v9, 0x0

    aget v17, v2, v9

    sub-int v9, v17, v3

    if-ge v9, v8, :cond_7

    .line 212
    const/4 v8, 0x0

    aget v9, v2, v8

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pPrepAndSc"

    invoke-static {v8, v9}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 213
    .local v8, "mPasc":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 214
    const/4 v9, 0x1

    .line 215
    .end local v18    # "hasOther":Z
    .local v9, "hasOther":Z
    nop

    .line 226
    .end local v2    # "eachOther":[I
    .end local v8    # "mPasc":Ljava/util/regex/Matcher;
    .end local v9    # "hasOther":Z
    .restart local v18    # "hasOther":Z
    :goto_6
    move/from16 v18, v9

    goto :goto_7

    .line 218
    .restart local v2    # "eachOther":[I
    :cond_7
    const/4 v9, 0x1

    aget v8, v2, v9

    if-ge v8, v1, :cond_5

    aget v8, v2, v9

    sub-int v8, v1, v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_5

    .line 219
    const/4 v8, 0x1

    aget v9, v2, v8

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pPrepAndSc"

    invoke-static {v8, v9}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 220
    .restart local v8    # "mPasc":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 221
    const/4 v9, 0x1

    .line 222
    .end local v18    # "hasOther":Z
    .restart local v9    # "hasOther":Z
    goto :goto_6

    .line 226
    .end local v2    # "eachOther":[I
    .end local v8    # "mPasc":Ljava/util/regex/Matcher;
    .end local v9    # "hasOther":Z
    .restart local v18    # "hasOther":Z
    :goto_7
    if-nez v4, :cond_9

    if-eqz v18, :cond_8

    goto :goto_9

    .line 196
    .end local v7    # "mprep":Ljava/util/regex/Matcher;
    :cond_8
    move v8, v1

    move v9, v3

    .end local v3    # "end":I
    .end local v4    # "hasPrep":Z
    .end local v19    # "type":I
    .local v1, "type":I
    .local v2, "hasPrep":Z
    .local v8, "start":I
    .local v9, "end":I
    :goto_8
    move v2, v4

    move/from16 v1, v19

    const/4 v4, 0x2

    const/4 v15, 0x1

    goto/16 :goto_4

    .line 229
    .end local v2    # "hasPrep":Z
    .end local v8    # "start":I
    .end local v9    # "end":I
    .local v1, "start":I
    .restart local v3    # "end":I
    .restart local v4    # "hasPrep":Z
    .restart local v7    # "mprep":Ljava/util/regex/Matcher;
    .restart local v19    # "type":I
    :cond_9
    :goto_9
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "mtemp":Ljava/lang/String;
    const-string v8, "p2"

    invoke-static {v2, v8}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 231
    .local v8, "cAll":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 232
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    add-int/2addr v3, v9

    .line 234
    .end local v3    # "end":I
    .restart local v9    # "end":I
    :cond_a
    move v9, v3

    const/4 v3, 0x3

    new-array v15, v3, [I

    const/4 v3, 0x0

    aput v19, v15, v3

    const/4 v3, 0x1

    aput v1, v15, v3

    const/4 v3, 0x2

    aput v9, v15, v3

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v2    # "mtemp":Ljava/lang/String;
    .end local v7    # "mprep":Ljava/util/regex/Matcher;
    .end local v8    # "cAll":Ljava/util/regex/Matcher;
    move v8, v1

    goto :goto_8

    .line 167
    .end local v4    # "hasPrep":Z
    .end local v12    # "mAll":Ljava/util/regex/Matcher;
    .end local v18    # "hasOther":Z
    .end local v19    # "type":I
    .local v1, "type":I
    .local v2, "hasPrep":Z
    .local v3, "hasOther":Z
    .local v7, "mAll":Ljava/util/regex/Matcher;
    .local v8, "start":I
    :cond_b
    const/4 v1, 0x2

    .line 168
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 170
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v8

    .line 173
    .end local v9    # "end":I
    .local v4, "end":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "mtemp":Ljava/lang/String;
    const-string v12, "p2"

    invoke-static {v9, v12}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 175
    .local v12, "cAll":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 176
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    add-int/2addr v4, v15

    .line 178
    :cond_c
    move/from16 v23, v2

    const/4 v15, 0x3

    new-array v2, v15, [I

    .end local v2    # "hasPrep":Z
    .local v23, "hasPrep":Z
    const/4 v15, 0x0

    aput v1, v2, v15

    const/4 v15, 0x1

    aput v8, v2, v15

    const/4 v15, 0x2

    aput v4, v2, v15

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v9    # "mtemp":Ljava/lang/String;
    .end local v12    # "cAll":Ljava/util/regex/Matcher;
    move v9, v4

    move/from16 v2, v23

    const/4 v4, 0x2

    const/4 v15, 0x1

    goto/16 :goto_3

    .line 146
    .end local v4    # "end":I
    .end local v14    # "temp":Ljava/lang/String;
    .end local v23    # "hasPrep":Z
    .restart local v2    # "hasPrep":Z
    .local v7, "temp":Ljava/lang/String;
    .local v9, "end":I
    .local v12, "mAll":Ljava/util/regex/Matcher;
    :cond_d
    move/from16 v23, v2

    .end local v2    # "hasPrep":Z
    .restart local v23    # "hasPrep":Z
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 148
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v8

    .line 149
    .end local v9    # "end":I
    .local v2, "end":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "mTemp":Ljava/lang/String;
    const-string v9, "p2"

    invoke-static {v4, v9}, Lcom/huawei/g11n/tmr/address/es/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 153
    .local v9, "cAll":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 154
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    add-int/2addr v2, v14

    .line 156
    :cond_e
    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/16 v16, 0x1

    aput v8, v14, v16

    const/16 v17, 0x2

    aput v2, v14, v17

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    aput v8, v5, v15

    .line 158
    aput v2, v5, v16

    .line 159
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v4    # "mTemp":Ljava/lang/String;
    .end local v9    # "cAll":Ljava/util/regex/Matcher;
    move v9, v2

    move/from16 v4, v17

    move/from16 v2, v23

    goto/16 :goto_0
.end method
