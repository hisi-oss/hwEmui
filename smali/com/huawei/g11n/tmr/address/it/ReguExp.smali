.class public Lcom/huawei/g11n/tmr/address/it/ReguExp;
.super Lcom/huawei/g11n/tmr/util/Regexs;
.source "ReguExp.java"


# static fields
.field private static final White:Ljava/lang/String; = "(Torre\\s{1,6}di\\s{1,6}Pisa|Pizza\\s{1,6}Hut|Colosseo\\s{1,6}di\\s{1,6}Roma|Museo\\s{1,6}archeologico|Campanile\\s{1,6}di\\s{1,6}Giotto|Battistero\\s{1,6}di\\s{1,6}San\\s{1,6}Giovanni|Harvard|Pantheon|Fontana\\s{1,6}di\\s{1,6}Trevi)|"

.field private static blackBuilding:Ljava/lang/String;

.field private static blackStreet:Ljava/lang/String;

.field private static buildkeyED_New:Ljava/lang/String;

.field private static buildkeyED_Rest:Ljava/lang/String;

.field private static citykey:Ljava/lang/String;

.field private static country:Ljava/lang/String;

.field private static prepandwords:Ljava/lang/String;

.field static prepandwords_ST:Ljava/lang/String;

.field private static regED1:Ljava/lang/String;

.field private static regED2:Ljava/lang/String;

.field private static regST:Ljava/lang/String;

.field private static region:Ljava/lang/String;

.field private static stresskey1_New:Ljava/lang/String;

.field private static stresskey1_Rest:Ljava/lang/String;

.field private static words:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    const-string v0, "(in|a)\\s([A-Z][a-z,A-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]+)(\\s|\\.|,)?"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->blackBuilding:Ljava/lang/String;

    .line 12
    const-string v0, "(in|a)\\s([A-Z][a-z,A-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]+)(\\s|\\.|,)?"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->blackStreet:Ljava/lang/String;

    .line 15
    const-string v0, "[,-]?\\s?(Italia)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->country:Ljava/lang/String;

    .line 17
    const-string v0, "\\s?(Abruzzi|Basilicata|Calabria|Campania|Emilia\\s{0,6}-\\s{0,6}Romagna|Friuli\\s{0,6}-\\s{0,6}Venezia\\s{1,6}Giulia|Lazio|Liguria|Lombardia|Marche|Molise|Piemonte|Puglia|Sardegna|Sicilia|Toscana|Trentino\\s{0,6}-\\s{0,6}Alto\\s{1,6}Adige|Umbria|Valle\\s{1,6}d\'Aosta|Veneto)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->region:Ljava/lang/String;

    .line 25
    const-string v0, "((?i)(Via|Viale|Corso|Strada|Vicolo)\\s)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->stresskey1_New:Ljava/lang/String;

    .line 26
    const-string v0, "((?i)(Stradone)\\s)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->stresskey1_Rest:Ljava/lang/String;

    .line 74
    const-string v0, "(\\s{0,6}(in|,)\\s{0,6})?([,-]?\\s?(IT-\\d{1,5}|I-\\d{1,5}|\\d{1,5})\\s?[,-]?)?\\s*(?:((?i)Milanello|CATANIA|Cortina\\s{1,6}D\'Ampezzo|Bologna|Genova\\s{1,6}Pegli|Cortona|Citt\u00e0\\s{1,6}del\\s{1,6}Vaticano|Courmayeur|Cuneo|Abano\\s{1,6}Terme|Abruzzo\\s{0,6}-\\s{0,6}Teramo|Agrigento|Conca\\s{1,6}dei\\s{1,6}Marini|Badia|Roma|Alberobello|Alessandria\\s{1,6}&\\s{1,6}Monferrato|Amalfi\\s{1,6}Coast|Ancona|Aosta\\s{0,6}-\\s{0,6}Courmayeur|Monterosso|Sorrento|Aosta|Arezzo\\s{1,6}Province|Arezzo|Ascoli\\s{1,6}Piceno|Assisi|Avellino|Bari|Bergamo|Brescia|Brindisi|Calabria\\s{1,6}Seaside|Capri\\s{1,6}Island|Carpi|Caserta|Castiglioncello|Cefalu|Chianciano\\s{1,6}Terme|Cinque\\s{1,6}Terre|Como|Elba\\s{1,6}Island|Fabriano|Fano|Ferrara|Florence\\s{1,6}Province|Florence|Foligno|Forli|Garda\\s{1,6}Lake|Genova|Grosseto|Gubbio|Ischia\\s{1,6}Island|Italian\\s{1,6}Riviera|La\\s{1,6}Spezia|L\'Aquila|Lecco|Livorno|Lucca|Macerata|Maggiore\\s{1,6}and\\s{1,6}Orta\\s{1,6}Lakes|Maratea|Matera|Melfi|Messina|Milan\\s{1,6}Province|Milano|Milan|Modena|Montecatini\\s{1,6}Terme|Montepulciano|Naples|Ostuni|Padova|Paestum|Palermo|Parma|Perugia|Pescasseroli|Piacenza|Pisa|Porto\\s{1,6}San\\s{1,6}Giorgio|Portofino\\s{1,6}and\\s{1,6}Tigullio|Positano|Prato|Puglia\\s{1,6}Seaside|Ragusa|Ravenna|Reggio\\s{1,6}Emilia|Riccione|Rieti|Rimini|Rome\\s{1,6}Province|Salerno|San\\s{1,6}Gimignano|San\\s{1,6}Giovanni\\s{1,6}Rotondo|Sardinia|Sicily|Siena|Siracusa|Sorrento|Spoleto|Taormina|Terni|The\\s{1,6}Alps\\s{0,6}-\\s{0,6}Dolomiti|Tirrenian\\s{1,6}Sea\\s{1,6}Coast|Torino|Trapani|Trento|Treviso|Trieste|Tropea|Turin|Tuscany\\s{0,6}-\\s{0,6}Chianti|Varese|Venice\\s{1,6}Province|Venice|Verona|Versilia|RomaInizio|Vicenza|Wine\\s{1,6}Route|Rome)(?:\\s*\\([A-Z]{2}\\))?|([(]?[A-Z][A-Z][)]?))[,.!]*"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->citykey:Ljava/lang/String;

    .line 110
    const-string v0, "((?i)(Villa|piazzale|Garden|Giardino|Farmacia|Stazione|Aeroporto|Piazza|Parco|Lago|Basilica|Politecnico|Liceo|Scuola|Accademia|Chiesa|Duomo|Hotel|Locanda|Trattoria|Osteria|Quadrato|Mercato|Cattedrale|College|Collegio|Facolt\u00e0|Parrocchia|Mura|Teatro|Palazzo|Museo|Ufficio Postale|Aula|Sartoria|Cantina|Questura|Stadio|Municipio|Cinema|Ospedale|Spiaggia|Palestra|Bar|Banca|Ristorante|Pasticceria|Lido|Porto|Carica|Libreria|Biblioteca|Chiostro|Cantiere|Sala|Bottega|Laboratorio|Torre|Resort|Fotogallery|Pinacoteca|Reggia|Ponte|Zoo|Centro|Centrale|Istituto|Caffetteria|Tribunale|Campanile|Castello|Giardino|Galleria|Club|Casa)\\s)"

    .line 109
    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->buildkeyED_New:Ljava/lang/String;

    .line 118
    const-string v0, "((?i)(Colosseo|Supermarcheto|Drugstore|Piscina|Stagno|Laghetto|Parrochia|Guesthouse|Localit\u00e0|Magazzino|Ateneo|Cafferia|Refettorio|Corporation|Monte|Opere\\s{1,6}Teatrali|Arte\\s{1,6}Drammatica|Casetta\\s{1,6}Giocattolo|Conversario|Nosocomio|Mensa|Parrucchiere|Confettiere|Autostazione|Fermata|Edicola|Chiosco|Cinematografo|Vestibolo|Tavola\\s{1,6}Fredda|Fioraio|Parcheggio|Agriturismo|Banchina|Cartoleria|Ginnasio|Barra|Sbarra|Barretta|Pontile|Imbarcadero|Lavanderia|Bucato|Arsenale|Panetteria|Fruttivendolo|Pescheria|Macelleria|Molo|Concerti|Bettola|Negozio|Panificio|Spaccio|Apartamento|Dimora|Motel|Taverna|Ostello|Asilo|Bistro|Clinica|Tavola\\s{1,6}Calda|Ufficio|pensione|Centrali|Albergo|Caff\u00e8|cartoleria|Universit\u00e0)\\s)"

    .line 117
    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->buildkeyED_Rest:Ljava/lang/String;

    .line 139
    const-string v0, "((nella|nei|per|nello|negli|nelle|nel|nell\'|al|ai|allo|agli|alla|alle|del|dei|dello|degli|della|delle|sul|sui|sullo|sugli|sulla|sulle|dalla|dai|dallo|dagli|dalle|dal|S\\.|di|d\u00ec|a|su|est|da)\\s+([A-Z][a-z,A-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]*\\s*)|([A-Z][a-zA-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]*\\s*)){1,4}(in\\s+([A-Z][a-zA-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]*\\s*){1,4})?"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->prepandwords:Ljava/lang/String;

    .line 142
    const-string v0, "(\\s*([A-Z][a-zA-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]*\\s*)){1,4}([,-]|\\s)*"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->words:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(Torre\\s{1,6}di\\s{1,6}Pisa|Pizza\\s{1,6}Hut|Colosseo\\s{1,6}di\\s{1,6}Roma|Museo\\s{1,6}archeologico|Campanile\\s{1,6}di\\s{1,6}Giotto|Battistero\\s{1,6}di\\s{1,6}San\\s{1,6}Giovanni|Harvard|Pantheon|Fontana\\s{1,6}di\\s{1,6}Trevi)|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->buildkeyED_New:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->prepandwords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->regED1:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(Torre\\s{1,6}di\\s{1,6}Pisa|Pizza\\s{1,6}Hut|Colosseo\\s{1,6}di\\s{1,6}Roma|Museo\\s{1,6}archeologico|Campanile\\s{1,6}di\\s{1,6}Giotto|Battistero\\s{1,6}di\\s{1,6}San\\s{1,6}Giovanni|Harvard|Pantheon|Fontana\\s{1,6}di\\s{1,6}Trevi)|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->buildkeyED_Rest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->regED2:Ljava/lang/String;

    .line 164
    const-string v0, "((nella|nei|per|nello|negli|nelle|nel|nell\'|al|ai|allo|agli|alla|alle|del|dei|dello|degli|della|delle|sul|sui|sullo|sugli|sulla|sulle|dalla|dai|dallo|dagli|dalle|dal|S\\.|di|d\u00ec|su|est|da)\\s+([A-Z][a-z,A-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]*\\s*)|([A-Z][a-zA-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]*\\s*)){1,4}((in|a)\\s+([A-Z][a-zA-Z\u00e8\u20ac\u00e9\u00f2\u00f3\u00ec\u00e0\u00e2e\'\u00f9]*\\s*){1,4})?"

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->prepandwords_ST:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(\\s{0,6},\\s{0,6})?("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->stresskey1_New:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->prepandwords_ST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")|("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->stresskey1_Rest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))([,-]{0,1}\\s{0,6}(?<!\\d)\\d{1,4}(?!\\d)\\s{0,6}(-\\d{1,4})?)?([,-]*\\s*(IT-(?<!\\d)\\d{5}(?!\\d)|I-(?<!\\d)\\d{5}(?!\\d)|(?<!\\d)\\d{5}(?!\\d))\\s*[,-]*)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/it/ReguExp;->regST:Ljava/lang/String;

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
    .locals 2

    .line 194
    const-string v0, "patternED"

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->regED1:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/it/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "patternEDnopre"

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->regED2:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/it/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "patternPCcity"

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->citykey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/it/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "patternregion"

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->region:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/it/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "patterncountry"

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->country:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/it/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "patternST"

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->regST:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/it/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "patternbb"

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->blackBuilding:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/it/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "patternbs"

    sget-object v1, Lcom/huawei/g11n/tmr/address/it/ReguExp;->blackStreet:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/it/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
