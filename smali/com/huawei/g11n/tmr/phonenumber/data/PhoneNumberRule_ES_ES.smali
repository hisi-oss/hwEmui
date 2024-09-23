.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.source "PhoneNumberRule_ES_ES.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;->init()V

    .line 15
    return-void
.end method


# virtual methods
.method public init()V
    .locals 12

    .line 22
    const-string v0, "minutos|segundos|kilobytes|megavatios|megabytes|kilojulios|toneladas|kil\u00f3metros|MB|m\u00b2|decilitros|hectopascales|MW|mililitros|oz|ha|Tb|pm|gal|Mb|grados|amperios|bytes|A|B|hPa|kilohercios|GB|M|J|K|pic\u00f3metros|W|V|millas\\p{Blank}+n\u00e1uticas|voltios|mg|dm|dl|ml|kHz|min|sem\\.|g|mm|d|b|miliamperios|c|onzas|Gb|cent\u00edmetros|gramos|ms|a|l|m\\.|m|kilogramos|hect\u00e1reas|h|kilovatios|kWh|s|quilates|semanas|grados\\p{Blank}+Fahrenheit|megahercios|kW|ohmios|horas|kilovatios-hora|cm\u00b2|galones|cent\u00edmetros\\p{Blank}+cuadrados|miligramos|libras|meses|kg|\u03a9|kb|d\u00edas|julios|gigabytes|pintas|kilobits|km|mil\u00edmetros|Hz|cm|vatios|GHz|gigahercios|gigabits|mA|\u00b0|lb|yardas|calor\u00edas|metros|litros|dec\u00edmetros|kelvin|bits|ton|cal|MHz|TB|megabits|kilocalor\u00edas|\u00b0C|metros\\p{Blank}+cuadrados|grados\\p{Blank}+Celsius|\u00b0F|yd|milisegundos|terabits|kcal|a\u00f1os|kJ|pt|terabytes|kB|hercios"

    .line 26
    .local v0, "danwei":Ljava/lang/String;
    const-string v1, "tweet|millones|mil"

    .line 28
    .local v1, "shuffix":Ljava/lang/String;
    const-string v2, "ene\\.|feb\\.|mar\\.|abr\\.|may\\.|jun\\.|jul\\.|ago\\.|sept\\.|oct\\.|nov\\.|dic\\.|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre"

    .line 30
    .local v2, "month":Ljava/lang/String;
    const-string v3, "FCFA|XAF|USD|Pfund|Won|EURO?S?|de\\p{Blank}+francs|(de\\p{Blank}+)?dollars|d\'EUROS"

    .line 34
    .local v3, "money":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v4, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v5, "bRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v6, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[0-9.,]+(?<![.,])\\p{Blank}*(\u2030|%|\\p{Sc}|"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v8, "(?!\\p{L}))|(\\p{Sc}|(?<!\\p{L})("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v8, "))\\p{Blank}*[0-9.,]+(?<![.,])"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x42

    invoke-direct {v6, p0, v7, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 38
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v6, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 44
    const-string v7, "(?<![\\p{L}])(ci|ref|plus(\\p{Blank}+de)?|i\\.?d|sn|tweets?|twitter|icq|qq)[\\p{Blank}:]*[0-9]{4,16}"

    .line 45
    invoke-direct {v6, p0, v7, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 43
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v6, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "[0-9.,]{4,16}(?<![.,])\\p{Blank}*("

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")(?![\\p{L}0-9])"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 47
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "([012]?\\d|3[01])(.|-|\\p{Blank}){0,2}("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v7, ")(.|-|\\p{Blank}){0,2}(1[4-9]\\d{2}|20[01]\\d)(\\p{Blank}{0,2})(([01]?\\d|2[0-4])\\p{Blank}{0,2}[.:]\\p{Blank}{0,2}[0-5]\\d(\\p{Blank}{0,2}[.:]\\p{Blank}{0,2}[0-5]\\d))?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "nRegex_ShortMonthDate2":Ljava/lang/String;
    new-instance v7, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    invoke-direct {v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;-><init>()V

    .line 58
    .local v7, "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "aite"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "url"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "date"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "date1"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "date2"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "dateperiod"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "exp"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "float_1"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "email"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v8, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "time"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iput-object v4, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;->negativeRules:Ljava/util/List;

    .line 71
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v9, "samenum"

    invoke-virtual {v7, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    const/4 v10, 0x2

    const/16 v11, 0x9

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 71
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iput-object v5, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;->borderRules:Ljava/util/List;

    .line 76
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;->codesRules:Ljava/util/List;

    .line 100
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES$1;

    const-string v9, ""

    invoke-direct {v8, p0, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES$1;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .line 194
    .local v8, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    iget-object v9, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ES_ES;->codesRules:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method
