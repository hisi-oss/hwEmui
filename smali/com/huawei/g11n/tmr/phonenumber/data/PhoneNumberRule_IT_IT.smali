.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.source "PhoneNumberRule_IT_IT.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;->init()V

    .line 14
    return-void
.end method


# virtual methods
.method public init()V
    .locals 25

    .line 17
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v1, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    invoke-direct {v2}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;-><init>()V

    .line 22
    .local v2, "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    const-string v3, "(?<!\\p{L})(gen|feb|mar|apr|mag|giu|lug|ago|set|ott|nov|dic)\\p{Blank}*(\\.|-|\\p{Blank})?\\p{Blank}*([012]?\\d|3[01])\\p{Blank}*(\\.|-|\\p{Blank})?\\p{Blank}*(1[4-9]\\d{2}|20[01][0-9])(\\p{Blank}*)(([01]?\\d|2[0-4])\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d(\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d)?)?"

    .line 23
    .local v3, "nRegex_ShortMonthDate1":Ljava/lang/String;
    const-string v4, "([012]?\\d|3[01])\\p{Blank}*(\\.|-|\\p{Blank})?\\p{Blank}*(gen|feb|mar|apr|mag|giu|lug|ago|set|ott|nov|dic)\\p{Blank}*(\\.|-|\\p{Blank})?\\p{Blank}*(1[4-9]\\d{2}|20[01][0-9])(\\p{Blank}*)(([01]?\\d|2[0-4])\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d(\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d)?)?"

    .line 26
    .local v4, "nRegex_ShortMonthDate2":Ljava/lang/String;
    const-string v5, "\\d{0,10}\\p{Blank}{0,2}\\(?\\d{2,10}\\)?\\p{Blank}{0,2}\\d{1,10}[xX*]{1,10}"

    .line 29
    .local v5, "nRegex_addX":Ljava/lang/String;
    const-string v6, "\\d[0-9.,]*\\d\\p{Blank}{0,4}(\u2030|%|\\p{Sc}|FCFA|EUR|XAF|USD|Pfund|Euro?)|(%|\\p{Sc}|FCFA|EUR|XAF|USD|Prezzo:?|Euro?)\\p{Blank}{0,4}(\\d{1,16}[.,]?){1,4}\\d{1,16}"

    .line 31
    .local v6, "nRegex_Currency":Ljava/lang/String;
    const-string v7, "\\d{2,16}\\p{Blank}{0,2},\\p{Blank}{0,2}-\\p{Blank}{0,2}(FCFA|EUR|XAF|USD|Pfund|EURO?|eur)"

    .line 33
    .local v7, "nRegex_sCurrency":Ljava/lang/String;
    const-string v8, "(?<!\\p{L})(almeno|riduzione|A\\p{Blank}+proposito\\p{Blank}+di|alle|Nuovi|da|Pi\u00f9\\p{Blank}+di|altro|oltre|meno|fino\\p{Blank}+a|aumentati\\p{Blank}+a|minimo|Siamo\\p{Blank}+arrivati\\p{Blank}+a|P\\.IVA|Riferimento\\p{Blank}+offerta|intercity|Weibo|episodi|moltiplicati per|Prezzo|N\u00b0)\\p{Blank}{0,4}[:-]?\\p{Blank}{0,4}(\\d{1,16}[-]?){1,4}\\d{1,16}"

    .line 35
    .local v8, "nRegex_PreNumber":Ljava/lang/String;
    const-string v9, "\\d[0-9-]*\\d\\p{Blank}*(punti|di|blocco|donne|Utenza|foto|intercity|Weibo|volte|volta|esimo|pensioni|figli|cani|Offerte|capelli|accounts|ragazzi|messaggi|amici|cose|tweet|tweets|pagine|contribuenti|notifiche|ragazze|medaglie|esima|screenshot|robe|eseguito|moltiplicati\\p{Blank}+per|bambini|anni|ore|minuti|secondi|-\\p{Blank}*Twitter|giorni)(?!\\p{L})"

    .line 37
    .local v9, "nRegex_SufNumber":Ljava/lang/String;
    const-string v10, "\\d[0-9\\p{Blank}.,-]*\\d\\p{Blank}{0,4}(litri|chilogrammi|chilometri|galloni|kilohertz|byte|ettari|MB|m\u00b2|MW|once|kilobit|gigahertz|millimetri|grammi|oz|ohm|ha|millilitri|bit|Tb|ettopascal|kilojoule|pm|gal|Mb|pinte|miglia\\p{Blank}+nautiche|carati|hPa|Kelvin|GB|ore|megawatt|kilobyte|gradi|mg|dm|dl|ml|kHz|min|mm|Gb|ms|nmi|gigabit|kWh|secondi|megabit|tn|kW|kilowatt|decilitri|chilowattora|millisecondi|gradi\\p{Blank}+Fahrenheit|giorni|watt|decimetri|cm\u00b2|calorie|tonnellate|libbre|kg|terabit|\u03a9|kb|mesi|megabyte|hertz|centimetri\\p{Blank}+quadrati|kt|megahertz|gradi\\p{Blank}+Celsius|km|chilocalorie|centimetri|iarde|metri\\p{Blank}+quadrati|Hz|cm|terabyte|GHz|mA|\u00b0|lb|settimane|picometri|volt|gigabyte|joule|Cal|cal|MHz|minuti|TB|\u00b0C|\u00b0F|milligrammi|yd|kcal|metri|anni|milliampere|kJ|ampere|pt|kB)(?!\\p{L})"

    .line 39
    .local v10, "nRegex_Measure":Ljava/lang/String;
    const-string v11, "(?<!\\p{L})(ICQ|Codice|(Codice\\p{Blank}*\\p{Alpha}{0,2}\\d{0,3})|Rif\\.|art\\.|numero\\p{Blank}+cliente|Id\\p{Blank}+FASTWEB|cod|Pin|id|codice\\p{Blank}+fiscale|Rolex\\p{Blank}+Datejust|pt\\.|ISBN|legge\\p{Blank}+numero)\\p{Blank}*:?\\p{Blank}*(\\d{1,16}[.,]){0,4}\\d{1,16}"

    .line 41
    .local v11, "nRegex_Number":Ljava/lang/String;
    const-string v12, "(?<!\\p{L})\\p{L}{1,2}-(\\d{1,16}[-]?){0,4}\\d{1,16}|(\\d{1,16}[-]?){0,4}\\d{1,16}-\\p{L}{1,2}(?!\\p{L})"

    .line 42
    .local v12, "nRegex_oOrtAlpha":Ljava/lang/String;
    const-string v13, "(?<!\\p{L})uuid\\p{Blank}*:?\\p{Blank}*[\\p{Alpha}\\d-]+"

    .line 43
    .local v13, "nRegex_UUID":Ljava/lang/String;
    const-string v14, "(?<!\\d)([0-2]?\\d|3[01])/(0?\\d|1[0-2])\\p{Blank}*-\\p{Blank}*([0-2]?\\d|3[01])/(0?\\d|1[0-2])(?!\\d)"

    .line 44
    .local v14, "nRegex_sDatePeriod1":Ljava/lang/String;
    const-string v15, "(?<!\\d)(0?\\d|1[0-2])/(20[01][0-9]|19\\d{2})\\p{Blank}*-\\p{Blank}*(0?\\d|1[0-2])/(20[01][0-9]|19//d{2})(?!\\d)"

    .line 45
    .local v15, "nRegex_sDatePeriod2":Ljava/lang/String;
    move-object/from16 v16, v13

    const-string v13, "(?<!(\\d|[-\\p{Blank}]\\d))([0-2]?\\d|3[01])[\\p{Blank}-]+(0?\\d|1[0-2])[\\p{Blank}-]+201\\d(?!(\\d|[-\\p{Blank}]\\d))"

    .line 46
    .local v13, "nRegex_sDatePeriod3":Ljava/lang/String;
    .local v16, "nRegex_UUID":Ljava/lang/String;
    move-object/from16 v17, v7

    new-instance v7, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .end local v7    # "nRegex_sCurrency":Ljava/lang/String;
    .local v17, "nRegex_sCurrency":Ljava/lang/String;
    move-object/from16 v18, v5

    const/4 v5, 0x2

    .end local v5    # "nRegex_addX":Ljava/lang/String;
    .local v18, "nRegex_addX":Ljava/lang/String;
    invoke-direct {v7, v0, v12, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v7, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v5, "url"

    invoke-virtual {v2, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v0, v5}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "yearperiod"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "date"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "date1"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "date2"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "email"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "time"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "dateperiod"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v5, v0, v14}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v5, v0, v15}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v5, v0, v13}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 60
    const/4 v7, 0x2

    invoke-direct {v5, v0, v3, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 59
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 62
    invoke-direct {v5, v0, v4, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .line 61
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "float_1"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/4 v7, 0x2

    invoke-direct {v5, v0, v6, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/16 v7, 0x42

    invoke-direct {v5, v0, v8, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/4 v7, 0x2

    invoke-direct {v5, v0, v10, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v5, v0, v9, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "aite"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v7, "exp"

    invoke-virtual {v2, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/4 v7, 0x2

    invoke-direct {v5, v0, v11, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    invoke-direct {v5, v0, v3, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .end local v18    # "nRegex_addX":Ljava/lang/String;
    .local v3, "nRegex_addX":Ljava/lang/String;
    .local v19, "nRegex_ShortMonthDate1":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    invoke-direct {v5, v0, v3, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .end local v17    # "nRegex_sCurrency":Ljava/lang/String;
    .local v3, "nRegex_sCurrency":Ljava/lang/String;
    .local v20, "nRegex_addX":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v5, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v21, v3

    move-object/from16 v3, v16

    invoke-direct {v5, v0, v3, v7}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .end local v16    # "nRegex_UUID":Ljava/lang/String;
    .local v3, "nRegex_UUID":Ljava/lang/String;
    .local v21, "nRegex_sCurrency":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iput-object v1, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;->negativeRules:Ljava/util/List;

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v5, "bRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v7, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v22, v1

    const-string v1, "samenum"

    .end local v1    # "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    .local v22, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    invoke-virtual {v2, v1}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    move-object/from16 v23, v2

    const/16 v2, 0x9

    .end local v2    # "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    .local v23, "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    move-object/from16 v24, v3

    const/4 v3, 0x2

    invoke-direct {v7, v0, v1, v3, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 81
    .end local v3    # "nRegex_UUID":Ljava/lang/String;
    .local v24, "nRegex_UUID":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 85
    const-string v7, "[\\(\\[]?(\\d{1,2}\\p{Blank}*-?\\p{Blank}*\\d{1,2}|\\d{2,5}|[1-9]{13,})"

    .line 86
    invoke-direct {v1, v0, v7, v3, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 84
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 88
    const-string v7, "[\\(\\[]?\\d{2}\\p{Blank}{0,2}[-.]\\p{Blank}{0,2}\\d{2}\\p{Blank}{0,2}[-.]\\p{Blank}{0,2}\\d{2}"

    .line 89
    invoke-direct {v1, v0, v7, v3, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 87
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iput-object v5, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;->borderRules:Ljava/util/List;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;->codesRules:Ljava/util/List;

    .line 94
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT$1;

    const-string v2, ""

    invoke-direct {v1, v0, v0, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT$1;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .line 188
    .local v1, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    iget-object v2, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_IT_IT;->codesRules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method
