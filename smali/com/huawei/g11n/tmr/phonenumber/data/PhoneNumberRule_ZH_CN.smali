.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.source "PhoneNumberRule_ZH_CN.java"


# instance fields
.field private final REGION:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "CN"

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->REGION:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->init()V

    .line 22
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 298
    invoke-static {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->getNumbersWithSlant(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Ljava/lang/String;)I
    .locals 0

    .line 285
    invoke-static {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->countDigits(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static countDigits(Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 288
    .local v1, "ch":[C
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 293
    return v0

    .line 288
    :cond_0
    aget-char v4, v1, v3

    .line 289
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    add-int/lit8 v0, v0, 0x1

    .line 288
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static getNumbersWithSlant(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "testStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "shortList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 302
    .local v1, "pnu":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v2

    .line 303
    .local v2, "shortInfo":Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    const-string v3, ""

    .line 304
    .local v3, "number1":Ljava/lang/String;
    const-string v4, ""

    .line 305
    .local v4, "number2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 306
    .local v5, "slantIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-lt v6, v7, :cond_2

    .line 314
    .end local v6    # "i":I
    move-object v6, v3

    .line 315
    .local v6, "n1c":Ljava/lang/CharSequence;
    move-object v7, v4

    .line 316
    .local v7, "n2c":Ljava/lang/CharSequence;
    const-string v9, "CN"

    invoke-virtual {v1, v6, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v9

    .line 317
    .local v9, "phoneNumber1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string v10, "CN"

    invoke-virtual {v1, v7, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    .line 319
    .local v10, "phoneNumber2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v9}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isValidShortNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 320
    new-instance v11, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 321
    .local v11, "info1":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    invoke-virtual {v11, v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 322
    invoke-virtual {v11, v5}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 323
    invoke-virtual {v11, v3}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 324
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v11    # "info1":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    :cond_0
    invoke-virtual {v2, v10}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isValidShortNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 328
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 329
    .local v8, "info2":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v8, v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 331
    invoke-virtual {v8, v4}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 332
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v8    # "info2":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    :cond_1
    return-object v0

    .line 307
    .end local v7    # "n2c":Ljava/lang/CharSequence;
    .end local v9    # "phoneNumber1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v10    # "phoneNumber2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v6, "i":I
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x2f

    if-ne v7, v9, :cond_3

    .line 308
    move v5, v6

    .line 309
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 310
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 306
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 30

    .line 25
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v2, "pRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->codesRules:Ljava/util/List;

    .line 30
    const-string v3, "(?<![a-zA-Z_0-9.@])((https?|ftp)://)?([a-zA-Z_0-9][a-zA-Z0-9_-]*(\\.[a-zA-Z0-9_-]{1,20})*\\.(org|com|edu|net|[a-z]{2})|(?!0)[1-2]?[0-9]{1,2}\\.(?!0)[1-2]?[0-9]{1,2}\\.(?!0)[1-2]?[0-9]{1,2}\\.(?!0)[1-2]?[0-9]{1,2})(?![a-zA-Z0-9_.])(:[1-9][0-9]{0,4})?(/([a-zA-Z0-9/_.\\p{Punct}]*(\\?\\S+)?)?)?(?![a-zA-Z_0-9])"

    .line 35
    .local v3, "nRegex1":Ljava/lang/String;
    const-string v4, "\\d{3,17}(g|G|k|kB|KB|GB|kg|\u5343\u514b|\u6beb\u5347|mL|(\u5e73|\u7acb)\u65b9\u7c73|(m\u00b2)|(m\u00b3)|((\u5e73\u65b9|\u7acb\u65b9)?\u5206\u7c73)|((\u5e73\u65b9|\u7acb\u65b9)?\u5398\u7c73)|((\u5e73\u65b9|\u7acb\u65b9)?\u6beb\u7c73)|(\u5343\u7c73)|(\u82f1\u5c3a)|(\u516c\u91cc)|(\u516c\u65a4))(?!\\p{Alpha})"

    .line 36
    .local v4, "nRegex2":Ljava/lang/String;
    const-string v5, "\u7b2c\\d{3,17}(\u53ea|\u6b21|\u9875|\u6761|\u4e2a|\u53e5)"

    .line 41
    .local v5, "n1Regex2":Ljava/lang/String;
    const-string v6, "(\\d{1,16}\\p{Blank}*[.\uff0e~\uff5e]\\p{Blank}*)+\\d{1,16}"

    .line 43
    .local v6, "nRegex4":Ljava/lang/String;
    const-string v7, "(((\\d{1,2})|(1\\d{2})|(2[0-4]\\d)|(25[0-5]))\\.){3}((\\d{1,2})|(1\\d{2})|(2[0-4]\\d)|(25[0-5]))"

    .line 46
    .local v7, "nRegex5":Ljava/lang/String;
    const-string v8, "[a-zA-Z_0-9]{1,20}@[a-zA-Z_0-9]{1,20}\\.[A-Za-z]{1,10}"

    .line 49
    .local v8, "nRegex6":Ljava/lang/String;
    const-string v9, "(\u4ee3\u91d1\u5238|(\u8d26|\u5e10)\u6237\u53f7?|ID|id|\u9a8c\u8bc1\u7801|\u6821\u9a8c\u7801|\u52a8\u6001\u7801|\u5bc6\u7801|\u5361\u53f7|\u7968\u53f7|\u5355\u53f7|\u8ba2\u5355\u53f7?|\u8bc1\u53f7|\u8eab\u4efd\u8bc1(\u53f7\u7801?)?|\u5b66\u53f7|\u90ae\u7f16|\u4ee3\u53f7|\u7f16\u53f7|\u6635\u79f0|(\u8d26|\u5e10)\u53f7\u540d?)(\u662f|\u4e3a)?\\p{Blank}*[:\uff1a]?\\p{Blank}*[A-Za-z0-9_-]{1,30}"

    .line 51
    .local v9, "nRegex7":Ljava/lang/String;
    const-string v10, "((WEIXIN|WeiBo|yy|qq)\u53f7?|\u7fa4\u53f7|\u5fae\u535a\u53f7?|\u5fae\u4fe1\u53f7?|\u7f16(\u53f7|\u7801))(\u662f|\u4e3a)?\\p{Blank}*[:\uff1a]?\\p{Blank}*\\d{4,17}"

    .line 54
    .local v10, "nRegex8":Ljava/lang/String;
    const-string v11, "(?<!\\d)201[0-9](0?[1-9]|1[0-2])(0?[1-9]|[1-2][0-9]|3[01])(?!\\d)"

    .line 56
    .local v11, "nRegex9":Ljava/lang/String;
    const-string v12, "(\\d{1,16}[*.]{2,8})+(\\d{1,8})?"

    .line 59
    .local v12, "nRegex10":Ljava/lang/String;
    const-string v13, "((\\d{1,16}(\\.)?\\d{1,10})(\\p{Sc}|\u5370\u5c3c\u76fe|\u7f8e\u5143|\u4ebf\u5143|\u5341\u4e07\u5143?|\u767e\u4e07\u5143?|\u5343\u4e07\u5143?|\u4e07\u5143|((\u6e2f|\u6fb3|\u65b0?\u53f0|\u65e5)(\u5e01|\u5143))|\u4eba\u6c11\u5e01))|((((\u6e2f|\u6fb3|\u65b0?\u53f0|\u65e5)(\u5e01|\u5143))|\u4eba\u6c11\u5e01|\\p{Sc}|\u6807\u4ef7\u4e3a?|\u552e\u4ef7\u4e3a?|\u4ef7\u683c\u4e3a?)[:\uff1a]?(\\d{1,16}(\\.)?\\d{1,16}))"

    .line 62
    .local v13, "nRegex11":Ljava/lang/String;
    const-string v14, "[A-Za-z]{1,20}(?<!(mobile|phone|tel(ephone(\\p{Blank}{1,4}number)?)?))[\\d-]{3,11}(?![-\\d])"

    .line 64
    .local v14, "nRegex12":Ljava/lang/String;
    const-string v15, "\\{\\d{2,4}\\}(\\p{Blank})*\\d{1,4}"

    .line 66
    .local v15, "nRegex13":Ljava/lang/String;
    move-object/from16 v16, v2

    const-string v2, "(?<![-\\d])(20|19)[0-9]{2}-?(1[0-2]|0?[1-9])-?([1-2][0-9]|3[0-1]|0?[1-9])(0?[0-9]|1[0-9]|2[0-4])(\\p{Blank})*[:\uff1a](\\p{Blank})*([1-5][0-9]|0?[0-9])((\\p{Blank})*[:\uff1a](\\p{Blank})*([1-5][0-9]|0?[0-9]))?"

    .line 67
    .local v2, "nRegex14":Ljava/lang/String;
    .local v16, "pRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    move-object/from16 v17, v2

    const-string v2, "[@#][a-zA-Z_-]{0,20}[0-9]{4,}[a-zA-Z_-]{0,20}"

    .line 68
    .local v2, "nRegex15":Ljava/lang/String;
    .local v17, "nRegex14":Ljava/lang/String;
    move-object/from16 v18, v2

    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .end local v2    # "nRegex15":Ljava/lang/String;
    .local v18, "nRegex15":Ljava/lang/String;
    invoke-direct {v2, v0, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v19, v3

    const/4 v3, 0x2

    .end local v3    # "nRegex1":Ljava/lang/String;
    .local v19, "nRegex1":Ljava/lang/String;
    invoke-direct {v2, v0, v4, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v10, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v12}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v13}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v14, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v2, v0, v15}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v3, v17

    invoke-direct {v2, v0, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .end local v17    # "nRegex14":Ljava/lang/String;
    .local v3, "nRegex14":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v20, v3

    move-object/from16 v3, v18

    invoke-direct {v2, v0, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .end local v18    # "nRegex15":Ljava/lang/String;
    .local v3, "nRegex15":Ljava/lang/String;
    .local v20, "nRegex14":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iput-object v1, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->negativeRules:Ljava/util/List;

    .line 85
    const-string v2, "(?<![-\\d])\\d{5,6}[/|]\\d{5,6}(?![-\\d])"

    .line 86
    .local v2, "regex1":Ljava/lang/String;
    move-object/from16 v21, v1

    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$1;

    .end local v1    # "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    .local v21, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    invoke-direct {v1, v0, v0, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$1;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    move-object/from16 v22, v2

    move-object/from16 v2, v16

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v16    # "pRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    .local v2, "pRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    .local v22, "regex1":Ljava/lang/String;
    const-string v1, "((?<!([-\\d])|(\\d\\p{Blank}{1,5}))[2-9](\\d{2}\\p{Blank}+\\d{4,5}|\\d{3}\\p{Blank}+\\d{3,4})(?!\\p{Blank}*\\d)|(?<![-\\d])[2-9]\\d{6,7}(?![\\d]))(;\\d{1})?"

    .line 134
    .local v1, "regex2":Ljava/lang/String;
    move-object/from16 v23, v3

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$2;

    .end local v3    # "nRegex15":Ljava/lang/String;
    .local v23, "nRegex15":Ljava/lang/String;
    invoke-direct {v3, v0, v0, v1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$2;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v3, "(?<![-\\d])100\\d{4}(?![\\d])"

    .line 166
    .local v3, "regex3":Ljava/lang/String;
    move-object/from16 v24, v1

    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$3;

    .end local v1    # "regex2":Ljava/lang/String;
    .local v24, "regex2":Ljava/lang/String;
    invoke-direct {v1, v0, v0, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$3;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iput-object v2, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->positiveRules:Ljava/util/List;

    .line 186
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$4;

    move-object/from16 v25, v2

    const-string v2, ""

    .end local v2    # "pRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    .local v25, "pRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    invoke-direct {v1, v0, v0, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$4;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .line 273
    .local v1, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    iget-object v2, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->codesRules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v2, "bRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    move-object/from16 v26, v1

    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 278
    .end local v1    # "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    .local v26, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    move-object/from16 v27, v3

    const-string v3, "(0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,}|10{8,})"

    .line 279
    .end local v3    # "regex3":Ljava/lang/String;
    .local v27, "regex3":Ljava/lang/String;
    move-object/from16 v28, v4

    const/16 v4, 0x9

    .end local v4    # "nRegex2":Ljava/lang/String;
    .local v28, "nRegex2":Ljava/lang/String;
    move-object/from16 v29, v5

    const/4 v5, 0x2

    invoke-direct {v1, v0, v3, v5, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 277
    .end local v5    # "n1Regex2":Ljava/lang/String;
    .local v29, "n1Regex2":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iput-object v2, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->borderRules:Ljava/util/List;

    .line 282
    return-void
.end method
