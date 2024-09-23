.class public Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;
.super Ljava/lang/Object;
.source "DateConvert.java"


# instance fields
.field private locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->locale:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private convertMutilMatch(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/g11n/tmr/Match;
    .locals 1
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
            "Lcom/huawei/g11n/tmr/Match;"
        }
    .end annotation

    .line 353
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-direct {p0, p1, p2}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->filterDate(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 354
    invoke-direct {p0, p1, p2, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->filterDateTime(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 355
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->filterPeriod(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->filterDateTimePunc(Ljava/lang/String;Ljava/util/List;)Lcom/huawei/g11n/tmr/Match;

    move-result-object v0

    .line 357
    .local v0, "m":Lcom/huawei/g11n/tmr/Match;
    return-object v0
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

    .line 119
    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 178
    .end local v3    # "i":I
    return-object v2

    .line 121
    .restart local v3    # "i":I
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/Match;

    .line 122
    .local v4, "m":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v5

    .line 123
    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    const/4 v7, 0x6

    if-eq v5, v7, :cond_1

    const/4 v7, 0x7

    if-eq v5, v7, :cond_1

    .line 124
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    nop

    .line 120
    move-object/from16 v10, p0

    goto/16 :goto_4

    .line 127
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v3

    .line 128
    .local v7, "hasNum":I
    const/4 v8, 0x0

    .line 129
    .local v8, "sub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    if-le v7, v6, :cond_2

    .line 130
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v3, 0x3

    invoke-interface {v1, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 131
    goto :goto_1

    :cond_2
    if-ne v7, v6, :cond_3

    .line 132
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v3, 0x2

    invoke-interface {v1, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 133
    :cond_3
    :goto_1
    if-eqz v7, :cond_b

    if-nez v8, :cond_4

    goto/16 :goto_3

    .line 138
    :cond_4
    const/4 v9, -0x1

    move-object/from16 v10, p0

    invoke-direct {v10, v0, v4, v8, v9}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->nestDealDate(Ljava/lang/String;Lcom/huawei/g11n/tmr/Match;Ljava/util/List;I)I

    move-result v11

    .line 139
    .local v11, "status":I
    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 141
    const/4 v12, 0x0

    .line 142
    .local v12, "change":Lcom/huawei/g11n/tmr/Match;
    if-nez v11, :cond_5

    .line 143
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    goto/16 :goto_4

    .line 145
    :cond_5
    if-ne v11, v6, :cond_6

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v13

    .line 148
    .local v13, "ct":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/g11n/tmr/Match;

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v14

    .line 149
    .local v14, "nt":I
    if-le v13, v14, :cond_8

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    check-cast v12, Lcom/huawei/g11n/tmr/Match;

    .line 152
    .end local v13    # "ct":I
    .end local v14    # "nt":I
    goto :goto_2

    :cond_6
    const/4 v13, 0x2

    if-ne v11, v13, :cond_8

    .line 153
    add-int/lit8 v3, v3, 0x2

    .line 154
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v13

    .line 155
    .restart local v13    # "ct":I
    add-int/lit8 v14, v3, -0x1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/g11n/tmr/Match;

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v14

    .line 156
    .restart local v14    # "nt":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/huawei/g11n/tmr/Match;

    invoke-virtual {v15}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v15

    .line 157
    .local v15, "nt2":I
    if-ge v14, v15, :cond_7

    if-ge v14, v13, :cond_7

    .line 158
    add-int/lit8 v6, v3, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/huawei/g11n/tmr/Match;

    .line 159
    goto :goto_2

    :cond_7
    if-ge v15, v14, :cond_8

    if-ge v15, v13, :cond_8

    .line 160
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/huawei/g11n/tmr/Match;

    .line 162
    .end local v13    # "ct":I
    .end local v14    # "nt":I
    .end local v15    # "nt2":I
    :cond_8
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/g11n/tmr/Match;

    .line 163
    .local v6, "e":Lcom/huawei/g11n/tmr/Match;
    const/4 v13, 0x0

    .line 164
    .local v13, "add":I
    const/16 v14, 0x28

    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 165
    .local v14, "be":I
    if-eq v14, v9, :cond_9

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 166
    const/16 v15, 0x29

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v0, v15, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 167
    .local v9, "end":I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_9

    .line 168
    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v15

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v0

    sub-int v0, v9, v0

    const/4 v15, 0x1

    add-int/lit8 v13, v0, 0x1

    .line 173
    .end local v1    # "c":Ljava/lang/String;
    .end local v9    # "end":I
    :cond_9
    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {v4, v0}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 174
    if-eqz v12, :cond_a

    .line 175
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v0

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->setBegin(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    .line 176
    :cond_a
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v5    # "type":I
    .end local v6    # "e":Lcom/huawei/g11n/tmr/Match;
    .end local v7    # "hasNum":I
    .end local v8    # "sub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    .end local v11    # "status":I
    .end local v12    # "change":Lcom/huawei/g11n/tmr/Match;
    .end local v13    # "add":I
    .end local v14    # "be":I
    goto :goto_4

    .line 135
    .restart local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .restart local v5    # "type":I
    .restart local v7    # "hasNum":I
    .restart local v8    # "sub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :cond_b
    :goto_3
    move-object/from16 v10, p0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    nop

    .line 120
    .end local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v5    # "type":I
    .end local v7    # "hasNum":I
    .end local v8    # "sub":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    :goto_4
    const/4 v0, 0x1

    add-int/2addr v3, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto/16 :goto_0
.end method

.method private filterDateTime(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "DTBridge"    # Ljava/lang/String;
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

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\s*(at|\u00e0s|\u060c\u200f|u|kl\\.|\u0915\u094b|\u7684|o|\u00e0|a\\s+les|ve|la|pada|kl|\u03c3\u03c4\u03b9\u03c2|alle|jam|\u0e82\u0ead\u0e87\u0ea7\u0eb1\u0e99\u0e97\u0eb5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\\s*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    nop

    .line 215
    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 214
    nop

    .line 218
    .local v1, "dt":Ljava/util/regex/Pattern;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 219
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v5, 0x0

    .line 220
    .local v5, "curren":Lcom/huawei/g11n/tmr/Match;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 307
    return-object p2

    .line 221
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/g11n/tmr/Match;

    .line 222
    .local v7, "m":Lcom/huawei/g11n/tmr/Match;
    if-nez v5, :cond_1

    .line 223
    move-object v5, v7

    .line 224
    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getType()I

    move-result v8

    .line 227
    .local v8, "ctype":I
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getType()I

    move-result v9

    .line 228
    .local v9, "type":I
    invoke-virtual {v5, v8}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 229
    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 230
    const/4 v10, 0x0

    .line 231
    .local v10, "flag":Z
    const/4 v11, 0x5

    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    if-eq v9, v3, :cond_5

    :cond_2
    if-ne v8, v12, :cond_3

    if-eq v9, v11, :cond_5

    .line 232
    :cond_3
    if-ne v8, v3, :cond_4

    if-eq v9, v12, :cond_5

    :cond_4
    if-ne v8, v11, :cond_12

    if-ne v9, v12, :cond_12

    .line 233
    :cond_5
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v13

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v14

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 234
    .local v13, "ss":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 235
    const/4 v10, 0x1

    goto :goto_1

    .line 237
    :cond_6
    invoke-virtual {v1, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    .line 238
    :goto_1
    if-eqz v10, :cond_b

    .line 239
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 240
    if-ne v8, v12, :cond_7

    if-ne v9, v3, :cond_7

    .line 241
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    .line 242
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;)V

    .line 243
    goto/16 :goto_2

    :cond_7
    if-ne v8, v3, :cond_8

    if-ne v9, v12, :cond_8

    .line 244
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    .line 245
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;)V

    .line 246
    goto :goto_2

    :cond_8
    if-ne v8, v12, :cond_9

    if-ne v9, v11, :cond_9

    .line 247
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    .line 248
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;)V

    .line 249
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v11

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->setEnd(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    .line 250
    goto :goto_2

    :cond_9
    if-ne v8, v11, :cond_a

    if-ne v9, v12, :cond_a

    .line 251
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    .line 252
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;)V

    .line 253
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    .line 254
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;)V

    .line 256
    :cond_a
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 257
    nop

    .line 220
    move-object/from16 v19, v1

    move v1, v3

    goto/16 :goto_6

    .line 258
    :cond_b
    const/4 v11, 0x1

    .line 259
    .local v11, "change":Z
    if-ne v8, v3, :cond_e

    if-ne v9, v12, :cond_e

    .line 261
    const/4 v15, 0x0

    .line 262
    .local v15, "flag15":Z
    const/16 v16, 0x0

    .line 263
    .local v16, "add":I
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 264
    .local v14, "bStr":Ljava/lang/String;
    const-string v3, "\\s*\\((.*?)\\s*\\)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 265
    invoke-virtual {v3, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 264
    nop

    .line 266
    .local v3, "bcm":Ljava/util/regex/Matcher;
    const/16 v17, 0x0

    .line 267
    .local v17, "d":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 268
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 269
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    .line 271
    .end local v17    # "d":Ljava/lang/String;
    .local v12, "d":Ljava/lang/String;
    :cond_c
    move-object/from16 v12, v17

    if-eqz v12, :cond_d

    move-object/from16 v19, v1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 272
    .end local v1    # "dt":Ljava/util/regex/Pattern;
    .local v19, "dt":Ljava/util/regex/Pattern;
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v2

    move-object/from16 v20, v3

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v3

    .end local v3    # "bcm":Ljava/util/regex/Matcher;
    .local v20, "bcm":Ljava/util/regex/Matcher;
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 273
    goto :goto_3

    .end local v19    # "dt":Ljava/util/regex/Pattern;
    .end local v20    # "bcm":Ljava/util/regex/Matcher;
    .restart local v1    # "dt":Ljava/util/regex/Pattern;
    .restart local v3    # "bcm":Ljava/util/regex/Matcher;
    :cond_d
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    .line 271
    .end local v1    # "dt":Ljava/util/regex/Pattern;
    .end local v3    # "bcm":Ljava/util/regex/Matcher;
    .restart local v19    # "dt":Ljava/util/regex/Pattern;
    .restart local v20    # "bcm":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 274
    .end local v15    # "flag15":Z
    .local v1, "flag15":Z
    :goto_3
    if-eqz v1, :cond_f

    .line 275
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v2

    add-int v2, v2, v16

    invoke-virtual {v5, v2}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 276
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    .line 277
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;)V

    .line 278
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 279
    const/4 v11, 0x0

    .end local v1    # "flag15":Z
    .end local v12    # "d":Ljava/lang/String;
    .end local v14    # "bStr":Ljava/lang/String;
    .end local v16    # "add":I
    .end local v20    # "bcm":Ljava/util/regex/Matcher;
    goto :goto_4

    .line 284
    .end local v19    # "dt":Ljava/util/regex/Pattern;
    .local v1, "dt":Ljava/util/regex/Pattern;
    :cond_e
    move-object/from16 v19, v1

    .end local v1    # "dt":Ljava/util/regex/Pattern;
    .restart local v19    # "dt":Ljava/util/regex/Pattern;
    :cond_f
    :goto_4
    const/4 v1, 0x1

    if-ne v8, v1, :cond_10

    const/4 v1, 0x2

    if-ne v9, v1, :cond_11

    .line 286
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "bStr":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v3

    .line 288
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v12

    .line 287
    invoke-virtual {v0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "eStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 290
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 291
    const/16 v12, 0x28

    invoke-virtual {v2, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 292
    .local v12, "b":I
    invoke-virtual {v5, v12}, Lcom/huawei/g11n/tmr/Match;->setBegin(I)V

    .line 293
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 294
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v14

    .line 295
    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v15

    invoke-virtual {v15}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v15

    invoke-virtual {v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;)V

    .line 296
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 297
    const/4 v11, 0x0

    .end local v2    # "bStr":Ljava/lang/String;
    .end local v3    # "eStr":Ljava/lang/String;
    .end local v12    # "b":I
    goto :goto_5

    .line 300
    :cond_10
    const/4 v1, 0x2

    :cond_11
    :goto_5
    if-eqz v11, :cond_13

    .line 301
    move-object v5, v7

    .line 304
    .end local v11    # "change":Z
    .end local v13    # "ss":Ljava/lang/String;
    goto :goto_6

    .line 305
    .end local v19    # "dt":Ljava/util/regex/Pattern;
    .restart local v1    # "dt":Ljava/util/regex/Pattern;
    :cond_12
    move-object/from16 v19, v1

    move v1, v3

    .end local v1    # "dt":Ljava/util/regex/Pattern;
    .restart local v19    # "dt":Ljava/util/regex/Pattern;
    move-object v5, v7

    .line 220
    .end local v7    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v8    # "ctype":I
    .end local v9    # "type":I
    .end local v10    # "flag":Z
    .end local v19    # "dt":Ljava/util/regex/Pattern;
    .restart local v1    # "dt":Ljava/util/regex/Pattern;
    :cond_13
    :goto_6
    move v3, v1

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    goto/16 :goto_0
.end method

.method private filterDateTimePunc(Ljava/lang/String;Ljava/util/List;)Lcom/huawei/g11n/tmr/Match;
    .locals 12
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/Match;",
            ">;)",
            "Lcom/huawei/g11n/tmr/Match;"
        }
    .end annotation

    .line 311
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v1, 0x0

    .line 313
    .local v1, "curren":Lcom/huawei/g11n/tmr/Match;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    return-object v1

    .line 314
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/Match;

    .line 315
    .local v2, "m":Lcom/huawei/g11n/tmr/Match;
    if-nez v1, :cond_1

    .line 317
    move-object v1, v2

    .line 318
    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v3

    .line 321
    .local v3, "ctype":I
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v4

    .line 322
    .local v4, "type":I
    const/4 v5, 0x0

    .line 323
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
    if-ne v3, v6, :cond_b

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->isTimePeriod()Z

    move-result v9

    if-eqz v9, :cond_b

    if-ne v4, v8, :cond_b

    .line 324
    :cond_5
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 325
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

    .line 326
    :cond_6
    const/4 v5, 0x1

    .line 327
    :cond_7
    if-eqz v5, :cond_a

    .line 328
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 329
    const/4 v10, 0x0

    if-ne v3, v8, :cond_8

    if-ne v4, v7, :cond_8

    .line 330
    invoke-virtual {v1, v10}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 331
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v6

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;)V

    .line 332
    goto :goto_1

    :cond_8
    if-ne v3, v7, :cond_9

    if-ne v4, v8, :cond_9

    .line 333
    invoke-virtual {v1, v10}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 334
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v6

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDay(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;)V

    .line 335
    goto :goto_1

    .line 336
    :cond_9
    invoke-virtual {v1, v6}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 337
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v6

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setTime(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;)V

    .line 338
    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v6

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->setEnd(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    .line 340
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 341
    goto/16 :goto_0

    .line 342
    :cond_a
    move-object v1, v2

    .line 344
    .end local v9    # "ss":Ljava/lang/String;
    goto/16 :goto_0

    .line 345
    :cond_b
    move-object v1, v2

    .end local v2    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v3    # "ctype":I
    .end local v4    # "type":I
    .end local v5    # "flag":Z
    goto/16 :goto_0
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

    .line 181
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

    .line 182
    .local v0, "rel":Ljava/util/regex/Pattern;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v3, 0x0

    .line 184
    .local v3, "curren":Lcom/huawei/g11n/tmr/Match;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 209
    return-object p2

    .line 185
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/Match;

    .line 186
    .local v4, "m":Lcom/huawei/g11n/tmr/Match;
    if-nez v3, :cond_2

    .line 188
    move-object v3, v4

    .line 189
    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getType()I

    move-result v5

    .line 192
    .local v5, "ctype":I
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getType()I

    move-result v6

    .line 194
    .local v6, "ntype":I
    const/4 v7, 0x1

    if-ne v5, v6, :cond_3

    if-eq v5, v7, :cond_4

    if-eq v5, v1, :cond_4

    if-eqz v5, :cond_4

    :cond_3
    if-nez v5, :cond_6

    if-ne v6, v1, :cond_6

    .line 195
    :cond_4
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

    .line 196
    .local v8, "flag":Z
    if-eqz v8, :cond_0

    .line 197
    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/huawei/g11n/tmr/Match;->setEnd(I)V

    .line 198
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/huawei/g11n/tmr/Match;->setType(I)V

    .line 199
    if-ne v5, v1, :cond_5

    if-ne v6, v1, :cond_5

    .line 200
    invoke-virtual {v3, v7}, Lcom/huawei/g11n/tmr/Match;->setIsTimePeriod(Z)V

    .line 201
    :cond_5
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v7

    invoke-virtual {v4}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->setEnd(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 204
    .end local v8    # "flag":Z
    goto :goto_0

    .line 205
    :cond_6
    move-object v3, v4

    .end local v4    # "m":Lcom/huawei/g11n/tmr/Match;
    .end local v5    # "ctype":I
    .end local v6    # "ntype":I
    goto :goto_0
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

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "result":I
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/g11n/tmr/Match;

    .line 67
    .local v5, "next":Lcom/huawei/g11n/tmr/Match;
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v6

    .line 68
    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    const/4 v8, 0x5

    if-eq v6, v8, :cond_0

    const/4 v8, 0x6

    if-eq v6, v8, :cond_0

    .line 69
    return v3

    .line 71
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/Match;->getRegex()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/g11n/tmr/Filter;->getType(Ljava/lang/String;)I

    move-result v8

    if-eq v6, v8, :cond_b

    move/from16 v8, p4

    if-ne v6, v8, :cond_1

    goto/16 :goto_2

    .line 73
    :cond_1
    const/4 v9, 0x0

    .line 74
    .local v9, "isThree":Z
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v10

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "ss":Ljava/lang/String;
    iget-object v11, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->locale:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->isRelDates(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 76
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v7, :cond_3

    .line 77
    nop

    .line 78
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v2, v7, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v12

    .line 77
    invoke-direct {v0, v1, v5, v11, v12}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->nestDealDate(Ljava/lang/String;Lcom/huawei/g11n/tmr/Match;Ljava/util/List;I)I

    move-result v11

    .line 79
    .local v11, "r":I
    if-ne v11, v7, :cond_3

    .line 80
    const/4 v9, 0x1

    .line 83
    .end local v11    # "r":I
    :cond_3
    const/4 v11, 0x0

    .line 84
    .local v11, "flag15":Z
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, "bStr":Ljava/lang/String;
    const-string v13, "\\s*\\((.*?)\\s*\\)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 87
    nop

    .line 86
    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 88
    .local v13, "bcm":Ljava/util/regex/Matcher;
    const/4 v14, 0x0

    .line 89
    .local v14, "d":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 90
    invoke-virtual {v13, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 92
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

    .line 93
    .local v7, "end":I
    :goto_0
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v15

    invoke-virtual {v1, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 95
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 93
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 95
    :cond_6
    nop

    .line 93
    move v11, v4

    .line 98
    .end local v7    # "end":I
    .end local v12    # "bStr":Ljava/lang/String;
    .end local v13    # "bcm":Ljava/util/regex/Matcher;
    .end local v14    # "d":Ljava/lang/String;
    :cond_7
    iget-object v4, v0, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->locale:Ljava/lang/String;

    invoke-static {v10, v4}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->isRelDates(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v11, :cond_a

    .line 99
    :cond_8
    if-eqz v9, :cond_9

    .line 100
    const/4 v3, 0x2

    goto :goto_1

    .line 102
    :cond_9
    const/4 v3, 0x1

    .line 107
    .end local v11    # "flag15":Z
    :cond_a
    :goto_1
    return v3

    .line 72
    .end local v9    # "isThree":Z
    .end local v10    # "ss":Ljava/lang/String;
    :cond_b
    move/from16 v8, p4

    :goto_2
    return v3
.end method


# virtual methods
.method public convert(Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;J)Ljava/util/List;
    .locals 56
    .param p1, "dp"    # Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .param p2, "rTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;",
            "J)",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 369
    move-wide/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 370
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 372
    return-object v0

    .line 375
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getType()I

    move-result v5

    .line 376
    .local v5, "status":I
    const/16 v6, 0xc

    const/4 v10, -0x1

    if-nez v5, :cond_d

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getYear()I

    move-result v11

    .line 378
    .local v11, "year":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getMonth()I

    move-result v12

    .line 379
    .local v12, "month":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getDay()I

    move-result v13

    .line 380
    .local v13, "day":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getClock()I

    move-result v14

    .line 381
    .local v14, "hour":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v15

    invoke-virtual {v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v15

    invoke-virtual {v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMinute()I

    move-result v15

    .line 382
    .local v15, "min":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getSecond()I

    move-result v7

    .line 383
    .local v7, "sec":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMark()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    const-string v8, ""

    .line 384
    .local v8, "tm":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getTimezone()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const-string v9, ""

    .line 387
    .local v9, "tz":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v16, v0

    .line 388
    .local v16, "t":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v17, v0

    .line 390
    .local v17, "s":Ljava/lang/StringBuffer;
    if-le v14, v6, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 391
    const-string v8, ""

    .line 394
    :cond_3
    if-eq v14, v10, :cond_4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "00"

    :goto_2
    move-object/from16 v6, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .end local v17    # "s":Ljava/lang/StringBuffer;
    .local v6, "s":Ljava/lang/StringBuffer;
    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v15, v10, :cond_5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, "00"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v7, v10, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_6
    const-string v0, "00"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 395
    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 396
    const-string v0, "hh"

    move-object/from16 v10, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v16    # "t":Ljava/lang/StringBuffer;
    .local v10, "t":Ljava/lang/StringBuffer;
    const-string v0, ":mm:ss"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " a"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    goto :goto_5

    .line 399
    .end local v10    # "t":Ljava/lang/StringBuffer;
    .restart local v16    # "t":Ljava/lang/StringBuffer;
    :cond_7
    move-object/from16 v10, v16

    .end local v16    # "t":Ljava/lang/StringBuffer;
    .restart local v10    # "t":Ljava/lang/StringBuffer;
    const-string v0, "HH"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":mm:ss"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    :goto_5
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 404
    const-string v0, " Z"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    move/from16 v18, v7

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7    # "sec":I
    .local v18, "sec":I
    move-object/from16 v19, v8

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .end local v8    # "tm":Ljava/lang/String;
    .local v19, "tm":Ljava/lang/String;
    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v7, v0

    .line 408
    .local v7, "for1":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    move-object v8, v0

    .line 412
    .local v8, "d1":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 413
    goto :goto_6

    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 416
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 417
    .local v0, "c":Ljava/util/Calendar;
    move-object/from16 v20, v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 418
    .local v6, "c2":Ljava/util/Calendar;
    .local v20, "s":Ljava/lang/StringBuffer;
    move-object/from16 v21, v7

    new-instance v7, Ljava/util/Date;

    .end local v7    # "for1":Ljava/text/SimpleDateFormat;
    .local v21, "for1":Ljava/text/SimpleDateFormat;
    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 419
    if-eqz v8, :cond_9

    .line 420
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 421
    :cond_9
    const/4 v7, -0x1

    if-eq v11, v7, :cond_a

    .line 422
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 425
    move-object/from16 v22, v8

    goto :goto_7

    .line 424
    :cond_a
    const/4 v7, 0x1

    move-object/from16 v22, v8

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .end local v8    # "d1":Ljava/util/Date;
    .local v22, "d1":Ljava/util/Date;
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 425
    :goto_7
    const/4 v7, -0x1

    if-eq v12, v7, :cond_b

    .line 426
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v12}, Ljava/util/Calendar;->set(II)V

    goto :goto_8

    .line 428
    :cond_b
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 429
    :goto_8
    const/4 v7, -0x1

    if-eq v13, v7, :cond_c

    .line 430
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v13}, Ljava/util/Calendar;->set(II)V

    goto :goto_9

    .line 432
    :cond_c
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 433
    :goto_9
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v6    # "c2":Ljava/util/Calendar;
    .end local v9    # "tz":Ljava/lang/String;
    .end local v10    # "t":Ljava/lang/StringBuffer;
    .end local v11    # "year":I
    .end local v12    # "month":I
    .end local v13    # "day":I
    .end local v14    # "hour":I
    .end local v15    # "min":I
    .end local v18    # "sec":I
    .end local v19    # "tm":Ljava/lang/String;
    .end local v20    # "s":Ljava/lang/StringBuffer;
    .end local v21    # "for1":Ljava/text/SimpleDateFormat;
    .end local v22    # "d1":Ljava/util/Date;
    goto/16 :goto_d

    :cond_d
    const/4 v7, 0x1

    if-ne v5, v7, :cond_11

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getYear()I

    move-result v0

    .line 436
    .local v0, "year":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getMonth()I

    move-result v7

    .line 437
    .local v7, "month":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getDay()I

    move-result v8

    .line 438
    .local v8, "day":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 439
    .local v9, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 440
    .local v10, "c2":Ljava/util/Calendar;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 441
    const/4 v11, -0x1

    if-eq v0, v11, :cond_e

    .line 442
    const/4 v12, 0x1

    invoke-virtual {v9, v12, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_a

    .line 444
    :cond_e
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 445
    :goto_a
    if-eq v7, v11, :cond_f

    .line 446
    const/4 v12, 0x2

    invoke-virtual {v9, v12, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_b

    .line 448
    :cond_f
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 449
    :goto_b
    if-eq v8, v11, :cond_10

    .line 450
    const/4 v11, 0x5

    invoke-virtual {v9, v11, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_c

    .line 452
    :cond_10
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 454
    :goto_c
    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 455
    invoke-virtual {v9, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 456
    const/16 v6, 0xd

    invoke-virtual {v9, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 457
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v0    # "year":I
    .end local v7    # "month":I
    .end local v8    # "day":I
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v10    # "c2":Ljava/util/Calendar;
    nop

    .line 684
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    :goto_d
    move-object v2, v3

    goto/16 :goto_40

    .line 458
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    :cond_11
    const/4 v7, 0x2

    if-ne v5, v7, :cond_1a

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getClock()I

    move-result v7

    .line 460
    .local v7, "hour":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMinute()I

    move-result v8

    .line 461
    .local v8, "min":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getSecond()I

    move-result v9

    .line 462
    .local v9, "sec":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMark()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_12
    const-string v0, ""

    .line 463
    .local v0, "tm":Ljava/lang/String;
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getTimezone()Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    :cond_13
    const-string v10, ""

    .line 465
    .local v10, "tz":Ljava/lang/String;
    :goto_f
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 466
    .local v11, "t":Ljava/lang/StringBuffer;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 467
    .local v12, "s":Ljava/lang/StringBuffer;
    const-string v13, "yyyy-MM-dd "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 469
    .local v13, "c":Ljava/util/Calendar;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 470
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v15, "-"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    if-le v7, v6, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 473
    const-string v0, ""

    .line 476
    .end local v0    # "tm":Ljava/lang/String;
    .local v6, "tm":Ljava/lang/String;
    :cond_14
    move-object v6, v0

    const/4 v14, -0x1

    if-eq v7, v14, :cond_15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_10

    :cond_15
    const-string v0, "00"

    :goto_10
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v8, v14, :cond_16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11

    :cond_16
    const-string v0, "00"

    :goto_11
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v9, v14, :cond_17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :cond_17
    const-string v0, "00"

    :goto_12
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 477
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 478
    const-string v0, "hh"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":mm:ss"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " a"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    const-string v0, " "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    goto :goto_13

    .line 481
    :cond_18
    const-string v0, "HH"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":mm:ss"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :goto_13
    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 486
    const-string v0, " Z"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const-string v0, " "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    :cond_19
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v14, v0

    .line 490
    .local v14, "for1":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    move-object v15, v0

    .line 492
    .local v15, "d1":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v15, v0

    .line 493
    goto :goto_14

    :catch_1
    move-exception v0

    .line 494
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 497
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_14
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v6    # "tm":Ljava/lang/String;
    .end local v7    # "hour":I
    .end local v8    # "min":I
    .end local v9    # "sec":I
    .end local v10    # "tz":Ljava/lang/String;
    .end local v11    # "t":Ljava/lang/StringBuffer;
    .end local v12    # "s":Ljava/lang/StringBuffer;
    .end local v13    # "c":Ljava/util/Calendar;
    .end local v14    # "for1":Ljava/text/SimpleDateFormat;
    .end local v15    # "d1":Ljava/util/Date;
    goto/16 :goto_d

    :cond_1a
    const/4 v7, 0x2

    if-le v5, v7, :cond_5b

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getYear()I

    move-result v10

    goto :goto_15

    :cond_1b
    const/4 v10, -0x1

    :goto_15
    move v0, v10

    .line 500
    .local v0, "year":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getMonth()I

    move-result v10

    goto :goto_16

    :cond_1c
    const/4 v10, -0x1

    :goto_16
    move v7, v10

    .line 501
    .local v7, "month":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v8

    if-eqz v8, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getDay()I

    move-result v10

    goto :goto_17

    :cond_1d
    const/4 v10, -0x1

    :goto_17
    move v8, v10

    .line 502
    .local v8, "day":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v9

    if-eqz v9, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getClock()I

    move-result v10

    goto :goto_18

    :cond_1e
    const/4 v10, -0x1

    :goto_18
    move v9, v10

    .line 503
    .local v9, "hour":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v10

    if-eqz v10, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMinute()I

    move-result v10

    goto :goto_19

    :cond_1f
    const/4 v10, -0x1

    .line 504
    .local v10, "min":I
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v11

    if-eqz v11, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getSecond()I

    move-result v11

    goto :goto_1a

    :cond_20
    const/4 v11, -0x1

    .line 505
    .local v11, "sec":I
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v12

    if-eqz v12, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMark()Ljava/lang/String;

    move-result-object v12

    goto :goto_1b

    :cond_21
    const-string v12, ""

    .line 506
    .local v12, "tm":Ljava/lang/String;
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v13

    if-eqz v13, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getTimezone()Ljava/lang/String;

    move-result-object v13

    goto :goto_1c

    :cond_22
    const-string v13, ""

    .line 507
    .local v13, "tz":Ljava/lang/String;
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v14

    if-eqz v14, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getYear()I

    move-result v14

    goto :goto_1d

    :cond_23
    const/4 v14, -0x1

    .line 508
    .local v14, "year2":I
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v15

    invoke-virtual {v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v15

    if-eqz v15, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v15

    invoke-virtual {v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v15

    invoke-virtual {v15}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getMonth()I

    move-result v15

    goto :goto_1e

    :cond_24
    const/4 v15, -0x1

    .line 509
    .local v15, "month2":I
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v6

    if-eqz v6, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->getDay()I

    move-result v6

    goto :goto_1f

    :cond_25
    const/4 v6, -0x1

    .line 510
    .local v6, "day2":I
    :goto_1f
    move-object/from16 v23, v3

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v3

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .local v23, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getClock()I

    move-result v3

    goto :goto_20

    :cond_26
    const/4 v3, -0x1

    .line 511
    .local v3, "hour2":I
    :goto_20
    move/from16 v24, v5

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v5

    .end local v5    # "status":I
    .local v24, "status":I
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v5

    if-eqz v5, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMinute()I

    move-result v5

    goto :goto_21

    :cond_27
    const/4 v5, -0x1

    .line 512
    .local v5, "min2":I
    :goto_21
    move/from16 v25, v5

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v5

    .end local v5    # "min2":I
    .local v25, "min2":I
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v5

    if-eqz v5, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getSecond()I

    move-result v5

    goto :goto_22

    :cond_28
    const/4 v5, -0x1

    .line 513
    .local v5, "sec2":I
    :goto_22
    move/from16 v26, v5

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v5

    .end local v5    # "sec2":I
    .local v26, "sec2":I
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMark()Ljava/lang/String;

    move-result-object v5

    goto :goto_23

    :cond_29
    const-string v5, ""

    .line 514
    .local v5, "tm2":Ljava/lang/String;
    :goto_23
    move/from16 v27, v3

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v3

    .end local v3    # "hour2":I
    .local v27, "hour2":I
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getTimezone()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_2a
    const-string v3, ""

    .line 515
    .local v3, "tz2":Ljava/lang/String;
    :goto_24
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->isMarkBefore()Z

    move-result v1

    goto :goto_25

    :cond_2b
    const/4 v1, 0x1

    .line 516
    .local v1, "isBefore1":Z
    :goto_25
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->isMarkBefore()Z

    move-result v2

    goto :goto_26

    :cond_2c
    const/4 v2, 0x1

    .line 517
    .local v2, "isBefore2":Z
    :goto_26
    move/from16 v28, v11

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v11

    .end local v11    # "sec":I
    .local v28, "sec":I
    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getSatuts()I

    move-result v11

    .line 518
    .local v11, "dtst":I
    move/from16 v29, v10

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    move-result-object v10

    .end local v10    # "min":I
    .local v29, "min":I
    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getSatuts()I

    move-result v10

    .line 520
    .local v10, "dt2st":I
    if-eqz v11, :cond_2d

    const/4 v4, 0x1

    if-ne v11, v4, :cond_32

    goto :goto_27

    :cond_2d
    const/4 v4, 0x1

    :goto_27
    if-eqz v10, :cond_2e

    if-ne v10, v4, :cond_32

    .line 521
    :cond_2e
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2f

    if-ne v14, v4, :cond_2f

    .line 522
    move v14, v0

    .line 524
    :cond_2f
    if-ne v0, v4, :cond_30

    if-eq v14, v4, :cond_30

    .line 525
    move v0, v14

    .line 527
    :cond_30
    if-eq v7, v4, :cond_31

    if-ne v15, v4, :cond_31

    .line 528
    move v15, v7

    .line 530
    :cond_31
    if-ne v7, v4, :cond_32

    if-eq v15, v4, :cond_32

    .line 531
    move v7, v15

    .line 534
    :cond_32
    if-eqz v11, :cond_33

    const/4 v4, 0x1

    if-ne v11, v4, :cond_36

    :cond_33
    const/4 v4, 0x2

    if-ne v10, v4, :cond_36

    .line 535
    const/4 v4, -0x1

    if-eq v0, v4, :cond_34

    if-ne v14, v4, :cond_34

    .line 536
    move v14, v0

    .line 538
    :cond_34
    if-eq v7, v4, :cond_35

    if-ne v15, v4, :cond_35

    .line 539
    move v15, v7

    .line 541
    :cond_35
    if-eq v8, v4, :cond_36

    if-ne v6, v4, :cond_36

    .line 542
    move v6, v8

    .line 545
    :cond_36
    if-eqz v10, :cond_37

    const/4 v4, 0x1

    if-ne v10, v4, :cond_3a

    :cond_37
    const/4 v4, 0x2

    if-ne v11, v4, :cond_3a

    .line 546
    const/4 v4, -0x1

    if-eq v14, v4, :cond_38

    if-ne v0, v4, :cond_38

    .line 547
    move v0, v14

    .line 549
    :cond_38
    if-eq v15, v4, :cond_39

    if-ne v7, v4, :cond_39

    .line 550
    move v7, v15

    .line 552
    :cond_39
    if-eq v6, v4, :cond_3a

    if-ne v8, v4, :cond_3a

    .line 553
    move v8, v6

    .line 557
    .end local v0    # "year":I
    .local v4, "year":I
    :cond_3a
    move v4, v0

    const-string v0, ""

    .line 558
    .local v0, "tzone":Ljava/lang/String;
    if-eqz v11, :cond_3c

    move/from16 v30, v9

    const/4 v9, 0x2

    if-eq v11, v9, :cond_3d

    .end local v9    # "hour":I
    .local v30, "hour":I
    if-eqz v10, :cond_3d

    if-ne v10, v9, :cond_3b

    goto :goto_29

    .line 586
    .end local v0    # "tzone":Ljava/lang/String;
    .local v5, "tzone":Ljava/lang/String;
    .local v9, "tm2":Ljava/lang/String;
    :cond_3b
    :goto_28
    move-object v9, v5

    move-object v5, v0

    goto/16 :goto_2d

    .line 559
    .end local v30    # "hour":I
    .restart local v0    # "tzone":Ljava/lang/String;
    .local v5, "tm2":Ljava/lang/String;
    .local v9, "hour":I
    :cond_3c
    move/from16 v30, v9

    .end local v9    # "hour":I
    .restart local v30    # "hour":I
    :cond_3d
    :goto_29
    const/4 v9, 0x1

    .line 560
    .local v9, "isBefore":Z
    move-object/from16 v31, v0

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "tzone":Ljava/lang/String;
    .local v31, "tzone":Ljava/lang/String;
    move/from16 v32, v9

    const-string v9, ""

    .end local v9    # "isBefore":Z
    .local v32, "isBefore":Z
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 561
    move v0, v2

    .line 563
    .end local v32    # "isBefore":Z
    .local v0, "isBefore":Z
    if-ne v4, v14, :cond_3e

    if-ne v7, v15, :cond_3e

    if-eq v8, v6, :cond_3f

    .line 564
    :cond_3e
    const/4 v0, 0x1

    .line 566
    .end local v0    # "isBefore":Z
    .restart local v9    # "isBefore":Z
    :cond_3f
    move v9, v0

    if-nez v9, :cond_44

    .line 567
    move-object v0, v5

    .line 568
    .end local v12    # "tm":Ljava/lang/String;
    .local v0, "tm":Ljava/lang/String;
    nop

    .line 580
    move-object v12, v0

    goto :goto_2c

    .line 568
    .end local v0    # "tm":Ljava/lang/String;
    .end local v9    # "isBefore":Z
    .restart local v12    # "tm":Ljava/lang/String;
    .restart local v32    # "isBefore":Z
    :cond_40
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 569
    move v0, v1

    .line 571
    .end local v32    # "isBefore":Z
    .local v0, "isBefore":Z
    if-ne v4, v14, :cond_42

    if-ne v7, v15, :cond_42

    if-eq v8, v6, :cond_41

    goto :goto_2a

    .line 575
    :cond_41
    const/4 v0, 0x1

    goto :goto_2b

    .line 572
    :cond_42
    :goto_2a
    const/4 v0, 0x0

    .line 573
    nop

    .line 577
    .end local v0    # "isBefore":Z
    .restart local v9    # "isBefore":Z
    :goto_2b
    move v9, v0

    if-eqz v9, :cond_44

    .line 578
    move-object v0, v12

    .line 580
    .end local v5    # "tm2":Ljava/lang/String;
    .local v0, "tm2":Ljava/lang/String;
    move-object v5, v0

    goto :goto_2c

    .end local v0    # "tm2":Ljava/lang/String;
    .end local v9    # "isBefore":Z
    .restart local v5    # "tm2":Ljava/lang/String;
    .restart local v32    # "isBefore":Z
    :cond_43
    move/from16 v9, v32

    .end local v32    # "isBefore":Z
    .restart local v9    # "isBefore":Z
    :cond_44
    :goto_2c
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 581
    move-object v0, v3

    .end local v31    # "tzone":Ljava/lang/String;
    .local v0, "tzone":Ljava/lang/String;
    goto :goto_28

    .line 582
    .end local v0    # "tzone":Ljava/lang/String;
    .restart local v31    # "tzone":Ljava/lang/String;
    :cond_45
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, ""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 583
    move-object v0, v13

    .end local v9    # "isBefore":Z
    .end local v31    # "tzone":Ljava/lang/String;
    .restart local v0    # "tzone":Ljava/lang/String;
    goto :goto_28

    .line 586
    .end local v0    # "tzone":Ljava/lang/String;
    .restart local v31    # "tzone":Ljava/lang/String;
    :cond_46
    move-object v9, v5

    move-object/from16 v5, v31

    .end local v31    # "tzone":Ljava/lang/String;
    .local v5, "tzone":Ljava/lang/String;
    .local v9, "tm2":Ljava/lang/String;
    :goto_2d
    move/from16 v33, v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 588
    .local v1, "c":Ljava/util/Calendar;
    .local v33, "isBefore1":Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v34, v0

    .line 589
    .local v34, "t":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v35, v0

    .line 591
    .local v35, "s":Ljava/lang/StringBuffer;
    move/from16 v36, v2

    move-object/from16 v37, v3

    move/from16 v2, v30

    const/16 v3, 0xc

    if-le v2, v3, :cond_47

    .end local v3    # "tz2":Ljava/lang/String;
    .end local v30    # "hour":I
    .local v2, "hour":I
    .local v36, "isBefore2":Z
    .local v37, "tz2":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 592
    const-string v12, ""

    .line 594
    :cond_47
    const/4 v3, -0x1

    if-eq v2, v3, :cond_48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2e

    :cond_48
    const-string v0, "08"

    :goto_2e
    move-object/from16 v3, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .end local v35    # "s":Ljava/lang/StringBuffer;
    .local v3, "s":Ljava/lang/StringBuffer;
    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    move/from16 v38, v2

    move/from16 v39, v10

    move/from16 v2, v29

    const/4 v10, -0x1

    if-eq v2, v10, :cond_49

    .end local v10    # "dt2st":I
    .end local v29    # "min":I
    .local v2, "min":I
    .local v38, "hour":I
    .local v39, "dt2st":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2f

    :cond_49
    const-string v0, "00"

    :goto_2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    move/from16 v40, v2

    move/from16 v10, v28

    const/4 v2, -0x1

    if-eq v10, v2, :cond_4a

    .end local v2    # "min":I
    .end local v28    # "sec":I
    .local v10, "sec":I
    .local v40, "min":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_30

    :cond_4a
    const-string v0, "00"

    :goto_30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 597
    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 598
    const-string v0, "hh"

    move-object/from16 v2, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v34    # "t":Ljava/lang/StringBuffer;
    .local v2, "t":Ljava/lang/StringBuffer;
    const-string v0, ":mm:ss"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    goto :goto_31

    .line 601
    .end local v2    # "t":Ljava/lang/StringBuffer;
    .restart local v34    # "t":Ljava/lang/StringBuffer;
    :cond_4b
    move-object/from16 v2, v34

    .end local v34    # "t":Ljava/lang/StringBuffer;
    .restart local v2    # "t":Ljava/lang/StringBuffer;
    const-string v0, "HH"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":mm:ss"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    :goto_31
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 604
    const-string v0, " Z"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    :cond_4c
    new-instance v0, Ljava/text/SimpleDateFormat;

    move/from16 v41, v10

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 608
    .end local v10    # "sec":I
    .local v41, "sec":I
    move-object/from16 v42, v2

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 607
    .end local v2    # "t":Ljava/lang/StringBuffer;
    .local v42, "t":Ljava/lang/StringBuffer;
    invoke-direct {v0, v10, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v2, v0

    .line 610
    .local v2, "for1":Ljava/text/SimpleDateFormat;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 611
    .local v0, "d1":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 612
    .end local v0    # "d1":Ljava/util/Date;
    goto :goto_32

    :catch_2
    move-exception v0

    .line 613
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 616
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_32
    new-instance v0, Ljava/util/Date;

    move-object/from16 v44, v2

    move-object/from16 v43, v3

    move-wide/from16 v2, p2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .end local v2    # "for1":Ljava/text/SimpleDateFormat;
    .end local v3    # "s":Ljava/lang/StringBuffer;
    .local v43, "s":Ljava/lang/StringBuffer;
    .local v44, "for1":Ljava/text/SimpleDateFormat;
    move-object v10, v0

    .line 617
    .local v10, "d":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 618
    .local v2, "tc":Ljava/util/Calendar;
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 620
    const/4 v3, -0x1

    if-eq v4, v3, :cond_4d

    .line 621
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_33

    .line 623
    :cond_4d
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 624
    :goto_33
    const/4 v3, -0x1

    if-eq v7, v3, :cond_4e

    .line 625
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_34

    .line 627
    :cond_4e
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 628
    :goto_34
    const/4 v3, -0x1

    if-eq v8, v3, :cond_4f

    .line 629
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_35

    .line 631
    :cond_4f
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 635
    :goto_35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 636
    .local v3, "c2":Ljava/util/Calendar;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v45, v0

    .line 637
    .local v45, "t2":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v46, v0

    .line 639
    .local v46, "s2":Ljava/lang/StringBuffer;
    move/from16 v47, v4

    move/from16 v48, v7

    move/from16 v4, v27

    const/16 v7, 0xc

    if-le v4, v7, :cond_50

    .end local v7    # "month":I
    .end local v27    # "hour2":I
    .local v4, "hour2":I
    .local v47, "year":I
    .local v48, "month":I
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 640
    const-string v9, ""

    .line 642
    :cond_50
    const/4 v7, -0x1

    if-eq v4, v7, :cond_51

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_36

    :cond_51
    const-string v0, "08"

    :goto_36
    move-object/from16 v7, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .end local v46    # "s2":Ljava/lang/StringBuffer;
    .local v7, "s2":Ljava/lang/StringBuffer;
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    move/from16 v49, v4

    move/from16 v50, v8

    move/from16 v4, v25

    const/4 v8, -0x1

    if-eq v4, v8, :cond_52

    .end local v8    # "day":I
    .end local v25    # "min2":I
    .local v4, "min2":I
    .local v49, "hour2":I
    .local v50, "day":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_37

    :cond_52
    const-string v0, "00"

    :goto_37
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    move/from16 v51, v4

    move/from16 v8, v26

    const/4 v4, -0x1

    if-eq v8, v4, :cond_53

    .end local v4    # "min2":I
    .end local v26    # "sec2":I
    .local v8, "sec2":I
    .local v51, "min2":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_38

    :cond_53
    const-string v0, "00"

    :goto_38
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 645
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 646
    const-string v0, "hh"

    move-object/from16 v4, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v45    # "t2":Ljava/lang/StringBuffer;
    .local v4, "t2":Ljava/lang/StringBuffer;
    const-string v0, ":mm:ss"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    goto :goto_39

    .line 649
    .end local v4    # "t2":Ljava/lang/StringBuffer;
    .restart local v45    # "t2":Ljava/lang/StringBuffer;
    :cond_54
    move-object/from16 v4, v45

    .end local v45    # "t2":Ljava/lang/StringBuffer;
    .restart local v4    # "t2":Ljava/lang/StringBuffer;
    const-string v0, "HH"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":mm:ss"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    :goto_39
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 652
    const-string v0, " Z"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 655
    :cond_55
    new-instance v0, Ljava/text/SimpleDateFormat;

    move-object/from16 v52, v5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 656
    .end local v5    # "tzone":Ljava/lang/String;
    .local v52, "tzone":Ljava/lang/String;
    move-object/from16 v53, v4

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 655
    .end local v4    # "t2":Ljava/lang/StringBuffer;
    .local v53, "t2":Ljava/lang/StringBuffer;
    invoke-direct {v0, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v4, v0

    .line 658
    .local v4, "for2":Ljava/text/SimpleDateFormat;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 659
    .local v0, "d2":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    .line 660
    .end local v0    # "d2":Ljava/util/Date;
    goto :goto_3a

    :catch_3
    move-exception v0

    .line 661
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 664
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_3a
    const/4 v5, -0x1

    if-eq v14, v5, :cond_56

    .line 665
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v14}, Ljava/util/Calendar;->set(II)V

    goto :goto_3b

    .line 667
    :cond_56
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 668
    :goto_3b
    const/4 v5, -0x1

    if-eq v15, v5, :cond_57

    .line 669
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v15}, Ljava/util/Calendar;->set(II)V

    goto :goto_3c

    .line 671
    :cond_57
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 672
    :goto_3c
    const/4 v5, -0x1

    if-eq v6, v5, :cond_58

    .line 673
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    goto :goto_3d

    .line 675
    :cond_58
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 676
    :goto_3d
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5a

    move-object/from16 v54, v2

    move/from16 v5, v24

    const/4 v2, 0x5

    if-ne v5, v2, :cond_59

    .line 678
    .end local v2    # "tc":Ljava/util/Calendar;
    .end local v24    # "status":I
    .local v5, "status":I
    .local v54, "tc":Ljava/util/Calendar;
    move-object/from16 v55, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_3e

    .line 680
    :cond_59
    move-object/from16 v55, v4

    .end local v4    # "for2":Ljava/text/SimpleDateFormat;
    .local v55, "for2":Ljava/text/SimpleDateFormat;
    :goto_3e
    goto :goto_3f

    .end local v5    # "status":I
    .end local v54    # "tc":Ljava/util/Calendar;
    .end local v55    # "for2":Ljava/text/SimpleDateFormat;
    .restart local v2    # "tc":Ljava/util/Calendar;
    .restart local v4    # "for2":Ljava/text/SimpleDateFormat;
    .restart local v24    # "status":I
    :cond_5a
    move-object/from16 v54, v2

    move-object/from16 v55, v4

    move/from16 v5, v24

    .end local v2    # "tc":Ljava/util/Calendar;
    .end local v4    # "for2":Ljava/text/SimpleDateFormat;
    .end local v24    # "status":I
    .restart local v5    # "status":I
    .restart local v54    # "tc":Ljava/util/Calendar;
    .restart local v55    # "for2":Ljava/text/SimpleDateFormat;
    :goto_3f
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    move-object/from16 v2, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "c":Ljava/util/Calendar;
    .end local v3    # "c2":Ljava/util/Calendar;
    .end local v6    # "day2":I
    .end local v7    # "s2":Ljava/lang/StringBuffer;
    .end local v8    # "sec2":I
    .end local v9    # "tm2":Ljava/lang/String;
    .end local v10    # "d":Ljava/util/Date;
    .end local v11    # "dtst":I
    .end local v12    # "tm":Ljava/lang/String;
    .end local v13    # "tz":Ljava/lang/String;
    .end local v14    # "year2":I
    .end local v15    # "month2":I
    .end local v33    # "isBefore1":Z
    .end local v36    # "isBefore2":Z
    .end local v37    # "tz2":Ljava/lang/String;
    .end local v38    # "hour":I
    .end local v39    # "dt2st":I
    .end local v40    # "min":I
    .end local v41    # "sec":I
    .end local v42    # "t":Ljava/lang/StringBuffer;
    .end local v43    # "s":Ljava/lang/StringBuffer;
    .end local v44    # "for1":Ljava/text/SimpleDateFormat;
    .end local v47    # "year":I
    .end local v48    # "month":I
    .end local v49    # "hour2":I
    .end local v50    # "day":I
    .end local v51    # "min2":I
    .end local v52    # "tzone":Ljava/lang/String;
    .end local v53    # "t2":Ljava/lang/StringBuffer;
    .end local v54    # "tc":Ljava/util/Calendar;
    .end local v55    # "for2":Ljava/text/SimpleDateFormat;
    goto :goto_40

    .line 684
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    :cond_5b
    move-object v2, v3

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    :goto_40
    return-object v2
.end method

.method public filterByParse(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 3
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
            "Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;"
        }
    .end annotation

    .line 39
    .local p2, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "result":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 43
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/Match;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->convertMutilMatch(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/g11n/tmr/Match;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/Match;->getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 40
    .end local v0    # "result":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
