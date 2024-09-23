.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.source "PhoneNumberRule_EN_GB.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->init()V

    .line 17
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)I
    .locals 0

    .line 266
    invoke-static {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->countDigits(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;Ljava/util/regex/Pattern;Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->handlePossibleNumberWithPattern(Ljava/util/regex/Pattern;Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static countDigits(Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 269
    .local v1, "ch":[C
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 274
    return v0

    .line 269
    :cond_0
    aget-char v4, v1, v3

    .line 270
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 271
    add-int/lit8 v0, v0, 0x1

    .line 269
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private handlePossibleNumberWithPattern(Ljava/util/regex/Pattern;Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "startsWith"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "possible":Ljava/lang/String;
    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 247
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    const/4 v2, 0x0

    return-object v2

    .line 248
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 249
    .local v2, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 250
    .local v3, "end":I
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "matched":Ljava/lang/String;
    if-eqz p4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 252
    .local v5, "ok":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 253
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    new-instance v7, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v7}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 255
    .local v7, "info":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    if-eqz p4, :cond_3

    move v8, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v3, v8

    :goto_1
    invoke-virtual {v7, v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 256
    if-eqz p4, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    :cond_4
    move v8, v3

    :goto_2
    invoke-virtual {v7, v8}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 257
    invoke-virtual {v7, v0}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 258
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-object v6
.end method


# virtual methods
.method public init()V
    .locals 10

    .line 21
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;-><init>()V

    .line 22
    .local v0, "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    nop

    .line 36
    const-string v1, "\\p{Sc}\\d+[.]?\\d+"

    .line 38
    const-string v2, "4x\\d0+"

    .line 40
    const-string v3, "&amp;#\\d{2,5}"

    .line 44
    const-string v4, "\\d+((th)|%)"

    .line 46
    const-string v5, "(?<!(call))[iI]n \\d{4}"

    .line 48
    const-string v6, "([fF]rom|[uU]ntil) \\d{4}"

    .line 50
    const-string v7, "\\d{4,}[+]"

    .line 22
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "nRegex":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    .line 58
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "float_2"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "aite"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "date"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "date1"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "date2"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "dateperiod"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "yearperiod"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "email"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "exp"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "time"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "\\d[0-9\\p{Blank}.,-]*\\d\\p{Blank}{0,4}(kilobytes|kilowatt-hours|megabytes|kilojoules|square\\p{Blank}+centimetres|gal\\p{Blank}+US|kilohertz|byte|calories|milliamperes|MB|m\u00b2|MW|hours|gigahertz|kilograms|pints|oz|ha|bit|Tb|pm|years|Mb|bytes|A|hPa|pounds|GB|carats|degrees\\p{Blank}+Celsius|J|K|picometres|W|V|secs|deg|mg|dm|dl|decimetres|hectopascals|wks|megawatts|ml|centimetres|kHz|joules|ounces|g|decilitres|mm|Gb|ms|l|mins|m|nmi|millimetres|weeks|yards|kWh|days|seconds|grams|volts|tn|nautical\\p{Blank}+miles|kilocalories|kW|Calories|yrs|US\\p{Blank}+gallons|cm\u00b2|degrees\\p{Blank}+Fahrenheit|kg|\u03a9|amperes|kilometres|kb|milliseconds|tons|kilowatts|gigabytes|hertz|megahertz|mths|watts|kilobits|litres|km|Hz|cm|GHz|gigabits|mA|\u00b0|lb|millilitres|Cal|metres|ohms|hectares|milligrams|hrs|kelvin|bits|cal|MHz|TB|megabits|\u00b0C|square\\p{Blank}+metres|minutes|\u00b0F|yd|terabits|kcal|degrees|months|kJ|CD|pt|terabytes|kB)(?!\\p{L})"

    const/4 v5, 0x2

    invoke-direct {v3, p0, v4, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "(?<!\\p{L})(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December)\\p{Blank}*(-|\\p{Blank})?\\p{Blank}*([012]?\\d|3[01])\\p{Blank}*(-|\\p{Blank})?\\p{Blank}*(1[4-9]\\d{2}|20[01][0-9])(\\p{Blank}*)(([01]?\\d|2[0-4])\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d(\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d)?)?"

    invoke-direct {v3, p0, v4, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, "bRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 83
    const-string v4, "(0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,})"

    const/16 v6, 0x9

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 82
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "[\\(\\[]?1\\d(0\\d|1[012])([012]\\d|3[01])"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v4, "[1-9]0{3,10}"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iput-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->borderRules:Ljava/util/List;

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v3, "cRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v4, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$1;

    const-string v6, ""

    invoke-direct {v4, p0, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$1;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iput-object v3, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->codesRules:Ljava/util/List;

    .line 123
    new-instance v4, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$2;

    const-string v6, ""

    invoke-direct {v4, p0, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$2;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .line 214
    .local v4, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    iget-object v6, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->codesRules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->positiveRules:Ljava/util/List;

    .line 218
    const-string v6, "\\d{5,}+\\s*+[(]?mob"

    .line 219
    .local v6, "pRegex1":Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->positiveRules:Ljava/util/List;

    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$3;

    invoke-direct {v8, p0, p0, v6, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$3;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v7, "([mM]ob(ile)?|[cC]all|landline|fixedline)[:]?\\s*+\\d{5,}+"

    .line 227
    .local v7, "pRegex2":Ljava/lang/String;
    iget-object v8, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->positiveRules:Ljava/util/List;

    new-instance v9, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$4;

    invoke-direct {v9, p0, p0, v7, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$4;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void

    .line 58
    .end local v2    # "bRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    .end local v3    # "cRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    .end local v4    # "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    .end local v6    # "pRegex1":Ljava/lang/String;
    .end local v7    # "pRegex2":Ljava/lang/String;
    :cond_0
    aget-object v4, v1, v3

    .line 59
    .local v4, "regex":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->negativeRules:Ljava/util/List;

    new-instance v6, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v6, p0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v4    # "regex":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
