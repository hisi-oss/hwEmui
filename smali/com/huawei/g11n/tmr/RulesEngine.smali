.class public Lcom/huawei/g11n/tmr/RulesEngine;
.super Ljava/lang/Object;
.source "RulesEngine.java"


# instance fields
.field private locale:Ljava/lang/String;

.field private patterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private regexs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V
    .locals 7
    .param p1, "locale"    # Ljava/lang/String;
    .param p4, "param"    # Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .param p5, "param_en"    # Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;",
            "Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;",
            ")V"
        }
    .end annotation

    .line 26
    .local p2, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "subRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/huawei/g11n/tmr/RulesEngine;->locale:Ljava/lang/String;

    .line 28
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huawei/g11n/tmr/RulesEngine;->init(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Z)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;
    .param p4, "param"    # Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .param p5, "param_en"    # Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .param p6, "isPat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;",
            "Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;",
            "Z)V"
        }
    .end annotation

    .line 22
    .local p2, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "subRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/huawei/g11n/tmr/RulesEngine;->locale:Ljava/lang/String;

    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/huawei/g11n/tmr/RulesEngine;->init(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Z)V

    .line 25
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Z)V
    .locals 22
    .param p1, "locale"    # Ljava/lang/String;
    .param p4, "param"    # Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .param p5, "param_bk"    # Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .param p6, "isPat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;",
            "Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;",
            "Z)V"
        }
    .end annotation

    .local p2, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "subRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 41
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    .line 42
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/huawei/g11n/tmr/RulesEngine;->regexs:Ljava/util/HashMap;

    .line 44
    const-string v4, "\\[(param_\\w+)\\]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 45
    .local v4, "pattern":Ljava/util/regex/Pattern;
    const-string v5, "\\[regex_(\\w+)\\]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 46
    .local v5, "pattern2":Ljava/util/regex/Pattern;
    const-string v6, "\\[paramopt_(\\w+)\\]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 48
    .local v6, "pattern3":Ljava/util/regex/Pattern;
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 125
    return-void

    .line 48
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 49
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 50
    .local v9, "valid":Z
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 51
    .local v10, "name":Ljava/lang/Integer;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 54
    .local v11, "rule":Ljava/lang/String;
    const/4 v12, 0x1

    if-eqz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 55
    invoke-virtual {v5, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 56
    .local v13, "match2":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-nez v14, :cond_1

    .end local v13    # "match2":Ljava/util/regex/Matcher;
    goto :goto_2

    .line 57
    .restart local v13    # "match2":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, "text":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, "value":Ljava/lang/String;
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11, v14, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 56
    .end local v14    # "text":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    const/4 v12, 0x1

    goto :goto_1

    .line 64
    .end local v13    # "match2":Ljava/util/regex/Matcher;
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    .line 65
    :cond_3
    invoke-virtual {v6, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 66
    .local v12, "match3":Ljava/util/regex/Matcher;
    :goto_3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_f

    .line 97
    .end local v12    # "match3":Ljava/util/regex/Matcher;
    :cond_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_b

    .line 98
    :cond_5
    invoke-virtual {v4, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 99
    .local v13, "match":Ljava/util/regex/Matcher;
    :goto_4
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_6

    .end local v13    # "match":Ljava/util/regex/Matcher;
    goto/16 :goto_8

    .line 100
    .restart local v13    # "match":Ljava/util/regex/Matcher;
    :cond_6
    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 101
    .local v14, "value":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2, v14}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v2, v14}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_7
    const-string v12, ""

    .line 102
    .local v12, "pmv":Ljava/lang/String;
    :goto_5
    if-eqz v3, :cond_8

    invoke-virtual {v3, v14}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual {v3, v14}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :cond_8
    const-string v15, ""

    .line 103
    .local v15, "pmv2":Ljava/lang/String;
    :goto_6
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_9

    .line 104
    move-object v12, v15

    goto :goto_7

    .line 105
    :cond_9
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "]"

    invoke-virtual {v12, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "]\\b"

    invoke-virtual {v12, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {v0, v10}, Lcom/huawei/g11n/tmr/RulesEngine;->isConactBkParam(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 106
    const-string v1, "|"

    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 108
    :cond_a
    :goto_7
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 110
    const/4 v9, 0x0

    .line 111
    nop

    .line 116
    .end local v12    # "pmv":Ljava/lang/String;
    .end local v13    # "match":Ljava/util/regex/Matcher;
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "pmv2":Ljava/lang/String;
    :cond_b
    :goto_8
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v9, :cond_d

    .line 117
    if-eqz p6, :cond_c

    .line 118
    const/4 v12, 0x2

    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 119
    .local v12, "tP":Ljava/util/regex/Pattern;
    iget-object v13, v0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    invoke-virtual {v13, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v12    # "tP":Ljava/util/regex/Pattern;
    goto :goto_9

    .line 121
    :cond_c
    iget-object v12, v0, Lcom/huawei/g11n/tmr/RulesEngine;->regexs:Ljava/util/HashMap;

    invoke-virtual {v12, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "valid":Z
    .end local v10    # "name":Ljava/lang/Integer;
    .end local v11    # "rule":Ljava/lang/String;
    :cond_d
    :goto_9
    move-object/from16 v1, p3

    goto/16 :goto_0

    .line 113
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v9    # "valid":Z
    .restart local v10    # "name":Ljava/lang/Integer;
    .restart local v11    # "rule":Ljava/lang/String;
    .local v12, "pmv":Ljava/lang/String;
    .restart local v13    # "match":Ljava/util/regex/Matcher;
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "pmv2":Ljava/lang/String;
    :cond_e
    const-string v0, "["

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 99
    .end local v12    # "pmv":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "pmv2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    goto/16 :goto_4

    .line 67
    .end local v13    # "match":Ljava/util/regex/Matcher;
    .local v12, "match3":Ljava/util/regex/Matcher;
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "param_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 69
    .local v1, "findex":I
    move v13, v1

    .line 70
    .local v13, "rindex":I
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    .line 71
    .local v14, "fend":I
    if-eqz v2, :cond_10

    invoke-virtual {v2, v0}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_10

    invoke-virtual {v2, v0}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_a

    :cond_10
    const-string v15, ""

    .line 72
    .local v15, "pmo":Ljava/lang/String;
    :goto_a
    if-eqz v3, :cond_11

    invoke-virtual {v3, v0}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_11

    invoke-virtual {v3, v0}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_b

    :cond_11
    const-string v16, ""

    :goto_b
    move-object/from16 v17, v16

    .line 73
    .local v17, "pmo2":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_12

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    .end local v17    # "pmo2":Ljava/lang/String;
    .local v0, "pmo2":Ljava/lang/String;
    .local v18, "value":Ljava/lang/String;
    if-nez v16, :cond_13

    .line 74
    move-object v15, v0

    .line 76
    goto :goto_c

    .end local v18    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    .restart local v17    # "pmo2":Ljava/lang/String;
    :cond_12
    move-object/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "pmo2":Ljava/lang/String;
    .local v0, "pmo2":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_13
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 77
    const-string v2, "|"

    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 79
    :cond_14
    :goto_c
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 80
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v11, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v0

    const-string v0, "|"

    .end local v0    # "pmo2":Ljava/lang/String;
    .local v19, "pmo2":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 81
    add-int/lit8 v0, v1, -0x1

    .line 84
    .end local v13    # "rindex":I
    .local v0, "rindex":I
    nop

    .line 89
    .end local v0    # "rindex":I
    .restart local v13    # "rindex":I
    :goto_d
    move v13, v0

    goto :goto_e

    .line 85
    :cond_15
    move v0, v1

    .end local v13    # "rindex":I
    .restart local v0    # "rindex":I
    goto :goto_d

    .line 89
    .end local v0    # "rindex":I
    .restart local v13    # "rindex":I
    :goto_e
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v11, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    .line 92
    .end local v19    # "pmo2":Ljava/lang/String;
    .local v0, "pmo2":Ljava/lang/String;
    :cond_16
    move-object/from16 v19, v0

    .end local v0    # "pmo2":Ljava/lang/String;
    .restart local v19    # "pmo2":Ljava/lang/String;
    :goto_f
    const-string v0, "["

    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 v20, v1

    const-string v1, "paramopt_"

    .end local v1    # "findex":I
    .local v20, "findex":I
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 66
    .end local v13    # "rindex":I
    .end local v14    # "fend":I
    .end local v15    # "pmo":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    .end local v19    # "pmo2":Ljava/lang/String;
    .end local v20    # "findex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto/16 :goto_3
.end method

.method private isConactBkParam(Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "rNum"    # Ljava/lang/Integer;

    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, "isC":Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4e29

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4e2a

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4e2b

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/huawei/g11n/tmr/RulesEngine;->locale:Ljava/lang/String;

    const-string v2, "zh_hans"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/g11n/tmr/RulesEngine;->locale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 136
    :cond_1
    return v0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RulesEngine;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getPattenById(Ljava/lang/Integer;)Ljava/util/regex/Pattern;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .line 166
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0

    .line 167
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPatterns(Ljava/lang/Integer;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "key"    # Ljava/lang/Integer;

    .line 32
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33
    return-object v1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0

    .line 37
    :cond_1
    return-object v1
.end method

.method public getRegexs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RulesEngine;->regexs:Ljava/util/HashMap;

    return-object v0
.end method

.method public match(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "matchs":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    return-object v0

    .line 152
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 154
    .local v3, "name":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/huawei/g11n/tmr/RulesEngine;->patterns:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 155
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 156
    .local v5, "match":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    .end local v3    # "name":Ljava/lang/Integer;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "match":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 157
    .restart local v3    # "name":Ljava/lang/Integer;
    .restart local v4    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "match":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 158
    .local v6, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 159
    .local v7, "end":I
    new-instance v8, Lcom/huawei/g11n/tmr/Match;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v7, v9}, Lcom/huawei/g11n/tmr/Match;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_1
.end method
