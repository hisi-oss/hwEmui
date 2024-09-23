.class public Lcom/huawei/g11n/tmr/RuleInit;
.super Ljava/lang/Object;
.source "RuleInit.java"


# instance fields
.field private DTBridgeString:Ljava/lang/String;

.field private clear:Lcom/huawei/g11n/tmr/RulesEngine;

.field private detects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/RulesEngine;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/lang/String;

.field private locale_bk:Ljava/lang/String;

.field private parses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private past:Lcom/huawei/g11n/tmr/RulesEngine;

.field private periodString:Ljava/lang/String;

.field private rp:Lcom/huawei/g11n/tmr/datetime/parse/DateParse;

.field private subDetectsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/g11n/tmr/RulesEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "localeBk"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/huawei/g11n/tmr/RuleInit;->locale_bk:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/huawei/g11n/tmr/RuleInit;->init()V

    .line 70
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;

    invoke-direct {v0, p1, p2, p0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/g11n/tmr/RuleInit;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/RuleInit;->rp:Lcom/huawei/g11n/tmr/datetime/parse/DateParse;

    .line 71
    return-void
.end method

.method private init()V
    .locals 25

    .line 74
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v1, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;

    invoke-direct {v2}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;-><init>()V

    move-object v8, v2

    .line 76
    .local v8, "ur":Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;
    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;->getRules()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 78
    new-instance v2, Lcom/huawei/g11n/tmr/datetime/detect/Rules;

    invoke-direct {v2}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;-><init>()V

    move-object v9, v2

    .line 79
    .local v9, "rl":Lcom/huawei/g11n/tmr/datetime/detect/Rules;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v15, v2

    .line 80
    .local v15, "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v14, v2

    .line 81
    .local v14, "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;

    invoke-direct {v2, v9}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/Rules;)V

    move-object v13, v2

    .line 82
    .local v13, "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    iget-object v2, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->getLocaleRules(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 83
    iget-object v2, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale_bk:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->getLocaleRules(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 88
    new-instance v2, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;

    iget-object v3, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;-><init>(Ljava/lang/String;)V

    move-object v12, v2

    .line 90
    .local v12, "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    new-instance v7, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;

    iget-object v2, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale_bk:Ljava/lang/String;

    invoke-direct {v7, v2}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;-><init>(Ljava/lang/String;)V

    .line 92
    .local v7, "param_bk":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/huawei/g11n/tmr/RuleInit;->setPeriodString(Ljava/lang/String;)V

    .line 93
    iget-object v2, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    const-string v3, "jv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    const-string v3, "fil"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    const-string v2, "param_period"

    invoke-virtual {v12, v2}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "ps":Ljava/lang/String;
    const-string v3, "\\b"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Lcom/huawei/g11n/tmr/RuleInit;->setPeriodString(Ljava/lang/String;)V

    .line 99
    .end local v2    # "ps":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/huawei/g11n/tmr/RuleInit;->setDTBridgeString(Ljava/lang/String;)V

    .line 100
    iget-object v2, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    const-string v3, "be"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    const-string v3, "fil"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    const-string v3, "kk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    :cond_2
    const-string v2, "param_DateTimeBridge"

    invoke-virtual {v12, v2}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "dts":Ljava/lang/String;
    const-string v3, "\\b"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Lcom/huawei/g11n/tmr/RuleInit;->setDTBridgeString(Ljava/lang/String;)V

    .line 106
    .end local v2    # "dts":Ljava/lang/String;
    :cond_3
    new-instance v10, Lcom/huawei/g11n/tmr/RulesEngine;

    iget-object v3, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getSubRules()Ljava/util/HashMap;

    move-result-object v5

    move-object v2, v10

    move-object v4, v1

    move-object v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/huawei/g11n/tmr/RulesEngine;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V

    .line 107
    .local v2, "uniDetects":Lcom/huawei/g11n/tmr/RulesEngine;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/huawei/g11n/tmr/RuleInit;->detects:Ljava/util/List;

    .line 108
    iget-object v3, v0, Lcom/huawei/g11n/tmr/RuleInit;->detects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/huawei/g11n/tmr/RuleInit;->subDetectsMap:Ljava/util/HashMap;

    .line 110
    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;->getSubRulesMaps()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 117
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 118
    new-instance v3, Lcom/huawei/g11n/tmr/RulesEngine;

    iget-object v11, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getSubRules()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    move-object v10, v3

    move-object v6, v12

    move-object v12, v15

    .end local v12    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .local v6, "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    move-object/from16 v23, v13

    move-object v13, v4

    .end local v13    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .local v23, "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    move-object v4, v14

    move-object v14, v6

    .end local v14    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v4, "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v24, v15

    move-object v15, v5

    .end local v15    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v24, "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct/range {v10 .. v15}, Lcom/huawei/g11n/tmr/RulesEngine;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V

    .line 120
    .local v3, "localeEngine":Lcom/huawei/g11n/tmr/RulesEngine;
    iget-object v5, v0, Lcom/huawei/g11n/tmr/RuleInit;->detects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3    # "localeEngine":Lcom/huawei/g11n/tmr/RulesEngine;
    goto :goto_1

    .line 122
    .end local v4    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .end local v23    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .end local v24    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v12    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .restart local v13    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .restart local v14    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v15    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_4
    move-object v6, v12

    move-object/from16 v23, v13

    move-object v4, v14

    move-object/from16 v24, v15

    .end local v12    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .end local v13    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .end local v14    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .restart local v23    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .restart local v24    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 123
    new-instance v3, Lcom/huawei/g11n/tmr/RulesEngine;

    iget-object v5, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale_bk:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getSubRules()Ljava/util/HashMap;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v20, v7

    invoke-direct/range {v16 .. v21}, Lcom/huawei/g11n/tmr/RulesEngine;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V

    .line 125
    .restart local v3    # "localeEngine":Lcom/huawei/g11n/tmr/RulesEngine;
    iget-object v5, v0, Lcom/huawei/g11n/tmr/RuleInit;->detects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "localeEngine":Lcom/huawei/g11n/tmr/RulesEngine;
    :cond_5
    new-instance v3, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;

    invoke-direct {v3}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;-><init>()V

    .line 130
    .local v3, "pr":Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;
    new-instance v5, Lcom/huawei/g11n/tmr/RulesEngine;

    iget-object v10, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;->getRules()Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getSubRules()Ljava/util/HashMap;

    move-result-object v19

    const/16 v22, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v22}, Lcom/huawei/g11n/tmr/RulesEngine;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Z)V

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/RulesEngine;->getRegexs()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, v0, Lcom/huawei/g11n/tmr/RuleInit;->parses:Ljava/util/HashMap;

    .line 132
    new-instance v5, Lcom/huawei/g11n/tmr/RulesEngine;

    iget-object v10, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getFilterRegex()Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getSubRules()Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v21}, Lcom/huawei/g11n/tmr/RulesEngine;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V

    iput-object v5, v0, Lcom/huawei/g11n/tmr/RuleInit;->clear:Lcom/huawei/g11n/tmr/RulesEngine;

    .line 133
    new-instance v5, Lcom/huawei/g11n/tmr/RulesEngine;

    iget-object v10, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getPastRegex()Ljava/util/HashMap;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v21}, Lcom/huawei/g11n/tmr/RulesEngine;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V

    iput-object v5, v0, Lcom/huawei/g11n/tmr/RuleInit;->past:Lcom/huawei/g11n/tmr/RulesEngine;

    .line 134
    return-void

    .line 110
    .end local v3    # "pr":Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;
    .end local v4    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .end local v23    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .end local v24    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v12    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .restart local v13    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .restart local v14    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v15    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_6
    move-object v6, v12

    move-object/from16 v23, v13

    move-object v4, v14

    move-object/from16 v24, v15

    .end local v12    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .end local v13    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .end local v14    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "bkLocaleRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    .restart local v23    # "lr":Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
    .restart local v24    # "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 111
    .local v5, "name":Ljava/lang/Integer;
    new-instance v10, Lcom/huawei/g11n/tmr/RulesEngine;

    iget-object v11, v0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;->getSubRulesMaps()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getSubRules()Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lcom/huawei/g11n/tmr/RulesEngine;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V

    .line 112
    .local v10, "sub":Lcom/huawei/g11n/tmr/RulesEngine;
    iget-object v11, v0, Lcom/huawei/g11n/tmr/RuleInit;->subDetectsMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v5    # "name":Ljava/lang/Integer;
    .end local v10    # "sub":Lcom/huawei/g11n/tmr/RulesEngine;
    move-object v12, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 226
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RuleInit;->clear:Lcom/huawei/g11n/tmr/RulesEngine;

    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/RulesEngine;->match(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/lang/String;)Ljava/util/List;
    .locals 9
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

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "r1":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    iget-object v1, p0, Lcom/huawei/g11n/tmr/RuleInit;->detects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 142
    .local v2, "r1it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 143
    .local v3, "subResult":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    new-instance v1, Lcom/huawei/g11n/tmr/Filter;

    iget-object v4, p0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/huawei/g11n/tmr/Filter;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "filter":Lcom/huawei/g11n/tmr/Filter;
    invoke-virtual {v1, p1, v0, p0}, Lcom/huawei/g11n/tmr/Filter;->filter(Ljava/lang/String;Ljava/util/List;Lcom/huawei/g11n/tmr/RuleInit;)Ljava/util/List;

    move-result-object v0

    .line 159
    return-object v0

    .line 144
    .end local v1    # "filter":Lcom/huawei/g11n/tmr/Filter;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/Match;

    .line 145
    .local v1, "c":Lcom/huawei/g11n/tmr/Match;
    iget-object v4, p0, Lcom/huawei/g11n/tmr/RuleInit;->subDetectsMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/huawei/g11n/tmr/RuleInit;->subDetectsMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/RulesEngine;

    iget v5, v1, Lcom/huawei/g11n/tmr/Match;->begin:I

    iget v6, v1, Lcom/huawei/g11n/tmr/Match;->end:I

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/g11n/tmr/RulesEngine;->match(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 147
    .local v4, "rsub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 152
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .end local v1    # "c":Lcom/huawei/g11n/tmr/Match;
    .end local v4    # "rsub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    goto :goto_1

    .line 147
    .restart local v1    # "c":Lcom/huawei/g11n/tmr/Match;
    .restart local v4    # "rsub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/g11n/tmr/Match;

    .line 149
    .local v6, "ma":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v7

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/Match;->setBegin(I)V

    .line 150
    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v7

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .end local v6    # "ma":Lcom/huawei/g11n/tmr/Match;
    goto :goto_2

    .line 139
    .end local v1    # "c":Lcom/huawei/g11n/tmr/Match;
    .end local v2    # "r1it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v3    # "subResult":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v4    # "rsub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/RulesEngine;

    .line 140
    .local v2, "detect":Lcom/huawei/g11n/tmr/RulesEngine;
    invoke-virtual {v2, p1}, Lcom/huawei/g11n/tmr/RulesEngine;->match(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v2    # "detect":Lcom/huawei/g11n/tmr/RulesEngine;
    goto/16 :goto_0
.end method

.method public getDTBridgeString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RuleInit;->DTBridgeString:Ljava/lang/String;

    return-object v0
.end method

.method public getDetectByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "result":Ljava/util/regex/Pattern;
    iget-object v1, p0, Lcom/huawei/g11n/tmr/RuleInit;->detects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/RulesEngine;

    .line 207
    .local v2, "detect":Lcom/huawei/g11n/tmr/RulesEngine;
    invoke-virtual {v2, p1}, Lcom/huawei/g11n/tmr/RulesEngine;->getPatterns(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    nop

    .line 212
    .end local v2    # "detect":Lcom/huawei/g11n/tmr/RulesEngine;
    :goto_0
    if-nez v0, :cond_4

    .line 214
    iget-object v1, p0, Lcom/huawei/g11n/tmr/RuleInit;->subDetectsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 215
    .local v2, "name":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/huawei/g11n/tmr/RuleInit;->subDetectsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/g11n/tmr/RulesEngine;

    invoke-virtual {v3, p1}, Lcom/huawei/g11n/tmr/RulesEngine;->getPatterns(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_2

    .line 217
    nop

    .line 220
    .end local v2    # "name":Ljava/lang/Integer;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale_bk()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RuleInit;->locale_bk:Ljava/lang/String;

    return-object v0
.end method

.method public getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "key"    # Ljava/lang/Integer;

    .line 200
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RuleInit;->parses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 201
    .local v0, "pattern":Ljava/util/regex/Pattern;
    return-object v0
.end method

.method public getPeriodString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RuleInit;->periodString:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "defaultTime"    # J

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "r1":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    iget-object v1, p0, Lcom/huawei/g11n/tmr/RuleInit;->detects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 170
    .local v2, "r1it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 171
    .local v3, "subResult":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 184
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    new-instance v1, Lcom/huawei/g11n/tmr/Filter;

    iget-object v4, p0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/huawei/g11n/tmr/Filter;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "filter":Lcom/huawei/g11n/tmr/Filter;
    invoke-virtual {v1, v0}, Lcom/huawei/g11n/tmr/Filter;->filterOverlay(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 188
    .end local v0    # "r1":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .local v4, "r1":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;

    iget-object v5, p0, Lcom/huawei/g11n/tmr/RuleInit;->locale:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "c":Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/RuleInit;->getPeriodString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/RuleInit;->getDTBridgeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p1, v4, v5, v6}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->filterByParse(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v5

    .line 196
    .local v5, "result":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    return-object v5

    .line 188
    .end local v0    # "c":Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;
    .end local v5    # "result":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/g11n/tmr/Match;

    .line 189
    .local v0, "m":Lcom/huawei/g11n/tmr/Match;
    iget-object v6, p0, Lcom/huawei/g11n/tmr/RuleInit;->rp:Lcom/huawei/g11n/tmr/datetime/parse/DateParse;

    iget v7, v0, Lcom/huawei/g11n/tmr/Match;->begin:I

    iget v8, v0, Lcom/huawei/g11n/tmr/Match;->end:I

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p2, p3}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parse(Ljava/lang/String;Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v6

    .line 190
    .local v6, "tdp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    if-eqz v6, :cond_1

    .line 191
    invoke-virtual {v0, v6}, Lcom/huawei/g11n/tmr/Match;->setDp(Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;)V

    .end local v0    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v6    # "tdp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    goto :goto_2

    .line 172
    .end local v1    # "filter":Lcom/huawei/g11n/tmr/Filter;
    .end local v4    # "r1":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .local v0, "r1":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/Match;

    .line 173
    .local v1, "c":Lcom/huawei/g11n/tmr/Match;
    iget-object v4, p0, Lcom/huawei/g11n/tmr/RuleInit;->subDetectsMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/huawei/g11n/tmr/RuleInit;->subDetectsMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/RulesEngine;

    iget v5, v1, Lcom/huawei/g11n/tmr/Match;->begin:I

    iget v6, v1, Lcom/huawei/g11n/tmr/Match;->end:I

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/g11n/tmr/RulesEngine;->match(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "rsub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 180
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .end local v1    # "c":Lcom/huawei/g11n/tmr/Match;
    .end local v4    # "rsub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    goto/16 :goto_1

    .line 175
    .restart local v1    # "c":Lcom/huawei/g11n/tmr/Match;
    .restart local v4    # "rsub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/g11n/tmr/Match;

    .line 177
    .local v6, "ma":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v7

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/Match;->setBegin(I)V

    .line 178
    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v7

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .end local v6    # "ma":Lcom/huawei/g11n/tmr/Match;
    goto :goto_3

    .line 166
    .end local v1    # "c":Lcom/huawei/g11n/tmr/Match;
    .end local v2    # "r1it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v3    # "subResult":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v4    # "rsub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/RulesEngine;

    .line 167
    .local v2, "detect":Lcom/huawei/g11n/tmr/RulesEngine;
    invoke-virtual {v2, p1}, Lcom/huawei/g11n/tmr/RulesEngine;->match(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v2    # "detect":Lcom/huawei/g11n/tmr/RulesEngine;
    goto/16 :goto_0
.end method

.method public pastFind(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 230
    iget-object v0, p0, Lcom/huawei/g11n/tmr/RuleInit;->past:Lcom/huawei/g11n/tmr/RulesEngine;

    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/RulesEngine;->match(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDTBridgeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "dTBridgeString"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/huawei/g11n/tmr/RuleInit;->DTBridgeString:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPeriodString(Ljava/lang/String;)V
    .locals 0
    .param p1, "periodString"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/huawei/g11n/tmr/RuleInit;->periodString:Ljava/lang/String;

    .line 62
    return-void
.end method
