.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.source "PhoneNumberRule_FR_FR.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;->init()V

    .line 15
    return-void
.end method


# virtual methods
.method public init()V
    .locals 11

    .line 18
    const-string v0, "FCFA|XAF|USD|Pfund|Won|EURO?S?|de\\p{Blank}+francs|(de\\p{Blank}+)?dollars|d\'EUROS"

    .line 20
    .local v0, "money":Ljava/lang/String;
    const-string v1, "gallons|degr\u00e9s\\p{Blank}+Celsius|pintes|kilojoules|kilohertz|calories|tonnes\\p{Blank}+courtes|m\u00b2|MW|gigaoctets|millisecondes|To|gigahertz|m\u00e9gaoctets|oz|ha|secondes|bit|octets|Tb|centim\u00e8tres\\p{Blank}+carr\u00e9s|d\u00e9cilitres|pm|gal|Mb|kilogrammes|A|hPa|onces|degr\u00e9s|carats|Mo|J|K|degr\u00e9s\\p{Blank}+Fahrenheit|m\u00e8tres|W|V|m\u00e9gabits|kelvins|mg|dm|dl|hectopascals|t\u00e9rabits|ml|kHz|t\u00e9raoctets|joules|min|sem\\.|g|mm|Gb|ms|kilooctets|l|m|j|nmi|h|yards|kWh|s|millim\u00e8tres|octet|volts|kilocalories|kW|kilom\u00e8tres|cm\u00b2|Go|grammes|d\u00e9cim\u00e8tres|kg|\u03a9|kb|mois|ans|kilowatts|sh\\p{Blank}+tn|hertz|kilowattheures|watts|ko|kilobits|litres|jours|ct|km|pte|amp\u00e8res|milligrammes|Hz|cm|GHz|gigabits|mA|\u00b0|lb|milliamp\u00e8res|m\u00e8tres\\p{Blank}+carr\u00e9s|millilitres|picom\u00e8tres|ohms|hectares|centim\u00e8tres|heures|bits|milles\\p{Blank}+marins|semaines|cal|MHz|\u00b0C|minutes|\u00b0F|yd|kcal|m\u00e9gahertz|kJ|m\u00e9gawatts|livres"

    .line 22
    .local v1, "danwei":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v2, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v3, "bRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v4, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    invoke-direct {v4}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;-><init>()V

    .line 27
    .local v4, "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "aite"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "url"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "date"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "date1"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "date2"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "dateperiod"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "exp"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "float_1"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "email"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v6, "time"

    invoke-virtual {v4, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[0-9.,]+(?<![.,])\\p{Blank}*(\u2030|%|\\p{Sc}|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v7, "(?!\\p{L}))|(\\p{Sc}|(?<!\\p{L})("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v7, "))\\p{Blank}*[0-9.,]+(?<![.,])"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x42

    invoke-direct {v5, p0, v6, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 38
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 44
    const-string v6, "(?<![\\p{L}])(plus(\\p{Blank}+de)?|faire|n\u00b0(\\p{Blank}+d\'entreprise)|fais|(ref|id|num|qq|ICQ|tweets?|twitter)[\\p{Blank}:]*|du|prime|d\u00e9pass\u00e9\\p{Blank}les|yen|tapes)\\p{Blank}*[0-9\\p{P}]{4,16}"

    .line 45
    invoke-direct {v5, p0, v6, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 43
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "[0-9.,]{4,16}\\p{Blank}*(((de|i?[\u00e8e]me)\\p{Blank}+)?fois|"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")(?![\\p{L}0-9])"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-direct {v5, p0, v6, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 47
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v5, "yearperiod"

    invoke-virtual {v4, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "nRegex_YearPeriod":Ljava/lang/String;
    const-string v6, "([012]?\\d|3[01])(-|\\p{Blank}){0,2}(janv\\.|f\u00e9vr\\.|mars|avr\\.|mai|juin|juil\\.|ao\u00fbt|sept\\.|oct\\.|nov\\.|d\u00e9c\\.|janvier|f\u00e9vrier|mars|avril|mai|juin|juillet|ao\u00fbt|septembre|octobre|novembre|d\u00e9cembre)(-|\\p{Blank}){0,2}(1[4-9]\\d{2}|20[01]\\d)\\p{Blank}{0,2}(([01]?\\d|2[0-4])\\p{Blank}{0,2}[.:]\\p{Blank}{0,2}[0-5]\\d(\\p{Blank}{0,2}[.:]\\p{Blank}{0,2}[0-5]\\d))?"

    .line 57
    .local v6, "nRegex_ShortMonthDate2":Ljava/lang/String;
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v8, p0, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v8, p0, v6, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iput-object v2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;->negativeRules:Ljava/util/List;

    .line 62
    new-instance v7, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v8, "samenum"

    invoke-virtual {v4, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    const/4 v9, 0x2

    const/16 v10, 0x9

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 62
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iput-object v3, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;->borderRules:Ljava/util/List;

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;->codesRules:Ljava/util/List;

    .line 68
    iget-object v7, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;->codesRules:Ljava/util/List;

    new-instance v8, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR$1;

    const-string v9, ""

    invoke-direct {v8, p0, p0, v9}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR$1;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v7, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR$2;

    const-string v8, ""

    invoke-direct {v7, p0, p0, v8}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR$2;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .line 178
    .local v7, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    iget-object v8, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;->codesRules:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method
