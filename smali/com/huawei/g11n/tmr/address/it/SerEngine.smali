.class public Lcom/huawei/g11n/tmr/address/it/SerEngine;
.super Ljava/lang/Object;
.source "SerEngine.java"


# static fields
.field private static blackDictionary:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;-><init>()V

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/SerEngine;->blackDictionary:Ljava/util/HashSet;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteBuiBlack(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "addressB"    # Ljava/lang/String;

    .line 364
    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    const-string v1, "patternbb"

    invoke-static {p0, v1}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 367
    .local v1, "matcherBuliding":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 371
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static deleteStrBlack(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "addressS"    # Ljava/lang/String;

    .line 375
    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 376
    :cond_0
    const-string v1, "patternbs"

    invoke-static {p0, v1}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 377
    .local v1, "matcherStreet":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 380
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .line 390
    const-string v0, "com.huawei.g11n.tmr.address.it.ReguExp"

    invoke-static {p1, v0}, Lcom/huawei/g11n/tmr/util/PatternCache;->getPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 391
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 392
    .local v1, "m":Ljava/util/regex/Matcher;
    return-object v1
.end method

.method private static merge(Ljava/util/List;I)I
    .locals 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I)I"
        }
    .end annotation

    .line 334
    .local p0, "indx":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v0, Lcom/huawei/g11n/tmr/address/it/SerEngine$2;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    add-int/lit8 p1, p1, -0x1

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 356
    .end local v0    # "i":I
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 345
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lt v1, v3, :cond_2

    .line 346
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v2

    if-ge v1, v3, :cond_1

    .line 347
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v2

    aput v3, v1, v2

    .line 348
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 349
    add-int/lit8 p1, p1, -0x1

    .line 350
    add-int/lit8 v0, v0, -0x1

    .line 344
    :cond_2
    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static search(Ljava/lang/String;)[I
    .locals 36
    .param p0, "sentence"    # Ljava/lang/String;

    .line 72
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 73
    .local v1, "addrIndxTemp":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 78
    .local v2, "senlen":I
    const-string v3, "patternEDnopre"

    invoke-static {v0, v3}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 80
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string v4, ""

    .line 83
    .local v4, "ss":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v5, :cond_d

    .line 147
    const-string v5, "patternED"

    invoke-static {v0, v5}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 151
    .local v5, "matcherjie":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_7

    .line 217
    const-string v6, "patternST"

    invoke-static {v0, v6}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 218
    .local v10, "matcherST":Ljava/util/regex/Matcher;
    :cond_0
    :goto_2
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 309
    .local v6, "n":I
    if-nez v6, :cond_1

    new-array v7, v9, [I

    return-object v7

    .line 314
    :cond_1
    invoke-static {v1, v6}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->merge(Ljava/util/List;I)I

    move-result v6

    .line 318
    mul-int v11, v8, v6

    add-int/2addr v11, v9

    new-array v11, v11, [I

    .line 319
    .local v11, "addrIndx":[I
    aput v6, v11, v7

    .line 321
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-lt v12, v6, :cond_2

    .line 329
    .end local v12    # "i":I
    return-object v11

    .line 322
    .restart local v12    # "i":I
    :cond_2
    mul-int v13, v8, v12

    add-int/2addr v13, v9

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    aget v14, v14, v7

    aput v14, v11, v13

    .line 323
    mul-int v13, v8, v12

    add-int/2addr v13, v8

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    aget v14, v14, v9

    sub-int/2addr v14, v9

    aput v14, v11, v13

    .line 321
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 219
    .end local v6    # "n":I
    .end local v11    # "addrIndx":[I
    .end local v12    # "i":I
    :cond_3
    const/4 v6, 0x3

    invoke-virtual {v10, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "ssq":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 222
    .local v11, "flag1":Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->deleteStrBlack(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    .line 224
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    .line 225
    .local v12, "m":I
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    .line 226
    .local v13, "n":I
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    .line 228
    new-array v14, v8, [I

    aput v12, v14, v7

    aput v13, v14, v9

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_4
    invoke-virtual {v0, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 235
    .local v14, "temp1":Ljava/lang/String;
    const-string v15, "patternPCcity"

    invoke-static {v14, v15}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 237
    .local v15, "matcherPT":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 239
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    add-int v16, v16, v13

    .line 240
    .local v16, "m1":I
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    add-int v9, v17, v13

    .line 242
    .local v9, "n1":I
    move-object/from16 v19, v4

    new-array v4, v8, [I

    .end local v4    # "ss":Ljava/lang/String;
    .local v19, "ss":Ljava/lang/String;
    aput v16, v4, v7

    const/16 v17, 0x1

    aput v9, v4, v17

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "temp2":Ljava/lang/String;
    const-string v7, "patternregion"

    invoke-static {v4, v7}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 248
    .local v7, "matcherregione":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 249
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    add-int v17, v17, v9

    .line 250
    .local v17, "m2":I
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v21

    move-object/from16 v22, v6

    add-int v6, v21, v9

    .line 251
    .local v6, "n2":I
    .local v22, "ssq":Ljava/lang/String;
    move-object/from16 v23, v7

    new-array v7, v8, [I

    .end local v7    # "matcherregione":Ljava/util/regex/Matcher;
    .local v23, "matcherregione":Ljava/util/regex/Matcher;
    const/16 v20, 0x0

    aput v17, v7, v20

    const/16 v18, 0x1

    aput v6, v7, v18

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "temp3":Ljava/lang/String;
    const-string v8, "patterncountry"

    invoke-static {v7, v8}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 257
    .local v8, "matchercountry":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 259
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v21

    add-int v21, v21, v6

    .line 260
    .local v21, "m3":I
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v24

    add-int v24, v24, v6

    .line 261
    .local v24, "n3":I
    move/from16 v25, v6

    move-object/from16 v26, v7

    const/4 v6, 0x2

    new-array v7, v6, [I

    .end local v6    # "n2":I
    .end local v7    # "temp3":Ljava/lang/String;
    .local v25, "n2":I
    .local v26, "temp3":Ljava/lang/String;
    const/4 v6, 0x0

    aput v21, v7, v6

    const/4 v6, 0x1

    aput v24, v7, v6

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v8    # "matchercountry":Ljava/util/regex/Matcher;
    .end local v17    # "m2":I
    .end local v21    # "m3":I
    .end local v24    # "n3":I
    .end local v25    # "n2":I
    .end local v26    # "temp3":Ljava/lang/String;
    nop

    .line 218
    .end local v9    # "n1":I
    .end local v11    # "flag1":Ljava/lang/Boolean;
    .end local v12    # "m":I
    .end local v13    # "n":I
    .end local v14    # "temp1":Ljava/lang/String;
    .end local v15    # "matcherPT":Ljava/util/regex/Matcher;
    .end local v16    # "m1":I
    .end local v19    # "ss":Ljava/lang/String;
    .end local v22    # "ssq":Ljava/lang/String;
    .end local v23    # "matcherregione":Ljava/util/regex/Matcher;
    .local v4, "ss":Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v4, v19

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto/16 :goto_2

    .line 266
    .local v4, "temp2":Ljava/lang/String;
    .local v6, "ssq":Ljava/lang/String;
    .local v7, "matcherregione":Ljava/util/regex/Matcher;
    .restart local v9    # "n1":I
    .restart local v11    # "flag1":Ljava/lang/Boolean;
    .restart local v12    # "m":I
    .restart local v13    # "n":I
    .restart local v14    # "temp1":Ljava/lang/String;
    .restart local v15    # "matcherPT":Ljava/util/regex/Matcher;
    .restart local v16    # "m1":I
    .restart local v19    # "ss":Ljava/lang/String;
    :cond_6
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .end local v6    # "ssq":Ljava/lang/String;
    .end local v7    # "matcherregione":Ljava/util/regex/Matcher;
    .restart local v22    # "ssq":Ljava/lang/String;
    .restart local v23    # "matcherregione":Ljava/util/regex/Matcher;
    const-string v6, "patterncountry"

    invoke-static {v4, v6}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 267
    .local v6, "matchercountry":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 269
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int/2addr v7, v9

    .line 270
    .local v7, "m0":I
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    add-int/2addr v8, v9

    .line 271
    .local v8, "n0":I
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    const/4 v4, 0x2

    new-array v6, v4, [I

    .end local v4    # "temp2":Ljava/lang/String;
    .end local v6    # "matchercountry":Ljava/util/regex/Matcher;
    .local v27, "temp2":Ljava/lang/String;
    .local v28, "matchercountry":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    aput v7, v6, v4

    const/4 v4, 0x1

    aput v8, v6, v4

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7    # "m0":I
    .end local v8    # "n0":I
    .end local v9    # "n1":I
    .end local v11    # "flag1":Ljava/lang/Boolean;
    .end local v12    # "m":I
    .end local v13    # "n":I
    .end local v14    # "temp1":Ljava/lang/String;
    .end local v15    # "matcherPT":Ljava/util/regex/Matcher;
    .end local v16    # "m1":I
    .end local v22    # "ssq":Ljava/lang/String;
    .end local v23    # "matcherregione":Ljava/util/regex/Matcher;
    .end local v27    # "temp2":Ljava/lang/String;
    .end local v28    # "matchercountry":Ljava/util/regex/Matcher;
    goto :goto_4

    .line 152
    .end local v10    # "matcherST":Ljava/util/regex/Matcher;
    .end local v19    # "ss":Ljava/lang/String;
    .local v4, "ss":Ljava/lang/String;
    :cond_7
    move-object/from16 v19, v4

    .end local v4    # "ss":Ljava/lang/String;
    .restart local v19    # "ss":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    .end local v19    # "ss":Ljava/lang/String;
    .restart local v4    # "ss":Ljava/lang/String;
    sget-object v7, Lcom/huawei/g11n/tmr/address/it/SerEngine;->blackDictionary:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 154
    nop

    .line 151
    :goto_5
    move-object/from16 v29, v4

    move-object/from16 v30, v5

    goto/16 :goto_6

    .line 160
    :cond_8
    invoke-static {v4}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->deleteBuiBlack(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 161
    .local v7, "flag2":Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 162
    goto :goto_5

    .line 164
    :cond_9
    const/4 v8, 0x2

    new-array v9, v8, [I

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    const/4 v10, 0x0

    aput v8, v9, v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    const/4 v10, 0x1

    aput v8, v9, v10

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "temp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    .line 174
    .local v9, "nED":I
    const-string v10, "patternPCcity"

    invoke-static {v8, v10}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 175
    .local v10, "matcherPT":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 177
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    add-int/2addr v11, v9

    .line 178
    .local v11, "m1":I
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    add-int/2addr v12, v9

    .line 180
    .local v12, "n1":I
    const/4 v13, 0x2

    new-array v14, v13, [I

    const/4 v13, 0x0

    aput v11, v14, v13

    const/4 v13, 0x1

    aput v12, v14, v13

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 184
    .local v13, "temp1":Ljava/lang/String;
    const-string v14, "patternregion"

    invoke-static {v13, v14}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 185
    .local v14, "matcherregione":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 186
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v15

    add-int/2addr v15, v12

    .line 187
    .local v15, "m2":I
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->end()I

    move-result v16

    add-int v6, v16, v12

    .line 188
    .local v6, "n2":I
    move-object/from16 v29, v4

    move-object/from16 v30, v5

    const/4 v4, 0x2

    new-array v5, v4, [I

    .end local v4    # "ss":Ljava/lang/String;
    .end local v5    # "matcherjie":Ljava/util/regex/Matcher;
    .local v29, "ss":Ljava/lang/String;
    .local v30, "matcherjie":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    aput v15, v5, v4

    const/4 v4, 0x1

    aput v6, v5, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "temp2":Ljava/lang/String;
    const-string v5, "patterncountry"

    invoke-static {v4, v5}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 193
    .local v5, "matchercountry":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 195
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    add-int v16, v16, v6

    .line 196
    .local v16, "m3":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    add-int v17, v17, v6

    .line 197
    .local v17, "n3":I
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    const/4 v4, 0x2

    new-array v5, v4, [I

    .end local v4    # "temp2":Ljava/lang/String;
    .end local v5    # "matchercountry":Ljava/util/regex/Matcher;
    .local v31, "temp2":Ljava/lang/String;
    .local v32, "matchercountry":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    aput v16, v5, v4

    const/4 v4, 0x1

    aput v17, v5, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v6    # "n2":I
    .end local v15    # "m2":I
    .end local v16    # "m3":I
    .end local v17    # "n3":I
    .end local v31    # "temp2":Ljava/lang/String;
    .end local v32    # "matchercountry":Ljava/util/regex/Matcher;
    goto :goto_6

    .line 202
    .end local v29    # "ss":Ljava/lang/String;
    .end local v30    # "matcherjie":Ljava/util/regex/Matcher;
    .local v4, "ss":Ljava/lang/String;
    .local v5, "matcherjie":Ljava/util/regex/Matcher;
    :cond_a
    move-object/from16 v29, v4

    move-object/from16 v30, v5

    .end local v4    # "ss":Ljava/lang/String;
    .end local v5    # "matcherjie":Ljava/util/regex/Matcher;
    .restart local v29    # "ss":Ljava/lang/String;
    .restart local v30    # "matcherjie":Ljava/util/regex/Matcher;
    const-string v4, "patterncountry"

    invoke-static {v13, v4}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 203
    .local v4, "matchercountry":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 205
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int/2addr v5, v12

    .line 206
    .local v5, "m3":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    add-int/2addr v6, v12

    .line 207
    .local v6, "n3":I
    move-object/from16 v33, v4

    const/4 v15, 0x2

    new-array v4, v15, [I

    .end local v4    # "matchercountry":Ljava/util/regex/Matcher;
    .local v33, "matchercountry":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    aput v5, v4, v15

    const/4 v15, 0x1

    aput v6, v4, v15

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5    # "m3":I
    .end local v6    # "n3":I
    .end local v7    # "flag2":Ljava/lang/Boolean;
    .end local v8    # "temp":Ljava/lang/String;
    .end local v9    # "nED":I
    .end local v10    # "matcherPT":Ljava/util/regex/Matcher;
    .end local v11    # "m1":I
    .end local v12    # "n1":I
    .end local v13    # "temp1":Ljava/lang/String;
    .end local v14    # "matcherregione":Ljava/util/regex/Matcher;
    .end local v33    # "matchercountry":Ljava/util/regex/Matcher;
    goto :goto_6

    .line 151
    .end local v29    # "ss":Ljava/lang/String;
    .end local v30    # "matcherjie":Ljava/util/regex/Matcher;
    .local v4, "ss":Ljava/lang/String;
    .local v5, "matcherjie":Ljava/util/regex/Matcher;
    :cond_b
    move-object/from16 v29, v4

    move-object/from16 v30, v5

    :cond_c
    :goto_6
    move-object/from16 v4, v29

    move-object/from16 v5, v30

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    .end local v4    # "ss":Ljava/lang/String;
    .end local v5    # "matcherjie":Ljava/util/regex/Matcher;
    .restart local v29    # "ss":Ljava/lang/String;
    .restart local v30    # "matcherjie":Ljava/util/regex/Matcher;
    goto/16 :goto_1

    .line 84
    .end local v29    # "ss":Ljava/lang/String;
    .end local v30    # "matcherjie":Ljava/util/regex/Matcher;
    .restart local v4    # "ss":Ljava/lang/String;
    :cond_d
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    sget-object v5, Lcom/huawei/g11n/tmr/address/it/SerEngine;->blackDictionary:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 86
    nop

    .line 83
    :goto_7
    move-object/from16 v34, v3

    goto/16 :goto_8

    .line 92
    :cond_e
    invoke-static {v4}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->deleteBuiBlack(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 93
    .local v5, "flag":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 94
    goto :goto_7

    .line 96
    :cond_f
    const/4 v6, 0x2

    new-array v7, v6, [I

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    const/4 v8, 0x0

    aput v6, v7, v8

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    const/4 v8, 0x1

    aput v6, v7, v8

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "temp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 106
    .local v7, "nED":I
    const-string v8, "patternPCcity"

    invoke-static {v6, v8}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 107
    .local v8, "matcherPT":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 109
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    add-int/2addr v9, v7

    .line 110
    .local v9, "m1":I
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    add-int/2addr v10, v7

    .line 112
    .local v10, "n1":I
    const/4 v11, 0x2

    new-array v12, v11, [I

    const/4 v11, 0x0

    aput v9, v12, v11

    const/4 v11, 0x1

    aput v10, v12, v11

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "temp1":Ljava/lang/String;
    const-string v12, "patternregion"

    invoke-static {v11, v12}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 117
    .local v12, "matcherregione":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 118
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    add-int/2addr v13, v10

    .line 119
    .local v13, "m2":I
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    add-int/2addr v14, v10

    .line 120
    .local v14, "n2":I
    move-object/from16 v34, v3

    const/4 v15, 0x2

    new-array v3, v15, [I

    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .local v34, "matcher":Ljava/util/regex/Matcher;
    const/4 v15, 0x0

    aput v13, v3, v15

    const/4 v15, 0x1

    aput v14, v3, v15

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "temp2":Ljava/lang/String;
    const-string v15, "patterncountry"

    invoke-static {v3, v15}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 125
    .local v15, "matchercountry":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 127
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    add-int v16, v16, v14

    .line 128
    .restart local v16    # "m3":I
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    add-int v17, v17, v14

    .line 129
    .restart local v17    # "n3":I
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v19, 0x0

    aput v16, v0, v19

    const/16 v18, 0x1

    aput v17, v0, v18

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v3    # "temp2":Ljava/lang/String;
    .end local v13    # "m2":I
    .end local v14    # "n2":I
    .end local v15    # "matchercountry":Ljava/util/regex/Matcher;
    .end local v16    # "m3":I
    .end local v17    # "n3":I
    goto :goto_8

    .line 134
    .end local v34    # "matcher":Ljava/util/regex/Matcher;
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_10
    move-object/from16 v34, v3

    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v34    # "matcher":Ljava/util/regex/Matcher;
    const-string v0, "patterncountry"

    invoke-static {v11, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    .local v0, "matchercountry":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 137
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v10

    .line 138
    .local v3, "m3":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    add-int/2addr v13, v10

    .line 139
    .local v13, "n3":I
    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v3, v14, v15

    const/4 v15, 0x1

    aput v13, v14, v15

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "matchercountry":Ljava/util/regex/Matcher;
    .end local v3    # "m3":I
    .end local v5    # "flag":Ljava/lang/Boolean;
    .end local v6    # "temp":Ljava/lang/String;
    .end local v7    # "nED":I
    .end local v8    # "matcherPT":Ljava/util/regex/Matcher;
    .end local v9    # "m1":I
    .end local v10    # "n1":I
    .end local v11    # "temp1":Ljava/lang/String;
    .end local v12    # "matcherregione":Ljava/util/regex/Matcher;
    .end local v13    # "n3":I
    goto :goto_8

    .line 83
    .end local v34    # "matcher":Ljava/util/regex/Matcher;
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_11
    move-object/from16 v34, v3

    :cond_12
    :goto_8
    move-object/from16 v3, v34

    move-object/from16 v0, p0

    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v34    # "matcher":Ljava/util/regex/Matcher;
    goto/16 :goto_0
.end method
