.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.source "PhoneNumberRule_PT_PT.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;->init()V

    .line 17
    return-void
.end method


# virtual methods
.method public init()V
    .locals 14

    .line 19
    const-string v0, "(?<!\\d)1414(?!\\d)"

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;->extraShortPattern:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v0, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    const-string v1, "jan|fev|mar|abr|mai|jun|jul|ago|set|out|nov|dez|janeiro|fevereiro|mar\u00e7o|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro"

    .line 24
    .local v1, "month":Ljava/lang/String;
    const-string v2, "FCFA|XAF|USD|Pfund|Won|euro|eur|Dollars?"

    .line 25
    .local v2, "money":Ljava/lang/String;
    const-string v3, "minutos|segundos|kilobytes|megabytes|toneladas|dias|kilohertz|byte|metros\\p{Blank}+quadrados|quil\u00f3metros|MB|decilitros|m\u00b2|MW|mililitros|gigahertz|pints|oz|ha|bit|hectopascais|Tb|pm|gal|Mb|milissegundos|bytes|quilocalorias|A|hPa|GB|jardas|J|K|pic\u00f3metros|W|V|quilojoules|kelvins|mg|dm|dl|megawatts|ml|kHz|joules|min|quilogramas|g|sem\\.|mm|graus|miliamperes|miligramas|Gb|cent\u00edmetros|ms|l|milhas\\p{Blank}+n\u00e1uticas|m|nmi|h|kWh|s|quilates|semanas|volts|kW|horas|cm\u00b2|calorias|libras|meses|anos|kg|\u03a9|quilowatts|amperes|kb|quilowatts-hora|gigabytes|hertz|megahertz|watts|kilobits|on\u00e7as|ct|km|mil\u00edmetros|Hz|cm|GHz|gigabits|mA|graus\\p{Blank}+Celsius|\u00b0|cent\u00edmetros\\p{Blank}+quadrados|lb|metros|ohms|litros|hectares|dec\u00edmetros|bits|ton|cal|MHz|TB|megabits|\u00b0C|\u00b0F|yd|terabits|kcal|gal\u00f5es|kJ|pt|gramas|terabytes|graus\\p{Blank}+Fahrenheit|kB"

    .line 28
    .local v3, "danwei":Ljava/lang/String;
    new-instance v4, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    invoke-direct {v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;-><init>()V

    .line 29
    .local v4, "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "aite"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "url"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "date"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "date1"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "date2"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "dateperiod"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "exp"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "float_1"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "yearperiod"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "email"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "time"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "([012]?\\d|3[01])(.|-|\\p{Blank}){0,2}("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")(.|-|\\p{Blank}){0,2}(1[4-9]\\d{2}|20[01]\\d)(\\p{Blank}{0,2})(([01]?\\d|2[0-4])\\p{Blank}{0,2}[.:]\\p{Blank}{0,2}[0-5]\\d(\\p{Blank}{0,2}[.:]\\p{Blank}{0,2}[0-5]\\d))?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "nRegex_ShortMonthDate2":Ljava/lang/String;
    new-instance v6, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[0-9.,]+(?<![.,])\\p{Blank}*(\u2030|%|\\p{Sc}|"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(?!\\p{L}))|(\\p{Sc}|(?<!\\p{L})("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "))\\p{Blank}*[0-9.,]+(?<![.,])"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 44
    const/16 v8, 0x42

    invoke-direct {v6, p0, v7, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 43
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\\d{2,16}\\p{Blank}{0,2},\\p{Blank}{0,2}-\\p{Blank}{0,2}("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "nRegex_sCurrency":Ljava/lang/String;
    new-instance v7, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v7, p0, v6, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\\d[0-9\\p{Blank}.,-]*\\d\\p{Blank}{0,4}("

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")(?![\\p{L}0-9])"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "nRegex_Measure":Ljava/lang/String;
    const-string v9, "\\d[0-9\\p{Blank}.,-]*\\d\\p{Blank}{0,4}(vezes|(de\\p{Blank}+)?tweets?|twittar|rts|temporada|contas|capitulos|p\u00e1ginas|no\\p{Blank}+total\\p{Blank}+em\\p{Blank}+dinheiro|milhoes|mil)(?!\\p{L})"

    .line 59
    .local v9, "nRegex_Amount":Ljava/lang/String;
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 60
    const-string v11, "(?<![\\p{L}])((ref|id|num|qq|ICQ|tweets?|twitter|(decreto|consulta)\\p{Blank}+n\u00ba|S\u00e9rie|nif|FM|contas)\\p{Blank}*:?)\\p{Blank}*[0-9]{4,16}"

    .line 61
    invoke-direct {v10, p0, v11, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 59
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/4 v10, 0x2

    invoke-direct {v8, p0, v5, v10}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v8, p0, v7, v10}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v8, p0, v9, v10}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;->negativeRules:Ljava/util/List;

    .line 70
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v8, "bRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v11, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v12, "samenum"

    invoke-virtual {v4, v12}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x9

    invoke-direct {v11, p0, v12, v10, v13}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iput-object v8, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;->borderRules:Ljava/util/List;

    .line 76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;->codesRules:Ljava/util/List;

    .line 78
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT$1;

    const-string v11, ""

    invoke-direct {v10, p0, p0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT$1;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .line 170
    .local v10, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    iget-object v11, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;->codesRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method
