.class Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$1;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
.source "PhoneNumberRule_ZH_CN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V
    .locals 0
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$1;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "matchList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 94
    .local v1, "temp1":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v2}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 95
    .local v2, "temp2":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$1;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    .line 97
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 98
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 102
    .local v6, "start":I
    :try_start_0
    invoke-static {v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->access$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 103
    .local v7, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    if-ne v6, v10, :cond_0

    .line 104
    const/4 v6, 0x0

    .line 106
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 107
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getBegin()I

    move-result v11

    add-int/2addr v11, v6

    .line 108
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v12

    add-int/2addr v11, v12

    .line 107
    invoke-virtual {v1, v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 109
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-virtual {v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getEnd()I

    move-result v11

    .line 110
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v12

    add-int/2addr v11, v12

    .line 109
    invoke-virtual {v1, v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 111
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 114
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getBegin()I

    move-result v8

    .line 115
    add-int/2addr v8, v6

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v9

    add-int/2addr v8, v9

    .line 114
    invoke-virtual {v2, v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 116
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getEnd()I

    move-result v8

    .line 117
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v9

    add-int/2addr v8, v9

    .line 116
    invoke-virtual {v2, v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 118
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-virtual {v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v7    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    goto :goto_0

    :catch_0
    move-exception v7

    .line 125
    .local v7, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    .line 129
    .end local v6    # "start":I
    .end local v7    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_1
    :goto_0
    return-object v0
.end method
