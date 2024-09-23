.class public Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;
.super Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;
.source "PhoneNumberMatcher.java"


# static fields
.field private static final REPLACE_CHAR:C = 'A'


# instance fields
.field private flag:Z

.field private phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->flag:Z

    .line 29
    const-string v0, "CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 31
    goto/16 :goto_1

    :cond_0
    const-string v0, "GB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "UK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "DE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 35
    goto :goto_1

    :cond_2
    const-string v0, "IT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 37
    goto :goto_1

    :cond_3
    const-string v0, "FR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 39
    goto :goto_1

    :cond_4
    const-string v0, "ES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 41
    goto :goto_1

    :cond_5
    const-string v0, "PT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 43
    goto :goto_1

    .line 45
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->flag:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    goto :goto_1

    .line 32
    :cond_7
    :goto_0
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 33
    nop

    .line 49
    :goto_1
    return-void
.end method

.method private static convertQanChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "instr"    # Ljava/lang/String;

    .line 331
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "retsb":Ljava/lang/StringBuffer;
    const-string v1, "\uff1a\uff0f\uff0e\uff3c\u2215\uff0c.\uff01\uff08\uff09\uff1f\ufe61\uff1b\uff1a\ufe63\u2014\uff0d\u3010\u3011\uff0d\uff0b\uff1d\uff5b\uff5d\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff10\uff41\uff42\uff43\uff44\uff45\uff46\uff47\uff48\uff49\uff4a\uff4b\uff4c\uff4d\uff4e\uff4f\uff50\uff51\uff52\uff53\uff54\uff55\uff56\uff57\uff58\uff59\uff5a\uff21\uff22\uff23\uff24\uff25\uff26\uff27\uff28\uff29\uff2a\uff2b\uff2c\uff2d\uff2e\uff2f\uff30\uff31\uff32\uff33\uff34\uff35\uff36\uff37\uff38\uff39\uff3a"

    .line 333
    .local v1, "fwchstr":Ljava/lang/String;
    const-string v2, ":/.\\/,.!()?*;:---[]-+={}1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 334
    .local v2, "hwchstr":Ljava/lang/String;
    const/4 v3, -0x1

    .line 335
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 345
    .end local v4    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 336
    .restart local v4    # "i":I
    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, "tempstr":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 338
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 339
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    goto :goto_1

    .line 341
    :cond_1
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    .end local v5    # "tempstr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static dealNumbersWithOneBracket(Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;)Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    .locals 3
    .param p0, "info"    # Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    .line 307
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->isNumbersWithOneBracket(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getBegin()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 312
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 313
    return-object p0

    .line 315
    :cond_0
    return-object p0
.end method

.method private static dealStringWithOneBracket(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 323
    invoke-static {p0}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->isNumbersWithOneBracket(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_0
    return-object p0
.end method

.method private static handleBorderRule(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;)Z
    .locals 16
    .param p0, "match"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "phoneNumberRule"    # Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 408
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->getBorderRules()Ljava/util/List;

    move-result-object v0

    .line 410
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 412
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v2

    .line 413
    .local v2, "begin":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v3

    .line 415
    .local v3, "end":I
    add-int/lit8 v4, v2, -0xa

    const/4 v5, 0x0

    if-gez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v2, -0xa

    .line 416
    .local v4, "bStr":I
    :goto_0
    add-int/lit8 v6, v3, 0xa

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v3, 0xa

    .line 418
    .local v6, "eStr":I
    :goto_1
    move-object/from16 v7, p1

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, "s":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 455
    return v1

    .line 419
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 420
    .local v10, "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 421
    .local v11, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->getType()I

    move-result v12

    .line 422
    .local v12, "type":I
    :cond_4
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_5

    .end local v10    # "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    .end local v11    # "mat":Ljava/util/regex/Matcher;
    .end local v12    # "type":I
    goto :goto_2

    .line 423
    .restart local v10    # "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    .restart local v11    # "mat":Ljava/util/regex/Matcher;
    .restart local v12    # "type":I
    :cond_5
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    add-int/2addr v13, v4

    .line 424
    .local v13, "b":I
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    add-int/2addr v14, v4

    .line 429
    .local v14, "e":I
    const/4 v15, 0x0

    .line 430
    .local v15, "isdel":Z
    packed-switch v12, :pswitch_data_0

    goto :goto_3

    .line 432
    :pswitch_0
    if-gt v13, v2, :cond_9

    if-gt v3, v14, :cond_9

    .line 434
    const/4 v15, 0x1

    .line 436
    goto :goto_3

    .line 438
    :pswitch_1
    if-gt v13, v2, :cond_6

    if-le v3, v14, :cond_8

    .line 439
    :cond_6
    if-ge v13, v2, :cond_7

    if-ge v2, v14, :cond_7

    if-lt v14, v3, :cond_8

    .line 440
    :cond_7
    if-ge v2, v13, :cond_9

    if-ge v13, v3, :cond_9

    if-ge v3, v14, :cond_9

    .line 441
    :cond_8
    const/4 v15, 0x1

    .line 443
    nop

    .line 449
    :cond_9
    :goto_3
    if-eqz v15, :cond_4

    .line 450
    return v5

    .line 411
    .end local v2    # "begin":I
    .end local v3    # "end":I
    .end local v4    # "bStr":I
    .end local v6    # "eStr":I
    .end local v8    # "s":Ljava/lang/String;
    .end local v10    # "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    .end local v11    # "mat":Ljava/util/regex/Matcher;
    .end local v12    # "type":I
    .end local v13    # "b":I
    .end local v14    # "e":I
    .end local v15    # "isdel":Z
    :cond_a
    :goto_4
    move-object/from16 v7, p1

    return v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCodeRule(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 4
    .param p1, "match"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "phoneNumberRule2"    # Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 238
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->getCodesRules()Ljava/util/List;

    move-result-object v0

    .line 239
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    const/4 v1, 0x1

    .line 240
    .local v1, "isValid":Z
    if-nez v0, :cond_0

    .line 242
    const/4 v1, 0x1

    .line 243
    goto :goto_0

    .line 244
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 245
    .local v3, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    invoke-virtual {v3, p1, p2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->isValid(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object p1

    .line 246
    if-nez p1, :cond_1

    .line 247
    const/4 v1, 0x0

    .line 248
    nop

    .line 253
    .end local v3    # "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    :goto_0
    if-eqz v1, :cond_3

    .line 254
    return-object p1

    .line 256
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private static handleNegativeRule(Ljava/lang/String;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;)Ljava/lang/String;
    .locals 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "phoneNumberRule"    # Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 351
    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->getNegativeRules()Ljava/util/List;

    move-result-object v0

    .line 352
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    move-object v1, p0

    .line 355
    .local v1, "ret":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    return-object v1

    .line 355
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 356
    .local v3, "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    .line 358
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 359
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    .end local v3    # "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 360
    .restart local v3    # "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    .restart local v4    # "p":Ljava/util/regex/Pattern;
    .restart local v5    # "m":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 361
    .local v6, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 362
    .local v7, "end":I
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->replaceSpecifiedPos([CII)Ljava/lang/String;

    move-result-object v1

    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_1
.end method

.method private static handlePositiveRule(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;)Ljava/util/List;
    .locals 10
    .param p0, "match"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "phoneNumberRule"    # Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            "Ljava/lang/String;",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;"
        }
    .end annotation

    .line 373
    invoke-virtual {p2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->getPositiveRules()Ljava/util/List;

    move-result-object v0

    .line 374
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->dealStringWithOneBracket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "str":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 394
    return-object v1

    .line 378
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 379
    .local v5, "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 380
    .local v6, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 381
    invoke-virtual {v5, p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->handle(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 382
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    return-object v2

    .line 385
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    :cond_3
    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 386
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 387
    invoke-virtual {v5, p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->handle(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 388
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 389
    goto :goto_0

    .line 390
    :cond_4
    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    return-object v2

    .line 375
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    .end local v3    # "str":Ljava/lang/String;
    .end local v5    # "rule":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    .end local v6    # "mat":Ljava/util/regex/Matcher;
    .end local v7    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    :cond_5
    :goto_1
    return-object v1
.end method

.method private static isNumbersWithOneBracket(Ljava/lang/String;)Z
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "hasRight":Z
    const/4 v1, 0x0

    .line 272
    .local v1, "hasLeft":Z
    if-eqz p0, :cond_7

    .line 273
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 293
    .end local v2    # "i":I
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 295
    const/4 v2, 0x1

    return v2

    .line 274
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    .line 275
    const/4 v0, 0x1

    .line 277
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_2

    .line 278
    const/4 v1, 0x1

    .line 280
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_3

    .line 281
    const/4 v0, 0x1

    .line 283
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_4

    if-nez v2, :cond_4

    .line 284
    const/4 v1, 0x1

    .line 286
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3011

    if-ne v3, v4, :cond_5

    .line 287
    const/4 v0, 0x1

    .line 289
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3010

    if-ne v3, v4, :cond_6

    if-nez v2, :cond_6

    .line 290
    const/4 v1, 0x1

    .line 273
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method private static replaceSpecifiedPos([CII)Ljava/lang/String;
    .locals 2
    .param p0, "chs"    # [C
    .param p1, "s"    # I
    .param p2, "e"    # I

    .line 462
    if-le p1, p2, :cond_0

    .line 463
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 464
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 468
    .end local v0    # "i":I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 465
    .restart local v0    # "i":I
    :cond_1
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 466
    const/16 v1, 0x41

    aput-char v1, p0, v0

    .line 464
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteRepeatedInfo(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;"
        }
    .end annotation

    .line 53
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    return-object v0

    .line 54
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    .line 55
    .local v2, "info":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 56
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    const/4 v4, 0x1

    .line 57
    .local v4, "isAdd":Z
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 63
    if-eqz v4, :cond_0

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "info":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    .end local v4    # "isAdd":Z
    goto :goto_0

    .line 58
    .restart local v2    # "info":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    .restart local v4    # "isAdd":Z
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    .line 59
    .local v5, "in":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getBegin()I

    move-result v6

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getBegin()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getEnd()I

    move-result v6

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getEnd()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 60
    const/4 v4, 0x0

    .end local v5    # "in":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    goto :goto_1
.end method

.method public getMatchedPhoneNumber(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 26
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 69
    move-object/from16 v8, p2

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v9

    .line 70
    .local v9, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v0, 0x0

    .line 72
    .local v0, "result":[I
    iget-boolean v2, v1, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->flag:Z

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-nez v2, :cond_b

    .line 73
    move-object/from16 v3, p1

    .line 74
    .local v3, "msgChar":Ljava/lang/CharSequence;
    nop

    .line 75
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v6, 0x7fffffffffffffffL

    .line 74
    move-object v2, v9

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v2

    .line 76
    .local v2, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 78
    .local v5, "tnum":I
    const/4 v6, 0x0

    .line 80
    .local v6, "y":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_a

    .line 84
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v12

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    move v13, v7

    .line 85
    .end local v5    # "tnum":I
    .local v13, "tnum":I
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 86
    mul-int v5, v11, v13

    add-int/2addr v5, v10

    new-array v5, v5, [I

    .line 87
    .end local v0    # "result":[I
    .local v5, "result":[I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    aput v13, v5, v12

    .line 93
    nop

    .line 98
    move-object v14, v5

    goto :goto_3

    .line 87
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 88
    .local v0, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    mul-int v14, v11, v6

    add-int/2addr v14, v10

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v15

    aput v15, v5, v14

    .line 89
    mul-int v14, v11, v6

    add-int/2addr v14, v11

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v15

    aput v15, v5, v14

    .line 90
    add-int/lit8 v6, v6, 0x1

    .end local v0    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    goto :goto_2

    .line 94
    .end local v5    # "result":[I
    .local v0, "result":[I
    :cond_2
    new-array v0, v10, [I

    .line 95
    aput v12, v0, v12

    .line 98
    move-object v14, v0

    .end local v0    # "result":[I
    .end local v6    # "y":I
    .local v14, "result":[I
    .local v15, "y":I
    :goto_3
    move v15, v6

    const/16 v16, 0x0

    .line 100
    .local v16, "final_result":[I
    const/4 v0, 0x0

    .line 101
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v5, "shortList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v6

    .line 103
    .local v6, "info":Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    const-string v7, "(?<!(\\d|\\*))\\d{2,8}(?!(\\d|\\*))"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 105
    .local v7, "shortPattern":Ljava/util/regex/Pattern;
    const-string v10, "CA"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 106
    const-string v10, "(?<!(\\d|\\*))\\d{5,8}(?!(\\d|\\*))"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 108
    .end local v7    # "shortPattern":Ljava/util/regex/Pattern;
    .local v10, "shortPattern":Ljava/util/regex/Pattern;
    :cond_3
    move-object v10, v7

    move-object/from16 v7, p1

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 109
    .local v12, "shortMatch":Ljava/util/regex/Matcher;
    move-object/from16 v17, v0

    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v17, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_4
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_8

    .line 124
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v11

    .line 125
    .local v0, "short_size":I
    :goto_5
    move-object/from16 v18, v2

    mul-int v2, v11, v0

    .end local v2    # "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .local v18, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    new-array v2, v2, [I

    .line 126
    .local v2, "result_short":[I
    const/16 v19, 0x0

    .local v19, "z":I
    move-object/from16 v20, v3

    move/from16 v3, v19

    .end local v19    # "z":I
    .local v3, "z":I
    .local v20, "msgChar":Ljava/lang/CharSequence;
    :goto_6
    mul-int v7, v11, v0

    if-lt v3, v7, :cond_7

    .line 129
    .end local v3    # "z":I
    if-nez v0, :cond_5

    .line 130
    return-object v14

    .line 131
    :cond_5
    const/4 v3, 0x0

    aget v7, v14, v3

    if-eqz v7, :cond_6

    .line 132
    add-int v7, v13, v0

    mul-int/2addr v11, v7

    const/4 v7, 0x1

    add-int/2addr v11, v7

    new-array v7, v11, [I

    .line 133
    .end local v16    # "final_result":[I
    .local v7, "final_result":[I
    array-length v11, v14

    invoke-static {v14, v3, v7, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    array-length v11, v14

    move-object/from16 v21, v10

    array-length v10, v2

    .end local v10    # "shortPattern":Ljava/util/regex/Pattern;
    .local v21, "shortPattern":Ljava/util/regex/Pattern;
    invoke-static {v2, v3, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    add-int v10, v13, v0

    aput v10, v7, v3

    .line 136
    return-object v7

    .line 137
    .end local v7    # "final_result":[I
    .end local v21    # "shortPattern":Ljava/util/regex/Pattern;
    .restart local v10    # "shortPattern":Ljava/util/regex/Pattern;
    .restart local v16    # "final_result":[I
    :cond_6
    move-object/from16 v21, v10

    .end local v10    # "shortPattern":Ljava/util/regex/Pattern;
    .restart local v21    # "shortPattern":Ljava/util/regex/Pattern;
    aget v7, v14, v3

    if-nez v7, :cond_c

    .line 138
    mul-int/2addr v11, v0

    const/4 v7, 0x1

    add-int/2addr v11, v7

    new-array v10, v11, [I

    .line 139
    .end local v16    # "final_result":[I
    .local v10, "final_result":[I
    aput v0, v10, v3

    .line 140
    array-length v11, v2

    invoke-static {v2, v3, v10, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    return-object v10

    .line 127
    .end local v21    # "shortPattern":Ljava/util/regex/Pattern;
    .restart local v3    # "z":I
    .local v10, "shortPattern":Ljava/util/regex/Pattern;
    .restart local v16    # "final_result":[I
    :cond_7
    move-object/from16 v21, v10

    .end local v10    # "shortPattern":Ljava/util/regex/Pattern;
    .restart local v21    # "shortPattern":Ljava/util/regex/Pattern;
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p1

    goto :goto_6

    .line 110
    .end local v0    # "short_size":I
    .end local v18    # "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v20    # "msgChar":Ljava/lang/CharSequence;
    .end local v21    # "shortPattern":Ljava/util/regex/Pattern;
    .local v2, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .local v3, "msgChar":Ljava/lang/CharSequence;
    .restart local v10    # "shortPattern":Ljava/util/regex/Pattern;
    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v10

    .end local v2    # "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v3    # "msgChar":Ljava/lang/CharSequence;
    .end local v10    # "shortPattern":Ljava/util/regex/Pattern;
    .restart local v18    # "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .restart local v20    # "msgChar":Ljava/lang/CharSequence;
    .restart local v21    # "shortPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "pnStr":Ljava/lang/String;
    move-object v3, v2

    .line 113
    .local v3, "pncs":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {v9, v3, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v17    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_7

    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v17    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 116
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    move-object/from16 v0, v17

    .end local v17    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_7
    invoke-virtual {v6, v0, v8}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isPossibleShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 119
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v2    # "pnStr":Ljava/lang/String;
    .end local v3    # "pncs":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v17, v0

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object/from16 v10, v21

    move-object/from16 v7, p1

    goto/16 :goto_4

    .line 80
    .end local v12    # "shortMatch":Ljava/util/regex/Matcher;
    .end local v13    # "tnum":I
    .end local v14    # "result":[I
    .end local v15    # "y":I
    .end local v16    # "final_result":[I
    .end local v18    # "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v20    # "msgChar":Ljava/lang/CharSequence;
    .end local v21    # "shortPattern":Ljava/util/regex/Pattern;
    .local v0, "result":[I
    .local v2, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .local v3, "msgChar":Ljava/lang/CharSequence;
    .local v5, "tnum":I
    .local v6, "y":I
    :cond_a
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    .end local v2    # "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v3    # "msgChar":Ljava/lang/CharSequence;
    .restart local v18    # "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .restart local v20    # "msgChar":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 81
    .local v2, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v2    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    move-object/from16 v2, v18

    move-object/from16 v3, v20

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 145
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "tnum":I
    .end local v6    # "y":I
    .end local v18    # "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v20    # "msgChar":Ljava/lang/CharSequence;
    :cond_b
    move-object v14, v0

    .end local v0    # "result":[I
    .restart local v14    # "result":[I
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->convertQanChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "src":Ljava/lang/String;
    iget-object v2, v1, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    invoke-static {v0, v2}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->handleNegativeRule(Ljava/lang/String;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;)Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, "filteredString":Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v12

    .line 152
    .local v12, "shortInfo":Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    move-object v3, v10

    .line 153
    .local v3, "filteredStringC":Ljava/lang/CharSequence;
    nop

    .line 154
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v6, 0x7fffffffffffffffL

    .line 153
    move-object v2, v9

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v2

    .line 155
    .local v2, "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_12

    .line 204
    iget-object v5, v1, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    invoke-virtual {v5, v10, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->handleShortPhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    invoke-virtual {v1, v4}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->deleteRepeatedInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 208
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    .line 217
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_a

    :cond_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 219
    .local v4, "length":I
    :goto_a
    if-nez v4, :cond_f

    .line 220
    const/4 v5, 0x1

    new-array v5, v5, [I

    .line 221
    .end local v14    # "result":[I
    .local v5, "result":[I
    const/4 v13, 0x0

    aput v13, v5, v13

    .line 222
    goto :goto_c

    .line 223
    .end local v5    # "result":[I
    .restart local v14    # "result":[I
    :cond_f
    const/4 v5, 0x1

    const/4 v13, 0x0

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v5

    new-array v5, v7, [I

    .line 224
    .end local v14    # "result":[I
    .restart local v5    # "result":[I
    aput v4, v5, v13

    .line 225
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b
    if-lt v7, v4, :cond_10

    .line 233
    .end local v7    # "i":I
    :goto_c
    return-object v5

    .line 226
    .restart local v7    # "i":I
    :cond_10
    mul-int/lit8 v13, v7, 0x2

    const/4 v14, 0x1

    add-int/2addr v13, v14

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-virtual {v14}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getBegin()I

    move-result v14

    aput v14, v5, v13

    .line 227
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-virtual {v13}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getEnd()I

    move-result v13

    .line 228
    .local v13, "end":I
    mul-int/lit8 v14, v7, 0x2

    add-int/2addr v14, v11

    aput v13, v5, v14

    .line 225
    .end local v13    # "end":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 208
    .end local v4    # "length":I
    .end local v5    # "result":[I
    .end local v7    # "i":I
    .restart local v14    # "result":[I
    :cond_11
    const/4 v13, 0x0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    .line 209
    .local v4, "mi":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    if-eqz v4, :cond_d

    .line 211
    invoke-static {v4}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->dealNumbersWithOneBracket(Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;)Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    .end local v4    # "mi":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    goto :goto_9

    .line 156
    .end local v6    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    :cond_12
    const/4 v13, 0x0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 157
    .local v6, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    iget-object v7, v1, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    invoke-static {v6, v10, v7}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->handleBorderRule(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 159
    goto :goto_8

    .line 161
    :cond_13
    iget-object v7, v1, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    invoke-direct {v1, v6, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->handleCodeRule(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v7

    .line 162
    .local v7, "delMatch":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-nez v7, :cond_14

    .line 164
    goto/16 :goto_8

    .line 166
    :cond_14
    move-object v6, v7

    .line 167
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v15

    .line 169
    .local v15, "number":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v9, v15}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 170
    new-instance v11, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 171
    .local v11, "info":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 172
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 173
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 175
    const-string v13, "CN"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 176
    const-string v13, "(?<![-\\d])\\d{5,6}[\\/|\\|]\\d{5,6}(?![-\\d])"

    .line 177
    .local v13, "regex1":Ljava/lang/String;
    move-object/from16 v22, v0

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 178
    .local v0, "p":Ljava/util/regex/Pattern;
    .local v22, "src":Ljava/lang/String;
    const-string v16, ""

    .line 179
    .local v16, "str":Ljava/lang/String;
    move-object/from16 v23, v2

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .local v23, "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    move-object/from16 v24, v3

    const-string v3, "("

    .end local v3    # "filteredStringC":Ljava/lang/CharSequence;
    .local v24, "filteredStringC":Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_d

    .line 182
    :cond_15
    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 185
    .end local v16    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_e

    .line 180
    .end local v2    # "str":Ljava/lang/String;
    .restart local v16    # "str":Ljava/lang/String;
    :cond_16
    :goto_d
    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .end local v16    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    nop

    .line 185
    :goto_e
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 186
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-nez v16, :cond_19

    .line 187
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    goto :goto_10

    .line 191
    .end local v13    # "regex1":Ljava/lang/String;
    .end local v22    # "src":Ljava/lang/String;
    .end local v23    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v24    # "filteredStringC":Ljava/lang/CharSequence;
    .local v0, "src":Ljava/lang/String;
    .local v2, "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .local v3, "filteredStringC":Ljava/lang/CharSequence;
    :cond_17
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    .end local v0    # "src":Ljava/lang/String;
    .end local v2    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v3    # "filteredStringC":Ljava/lang/CharSequence;
    .restart local v22    # "src":Ljava/lang/String;
    .restart local v23    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .restart local v24    # "filteredStringC":Ljava/lang/CharSequence;
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v11    # "info":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    goto :goto_f

    .line 196
    .end local v22    # "src":Ljava/lang/String;
    .end local v23    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v24    # "filteredStringC":Ljava/lang/CharSequence;
    .restart local v0    # "src":Ljava/lang/String;
    .restart local v2    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .restart local v3    # "filteredStringC":Ljava/lang/CharSequence;
    :cond_18
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    .line 197
    .end local v0    # "src":Ljava/lang/String;
    .end local v2    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v3    # "filteredStringC":Ljava/lang/CharSequence;
    .restart local v22    # "src":Ljava/lang/String;
    .restart local v23    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .restart local v24    # "filteredStringC":Ljava/lang/CharSequence;
    :cond_19
    :goto_f
    iget-object v0, v1, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->phoneNumberRule:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    .line 196
    invoke-static {v6, v10, v0}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;->handlePositiveRule(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;)Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "posList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 199
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    .end local v6    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v7    # "delMatch":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v15    # "number":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v22    # "src":Ljava/lang/String;
    .end local v23    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v24    # "filteredStringC":Ljava/lang/CharSequence;
    .local v0, "src":Ljava/lang/String;
    .restart local v2    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .restart local v3    # "filteredStringC":Ljava/lang/CharSequence;
    :cond_1a
    :goto_10
    move-object/from16 v0, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    const/4 v11, 0x2

    goto/16 :goto_8
.end method
