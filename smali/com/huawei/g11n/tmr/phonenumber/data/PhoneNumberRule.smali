.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.super Ljava/lang/Object;
.source "PhoneNumberRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    }
.end annotation


# instance fields
.field protected borderRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;",
            ">;"
        }
    .end annotation
.end field

.field protected codesRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;",
            ">;"
        }
    .end annotation
.end field

.field protected extraShortPattern:Ljava/lang/String;

.field protected negativeRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;",
            ">;"
        }
    .end annotation
.end field

.field protected patternCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field protected positiveRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->extraShortPattern:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->init()V

    .line 77
    return-void
.end method


# virtual methods
.method public getBorderRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->borderRules:Ljava/util/List;

    return-object v0
.end method

.method public getCodesRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->codesRules:Ljava/util/List;

    return-object v0
.end method

.method public getNegativeRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->negativeRules:Ljava/util/List;

    return-object v0
.end method

.method protected declared-synchronized getPatternFromCache(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->patternCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->patternCache:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;-><init>()V

    .line 47
    .local v0, "u":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 48
    .local v1, "t":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->patternCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-object v1

    .line 51
    .end local v0    # "u":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    .end local v1    # "t":Ljava/util/regex/Pattern;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->patternCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->patternCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 54
    :cond_1
    :try_start_2
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;-><init>()V

    .line 55
    .restart local v0    # "u":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 56
    .restart local v1    # "t":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->patternCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    monitor-exit p0

    return-object v1

    .line 43
    .end local v0    # "u":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    .end local v1    # "t":Ljava/util/regex/Pattern;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
    throw p1
.end method

.method public getPositiveRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->positiveRules:Ljava/util/List;

    return-object v0
.end method

.method public handleShortPhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 198
    .local v1, "putil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v2

    .line 199
    .local v2, "info":Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    const-string v4, "(?<!(\\d|\\*|-))\\d{2,7}(?!(\\d|\\*|-))"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 201
    .local v4, "shortPattern":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->extraShortPattern:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 202
    .local v5, "exShortPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 203
    .local v6, "eShortMatch":Ljava/util/regex/Matcher;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 204
    .local v7, "shortMatch":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_3

    .line 227
    iget-object v8, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->extraShortPattern:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;->extraShortPattern:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 228
    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 229
    :cond_1
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 230
    .local v8, "matcher":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 231
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 232
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 233
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "matcher":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    goto :goto_1

    .line 236
    :cond_2
    :goto_2
    return-object v3

    .line 206
    :cond_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "pnStr":Ljava/lang/String;
    move-object v9, v8

    .line 210
    .local v9, "pnCs":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {v1, v9, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    .line 211
    goto :goto_3

    :catch_0
    move-exception v10

    .line 213
    .local v10, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    .line 215
    .end local v10    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_3
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v2, v0, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isPossibleShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 218
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v10}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 219
    .local v10, "matcher":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 220
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 221
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 222
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "pnStr":Ljava/lang/String;
    .end local v9    # "pnCs":Ljava/lang/CharSequence;
    .end local v10    # "matcher":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    goto :goto_0
.end method

.method public init()V
    .locals 0

    .line 67
    return-void
.end method
