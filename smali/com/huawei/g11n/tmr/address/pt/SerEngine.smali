.class public Lcom/huawei/g11n/tmr/address/pt/SerEngine;
.super Ljava/lang/Object;
.source "SerEngine.java"


# static fields
.field private static final BUI_MARK:I = 0x2

.field private static final POS_MARK:I = 0x4

.field private static final STR_MARK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "arg"    # [Ljava/lang/String;

    .line 19
    const-string v0, "Rua da Torre 274 RC ESQ  Edif\u00edcio EPAL, Rua da Torre 234  Edif\u00edcio EPAL, RUA FLORES 14 RC ESQ,BAIRRO DA PEDRA,2785-174 S\u00c3O DOMINGOS DE RANA,PORTUGAL"

    .line 20
    .local v0, "a":Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->search(Ljava/lang/String;)[I

    move-result-object v1

    .line 22
    .local v1, "r":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    aget v4, v1, v3

    if-lt v2, v4, :cond_0

    .line 27
    .end local v2    # "i":I
    return-void

    .line 23
    .restart local v2    # "i":I
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8bc6\u522b\u603b\u4e2a\u6570\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v1, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .line 158
    const-string v0, "com.huawei.g11n.tmr.address.pt.ReguExp"

    invoke-static {p1, v0}, Lcom/huawei/g11n/tmr/util/PatternCache;->getPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 159
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 160
    .local v1, "m":Ljava/util/regex/Matcher;
    return-object v1
.end method

.method private static merge(Ljava/util/List;ILjava/lang/String;)I
    .locals 8
    .param p1, "len"    # I
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 118
    .local p0, "indx":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v0, Lcom/huawei/g11n/tmr/address/pt/SerEngine$1;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/address/pt/SerEngine$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    add-int/lit8 p1, p1, -0x1

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 150
    .end local v0    # "i":I
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 129
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

    .line 130
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

    .line 131
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v2

    aput v3, v1, v2

    .line 132
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    add-int/lit8 p1, p1, -0x1

    .line 134
    add-int/lit8 v0, v0, -0x1

    .line 135
    goto :goto_1

    .line 137
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v4

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "sub":Ljava/lang/String;
    const-string v3, "pCat"

    invoke-static {v1, v3}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 139
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 140
    .local v4, "t1":I
    add-int/lit8 v6, v0, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v5, v6, v5

    .line 141
    .local v5, "t2":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    and-int v6, v4, v5

    if-nez v6, :cond_3

    .line 142
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v2

    aput v7, v6, v2

    .line 143
    add-int/lit8 v6, v0, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    add-int/lit8 v0, v0, -0x1

    .line 128
    .end local v1    # "sub":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "t1":I
    .end local v5    # "t2":I
    :cond_3
    :goto_1
    add-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method public static search(Ljava/lang/String;)[I
    .locals 14
    .param p0, "sentence"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "mAll":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 38
    .local v1, "mTemp":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 39
    .local v2, "restSen":Ljava/lang/String;
    const/4 v3, 0x0

    .line 40
    .local v3, "n":I
    const/4 v4, -0x1

    .line 41
    .local v4, "start":I
    const/4 v5, -0x1

    .line 42
    .local v5, "end":I
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 43
    .local v6, "indAddr":Ljava/util/List;, "Ljava/util/List<[I>;"
    const-string v7, "pbs"

    invoke-static {p0, v7}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 44
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v7, :cond_6

    .line 73
    const-string v7, "pat"

    invoke-static {p0, v7}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 74
    .end local v0    # "mAll":Ljava/util/regex/Matcher;
    .local v7, "mAll":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    const-string v0, "pPos"

    invoke-static {p0, v0}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 96
    .end local v7    # "mAll":Ljava/util/regex/Matcher;
    .restart local v0    # "mAll":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    .line 99
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 100
    if-nez v3, :cond_0

    .line 101
    new-array v7, v11, [I

    return-object v7

    .line 106
    :cond_0
    invoke-static {v6, v3, p0}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->merge(Ljava/util/List;ILjava/lang/String;)I

    move-result v7

    .line 108
    .end local v3    # "n":I
    .local v7, "n":I
    mul-int v3, v10, v7

    add-int/2addr v3, v11

    new-array v12, v3, [I

    .line 109
    .local v12, "re":[I
    aput v7, v12, v9

    .line 110
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-lt v3, v7, :cond_1

    .line 114
    .end local v3    # "i":I
    return-object v12

    .line 111
    .restart local v3    # "i":I
    :cond_1
    mul-int v8, v10, v3

    add-int/2addr v8, v11

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    aget v13, v13, v9

    aput v13, v12, v8

    .line 112
    mul-int v8, v10, v3

    add-int/2addr v8, v10

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    aget v13, v13, v11

    sub-int/2addr v13, v11

    aput v13, v12, v8

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 97
    .end local v7    # "n":I
    .end local v12    # "re":[I
    .local v3, "n":I
    :cond_2
    new-array v7, v8, [I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    aput v12, v7, v9

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    aput v12, v7, v11

    const/4 v12, 0x4

    aput v12, v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    .end local v0    # "mAll":Ljava/util/regex/Matcher;
    .local v7, "mAll":Ljava/util/regex/Matcher;
    :cond_3
    const/4 v0, 0x2

    .line 76
    .local v0, "type":I
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    .line 77
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    .line 78
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v12, "pnum"

    invoke-static {v2, v12}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 81
    const-string v12, "pCityWithCode"

    invoke-static {v2, v12}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 83
    or-int/lit8 v0, v0, 0x4

    .line 84
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    add-int/2addr v5, v12

    .line 86
    goto :goto_4

    .line 87
    :cond_4
    const-string v12, "pCityNoCode"

    invoke-static {v2, v12}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 89
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    add-int/2addr v5, v12

    .line 92
    :cond_5
    :goto_4
    new-array v12, v8, [I

    aput v4, v12, v9

    aput v5, v12, v11

    aput v0, v12, v10

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "type":I
    goto/16 :goto_1

    .line 45
    .end local v7    # "mAll":Ljava/util/regex/Matcher;
    .local v0, "mAll":Ljava/util/regex/Matcher;
    :cond_6
    const/4 v7, 0x0

    .line 46
    .local v7, "type":I
    const-string v12, "street1"

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 47
    or-int/lit8 v7, v7, 0x1

    .line 49
    :cond_7
    const-string v12, "street2"

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 50
    or-int/lit8 v7, v7, 0x1

    .line 52
    :cond_8
    const-string v12, "build"

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 53
    or-int/lit8 v7, v7, 0x2

    .line 55
    :cond_9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 56
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 57
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v12, "pnum"

    invoke-static {v2, v12}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 59
    const-string v12, "pCityWithCode"

    invoke-static {v2, v12}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 61
    or-int/lit8 v7, v7, 0x4

    .line 62
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    add-int/2addr v5, v12

    .line 64
    goto :goto_5

    .line 65
    :cond_a
    const-string v12, "pCityNoCode"

    invoke-static {v2, v12}, Lcom/huawei/g11n/tmr/address/pt/SerEngine;->matchers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 67
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    add-int/2addr v5, v12

    .line 70
    :cond_b
    :goto_5
    new-array v8, v8, [I

    aput v4, v8, v9

    aput v5, v8, v11

    aput v7, v8, v10

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7    # "type":I
    goto/16 :goto_0
.end method
