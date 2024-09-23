.class public Lcom/huawei/g11n/tmr/datetime/parse/DateParse;
.super Ljava/lang/Object;
.source "DateParse.java"


# static fields
.field private static final name2Method:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private locale:Ljava/lang/String;

.field private localeBk:Ljava/lang/String;

.field private rules:Lcom/huawei/g11n/tmr/RuleInit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse$1;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse$1;-><init>()V

    sput-object v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->name2Method:Ljava/util/HashMap;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/g11n/tmr/RuleInit;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "localeBk"    # Ljava/lang/String;
    .param p3, "rules"    # Lcom/huawei/g11n/tmr/RuleInit;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    .line 32
    return-void
.end method

.method private handleZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Ljava/lang/String;

    .line 794
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 796
    .local v0, "gmt":Ljava/lang/StringBuffer;
    const-string v1, "(GMT){0,1}([+-])([0-1][0-9]|2[0-3]):{0,1}([0-5][0-9]|60)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 797
    .local v1, "p1":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 798
    .local v2, "m1":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v3, :cond_6

    .line 799
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 800
    .local v3, "hs":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 804
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 801
    :cond_1
    :goto_0
    const-string v3, "00"

    .line 806
    :cond_2
    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 807
    .local v4, "ms":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 810
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_5

    .line 811
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 808
    :cond_4
    :goto_2
    const-string v4, "00"

    .line 814
    :cond_5
    :goto_3
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 817
    .end local v3    # "hs":Ljava/lang/String;
    .end local v4    # "ms":Ljava/lang/String;
    :cond_6
    const-string v3, "(GMT){0,1}([+-])(1{0,1}[0-9]|2[0-3]):?([0-5][0-9]|60){0,1}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 818
    .local v3, "p2":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 819
    .local v7, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 820
    invoke-virtual {v7, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 821
    .local v5, "hs":Ljava/lang/String;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    .line 824
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v6, :cond_9

    .line 825
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 822
    :cond_8
    :goto_4
    const-string v5, "00"

    .line 827
    :cond_9
    :goto_5
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 828
    .restart local v4    # "ms":Ljava/lang/String;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_6

    .line 831
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v6, :cond_c

    .line 832
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 829
    :cond_b
    :goto_6
    const-string v4, "00"

    .line 835
    :cond_c
    :goto_7
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 838
    .end local v4    # "ms":Ljava/lang/String;
    .end local v5    # "hs":Ljava/lang/String;
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseAH(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    .line 467
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 468
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v1, 0x390

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 469
    .local v0, "p":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 470
    .local v1, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 472
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "am":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "ah":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 476
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ":00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v7, ""

    :goto_0
    invoke-direct {p0, v6, v7}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseHMS(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v1

    .line 479
    .end local v3    # "am":Ljava/lang/String;
    .end local v4    # "ah":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    return-object v1
.end method

.method private parseAHMZ(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 19
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    move-object/from16 v0, p0

    .line 499
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .end local p1    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v3, 0x38c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 501
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x791f

    if-ne v3, v4, :cond_0

    .line 502
    iget-object v3, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v4, 0x38d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 503
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 504
    .local v3, "match":Ljava/util/regex/Matcher;
    new-instance v4, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 505
    .local v4, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 506
    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 507
    .local v12, "z2":Ljava/lang/String;
    const-string v5, ""

    .line 508
    .local v5, "z":Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 509
    move-object v5, v12

    .line 510
    .end local v5    # "z":Ljava/lang/String;
    .local v13, "z":Ljava/lang/String;
    :cond_1
    move-object v13, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v9, v5

    goto :goto_1

    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 511
    .local v9, "am":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const-string v5, "00"

    :goto_2
    move-object v14, v5

    .line 512
    .local v14, "h":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    const-string v5, "00"

    :goto_3
    move-object v15, v5

    .line 513
    .local v15, "m":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    const-string v5, "00"

    :goto_4
    move-object v11, v5

    .line 514
    .local v11, "s":Ljava/lang/String;
    const-string v5, ""

    .line 516
    .local v5, "gmt":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 517
    invoke-direct {v0, v13}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->handleZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 519
    .end local v5    # "gmt":Ljava/lang/String;
    .local v16, "gmt":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v5

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v17, 0x1

    move-object v5, v4

    move-object/from16 v10, v16

    move-object/from16 v18, v11

    move/from16 v11, v17

    .end local v11    # "s":Ljava/lang/String;
    .local v18, "s":Ljava/lang/String;
    invoke-virtual/range {v5 .. v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 521
    .end local v9    # "am":Ljava/lang/String;
    .end local v12    # "z2":Ljava/lang/String;
    .end local v13    # "z":Ljava/lang/String;
    .end local v14    # "h":Ljava/lang/String;
    .end local v15    # "m":Ljava/lang/String;
    .end local v16    # "gmt":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_7
    return-object v4
.end method

.method private parseAMPM(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 12
    .param p1, "content"    # Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;-><init>()V

    .line 200
    .local v0, "zh":Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;
    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;->getAmPm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "time":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    const-string v1, "08:00"

    .line 203
    :cond_1
    const/16 v2, 0x8

    .local v2, "h":I
    const/4 v3, 0x0

    .local v3, "m":I
    const/4 v4, 0x0

    move v7, v4

    .line 205
    .local v7, "s":I
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "hs":Ljava/lang/String;
    const/4 v5, 0x3

    const/4 v6, 0x5

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "ms":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 208
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 209
    .end local v4    # "hs":Ljava/lang/String;
    .end local v5    # "ms":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v4

    .line 212
    :goto_0
    new-instance v4, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    move-object v11, v4

    .line 213
    .local v11, "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x1

    move v5, v2

    move v6, v3

    invoke-virtual/range {v4 .. v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 214
    return-object v11
.end method

.method private parseBOYMMMD(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 17
    .param p1, "content"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 298
    const/4 v1, -0x1

    .local v1, "y":I
    const/4 v2, -0x1

    .local v2, "m":I
    const/4 v3, -0x1

    .line 299
    .local v3, "d":I
    const/4 v4, 0x0

    .line 300
    .local v4, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    iget-object v5, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v6, 0x5220

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/g11n/tmr/RuleInit;->getDetectByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 301
    .local v5, "p":Ljava/util/regex/Pattern;
    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 302
    .local v7, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 303
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "y1str":Ljava/lang/String;
    const/16 v10, 0x9

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, "y2str":Ljava/lang/String;
    const/4 v11, 0x6

    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, "m1str":Ljava/lang/String;
    const/16 v12, 0xb

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, "m2str":Ljava/lang/String;
    const/16 v13, 0xc

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 308
    .local v13, "dstr":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "ystr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 309
    .local v15, "mstr":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 310
    move-object v14, v8

    goto :goto_0

    .line 311
    :cond_0
    if-eqz v10, :cond_1

    .line 312
    move-object v14, v10

    .line 313
    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    .line 314
    move-object v15, v11

    goto :goto_1

    .line 315
    :cond_2
    if-eqz v12, :cond_3

    .line 316
    move-object v15, v12

    .line 318
    :cond_3
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 319
    iget-object v9, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    move/from16 v16, v1

    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    .end local v1    # "y":I
    .local v16, "y":I
    invoke-static {v15, v9, v1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 320
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 321
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 322
    .local v1, "ty":I
    const/16 v9, 0x64

    if-ge v1, v9, :cond_4

    const/4 v9, -0x1

    if-le v1, v9, :cond_4

    .line 323
    add-int/lit16 v9, v1, 0x7d0

    .line 324
    .end local v16    # "y":I
    .local v9, "y":I
    nop

    .line 329
    move v1, v9

    goto :goto_2

    .line 325
    .end local v9    # "y":I
    .restart local v16    # "y":I
    :cond_4
    nop

    .end local v8    # "y1str":Ljava/lang/String;
    .end local v10    # "y2str":Ljava/lang/String;
    .end local v11    # "m1str":Ljava/lang/String;
    .end local v12    # "m2str":Ljava/lang/String;
    .end local v13    # "dstr":Ljava/lang/String;
    .end local v14    # "ystr":Ljava/lang/String;
    .end local v15    # "mstr":Ljava/lang/String;
    .end local v16    # "y":I
    .local v1, "y":I
    goto :goto_2

    .line 329
    .end local v1    # "y":I
    .restart local v16    # "y":I
    :cond_5
    move/from16 v1, v16

    goto :goto_2

    .end local v16    # "y":I
    .restart local v1    # "y":I
    :cond_6
    move/from16 v16, v1

    :goto_2
    const/4 v8, -0x1

    if-ne v2, v8, :cond_7

    .line 330
    const/4 v8, 0x0

    return-object v8

    .line 331
    :cond_7
    new-instance v8, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    move-object v4, v8

    .line 332
    invoke-virtual {v4, v1, v2, v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 333
    return-object v4
.end method

.method private parseBOZAHM(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 17
    .param p1, "content"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 245
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .end local p1    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v3, 0x391

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 247
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 248
    .local v3, "match":Ljava/util/regex/Matcher;
    new-instance v4, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 249
    .local v4, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 250
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, "z":Ljava/lang/String;
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v9, v5

    goto :goto_1

    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 252
    .local v9, "am":Ljava/lang/String;
    :goto_1
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    const-string v5, "00"

    :goto_2
    move-object v13, v5

    .line 253
    .local v13, "h":Ljava/lang/String;
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_2
    const-string v5, "00"

    :goto_3
    move-object v14, v5

    .line 254
    .local v14, "m":Ljava/lang/String;
    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_3
    const-string v5, "00"

    :goto_4
    move-object v15, v5

    .line 255
    .local v15, "s":Ljava/lang/String;
    const-string v5, ""

    .line 257
    .local v5, "gmt":Ljava/lang/String;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 258
    invoke-direct {v0, v12}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->handleZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .end local v5    # "gmt":Ljava/lang/String;
    .local v16, "gmt":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v5

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x1

    move-object v5, v4

    move-object/from16 v10, v16

    invoke-virtual/range {v5 .. v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 262
    .end local v9    # "am":Ljava/lang/String;
    .end local v12    # "z":Ljava/lang/String;
    .end local v13    # "h":Ljava/lang/String;
    .end local v14    # "m":Ljava/lang/String;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "gmt":Ljava/lang/String;
    :cond_5
    return-object v4
.end method

.method private parseBoDurYMMMD(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 16
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    move-object/from16 v0, p0

    .line 266
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const v2, 0xa02b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/RuleInit;->getDetectByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 267
    .local v1, "p":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .local v2, "dstr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "d2str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "mstr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 269
    .local v5, "ystr":Ljava/lang/String;
    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 270
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 271
    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 277
    :cond_0
    const/4 v8, -0x1

    if-nez v2, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 278
    .local v9, "d1":I
    :goto_0
    if-nez v3, :cond_2

    move v10, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 279
    .local v10, "d2":I
    :goto_1
    if-nez v4, :cond_3

    const-string v11, ""

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, "ms":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_4

    move v12, v8

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 281
    .local v12, "y":I
    :goto_3
    iget-object v13, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v14, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v11, v13, v14}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 282
    .local v13, "m1":I
    if-eq v9, v8, :cond_6

    if-eq v10, v8, :cond_6

    if-ne v13, v8, :cond_5

    goto :goto_4

    .line 284
    :cond_5
    new-instance v8, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 285
    .local v8, "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v8, v12, v13, v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 286
    new-instance v14, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 287
    .local v14, "dt2":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v14, v12, v13, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 288
    new-instance v15, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    invoke-direct {v15, v8, v14}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    .line 289
    .local v15, "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    return-object v15

    .line 283
    .end local v8    # "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v14    # "dt2":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v15    # "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    :cond_6
    :goto_4
    const/4 v8, 0x0

    return-object v8
.end method

.method private parseDMMMY(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 12
    .param p1, "content"    # Ljava/lang/String;

    .line 666
    const/4 v0, -0x1

    .local v0, "y":I
    const/4 v1, -0x1

    .local v1, "m":I
    const/4 v2, -0x1

    .line 667
    .local v2, "d":I
    const/4 v3, 0x0

    .line 668
    .local v3, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    iget-object v4, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v5, 0x387

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 669
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 670
    .local v5, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    .line 671
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "dstr":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 673
    .local v8, "mstr":Ljava/lang/String;
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 674
    .local v9, "ystr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 675
    iget-object v10, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v11, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 676
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 677
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 678
    .local v10, "ty":I
    const/16 v11, 0x64

    if-ge v10, v11, :cond_0

    if-le v10, v7, :cond_0

    .line 679
    add-int/lit16 v0, v10, 0x7d0

    .line 680
    goto :goto_0

    .line 681
    :cond_0
    move v0, v10

    .line 685
    .end local v6    # "dstr":Ljava/lang/String;
    .end local v8    # "mstr":Ljava/lang/String;
    .end local v9    # "ystr":Ljava/lang/String;
    .end local v10    # "ty":I
    :cond_1
    :goto_0
    if-ne v1, v7, :cond_2

    .line 686
    const/4 v6, 0x0

    return-object v6

    .line 687
    :cond_2
    new-instance v6, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    move-object v3, v6

    .line 688
    invoke-virtual {v3, v0, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 689
    return-object v3
.end method

.method private parseDay(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;
    .param p3, "defaultTime"    # J

    .line 456
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->calTextDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 457
    .local v0, "add":I
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 458
    .local v1, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 459
    return-object v1

    .line 460
    :cond_0
    invoke-virtual {v1, v0, p3, p4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDayByAddDays(IJ)V

    .line 461
    return-object v1
.end method

.method private parseE(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "defaultTime"    # J

    .line 485
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 486
    .local v0, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    const-string v1, "("

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 489
    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 490
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 491
    .local v1, "w":I
    invoke-virtual {v0, v1, p2, p3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDayByWeekValue(IJ)V

    .line 492
    return-object v0

    .line 487
    .end local v1    # "w":I
    :cond_1
    :goto_0
    return-object v0
.end method

.method private parseED(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "d":I
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;-><init>()V

    .line 598
    .local v1, "c":Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;
    iget-object v2, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 600
    iget-object v2, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v3, 0x38a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 601
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 602
    .local v3, "match":Ljava/util/regex/Matcher;
    const-string v4, "0"

    .line 603
    .local v4, "dstr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 604
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 606
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 607
    new-instance v5, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 608
    .local v5, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    const/4 v6, -0x1

    invoke-virtual {v5, v6, v6, v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 609
    return-object v5
.end method

.method private parseFullEU(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 11
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;
    .param p3, "defaultTime"    # J

    .line 386
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v1, 0x39d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 387
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 388
    .local v1, "ma":Ljava/util/regex/Matcher;
    const/4 v2, -0x1

    .local v2, "y":I
    const/4 v3, -0x1

    .local v3, "m":I
    const/4 v4, -0x1

    .line 389
    .local v4, "d":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    .line 390
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "-1"

    .line 391
    .local v5, "ystr":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, "-1"

    .line 392
    .local v7, "mstr":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    const-string v8, "-1"

    .line 393
    .local v8, "dstr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 394
    iget-object v9, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v10, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 395
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 396
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 397
    .local v9, "ty":I
    const/16 v10, 0x64

    if-ge v9, v10, :cond_3

    if-le v9, v6, :cond_3

    .line 398
    add-int/lit16 v2, v9, 0x7d0

    .line 399
    goto :goto_3

    .line 400
    :cond_3
    move v2, v9

    .line 404
    .end local v5    # "ystr":Ljava/lang/String;
    .end local v7    # "mstr":Ljava/lang/String;
    .end local v8    # "dstr":Ljava/lang/String;
    .end local v9    # "ty":I
    :cond_4
    :goto_3
    if-ne v3, v6, :cond_5

    .line 405
    const/4 v5, 0x0

    return-object v5

    .line 406
    :cond_5
    new-instance v5, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 407
    .local v5, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v5, v2, v3, v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 408
    return-object v5
.end method

.method private parseHMS(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 13
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "ampm"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v1, 0x38f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 580
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 581
    .local v1, "match":Ljava/util/regex/Matcher;
    const-string v2, "00"

    .local v2, "hs":Ljava/lang/String;
    const-string v3, "00"

    .local v3, "ms":Ljava/lang/String;
    const-string v4, "00"

    .line 582
    .local v4, "ss":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 583
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "00"

    :goto_0
    move-object v2, v5

    .line 584
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "00"

    :goto_1
    move-object v3, v5

    .line 585
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, "00"

    :goto_2
    move-object v4, v5

    .line 586
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 589
    :cond_3
    new-instance v5, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 590
    .local v5, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz p2, :cond_4

    move-object v10, p2

    goto :goto_3

    :cond_4
    const-string v6, ""

    move-object v10, v6

    :goto_3
    const-string v11, ""

    const/4 v12, 0x1

    move-object v6, v5

    invoke-virtual/range {v6 .. v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 591
    return-object v5
.end method

.method private parseLVDurYDDMMM(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 16
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    move-object/from16 v0, p0

    .line 218
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const v2, 0xa02d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/RuleInit;->getDetectByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 219
    .local v1, "p":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .local v2, "dstr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "d2str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "mstr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 221
    .local v5, "ystr":Ljava/lang/String;
    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 222
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 223
    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    :cond_0
    const/4 v8, -0x1

    if-nez v2, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 230
    .local v9, "d1":I
    :goto_0
    if-nez v3, :cond_2

    move v10, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 231
    .local v10, "d2":I
    :goto_1
    if-nez v4, :cond_3

    const-string v11, ""

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 232
    .local v11, "ms":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_4

    move v12, v8

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 233
    .local v12, "y":I
    :goto_3
    iget-object v13, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v14, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v11, v13, v14}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 234
    .local v13, "m1":I
    if-eq v9, v8, :cond_6

    if-eq v10, v8, :cond_6

    if-ne v13, v8, :cond_5

    goto :goto_4

    .line 236
    :cond_5
    new-instance v8, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 237
    .local v8, "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v8, v12, v13, v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 238
    new-instance v14, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 239
    .local v14, "dt2":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v14, v12, v13, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 240
    new-instance v15, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    invoke-direct {v15, v8, v14}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    .line 241
    .local v15, "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    return-object v15

    .line 235
    .end local v8    # "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v14    # "dt2":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v15    # "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    :cond_6
    :goto_4
    const/4 v8, 0x0

    return-object v8
.end method

.method private parseMMMDY(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 12
    .param p1, "content"    # Ljava/lang/String;

    .line 722
    const/4 v0, -0x1

    .local v0, "y":I
    const/4 v1, -0x1

    .local v1, "m":I
    const/4 v2, -0x1

    .line 723
    .local v2, "d":I
    const/4 v3, 0x0

    .line 724
    .local v3, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    iget-object v4, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v5, 0x386

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 725
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 726
    .local v5, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    .line 727
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 728
    .local v6, "dstr":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 729
    .local v8, "mstr":Ljava/lang/String;
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 730
    .local v9, "ystr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 731
    iget-object v10, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v11, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 732
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 733
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 734
    .local v10, "ty":I
    const/16 v11, 0x64

    if-ge v10, v11, :cond_0

    if-le v10, v7, :cond_0

    .line 735
    add-int/lit16 v10, v10, 0x7d0

    .line 736
    :cond_0
    move v0, v10

    .line 739
    .end local v6    # "dstr":Ljava/lang/String;
    .end local v8    # "mstr":Ljava/lang/String;
    .end local v9    # "ystr":Ljava/lang/String;
    .end local v10    # "ty":I
    :cond_1
    if-ne v1, v7, :cond_2

    .line 740
    const/4 v6, 0x0

    return-object v6

    .line 741
    :cond_2
    new-instance v6, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    move-object v3, v6

    .line 742
    invoke-virtual {v3, v0, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 743
    return-object v3
.end method

.method private parseMyE(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "defaultTime"    # J

    .line 370
    const-string v0, "\u1014\u1031\u1037\u104a"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseE(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private parseTime(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 22
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    move-object/from16 v0, p0

    .line 749
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 750
    .local v1, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v3, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-static {v4, v2, v3}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 751
    .end local p1    # "content":Ljava/lang/String;
    .local v9, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .line 753
    .local v2, "isBefore":Z
    const/16 v3, 0x7919

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-virtual {v10, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    const/4 v2, 0x1

    .line 756
    .end local v2    # "isBefore":Z
    .local v11, "isBefore":Z
    :cond_0
    move v11, v2

    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v3, 0x38b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 757
    .local v12, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 759
    .local v13, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 760
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    move-object v14, v2

    .line 761
    .local v14, "apstr1":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, "00"

    :goto_1
    move-object v15, v2

    .line 762
    .local v15, "hstr":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, "00"

    :goto_2
    move-object v8, v2

    .line 763
    .local v8, "mstr":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const-string v2, "00"

    :goto_3
    move-object v7, v2

    .line 764
    .local v7, "sstr":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    const-string v2, ""

    :goto_4
    move-object v6, v2

    .line 765
    .local v6, "apstr2":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    const-string v2, ""

    :goto_5
    move-object v5, v2

    .line 767
    .local v5, "zstr":Ljava/lang/String;
    const-string v2, ""

    .line 768
    .local v2, "am":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 769
    move-object v2, v14

    .line 770
    nop

    .line 776
    .end local v2    # "am":Ljava/lang/String;
    .local v16, "am":Ljava/lang/String;
    :cond_7
    :goto_6
    move-object/from16 v16, v2

    goto :goto_7

    .line 770
    .end local v16    # "am":Ljava/lang/String;
    .restart local v2    # "am":Ljava/lang/String;
    :cond_8
    const-string v3, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 771
    move-object v2, v6

    goto :goto_6

    .line 776
    .end local v2    # "am":Ljava/lang/String;
    .restart local v16    # "am":Ljava/lang/String;
    :goto_7
    const-string v2, ""

    .line 777
    .local v2, "gmt":Ljava/lang/String;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 778
    invoke-direct {v0, v5}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->handleZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 782
    .end local v2    # "gmt":Ljava/lang/String;
    .local v17, "gmt":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object v2, v1

    move-object/from16 v19, v5

    move/from16 v5, v18

    .end local v5    # "zstr":Ljava/lang/String;
    .local v19, "zstr":Ljava/lang/String;
    move-object/from16 v18, v6

    move-object/from16 v6, v16

    .end local v6    # "apstr2":Ljava/lang/String;
    .local v18, "apstr2":Ljava/lang/String;
    move-object/from16 v20, v7

    move-object/from16 v7, v17

    .end local v7    # "sstr":Ljava/lang/String;
    .local v20, "sstr":Ljava/lang/String;
    move-object/from16 v21, v8

    move v8, v11

    .end local v8    # "mstr":Ljava/lang/String;
    .local v21, "mstr":Ljava/lang/String;
    invoke-virtual/range {v2 .. v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 790
    .end local v14    # "apstr1":Ljava/lang/String;
    .end local v15    # "hstr":Ljava/lang/String;
    .end local v16    # "am":Ljava/lang/String;
    .end local v17    # "gmt":Ljava/lang/String;
    .end local v18    # "apstr2":Ljava/lang/String;
    .end local v19    # "zstr":Ljava/lang/String;
    .end local v20    # "sstr":Ljava/lang/String;
    .end local v21    # "mstr":Ljava/lang/String;
    :cond_a
    return-object v1
.end method

.method private parseWeek(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;
    .param p3, "defaultTime"    # J

    .line 566
    move-object v0, p1

    .line 567
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 568
    .local v1, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 569
    iget-object v2, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->calRelDays(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 570
    .local v2, "rel":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 571
    return-object v1

    .line 572
    :cond_0
    invoke-virtual {v1, v2, p3, p4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDayByWeekValue(IJ)V

    .line 574
    .end local v2    # "rel":I
    :cond_1
    return-object v1
.end method

.method private parseYDMMM(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 11
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "defaultTime"    # J

    .line 343
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v1, 0x39e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 344
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 345
    .local v1, "ma":Ljava/util/regex/Matcher;
    const/4 v2, -0x1

    .local v2, "y":I
    const/4 v3, -0x1

    .local v3, "m":I
    const/4 v4, -0x1

    .line 346
    .local v4, "d":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    .line 347
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "-1"

    .line 348
    .local v5, "ystr":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, "-1"

    .line 349
    .local v7, "mstr":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x6

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    const-string v8, "-1"

    .line 350
    .local v8, "dstr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 351
    iget-object v9, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v10, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 352
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 353
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 354
    .local v9, "ty":I
    const/16 v10, 0x64

    if-ge v9, v10, :cond_3

    if-le v9, v6, :cond_3

    .line 355
    add-int/lit16 v2, v9, 0x7d0

    .line 356
    goto :goto_3

    .line 357
    :cond_3
    move v2, v9

    .line 361
    .end local v5    # "ystr":Ljava/lang/String;
    .end local v7    # "mstr":Ljava/lang/String;
    .end local v8    # "dstr":Ljava/lang/String;
    .end local v9    # "ty":I
    :cond_4
    :goto_3
    if-ne v3, v6, :cond_5

    .line 362
    const/4 v5, 0x0

    return-object v5

    .line 363
    :cond_5
    new-instance v5, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 364
    .local v5, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v5, v2, v3, v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 365
    return-object v5
.end method

.method private parseYMD(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 17
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 614
    const/4 v2, -0x1

    .local v2, "y":I
    const/4 v3, -0x1

    .local v3, "m":I
    const/4 v4, -0x1

    .line 615
    .local v4, "d":I
    const/4 v5, 0x0

    .line 616
    .local v5, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    iget-object v6, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v7, 0x388

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 617
    .local v6, "p":Ljava/util/regex/Pattern;
    iget-object v7, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v8, 0x389

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 618
    .local v7, "p2":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 619
    .local v8, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 620
    .local v9, "match2":Ljava/util/regex/Matcher;
    const-string v10, "-1"

    .local v10, "dstr":Ljava/lang/String;
    const-string v11, "-1"

    .local v11, "mstr":Ljava/lang/String;
    const-string v12, "-1"

    .line 621
    .local v12, "ystr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    const/16 v14, 0x4e30

    if-eqz v13, :cond_4

    .line 623
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x3

    if-eq v13, v14, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x5217

    if-eq v13, v14, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x520a

    if-eq v13, v14, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x522f

    if-ne v13, v14, :cond_0

    goto :goto_1

    .line 628
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x4e2f

    if-eq v13, v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x5209

    if-ne v13, v14, :cond_1

    goto :goto_0

    .line 633
    :cond_1
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 634
    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 635
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 637
    goto/16 :goto_5

    .line 629
    :cond_2
    :goto_0
    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 630
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 631
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 632
    goto :goto_4

    .line 624
    :cond_3
    :goto_1
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 625
    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 626
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 628
    goto :goto_4

    .line 637
    :cond_4
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 639
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v14, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x520a

    if-ne v13, v14, :cond_5

    goto :goto_3

    .line 642
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x4e2f

    if-eq v13, v14, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x5209

    if-eq v13, v14, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x5216

    if-eq v13, v14, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x5217

    if-ne v13, v14, :cond_6

    goto :goto_2

    .line 646
    :cond_6
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 647
    const/4 v14, 0x2

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 643
    :cond_7
    :goto_2
    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 644
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 645
    goto :goto_5

    .line 640
    :cond_8
    :goto_3
    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 641
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 642
    goto :goto_5

    .line 650
    :cond_9
    :goto_4
    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 651
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    sub-int/2addr v14, v13

    .line 652
    .end local v3    # "m":I
    .local v14, "m":I
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 653
    .local v3, "ty":I
    const/16 v13, 0x64

    if-ge v3, v13, :cond_a

    const/4 v13, -0x1

    if-le v3, v13, :cond_a

    .line 654
    add-int/lit16 v3, v3, 0x7d0

    .line 656
    :cond_a
    new-instance v13, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v13}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    move-object v5, v13

    .line 657
    invoke-virtual {v5, v3, v14, v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 658
    return-object v5
.end method

.method private parseYMMMD(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 12
    .param p1, "content"    # Ljava/lang/String;

    .line 694
    const/4 v0, -0x1

    .local v0, "y":I
    const/4 v1, -0x1

    .local v1, "m":I
    const/4 v2, -0x1

    .line 695
    .local v2, "d":I
    const/4 v3, 0x0

    .line 696
    .local v3, "date":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    iget-object v4, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v5, 0x385

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 697
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 698
    .local v5, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    .line 699
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, "dstr":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 701
    .local v8, "mstr":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 702
    .local v9, "ystr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 703
    iget-object v10, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v11, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 704
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 705
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 706
    .local v10, "ty":I
    const/16 v11, 0x64

    if-ge v10, v11, :cond_0

    if-le v10, v7, :cond_0

    .line 707
    add-int/lit16 v0, v10, 0x7d0

    .line 708
    goto :goto_0

    .line 709
    :cond_0
    move v0, v10

    .line 713
    .end local v6    # "dstr":Ljava/lang/String;
    .end local v8    # "mstr":Ljava/lang/String;
    .end local v9    # "ystr":Ljava/lang/String;
    .end local v10    # "ty":I
    :cond_1
    :goto_0
    if-ne v1, v7, :cond_2

    .line 714
    const/4 v6, 0x0

    return-object v6

    .line 715
    :cond_2
    new-instance v6, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    move-object v3, v6

    .line 716
    invoke-virtual {v3, v0, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 717
    return-object v3
.end method

.method private parseZAHM(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 23
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;
    .param p3, "defaultTime"    # J

    move-object/from16 v0, p0

    .line 526
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .end local p1    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    new-instance v2, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;

    invoke-direct {v2}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;-><init>()V

    .line 529
    .local v2, "c":Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;
    iget-object v3, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v4, 0x38e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 531
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 532
    .local v4, "match":Ljava/util/regex/Matcher;
    new-instance v5, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 533
    .local v5, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 534
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 535
    .local v13, "e":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 536
    iget-object v6, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v7, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v13, v6, v7}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 537
    .local v6, "w":I
    move-wide/from16 v14, p3

    invoke-virtual {v5, v6, v14, v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDayByWeekValue(IJ)V

    .end local v6    # "w":I
    goto :goto_0

    .line 541
    :cond_0
    move-wide/from16 v14, p3

    :goto_0
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 543
    .local v12, "z1":Ljava/lang/String;
    const-string v6, ""

    .line 544
    .local v6, "z":Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 545
    move-object v6, v12

    .line 546
    .end local v6    # "z":Ljava/lang/String;
    .local v11, "z":Ljava/lang/String;
    :cond_1
    move-object v11, v6

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v10, v6

    goto :goto_2

    :cond_2
    const-string v6, ""

    goto :goto_1

    .line 547
    .local v10, "am":Ljava/lang/String;
    :goto_2
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    const-string v6, "00"

    :goto_3
    move-object v9, v6

    .line 551
    .local v9, "h":Ljava/lang/String;
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    const-string v6, "00"

    :goto_4
    move-object v8, v6

    .line 552
    .local v8, "m":Ljava/lang/String;
    const/16 v6, 0xe

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    const-string v6, "00"

    :goto_5
    move-object v7, v6

    .line 553
    .local v7, "s":Ljava/lang/String;
    const-string v6, ""

    .line 554
    .local v6, "gmt":Ljava/lang/String;
    move-object/from16 v16, v1

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "content":Ljava/lang/String;
    .local v16, "content":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 555
    invoke-direct {v0, v11}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->handleZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v6    # "gmt":Ljava/lang/String;
    .local v1, "gmt":Ljava/lang/String;
    goto :goto_6

    .line 557
    .end local v1    # "gmt":Ljava/lang/String;
    .restart local v6    # "gmt":Ljava/lang/String;
    :cond_6
    move-object v1, v6

    .end local v6    # "gmt":Ljava/lang/String;
    .restart local v1    # "gmt":Ljava/lang/String;
    :goto_6
    iget-object v6, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v2, v9, v6}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    iget-object v6, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v2, v8, v6}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    iget-object v6, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move-object v6, v5

    move-object/from16 v21, v7

    move/from16 v7, v17

    .end local v7    # "s":Ljava/lang/String;
    .local v21, "s":Ljava/lang/String;
    move-object/from16 v17, v8

    move/from16 v8, v18

    .end local v8    # "m":Ljava/lang/String;
    .local v17, "m":Ljava/lang/String;
    move-object/from16 v18, v9

    move/from16 v9, v19

    .end local v9    # "h":Ljava/lang/String;
    .local v18, "h":Ljava/lang/String;
    move-object/from16 v19, v11

    move-object v11, v1

    .end local v11    # "z":Ljava/lang/String;
    .local v19, "z":Ljava/lang/String;
    move-object/from16 v22, v12

    move/from16 v12, v20

    .end local v12    # "z1":Ljava/lang/String;
    .local v22, "z1":Ljava/lang/String;
    invoke-virtual/range {v6 .. v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(IIILjava/lang/String;Ljava/lang/String;Z)V

    .end local v1    # "gmt":Ljava/lang/String;
    .end local v10    # "am":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/String;
    .end local v17    # "m":Ljava/lang/String;
    .end local v18    # "h":Ljava/lang/String;
    .end local v19    # "z":Ljava/lang/String;
    .end local v21    # "s":Ljava/lang/String;
    .end local v22    # "z1":Ljava/lang/String;
    goto :goto_7

    .line 559
    .end local v16    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    :cond_7
    move-wide/from16 v14, p3

    move-object/from16 v16, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v16    # "content":Ljava/lang/String;
    :goto_7
    return-object v5
.end method

.method private parseZhYMDE(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 19
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;
    .param p3, "defaultTime"    # J

    move-object/from16 v0, p0

    .line 419
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v2, 0x5216

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/RuleInit;->getDetectByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 420
    .local v1, "p":Ljava/util/regex/Pattern;
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 421
    .local v3, "ma":Ljava/util/regex/Matcher;
    new-instance v4, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 422
    .local v4, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 423
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, "-1"

    .line 424
    .local v6, "y":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, "-1"

    .line 425
    .local v7, "m":Ljava/lang/String;
    :goto_1
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    const-string v8, "-1"

    .line 426
    .local v8, "d":Ljava/lang/String;
    :goto_2
    const/4 v9, -0x1

    .local v9, "year":I
    const/4 v10, -0x1

    .local v10, "month":I
    const/4 v11, -0x1

    .line 427
    .local v11, "day":I
    new-instance v12, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;

    invoke-direct {v12}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;-><init>()V

    .line 428
    .local v12, "c":Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 429
    .local v13, "cal":Ljava/util/Calendar;
    new-instance v14, Ljava/util/Date;

    move-object/from16 v16, v6

    move-wide/from16 v5, p3

    invoke-direct {v14, v5, v6}, Ljava/util/Date;-><init>(J)V

    .end local v6    # "y":Ljava/lang/String;
    .local v16, "y":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 430
    const-string v14, "-1"

    move-object/from16 v15, v16

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .end local v16    # "y":Ljava/lang/String;
    .local v15, "y":Ljava/lang/String;
    move-object/from16 v17, v1

    .end local v1    # "p":Ljava/util/regex/Pattern;
    .local v17, "p":Ljava/util/regex/Pattern;
    if-nez v14, :cond_4

    .line 432
    iget-object v14, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v12, v15, v14}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->isDigit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 433
    iget-object v14, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v12, v15, v14}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 434
    goto :goto_3

    .line 435
    :cond_3
    iget-object v14, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    const-string v1, "param_textyear"

    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v15, v14, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertRelText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 436
    .local v1, "add":I
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int v9, v14, v1

    .line 438
    .end local v1    # "add":I
    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v12, v7, v1}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->isDigit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v12, v7, v1}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 440
    .end local v10    # "month":I
    .local v1, "month":I
    goto :goto_4

    .line 441
    .end local v1    # "month":I
    .restart local v10    # "month":I
    :cond_5
    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    const-string v2, "param_textmonth"

    iget-object v14, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v7, v1, v2, v14}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertRelText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 442
    .local v1, "add":I
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 444
    .end local v10    # "month":I
    .local v1, "month":I
    :goto_4
    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v12, v8, v2}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->isDigit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 445
    iget-object v2, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    invoke-virtual {v12, v8, v2}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 447
    :cond_6
    invoke-virtual {v4, v9, v1, v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .end local v1    # "month":I
    .end local v7    # "m":Ljava/lang/String;
    .end local v8    # "d":Ljava/lang/String;
    .end local v9    # "year":I
    .end local v11    # "day":I
    .end local v12    # "c":Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;
    .end local v13    # "cal":Ljava/util/Calendar;
    .end local v15    # "y":Ljava/lang/String;
    goto :goto_5

    .line 449
    .end local v17    # "p":Ljava/util/regex/Pattern;
    .local v1, "p":Ljava/util/regex/Pattern;
    :cond_7
    move-wide/from16 v5, p3

    move-object/from16 v17, v1

    .end local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v17    # "p":Ljava/util/regex/Pattern;
    :goto_5
    return-object v4
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "defaultTime"    # J

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    .local v0, "name":Ljava/lang/Integer;
    sget-object v1, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->name2Method:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    return-object v1

    .line 127
    :cond_0
    sget-object v1, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->name2Method:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 128
    .local v1, "method":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 129
    .local v2, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    const/4 v3, 0x0

    .line 130
    .local v3, "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseWeek(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 132
    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseED(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 134
    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseDMMMY(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 136
    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseYMMMD(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 138
    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseMMMDY(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 140
    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseYMD(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 142
    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseTime(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 144
    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseAH(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 146
    goto/16 :goto_0

    :cond_8
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseAHMZ(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 148
    goto/16 :goto_0

    .line 149
    :cond_9
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 150
    invoke-direct {p0, p1, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseE(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 151
    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 152
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseDay(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 153
    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 154
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseZAHM(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 155
    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 156
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseZhYMDE(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 157
    goto :goto_0

    :cond_d
    const/16 v4, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 158
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseFullEU(Ljava/lang/String;Ljava/lang/Integer;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 159
    goto :goto_0

    :cond_e
    const/16 v4, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 160
    invoke-direct {p0, p1, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseMyE(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 161
    goto :goto_0

    :cond_f
    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 162
    invoke-direct {p0, p1, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseYDMMM(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 163
    goto :goto_0

    :cond_10
    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 164
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseBOYMMMD(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 165
    goto :goto_0

    :cond_11
    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 166
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseBOZAHM(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 167
    goto :goto_0

    :cond_12
    const/16 v4, 0x1d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 168
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseAMPM(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 170
    :cond_13
    :goto_0
    if-eqz v2, :cond_14

    .line 171
    new-instance v4, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    invoke-direct {v4, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    move-object v3, v4

    .line 172
    :cond_14
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseDurMMMDY(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v3

    .line 174
    goto :goto_1

    :cond_15
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseDateDurDmy2(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v3

    .line 176
    goto :goto_1

    :cond_16
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseDateDurYMD(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v3

    .line 178
    goto :goto_1

    :cond_17
    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseDateDurYMD2(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v3

    .line 180
    goto :goto_1

    .line 181
    :cond_18
    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseDurMMMDY2(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v3

    .line 183
    goto :goto_1

    :cond_19
    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseBoDurYMMMD(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v3

    .line 185
    goto :goto_1

    :cond_1a
    const/16 v4, 0x1c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->parseLVDurYDDMMM(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v3

    .line 189
    :cond_1b
    :goto_1
    return-object v3
.end method

.method public parseDateDurDmy2(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 16
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    .line 933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const v2, 0x9c43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/RuleInit;->getDetectByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 934
    .local v1, "p":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .local v2, "dstr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "d2str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "mstr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 935
    .local v5, "ystr":Ljava/lang/String;
    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 936
    .local v7, "m":Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .line 937
    .local v8, "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 938
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 939
    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 940
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 941
    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 943
    const/4 v9, -0x1

    if-nez v2, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 944
    .local v10, "d1":I
    :goto_0
    if-nez v3, :cond_1

    move v11, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 945
    .local v11, "d2":I
    :goto_1
    if-nez v4, :cond_2

    move v12, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 946
    .local v12, "m1":I
    :goto_2
    if-nez v5, :cond_3

    move v13, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 948
    .local v13, "y1":I
    :goto_3
    if-eq v10, v9, :cond_5

    if-eq v11, v9, :cond_5

    if-ne v12, v9, :cond_4

    goto :goto_4

    .line 950
    :cond_4
    new-instance v9, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 951
    .local v9, "b":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v9, v13, v14, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 952
    new-instance v14, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 953
    .local v14, "e":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v14, v13, v15, v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 954
    new-instance v15, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    invoke-direct {v15, v9, v14}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    move-object v8, v15

    .end local v9    # "b":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v10    # "d1":I
    .end local v11    # "d2":I
    .end local v12    # "m1":I
    .end local v13    # "y1":I
    .end local v14    # "e":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    goto :goto_5

    .line 949
    .restart local v10    # "d1":I
    .restart local v11    # "d2":I
    .restart local v12    # "m1":I
    .restart local v13    # "y1":I
    :cond_5
    :goto_4
    const/4 v9, 0x0

    return-object v9

    .line 956
    .end local v10    # "d1":I
    .end local v11    # "d2":I
    .end local v12    # "m1":I
    .end local v13    # "y1":I
    :cond_6
    :goto_5
    return-object v8
.end method

.method public parseDateDurYMD(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 19
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    .line 961
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v2, 0x398

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 962
    .local v1, "p":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .local v2, "dstr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "d2str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "mstr":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "ystr":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "m2str":Ljava/lang/String;
    const/4 v7, 0x0

    .line 963
    .local v7, "y2str":Ljava/lang/String;
    move-object/from16 v8, p1

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 964
    .local v9, "m":Ljava/util/regex/Matcher;
    const/4 v10, 0x0

    .line 965
    .local v10, "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 966
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_0

    :cond_0
    const/4 v11, -0x1

    .line 967
    .local v11, "y1":I
    :goto_0
    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, -0x1

    .line 968
    .local v12, "m1":I
    :goto_1
    const/4 v14, 0x4

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_2

    :cond_2
    const/4 v14, -0x1

    .line 969
    .local v14, "d1":I
    :goto_2
    const/4 v15, 0x6

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_3

    :cond_3
    const/4 v15, -0x1

    .line 970
    .local v15, "m2":I
    :goto_3
    const/4 v13, 0x7

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_4

    :cond_4
    const/4 v13, -0x1

    .line 972
    .local v13, "d2":I
    :goto_4
    const/4 v0, -0x1

    if-eq v14, v0, :cond_7

    if-eq v13, v0, :cond_7

    if-ne v12, v0, :cond_5

    .line 973
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_5

    .line 974
    :cond_5
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 975
    .local v0, "b":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    move-object/from16 v17, v1

    add-int/lit8 v1, v12, -0x1

    .end local v1    # "p":Ljava/util/regex/Pattern;
    .local v17, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, v11, v1, v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 976
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 977
    .local v1, "e":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    move-object/from16 v18, v2

    const/4 v2, -0x1

    if-ne v15, v2, :cond_6

    .line 978
    .end local v2    # "dstr":Ljava/lang/String;
    .local v18, "dstr":Ljava/lang/String;
    move v15, v12

    .line 979
    :cond_6
    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v1, v11, v2, v13}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 980
    new-instance v2, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    invoke-direct {v2, v0, v1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    move-object v10, v2

    .end local v0    # "b":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v1    # "e":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v11    # "y1":I
    .end local v12    # "m1":I
    .end local v13    # "d2":I
    .end local v14    # "d1":I
    .end local v15    # "m2":I
    goto :goto_6

    .line 973
    .end local v17    # "p":Ljava/util/regex/Pattern;
    .end local v18    # "dstr":Ljava/lang/String;
    .local v1, "p":Ljava/util/regex/Pattern;
    .restart local v2    # "dstr":Ljava/lang/String;
    .restart local v11    # "y1":I
    .restart local v12    # "m1":I
    .restart local v13    # "d2":I
    .restart local v14    # "d1":I
    .restart local v15    # "m2":I
    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "dstr":Ljava/lang/String;
    .restart local v17    # "p":Ljava/util/regex/Pattern;
    .restart local v18    # "dstr":Ljava/lang/String;
    :goto_5
    const/4 v0, 0x0

    return-object v0

    .line 982
    .end local v11    # "y1":I
    .end local v12    # "m1":I
    .end local v13    # "d2":I
    .end local v14    # "d1":I
    .end local v15    # "m2":I
    .end local v17    # "p":Ljava/util/regex/Pattern;
    .end local v18    # "dstr":Ljava/lang/String;
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v2    # "dstr":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "dstr":Ljava/lang/String;
    .restart local v17    # "p":Ljava/util/regex/Pattern;
    .restart local v18    # "dstr":Ljava/lang/String;
    :goto_6
    return-object v10
.end method

.method public parseDateDurYMD2(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 16
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v2, 0x39c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 988
    .local v1, "p":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .local v2, "dstr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "d2str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "mstr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 989
    .local v5, "ystr":Ljava/lang/String;
    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 990
    .local v7, "m":Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .line 991
    .local v8, "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 992
    const/16 v9, 0xc

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 993
    const/16 v9, 0xe

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 994
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 995
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 997
    const/4 v9, -0x1

    if-nez v2, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 998
    .local v10, "d1":I
    :goto_0
    if-nez v3, :cond_1

    move v11, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 999
    .local v11, "d2":I
    :goto_1
    if-nez v4, :cond_2

    move v12, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1000
    .local v12, "m1":I
    :goto_2
    if-nez v5, :cond_3

    move v13, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1002
    .local v13, "y1":I
    :goto_3
    if-eq v10, v9, :cond_5

    if-eq v11, v9, :cond_5

    if-ne v12, v9, :cond_4

    goto :goto_4

    .line 1004
    :cond_4
    new-instance v9, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 1005
    .local v9, "b":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v9, v13, v14, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 1006
    new-instance v14, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 1007
    .local v14, "e":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v14, v13, v15, v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 1008
    new-instance v15, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    invoke-direct {v15, v9, v14}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    move-object v8, v15

    .end local v9    # "b":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v10    # "d1":I
    .end local v11    # "d2":I
    .end local v12    # "m1":I
    .end local v13    # "y1":I
    .end local v14    # "e":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    goto :goto_5

    .line 1003
    .restart local v10    # "d1":I
    .restart local v11    # "d2":I
    .restart local v12    # "m1":I
    .restart local v13    # "y1":I
    :cond_5
    :goto_4
    const/4 v9, 0x0

    return-object v9

    .line 1010
    .end local v10    # "d1":I
    .end local v11    # "d2":I
    .end local v12    # "m1":I
    .end local v13    # "y1":I
    :cond_6
    :goto_5
    return-object v8
.end method

.method public parseDurMMMDY(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 12
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    .line 883
    const/4 v0, 0x0

    .local v0, "dstr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "d2str":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "mstr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 885
    .local v3, "ystr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x2

    const v9, 0x9c41

    if-eq v4, v9, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v9, 0xa02f

    if-ne v4, v9, :cond_0

    goto/16 :goto_1

    .line 894
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v9, 0x9c45

    const/4 v10, 0x4

    if-eq v4, v9, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v9, 0xa02e

    if-ne v4, v9, :cond_1

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x9c42

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0xa029

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0xa02c

    if-ne v4, v5, :cond_5

    .line 905
    :cond_2
    iget-object v4, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v5, 0x399

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 906
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 907
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 908
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 910
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 911
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    goto :goto_2

    .line 895
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v7, 0x394

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 896
    .restart local v4    # "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 897
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 898
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-virtual {v7, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 904
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v7    # "m":Ljava/util/regex/Matcher;
    goto :goto_2

    .line 886
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v9, 0x393

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 887
    .restart local v4    # "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 888
    .local v9, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 889
    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 891
    invoke-virtual {v9, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 894
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v9    # "m":Ljava/util/regex/Matcher;
    nop

    .line 914
    :cond_5
    :goto_2
    const/4 v4, -0x1

    if-nez v0, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 915
    .local v5, "d1":I
    :goto_3
    if-nez v1, :cond_7

    move v6, v4

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 916
    .local v6, "d2":I
    :goto_4
    if-nez v2, :cond_8

    const-string v7, ""

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 917
    .local v7, "ms":Ljava/lang/String;
    :goto_5
    if-nez v3, :cond_9

    move v8, v4

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 918
    .local v8, "y":I
    :goto_6
    iget-object v9, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v10, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 919
    .local v9, "m":I
    if-eq v5, v4, :cond_b

    if-eq v6, v4, :cond_b

    if-ne v9, v4, :cond_a

    goto :goto_7

    .line 921
    :cond_a
    new-instance v4, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 922
    .local v4, "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v4, v8, v9, v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 923
    new-instance v10, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 924
    .local v10, "dt2":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v10, v8, v9, v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 925
    new-instance v11, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    invoke-direct {v11, v4, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    .line 926
    .local v11, "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    return-object v11

    .line 920
    .end local v4    # "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v10    # "dt2":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v11    # "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    :cond_b
    :goto_7
    const/4 v4, 0x0

    return-object v4
.end method

.method public parseDurMMMDY2(Ljava/lang/String;Ljava/lang/Integer;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 18
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/Integer;

    move-object/from16 v0, p0

    .line 845
    const/4 v1, 0x0

    .local v1, "dstr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "d2str":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "mstr":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "m2str":Ljava/lang/String;
    const/4 v5, 0x0

    .line 846
    .local v5, "ystr":Ljava/lang/String;
    iget-object v6, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->rules:Lcom/huawei/g11n/tmr/RuleInit;

    const/16 v7, 0x395

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/RuleInit;->getParseByKey(Ljava/lang/Integer;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 847
    .local v6, "p":Ljava/util/regex/Pattern;
    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 848
    .local v8, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 849
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 850
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 851
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 852
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 853
    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 856
    :cond_0
    if-nez v1, :cond_1

    const/4 v10, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 857
    .local v10, "d1":I
    :goto_0
    if-nez v2, :cond_2

    const/4 v11, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 858
    .local v11, "d2":I
    :goto_1
    if-nez v3, :cond_3

    const-string v12, ""

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 859
    .local v12, "ms":Ljava/lang/String;
    :goto_2
    if-nez v4, :cond_4

    const-string v13, ""

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 860
    .local v13, "ms2":Ljava/lang/String;
    :goto_3
    if-nez v5, :cond_5

    const/4 v14, -0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 861
    .local v14, "y":I
    :goto_4
    iget-object v15, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    iget-object v9, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    invoke-static {v12, v15, v9}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 862
    .local v9, "m1":I
    iget-object v15, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->locale:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateParse;->localeBk:Ljava/lang/String;

    .end local v1    # "dstr":Ljava/lang/String;
    .local v16, "dstr":Ljava/lang/String;
    invoke-static {v13, v15, v1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 863
    .local v1, "m2":I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_7

    if-eq v11, v15, :cond_7

    if-eq v9, v15, :cond_7

    if-ne v1, v15, :cond_6

    .line 864
    move/from16 v17, v1

    goto :goto_5

    .line 865
    :cond_6
    new-instance v15, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 866
    .local v15, "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v15, v14, v9, v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 867
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;-><init>()V

    .line 868
    .local v0, "dt2":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    invoke-virtual {v0, v14, v1, v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(III)V

    .line 869
    move/from16 v17, v1

    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    .end local v1    # "m2":I
    .local v17, "m2":I
    invoke-direct {v1, v15, v0}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    .line 870
    .local v1, "dp":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    return-object v1

    .line 864
    .end local v0    # "dt2":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v15    # "dt1":Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .end local v17    # "m2":I
    .local v1, "m2":I
    :cond_7
    move/from16 v17, v1

    .end local v1    # "m2":I
    .restart local v17    # "m2":I
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method
