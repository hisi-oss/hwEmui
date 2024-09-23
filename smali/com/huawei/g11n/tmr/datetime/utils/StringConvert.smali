.class public Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;
.super Ljava/lang/Object;
.source "StringConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertQanChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "instr"    # Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "retsb":Ljava/lang/StringBuffer;
    const-string v1, "\u3000\uff1a\uff0f\uff0e\uff3c\u2215\uff0c.\uff01\uff08\uff09\uff1f\ufe61\uff1b\uff1a\u3010\u3011\uff0d\uff0b\uff1d\uff5b\uff5d\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff10\uff41\uff42\uff43\uff44\uff45\uff46\uff47\uff48\uff49\uff4a\uff4b\uff4c\uff4d\uff4e\uff4f\uff50\uff51\uff52\uff53\uff54\uff55\uff56\uff57\uff58\uff59\uff5a\uff21\uff22\uff23\uff24\uff25\uff26\uff27\uff28\uff29\uff2a\uff2b\uff2c\uff2d\uff2e\uff2f\uff30\uff31\uff32\uff33\uff34\uff35\uff36\uff37\uff38\uff39\uff3a"

    .line 27
    .local v1, "fwchstr":Ljava/lang/String;
    const-string v2, " :/.\\/,.!()?*;:[]-+={}1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 28
    .local v2, "hwchstr":Ljava/lang/String;
    const/4 v3, -0x1

    .line 29
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 39
    .end local v4    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 31
    .restart local v4    # "i":I
    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "tempstr":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 33
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .end local v5    # "tempstr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private replaceZh(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "a"    # Ljava/lang/String;

    .line 42
    const-string v0, "\u793c\u62dc"

    const-string v1, "\u661f\u671f"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u661f\u671f\u5929"

    const-string v2, "\u661f\u671f\u65e5"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9031"

    const-string v2, "\u5468"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5468\u5929"

    const-string v2, "\u5468\u65e5"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f8c"

    const-string v2, "\u540e"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u500b"

    const-string v2, "\u4e2a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5169"

    const-string v2, "\u4e24"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u937e"

    const-string v2, "\u949f"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "c":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p2}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->getLocaleDigit(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;

    move-result-object v0

    .line 85
    .local v0, "result":Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;
    if-nez v0, :cond_0

    .line 86
    return-object p1

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public convertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;

    .line 54
    const-string v0, "zh_hans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "en"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 57
    :cond_0
    const-string v0, "fa"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "fa"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    goto/16 :goto_0

    :cond_1
    const-string v0, "ne"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "ne"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    goto :goto_0

    :cond_2
    const-string v0, "bn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const-string v0, "bn"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    goto :goto_0

    :cond_3
    const-string v0, "as"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    const-string v0, "as"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    goto :goto_0

    :cond_4
    const-string v0, "mr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    const-string v0, "mr"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    goto :goto_0

    :cond_5
    const-string v0, "mai"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    const-string v0, "mai"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertDigit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    goto :goto_0

    :cond_6
    const-string v0, "ru"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "lt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "kk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "be"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    :cond_7
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 74
    :cond_8
    :goto_0
    return-object p1

    .line 55
    :cond_9
    :goto_1
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertQanChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "a":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->replaceZh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocaleDigit(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "result":Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;
    const-string v1, "zh_hans"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ja"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "en"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    const-string v1, "fa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigitFa;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigitFa;-><init>()V

    move-object v0, v1

    .line 113
    goto :goto_2

    :cond_1
    const-string v1, "ne"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mai"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    const-string v1, "bn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "as"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    :cond_3
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigitBn;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigitBn;-><init>()V

    move-object v0, v1

    goto :goto_2

    .line 114
    :cond_4
    :goto_0
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigitNe;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigitNe;-><init>()V

    move-object v0, v1

    .line 116
    goto :goto_2

    .line 109
    :cond_5
    :goto_1
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigitZh;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigitZh;-><init>()V

    move-object v0, v1

    .line 110
    nop

    .line 119
    :cond_6
    :goto_2
    return-object v0
.end method

.method public isDigit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p2}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->getLocaleDigit(Ljava/lang/String;)Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;

    move-result-object v0

    .line 98
    .local v0, "result":Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;
    if-nez v0, :cond_0

    .line 99
    const/4 v1, 0x0

    return v1

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;->isDigit(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
