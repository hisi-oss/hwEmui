.class public Lcom/huawei/g11n/tmr/address/de/ReguExp;
.super Lcom/huawei/g11n/tmr/util/Regexs;
.source "ReguExp.java"


# static fields
.field private static ED:Ljava/lang/String;

.field private static ED_Independ:Ljava/lang/String;

.field private static ST:Ljava/lang/String;

.field private static _city:Ljava/lang/String;

.field private static blackkey:Ljava/lang/String;

.field private static blackkey_indi:Ljava/lang/String;

.field private static blackkey_noSingal:Ljava/lang/String;

.field private static blackkey_unindi:Ljava/lang/String;

.field private static citykey0:Ljava/lang/String;

.field private static citykey1:Ljava/lang/String;

.field private static countrykey:Ljava/lang/String;

.field private static keyBui:Ljava/lang/String;

.field private static keyBui_independ:Ljava/lang/String;

.field private static keyCity:Ljava/lang/String;

.field private static keyPre:Ljava/lang/String;

.field private static keyStr:Ljava/lang/String;

.field private static regPrep:Ljava/lang/String;

.field private static statekey0:Ljava/lang/String;

.field private static tokenkey:Ljava/lang/String;

.field private static whitekey:Ljava/lang/String;

.field private static wordBig:Ljava/lang/String;

.field private static wordsBig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    const-string v0, "\\b((?i)einen|kleinen|wurde|diese|gibt|viele|dieses|dass|meine|Ihre|diejenigen|unsere|seine|sie|Bezug|aufs|N\u00e4he|eine|gerne|Zimmer|Einbahnstra\u00dfe|Passstra\u00dfen|Jedes|Jene|Welche|Manche|Neue|Alte|Beide|N\u00e4chste|den)\\b"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey:Ljava/lang/String;

    .line 13
    const-string v0, "(?:(?i)einen|kleinen|diese|viele|dieses|dass|Ihre|diejenigen|unsere|seine|sie|aufs|N\u00e4he|eine|Jedes|Jene|Welche|Manche|Neue|Alte|Beide|N\u00e4chste|den)\\b"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey_indi:Ljava/lang/String;

    .line 16
    const-string v0, "(?:(?i)Einbahn|Pass|Schnell)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey_unindi:Ljava/lang/String;

    .line 19
    const-string v0, "(?:(?i)platz|bahnhof|Schule|Kirche|Messe)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey_noSingal:Ljava/lang/String;

    .line 21
    const-string v0, "(?:(?i)Brandenburger\\s+Tor|Gezi\\s*-\\s*Park|Gezi\\s+Park|Otto\\s*-\\s*Beck\\s*-\\s*Stra\u00dfe|Tel\\s+Aviv\\s+Museum|Red\\s+Roof\\s+Inn|Elbe\\s*-\\s*Einkaufszentrum|Toon\\s+Arena|Ausm\\s+zoo|Ruhr\\s*-\\s*Universit\u00e4t|Landkreis\\s*Rottal-\\s*Inn|Istanbul\\s+Holiday\\s+Inn|Hyde\\s+Park|Gabis\\s+Art\\s+Galerie|Otto\\s*-\\s*Hahn\\s*-\\s*Stra\u00dfe|Rega\\s+Hotel\\s+Stuttgart|Opel\\s*-\\s*Zoo|Stadttheater|Essl\\s+Museum|MesseStar\\s+Tankstelle|Karl\\s*-\\s*Marx\\s*-\\s*Stra\u00dfe|Wall\\s*-\\s*Street|Croke\\s+Park|City\\s*-\\s*Galerie\\s+Augsburg|Festung\\s+K\u00f6nigstein|Karl\\s*-\\s*Marx\\s*-\\s*Allee|Modern\\s+Art\\s+Museum|Adam\\s*-\\s*Ries\\s*-\\s*Strasse|Louvre\\s+Museum|Ditmar\\s*-\\s*Koel\\s*-\\s*Stra\u00dfe|MAMAG\\s+Museum|Gabis\\s+Art\\s+Galerie|Karl\\s*-\\s*May\\s*-\\s*Museum|Red\\s+Bull\\s*-\\s*Arena|Van\\s+Gogh\\s+Museum|Disneyland|Universit\u00e4t\\s+Harvard|Stanford|Eiffelturm)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->whitekey:Ljava/lang/String;

    .line 33
    const-string v0, "(\\s|-|:|#|,|\\s\\(.*\\)\\s)+"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->tokenkey:Ljava/lang/String;

    .line 34
    const-string v0, "((?i)Germany|Deutschland)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->countrykey:Ljava/lang/String;

    .line 35
    const-string v0, "[A-Z][a-z\u00e4\u00fc\u00df\u00f6]{2,16}"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->statekey0:Ljava/lang/String;

    .line 36
    const-string v0, "(Bad\\s{1,3})?[A-Z][a-z\u00e4\u00fc\u00df\u00f6]{2,16}"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->citykey0:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->citykey0:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->citykey0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->citykey1:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->citykey1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|[A-Z\u00c4\u00d6\u00dc]{1,3}[^a-z\u00e4\u00fc\u00df\u00f6])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->tokenkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->statekey0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->tokenkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->countrykey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyCity:Ljava/lang/String;

    .line 40
    const-string v0, "((?i)Platz|Bureau|Dom|Fabrik|Halle|Hall|Kirche|Messe|Turm|Flohmarkt|Fitnessstudio|Fitnessraum|Trainingsraum|Center|Geldinstitut|Gerichtshof|Geb\u00e4ude|Hochhaus|Kreditinstitut|Villa|Zenturm|Areal|GmbH)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyBui_independ:Ljava/lang/String;

    .line 46
    const-string v0, "((?i)Apotheke|Altersheim|Amtsgericht|Anlegeplatz|Bank|Buchladen|Bibliothek|B\u00fccherei|Bistro|Blumengesch\u00e4ft|Buchhandlung|Boutique|B\u00fcchersammlung|Cafeteria|Cantina|Drogerie|Entbindungsklinik|Einkaufszentrum|Flughafen|Gasthof|Gasthaus|Gastshaus|Garten|Gartenanlagen|Grundschule|Gastst\u00e4tte|Heilanstalt|Herberge|Hospital|Hotel|Hotelkette|Institut|Jugendherberge|Kantine|Klinik|Kaufhaus|Kaufhalle|Kaufh\u00e4user|Krankenhaus|Kneipe|Lazarett|Mall|Motel|Messehalle|Markthalle|Museum|Markt|Metrostation|Plaza|Postamt|Pharmazie|Privatklinik|Postbank|Reiseagentur|Restaurant|Reiseb\u00fcro|Schauplatz|Schaub\u00fchne|Schauspielhaus|Schankwirtschaft|Shopping\\s*-\\s*zentrum|Schenke|Sch\u00e4nke|Stattliches\\s+wohnhaus|Shopping\\s*-\\s*Center|Spital|Spielplatz|Supermarkt|Sparkasse|Tankstelle|Tussauds|Tiergarten|U\\s*-\\s*bahn\\s+station|Vergn\u00fcgungspark|Wharf|Weingesch\u00e4ft|Wirtshaus|Shop|Seebr\u00fccke|Park|Zoo|Station|Theater|College|Universit\u00e4t|Gymnasium|Kindergarten|Fitness\\s*-\\s*studio|Bushaltestelle|Tierpark|Hochschule|Gynasium|Hbf|Galerie|bahnhof|Gallery|Stadion|Rathaus|Studio|Wohnung|br\u00fccke|University)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyBui:Ljava/lang/String;

    .line 70
    const-string v0, "((?i)stra\u00dfe|avenue|allee|strasse|str\\.|gasse|Steinweg|damm|street|Landstra\u00dfe)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyStr:Ljava/lang/String;

    .line 74
    const-string v0, "\\b[A-Z][A-Za-z\u00e4\u00fc\u00df\u00f6]"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordBig:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "((?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{3,25}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s*-\\s*|\\s+)){0,2})("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{2,25}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")(\\s*-\\s*|\\s*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordsBig:Ljava/lang/String;

    .line 83
    const-string v0, "(?:(?i)at|in|im|am|aus|bei|auf|zum|zu)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyPre:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordsBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyBui_independ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyBui_independ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\\s*-\\s*|\\s*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordsBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "(?:,\\s*)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->ED_Independ:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordsBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyBui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyBui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\\s*-\\s*|\\s*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordsBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "(?:,\\s*)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->ED:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordsBig:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "(?:(\\s*(?<!\\d)\\d{1,4}(?!\\d))(?:-\\d{1,4})?)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->ST:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:(?:\\s+|\\s*,\\s*)(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\s+)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\\s*#?\\d{5}\\s*)?#?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "(?:,\\s+(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->wordBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\\s+)?Germany|Deutschland?)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->_city:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->keyPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/de/ReguExp;->regPrep:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/huawei/g11n/tmr/util/Regexs;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 127
    const-string v0, "pBlackKey"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "pRegWT"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->whitekey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "pRegED_Independ"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->ED_Independ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "pRegED"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->ED:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "pReg_city"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->_city:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "pRegST"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->ST:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "pRegPrep"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->regPrep:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "pRegBlackKeyIndi"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey_indi:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "pRegBlackKeyIndi_withBlank"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey_indi:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(?:\\s*-\\s*|\\s+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "pRegBlackKeyUnIndi"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey_unindi:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "pRegBlackKeyNoSingal"

    sget-object v1, Lcom/huawei/g11n/tmr/address/de/ReguExp;->blackkey_noSingal:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/de/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method
