.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.source "PhoneNumberRule_DE_DE.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;->init()V

    .line 17
    return-void
.end method


# virtual methods
.method public init()V
    .locals 29

    .line 20
    move-object/from16 v0, p0

    const-string v1, "(?<!\\d)19222|11833|11837|11834(?!\\d)"

    iput-object v1, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;->extraShortPattern:Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v1, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v2, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    invoke-direct {v2}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;-><init>()V

    .line 26
    .local v2, "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    const-string v3, "(?<!\\p{L})(Mar\\.|Jan|Feb|M\u00e4r|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Jan\\.|Feb\\.|M\u00e4rz|Apr\\.|Mai|Juni|Juli|Aug\\.|Sep\\.|Okt\\.|Nov\\.|Dez\\.|M\\?r)\\p{Blank}*(\\.|-|\\p{Blank})?\\p{Blank}*([012]?\\d|3[01])\\p{Blank}*(\\.|-|\\p{Blank})?\\p{Blank}*(1[4-9]\\d{2}|20[01]\\d)(\\p{Blank}*)(([01]?\\d|2[0-4])\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d(\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d))?"

    .line 28
    .local v3, "nRegex_ShortMonthDate1":Ljava/lang/String;
    const-string v4, "([012]?\\d|3[01])(\\.|-|\\p{Blank})*(Mar\\.|Jan|Feb|M\u00e4r|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Jan\\.|Feb\\.|M\u00e4rz|Apr\\.|Mai|Juni|Juli|Aug\\.|Sep\\.|Okt\\.|Nov\\.|Dez\\.)(\\.|-|\\p{Blank})?(1[4-9]\\d{2}|20[01]\\d)(-\\d{2,16})?(\\p{Blank}*)(([01]?\\d|2[0-4])\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d(\\p{Blank}*[.:]\\p{Blank}*[0-5]\\d))?"

    .line 30
    .local v4, "nRegex_ShortMonthDate2":Ljava/lang/String;
    const-string v5, "\\d{0,10}\\p{Blank}{0,2}\\(?\\d{2,10}\\)?\\p{Blank}{0,2}\\d{1,10}[xX*]{1,6}"

    .line 31
    .local v5, "nRegex_addX":Ljava/lang/String;
    const-string v6, "(\\d{1,16}\\p{Blank}{0,2}(\\.)\\p{Blank}{0,2}){1,4}\\d{1,16}"

    .line 33
    .local v6, "nRegex_NumberFormat":Ljava/lang/String;
    const-string v7, "\\d[0-9.,]*\\d\\p{Blank}{0,4}(\u2030|%|\\p{Sc}|FCFA|EUR|XAF|USD|Pfund|EURO?|Dollars?)|(%|\\p{Sc}|FCFA|EUR|XAF|USD|Preis:?|EURO?|Dollars?)\\p{Blank}{0,4}(\\d{1,16}[.,]?){1,4}\\d{1,16}"

    .line 35
    .local v7, "nRegex_Currency":Ljava/lang/String;
    const-string v8, "\\d{2,16}\\p{Blank}{0,2},\\p{Blank}{0,2}-\\p{Blank}{0,2}(FCFA|EUR|XAF|USD|Pfund|EURO?)"

    .line 37
    .local v8, "nRegex_sCurrency":Ljava/lang/String;
    const-string v9, "(?<!\\p{L})((Part\\.\\p{Blank}*No\\.|KdNr|Zufallszahl\\p{Blank}*-?|BLZ|Fehlercode|WKN|BMW|PLZ|Mobicool|Triebwagen|Bild|DIESEL|Pelikan|BIN|mal|Gr\\.|Drucksache|etwa|LEVIS|LEVI\\p{Blank}+S|Bosch|FC|ET|Bj\\.|TPH|Silit|PIRELLI\\p{Blank}+P|Artikelnummer|Ref|DL\\.|BMI|DWSG|Zum\\p{Blank}+Bild|POL\\p{Blank}*-\\p{Blank}*\\p{Alpha}{1,2}|CHE\\p{Blank}*-|K\\.Stand|PZN|Platzwit\\p{Blank}+loc|DB|ID|3ds|Boeing|BOSCH|Porsche|GM|Auftragsnummer|quittungsnummer|gechipt\\p{Blank}+mit\\p{Blank}+der\\p{Blank}+Nummer|Silber|Hot\\p{Blank}+Swap\\p{Blank}+Festplatte\\p{Blank}*-|GAV|RB|in|Kilometerstand|Artikelnummer|ICQ)\\p{Blank}{0,4}:?\\p{Blank}{0,4}|Einladungs\\p{Blank}*-\\p{Blank}*Code\\p{Blank}{0,2}\\p{Alpha}*)\\d{1,16}"

    .line 39
    .local v9, "nRegex_PreNumber":Ljava/lang/String;
    const-string v10, "\\d{1,16}\\p{Blank}*(Monate|Kt|Wo\\.|Terabits|Grad\\p{Blank}+Celsius|Megabits|MB|m\u00b2|Kilokalorien|MW|Quadratzentimeter|Grad\\p{Blank}+Fahrenheit|oz|ha|Tb|Kalorien|Short\\p{Blank}+Tons|Watt|Hertz|pm|gal|Mb|Mon\\.|Kilojoule|Megawatt|hPa|Sekunden|Kelvin|GB|Grad|Hektopascal|Sek\\.|mg|dm|dl|ml|kHz|mm|Bits|Kilobits|Gb|Zentimeter|ms|Volt|Pfund|Kilogramm|Liter|kWh|Gallonen|Unzen|Gramm|Hektar|tn|kW|Stunden|cm\u00b2|Joule|Std\\.|kg|\u03a9|Wochen|Milliampere|kb|Terabytes|Millisekunden|Milligramm|Megabytes|Milliliter|Tage|Gigahertz|sm|Dezimeter|Pikometer|km|Kilobytes|Hz|Ohm|cm|GHz|mA|\u00b0|Millimeter|lb|Yards|Meter|Gigabytes|Kilometer|Kilowatt|Karat|Seemeilen|Kilowattstunden|Tg\\.|cal|MHz|TB|Gigabits|Bytes|\u00b0C|Megahertz|\u00b0F|yd|kcal|Ampere|Quadratmeter|Deziliter|Pints|kJ|Min\\.|pt|Minuten|Kilohertz|Jahre|kB)(?!\\p{L})"

    .line 41
    .local v10, "nRegex_Measure":Ljava/lang/String;
    const-string v11, "\\d{1,16}\\p{Blank}*(TweetsWenn|mal|Einwohner|Pfanne|Ukrainer|Haushalte|Demonstranten|Abonnenten|Menschen|Tweets|Unterschriften|Fl\u00fcchtlinge|Jahre|Fahrzeuge|Punkte|Abos|abos|Klicks|Obdachlosen|posts|Dosen|geschossenen|Einwohner|Trommel|Probleme|Notizb\u00fccher|Gewinne jetzt|BETRAGEN|No\\.|Stunden|mal|St\u00fcck|Bilder|Stunden)(?!\\p{L})"

    .line 43
    .local v11, "nRegex_Amount":Ljava/lang/String;
    const-string v12, "(?<!\\p{L})\\p{L}{1,2}\\p{Blank}*-\\p{Blank}*\\d{4,16}|\\d{4,16}\\p{Blank}*-\\p{Blank}*\\p{L}{1,2}(?!\\p{L})"

    .line 45
    .local v12, "nRegex_oOrtAlpha":Ljava/lang/String;
    const-string v13, "(?<!\\p{L})(Stra\u00dfe|Strasse|dorf|Allee|Rail|Lok|Ferkeltaxi)\\p{Blank}*\\d{1,16}"

    .line 47
    .local v13, "nRegex_StreetOrTraffic":Ljava/lang/String;
    const-string v14, "(?<!\\p{L})(auf|Rund|bis|mit)\\p{Blank}*(\\d{1,16}[-]?){1,4}\\d{1,16}"

    .line 48
    .local v14, "nRegex_Grammar":Ljava/lang/String;
    const-string v15, "(?<!\\p{L})(gelb|schwarz|wei\u00df|rot|gr\u00fcn)(\\d{1,16}[-]?){1,4}\\d{1,16}"

    .line 49
    .local v15, "nRegex_Color":Ljava/lang/String;
    move-object/from16 v16, v15

    const-string v15, "(?<!\\d)([0-2]?\\d|3[01])/(0?\\d|1[0-2])\\p{Blank}*-\\p{Blank}*([0-2]?\\d|3[01])/(0?\\d|1[0-2])(?!\\d)"

    .line 50
    .local v15, "nRegex_sDatePeriod1":Ljava/lang/String;
    .local v16, "nRegex_Color":Ljava/lang/String;
    move-object/from16 v17, v14

    const-string v14, "(?<!\\d)(0?\\d|1[0-2])/(20[01][0-9]|19//d{2})\\p{Blank}*-\\p{Blank}*(0?\\d|1[0-2])/(20[01][0-9]|19//d{2})(?!\\d)"

    .line 52
    .local v14, "nRegex_sDatePeriod2":Ljava/lang/String;
    .local v17, "nRegex_Grammar":Ljava/lang/String;
    move-object/from16 v18, v13

    const-string v13, "(?<![0])(20[01][0-9]|19\\d{2})\\p{Blank}*[-/]\\p{Blank}*(0?\\d|1[0-2])(\\p{Blank}*[-/]\\p{Blank}*([0-2]?\\d|3[01]))?(?!\\d)"

    .line 53
    .local v13, "nRegex_sDatePeriod3":Ljava/lang/String;
    .local v18, "nRegex_StreetOrTraffic":Ljava/lang/String;
    move-object/from16 v19, v11

    new-instance v11, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .end local v11    # "nRegex_Amount":Ljava/lang/String;
    .local v19, "nRegex_Amount":Ljava/lang/String;
    move-object/from16 v20, v10

    const/4 v10, 0x2

    .end local v10    # "nRegex_Measure":Ljava/lang/String;
    .local v20, "nRegex_Measure":Ljava/lang/String;
    invoke-direct {v11, v0, v12, v10}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v11, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v10, "url"

    invoke-virtual {v2, v10}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v0, v10}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "yearperiod"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "date"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "date1"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "date2"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "email"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "time"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v10, v0, v15}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v10, v0, v14}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v10, v0, v13}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/16 v11, 0x42

    invoke-direct {v10, v0, v3, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v10, v0, v4, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v10, v0, v6}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "dateperiod"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/4 v11, 0x2

    invoke-direct {v10, v0, v5, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/16 v11, 0x42

    invoke-direct {v10, v0, v7, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    invoke-direct {v10, v0, v8, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const/4 v11, 0x2

    invoke-direct {v10, v0, v9, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    invoke-direct {v10, v0, v3, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .end local v20    # "nRegex_Measure":Ljava/lang/String;
    .local v3, "nRegex_Measure":Ljava/lang/String;
    .local v21, "nRegex_ShortMonthDate1":Ljava/lang/String;
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v22, v3

    move-object/from16 v3, v19

    invoke-direct {v10, v0, v3, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .end local v19    # "nRegex_Amount":Ljava/lang/String;
    .local v3, "nRegex_Amount":Ljava/lang/String;
    .local v22, "nRegex_Measure":Ljava/lang/String;
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "aite"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    const-string v11, "exp"

    invoke-virtual {v2, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v23, v2

    move-object/from16 v11, v18

    const/16 v2, 0x42

    invoke-direct {v10, v0, v11, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .end local v2    # "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    .end local v18    # "nRegex_StreetOrTraffic":Ljava/lang/String;
    .local v11, "nRegex_StreetOrTraffic":Ljava/lang/String;
    .local v23, "utils":Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v10, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v24, v3

    move-object/from16 v2, v17

    const/4 v3, 0x2

    invoke-direct {v10, v0, v2, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .end local v3    # "nRegex_Amount":Ljava/lang/String;
    .end local v17    # "nRegex_Grammar":Ljava/lang/String;
    .local v2, "nRegex_Grammar":Ljava/lang/String;
    .local v24, "nRegex_Amount":Ljava/lang/String;
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    move-object/from16 v25, v2

    move-object/from16 v10, v16

    const/16 v2, 0x42

    invoke-direct {v3, v0, v10, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    .end local v2    # "nRegex_Grammar":Ljava/lang/String;
    .end local v16    # "nRegex_Color":Ljava/lang/String;
    .local v10, "nRegex_Color":Ljava/lang/String;
    .local v25, "nRegex_Grammar":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iput-object v1, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;->negativeRules:Ljava/util/List;

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "bRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 90
    move-object/from16 v26, v1

    const-string v1, "(0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,})"

    .line 91
    .end local v1    # "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    .local v26, "nRules":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;>;"
    move-object/from16 v27, v4

    const/16 v4, 0x9

    .end local v4    # "nRegex_ShortMonthDate2":Ljava/lang/String;
    .local v27, "nRegex_ShortMonthDate2":Ljava/lang/String;
    move-object/from16 v28, v5

    const/4 v5, 0x2

    invoke-direct {v3, v0, v1, v5, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 89
    .end local v5    # "nRegex_addX":Ljava/lang/String;
    .local v28, "nRegex_addX":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 94
    const-string v3, "[\\(\\[]?(\\d{1,2}\\p{Blank}*[-.]?\\p{Blank}*\\d{1,2}|\\d{2,4})"

    .line 95
    invoke-direct {v1, v0, v3, v5, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 93
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;

    .line 97
    const-string v3, "[\\(\\[]?\\d{2}\\p{Blank}{0,2}[-.]\\p{Blank}{0,2}\\d{2}\\p{Blank}{0,2}[-.]\\p{Blank}{0,2}\\d{2}"

    .line 98
    invoke-direct {v1, v0, v3, v5, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V

    .line 96
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iput-object v2, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;->borderRules:Ljava/util/List;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;->codesRules:Ljava/util/List;

    .line 101
    iget-object v1, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;->codesRules:Ljava/util/List;

    new-instance v3, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE$1;

    const-string v4, ""

    invoke-direct {v3, v0, v0, v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE$1;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE$2;

    const-string v3, ""

    invoke-direct {v1, v0, v0, v3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE$2;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    .line 224
    .local v1, "r":Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
    iget-object v3, v0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_DE_DE;->codesRules:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method
