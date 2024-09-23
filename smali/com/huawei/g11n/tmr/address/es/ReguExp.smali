.class public Lcom/huawei/g11n/tmr/address/es/ReguExp;
.super Lcom/huawei/g11n/tmr/util/Regexs;
.source "ReguExp.java"


# static fields
.field private static final BIG_WORDS_Q:Ljava/lang/String; = "(?:\\s{0,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s(?:(?i)del|de|da|i|d|la|en|el))?\\s){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*\\s*"

.field private static final BUI:Ljava/lang/String; = ",?\\s{0,2}\\b(?:(?i)Universidad|Universitaria|museo|biblioteca|restaurante|cafeter\u00eda|hotel|ayuntamiento|librer\u00eda|taberna|Universitaria|empresa|hospital|supermercado|Peluquer\u00eda|Tintorer\u00eda|Mercado|rascacielos|Catedral|Mezquita|estadio|Iglesia|Torre|Cl\u00ednica|castillo|sanatorio|monte|Confiter\u00eda|Pescader\u00eda|tienda\\s{1,6}de\\s{1,6}discos|tienda\\s{1,6}de\\s{1,6}licores|tienda\\s{1,6}de\\s{1,6}muebles|lago|tienda\\s{1,6}de\\s{1,6}antig\u00fcedades|palacio|metro|subte|Hostel|playa|Universidades|puerto|Parque|plaza|edif|escuelas\\s{1,6}t\u00e9cnicas\\s{1,6}productivas|Kursaal|aeropuerto|los\\s{1,6}Alpes|tienda\\s{1,6}oficial|cerro|Disneyland|albergue|CORTE\\s{1,6}INGLES|los\\s{1,6}Palacios|los\\s{1,6}Valles|clinica|Galer\u00eda|Conciergerie|bosque|Museum|Park|Villa|Parc|Pla\u00e7a|Museu|Restaurant|Templo|Hammam|Apartamento|Cathedral|Estaci\u00f3|Alcazar|Caixa|Naval|Cuesta|Church|University|Bodegas|Bar|Farmacia|Mausoleos|Universitat|Zoo|Jardines|Monumento|Bas\u00edlica|Apartaments|Hostal|Teatre|Cath\u00e9drale|Farm\u00e0cia|Llibreria|Gelateria|Igresia|College|Muelle|Academia|aparcamiento|Monta\u00f1a|Cafeteria|Zoobotanico|Universitdad|Supermercados|Apartamentos|Apartment|Apartamenos|Apartanebtos|Universitad|Cueva|Casino|Convento|Almac\u00e9n|Cervecer\u00eda|Embalse|Hospeder\u00eda|Bazar|Pedralbes|Galeria|Librerias|Alameda|Market|Pabell\u00f3n|Galer\u00edas)(?:\\p{Blank}{1,6}(?i)(?:entre|en|del|de|y))?(?:\\p{Blank}{1,6}(?i)(?:las|por|el|la))?(?:\\s{1,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s*(?i)(?:las|por|el|la)\\s*)?(?:(?:\\p{Blank}*[0-9*]+\\s*))?(?:(?:(?:\\s{0,2}(?:(?:,\\s*n\u00ba)|\u00ba|n\u00ba|\u00b0|#|-|/|\\(.+\\))\\s*)|\\s+))?(?:,?\\s{0,2}[0-9*]+\\s{0,2})?(?:(?:\\s{0,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*)?"

.field private static final BUI_INDEPEND:Ljava/lang/String; = ",?\\s{0,2}\\b(?:(?i)Caf[\u00e8\u00e9e]s?|paseo|Cine|teatro|dormitorio|\u00f3pera|banco|empresa|parroquia|Oficina|gimnasio|oficinas|piscina|taquilla|tienda|terrazas|enfermer\u00eda|feria|f\u00e1brica|Congreso|exposici\u00f3n|Estudio|Plana|colegio|instituto|estaci\u00f3n|planetario|capilla|planta|Puente|Z\u00f3calo|Corte|Bodeguita|Consejo|Discoteca|Cines|Fabrica|Cocina|zona|Comunidad|ermita)(?:\\p{Blank}{1,6}(?i)(?:entre|en|del|de|y))?(?:\\p{Blank}{1,6}(?i)(?:las|por|el|la))?(?:\\s{1,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s*(?i)(?:las|por|el|la)\\s*)?(?:(?:\\p{Blank}*[0-9*]+\\s*))?(?:(?:(?:\\s{0,2}(?:(?:,\\s*n\u00ba)|\u00ba|n\u00ba|\u00b0|#|-|/|\\(.+\\))\\s*)|\\s+))?(?:,?\\s{0,2}[0-9*]+\\s{0,2})?(?:(?:\\s{0,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*)?"

.field private static final CIT:Ljava/lang/String;

.field private static final KEY_BUI:Ljava/lang/String; = "\\b(?:(?i)Universidad|Universitaria|museo|biblioteca|restaurante|cafeter\u00eda|hotel|ayuntamiento|librer\u00eda|taberna|Universitaria|empresa|hospital|supermercado|Peluquer\u00eda|Tintorer\u00eda|Mercado|rascacielos|Catedral|Mezquita|estadio|Iglesia|Torre|Cl\u00ednica|castillo|sanatorio|monte|Confiter\u00eda|Pescader\u00eda|tienda\\s{1,6}de\\s{1,6}discos|tienda\\s{1,6}de\\s{1,6}licores|tienda\\s{1,6}de\\s{1,6}muebles|lago|tienda\\s{1,6}de\\s{1,6}antig\u00fcedades|palacio|metro|subte|Hostel|playa|Universidades|puerto|Parque|plaza|edif|escuelas\\s{1,6}t\u00e9cnicas\\s{1,6}productivas|Kursaal|aeropuerto|los\\s{1,6}Alpes|tienda\\s{1,6}oficial|cerro|Disneyland|albergue|CORTE\\s{1,6}INGLES|los\\s{1,6}Palacios|los\\s{1,6}Valles|clinica|Galer\u00eda|Conciergerie|bosque|Museum|Park|Villa|Parc|Pla\u00e7a|Museu|Restaurant|Templo|Hammam|Apartamento|Cathedral|Estaci\u00f3|Alcazar|Caixa|Naval|Cuesta|Church|University|Bodegas|Bar|Farmacia|Mausoleos|Universitat|Zoo|Jardines|Monumento|Bas\u00edlica|Apartaments|Hostal|Teatre|Cath\u00e9drale|Farm\u00e0cia|Llibreria|Gelateria|Igresia|College|Muelle|Academia|aparcamiento|Monta\u00f1a|Cafeteria|Zoobotanico|Universitdad|Supermercados|Apartamentos|Apartment|Apartamenos|Apartanebtos|Universitad|Cueva|Casino|Convento|Almac\u00e9n|Cervecer\u00eda|Embalse|Hospeder\u00eda|Bazar|Pedralbes|Galeria|Librerias|Alameda|Market|Pabell\u00f3n|Galer\u00edas)"

.field private static final KEY_BUI_INDEPEND:Ljava/lang/String; = "\\b(?:(?i)Caf[\u00e8\u00e9e]s?|paseo|Cine|teatro|dormitorio|\u00f3pera|banco|empresa|parroquia|Oficina|gimnasio|oficinas|piscina|taquilla|tienda|terrazas|enfermer\u00eda|feria|f\u00e1brica|Congreso|exposici\u00f3n|Estudio|Plana|colegio|instituto|estaci\u00f3n|planetario|capilla|planta|Puente|Z\u00f3calo|Corte|Bodeguita|Consejo|Discoteca|Cines|Fabrica|Cocina|zona|Comunidad|ermita)"

.field private static KEY_CIT:Ljava/lang/String; = null

.field private static final KEY_STR:Ljava/lang/String; = "\\b(?:(?i)Avenida|Traves\u00eda|Av\\.|calles|calle|carretera|Bulevar|Carrer|autov\u00eda|autopista|Rambla|Ronda|Blvd|c/|camino|Blvd\\.|Gran V\u00eda|Passeig|R\u00faa)"

.field private static final NB:Ljava/lang/String; = "(?:\\p{Blank}*[0-9*]+\\s*)"

.field private static final PSC:Ljava/lang/String; = "\\s{0,2},?\\s{0,2}(?:(?i)CP|C\\.P\\.)\\s{0,2}(?:\\d{5})"

.field private static final STR:Ljava/lang/String;

.field private static final cit1:Ljava/lang/String;

.field private static final cit2:Ljava/lang/String;

.field private static final cit3:Ljava/lang/String;

.field private static final con:Ljava/lang/String; = "(?:(?:\\s{0,2}(?:(?:,\\s*n\u00ba)|\u00ba|n\u00ba|\u00b0|#|-|/|\\(.+\\))\\s*)|\\s+)"

.field private static final con2:Ljava/lang/String; = "\\s*(?i)(?:las|por|el|la)\\s*"

.field private static final con3:Ljava/lang/String; = "(?:\\p{Blank}{1,6}(?i)(?:entre|en|del|de|y))?(?:\\p{Blank}{1,6}(?i)(?:las|por|el|la))?"

.field private static countrykey:Ljava/lang/String; = null

.field private static final prep:Ljava/lang/String; = "(?:\\p{Blank}{1,6}(?i)(en\\p{Blank}{1,6}(la|el|al)?|ir\\p{Blank}{1,6}(a|al|el|la)?|al|a\\p{Blank}{1,6}(la|el)?)\\b)"

.field private static final prepAndSc:Ljava/lang/String; = "(?:\\p{Blank}{1,6}(?i)(en\\p{Blank}{1,6}(la|el|al)?|ir\\p{Blank}{1,6}(a|al|el|la)?|al|a\\p{Blank}{1,6}(la|el)?)\\b)|\\p{Blank}{1,6}|\\p{Blank}{0,6},\\p{Blank}{0,6}"

.field private static provincekey:Ljava/lang/String;

.field private static tokenkey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "\\b(?:(?i)F\\.Miranda|Estany|Buitrago|Torreanaz|California|Aeroporto|Par\u00eds|los\\s{1,6}Herreros|Miranda|aragon|albacete|malaga|aparcamiento|embarcadero|t\u00fanel|Porlamar|taquilla|Caracas|Bierzo|Maracay|C\u00e1diz|Cieza|Las\\s{1,6}Casas|Mallorca|sucursal|Zona\\s{1,6}peatonal|glorieta|Crucero|Ayuntamiento|Campus|\\s{0,6}-\\s{0,6}Madrid|Madrid|Municipio\\s{1,6}Garc\u00eda|Meliila|Seville|Vista\\s{1,6}Alegre|Ronda\\s{0,6},\\s{0,6}de\\s{1,6}Francisco\\s{1,6}Narv\u00e1ez|Belgrano|Mor\u00f3n|C\\.\\s{0,6}Izcalli|Mu\u00f1oz|PortAventura|Gines|Murcia|Bermeo|Fernando\\s{1,6}de\\s{1,6}Henares|Villa\\s{1,6}Allende|Elche\\s{0,6}-\\s{0,6}Atl\u00e9tico|Edif\\.\\s{0,6}Las\\s{1,6}Rosas|Edif\\.\\s{0,6}El\\s{1,6}tulipan|Albacete|frontera\\s{1,6}Colombo\\s{0,6}-\\s{0,6}Venezolana|Buenos\\s{1,6}aires|Barcelona|los\\s{1,6}R\u00edos|parera|Caf\u00e9\\s{1,6}Concierto|Barrio\\s{1,6}Don\\s{1,6}Nicanor\\s{1,6}Ochoa|Capuchinos|Torrej\u00f3n|Tomas\\s{1,6}de\\s{1,6}Ibarra|LEZAMA|elegido|Bogot\u00e1|Jujuy|M\u00e1laga|Granada|ARGENTINA|Villanueva|Vecindario|Palma|Las\\s{1,6}Palmas\\s{1,6}de\\s{1,6}Gran\\s{1,6}Canaria|Cinequint|MARACAIBO|Carabobo|Venezuela|Santa\\s{1,6}M\u00f3nica|Elche|Sao\\s{1,6}Paulo|Almansa|Valencia|Murcia|sandalias|Naguanagua|Palermo|Moreno|Castell\u00f3n|C\u00f3rdoba\\s{1,6}Argentina|C\u00f3rdoba|Argentina|Mil\u00e1n|Italia|Monterrey|Vega|Aranjuez|Parador|Rosario|Sevilla|La\\s{1,6}Candelaria|Hortaleza|Tr\u00edpoli|Hortaleza|Valladolid|turmero|Reino\\s{1,6}Unido|Bilbao|Gandia|Sierra\\s{1,6}de\\s{1,6}las\\s{1,6}Nieves|Ja\u00e9n|Sierra\\s{1,6}de\\s{1,6}Cazorla|Las\\s{1,6}Villas|Egipto|Cocentaina|Mexicano|Barrio\\s{1,6}de\\s{1,6}Boedo|Donosti|Cantabria|Pueblo\\s{1,6}Nuevo|San\\s{1,6}Cristobal|Alc\u00e1zar|Gij\u00f3n|Salamanca|\u00c9cija|A\\s{1,6}Coru\u00f1a|Locales\\s{1,6}Michelangelo|Chile|Canc\u00fan|Prados|Cleveland\\s{0,6},\\s{0,6}Ohio|Altamira|Alcorc\u00f3n|zaragoza|Burjassot|Ciudad\\s{0,6}Bol\u00edvar|Segovia|Barquisimeto|Logro\u00f1o|Guadalajara|Antequera|M\u00fanich|Quilmes|Quir\u00f3|lorca|Badalona|Monterrey|Metropolitano|Cumana|TorrejondeArdoz|SanIsidro|Gaulle|B\u00e9lgica|Alicante|colegiales|Lavalleja|ACoru\u00f1a|Londres|Tur\u00edn|Chaca\u00edto|Cali|Tembleque|Virunga|Xuac\u00f3n|Lepe|Espartinas|San\\s{1,6}Telmo|Llanes|Cartagena|Olivos|alburquerque|Medell\u00edn|los\\s{1,6}Alcornocales|moratadetaju\u00f1a|Piedra|Luanco|Parla|AltaVista|Hogar\\s{1,6}San\\s{1,6}Pablo|Osma|Chacaito|M\u00f3stoles|Trujillo|Cebollera|Orihuela|Huelva|los\\s{1,6}H\u00e9roes\\s{1,6}Coacalco|Espelette|los\\s{1,6}Reyes|Metepec|castelldefels|Avellaneda|Mendoza|los\\s{1,6}Alcornocales|santa\\s{1,6}rosa|manglar|LaManga|CangasdeOnis|los\\s{1,6}\u00c1ngeles|parera|tudela|los\\s{1,6}Calares|lleida|los\\s{1,6}Rastrojos|ciudad\\s{1,6}de\\s{1,6}Cordoba|los\\s{1,6}Reyes|badajoz|San\\s{1,6}Casimiro\\s{0,6},\\s{0,6}Estado\\s{1,6}Aragua|Carirubana|los\\s{1,6}Andes|Matamoros\\s{1,6}Coahuila|Barrio\\s{1,6}d\\s{1,6}Santa\\s{1,6}Cruz|bormujos|madrug\u00e1|barquisimeto|los\\s{1,6}Arandinos|LasPalmas|Mostoles|Gijon|Colonia\\s{1,6}Santa\\s{1,6}Maria\\s{1,6}la\\s{1,6}Ribera|cartagena|los\\s{1,6}Templarios|Esparragal|Los\\s{1,6}leones|los\\s{1,6}R\u00edos|los\\s{1,6}Resorts|los\\s{1,6}Alcornocales|los\\s{1,6}ultimos\\s{1,6}dias|yecla|municipio|las\\s{1,6}Rozas|San\\s{1,6}jos\u00e9|caba\u00f1eros|Anzo\u00e1tegui|Caceres|los\\s{1,6}Cerritos|sanfernandodehenares|Manchester|PRINCIPE\\s{1,6}PIO|Tossa\\s{1,6}de\\s{1,6}Mar|Cabello\\.\\s{0,6}Lo|Urquiza\\s{1,6}hasta\\s{1,6}Alberti|Le\u00f3n|altura\\s{1,6}Santos\\s{1,6}Ossa|con\\s{1,6}San\\s{1,6}Agust\u00edn\\s{0,6},\\s{0,6}Col\\.\\s{0,6}San\\s{1,6}Javier|Nerja\\s{0,6}\\(\\s{0,6}M\u00e1laga\\s{0,6}\\)|Farjado|D\\.\\s{0,6}Luis|H\\.\\s{0,6}Yrigoyen\\s{1,6}y\\s{1,6}M\\.\\s{0,6}Castro|colonia|Farmacia\\s{1,6}Mart\u00ednez|Almagro|Los\\s{1,6}Y\u00e9benes|empalme|St\\.\\s{0,6}Joseph|Col\\.\\s{0,6}Talleres|Los\\s{1,6}t\u00e1menes|los\\s{1,6}Vados|los\\s{1,6}Lagos|M\\.\\s{0,6}Freeman|los\\s{1,6}Remedios|J\\.\\s{0,6}Ram\u00edrez|Alicante\\s{0,6}-\\s{0,6}Elche|palmas|M\\.\\s{0,6}Auxiliadora|los\\s{1,6}Reales\\s{1,6}Alc\u00e1zares|S\\.\\s{0,6}Sebasti\u00e1n|miguel|S\\.\\s{0,6}Francisco|S\\.\\s{0,6}Andres|los\\s{1,6}Arcos|J\\.\\s{0,6}Lennon|Maldivas|San\\s{1,6}Fernando|Hortaleza|S\\.\\s{0,6}Crist\u00f3bal|A\\.\\s{0,6}P\u00e1ez|V\\.\\s{0,6}Hebron|S\\.\\s{0,6}Pellegrino|Elche\\s{0,6}-\\s{0,6}Atl\u00e9tico|S\\.\\s{0,6}J\\s{1,6}Bosco|L\\.\\s{0,6}Rodriguez|D\\.\\s{0,6}Bosco|los\\s{1,6}Morros|J\\.\\s{0,6}Pastore|los\\s{1,6}Rios|St\\.\\s{0,6}Judes|los\\s{1,6}Picos|St\\.\\s{0,6}Josep\'s|A\\.\\s{0,6}S\u00e1nchez|Fuente|Apartamentos|Apartments|Apartment|Piscinas|BNA)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->KEY_CIT:Ljava/lang/String;

    .line 192
    const-string v0, "(\\s|-|:|#|,|\\s*\\(.*\\)\\s*)+"

    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->tokenkey:Ljava/lang/String;

    .line 193
    const-string v0, "((?i)Spanish|Espa\u00f1a)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->countrykey:Ljava/lang/String;

    .line 195
    const-string v0, "[A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][a-z\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']{2,12}"

    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->provincekey:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",?\\s{0,4}(((?:(?<!\\d)\\d{5}(?!\\d))\\s{0,4},?\\s{0,4})|(?:(?:(?i)P\\.C\\.|CP|C\\.P\\.)?\\s{0,4}(?:(?<!\\d)\\d{5}(?!\\d))\\s{0,4}))"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->KEY_CIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "(?:\\p{Blank}{1,6}(?i)(?:entre|en|del|de|y))?(?:\\p{Blank}{1,6}(?i)(?:las|por|el|la))?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "(?:\\s{0,4},\\s{0,4}|\\s{0,4})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "(("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->tokenkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->provincekey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->tokenkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->countrykey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->cit1:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",?\\s{0,4}"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->KEY_CIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "(?:\\p{Blank}{1,6}(?i)(?:entre|en|del|de|y))?(?:\\p{Blank}{1,6}(?i)(?:las|por|el|la))?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, "(?:\\s{0,4},\\s{0,4}|\\s{1,4})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, "(?:\\s{0,4},?\\s{0,4}(?<!\\d)\\d{5}(?!\\d))?|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, "(?:\\s{0,4}(?:(?i)P\\.C\\.|CP|C\\.P\\.)?\\s{0,4}(?:(?<!\\d)\\d{5})(?!\\d))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, "(("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->tokenkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->provincekey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->tokenkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->countrykey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->cit2:Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",?\\s{0,4}"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->KEY_CIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->cit3:Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->cit1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->cit2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->cit3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->CIT:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",?\\s{0,2}\\b(?:(?i)Avenida|Traves\u00eda|Av\\.|calles|calle|carretera|Bulevar|Carrer|autov\u00eda|autopista|Rambla|Ronda|Blvd|c/|camino|Blvd\\.|Gran V\u00eda|Passeig|R\u00faa)(?:(?:\\s{0,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*\\s*)?(?:\\s*(?<!\\d)[0-9*]{1,5}(?!\\d)\\s*(,\\s*\\d{1,2}[A-Za-z])?)?(?:(?:(?:\\s{0,2}(?:(?:,\\s*n\u00ba)|\u00ba|n\u00ba|\u00b0|#|-|/|\\(.+\\))\\s*)|\\s+))?(?:\\p{Blank}{1,6}(?i)(?:entre|en|del|de|y))?(?:\\p{Blank}{1,6}(?i)(?:las|por|el|la))?(?:(?:(?:\\s{0,2}(?:(?:,\\s*n\u00ba)|\u00ba|n\u00ba|\u00b0|#|-|/|\\(.+\\))\\s*)|\\s+))?(?:(?:\\s{0,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s(?:(?i)del|de|da|i|d|la|en|el))?\\s){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*\\s*)?(?:(?:\\p{Blank}*[0-9*]+\\s*))?(?:(?:(?:\\s{0,2}(?:(?:,\\s*n\u00ba)|\u00ba|n\u00ba|\u00b0|#|-|/|\\(.+\\))\\s*)|\\s+))?(?:\\s{0,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s{0,2},?\\s{0,2}\\(?(?<!\\d)[0-9*]{1,5}(?!\\d)(,\\s*\\d{1,2}[A-Za-z])?\\)?)?("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->tokenkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->countrykey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    sput-object v0, Lcom/huawei/g11n/tmr/address/es/ReguExp;->STR:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/huawei/g11n/tmr/util/Regexs;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 302
    const-string v0, "p1"

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->STR:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/es/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "p2"

    sget-object v1, Lcom/huawei/g11n/tmr/address/es/ReguExp;->CIT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/es/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "p3"

    const-string v1, ",?\\s{0,2}\\b(?:(?i)Universidad|Universitaria|museo|biblioteca|restaurante|cafeter\u00eda|hotel|ayuntamiento|librer\u00eda|taberna|Universitaria|empresa|hospital|supermercado|Peluquer\u00eda|Tintorer\u00eda|Mercado|rascacielos|Catedral|Mezquita|estadio|Iglesia|Torre|Cl\u00ednica|castillo|sanatorio|monte|Confiter\u00eda|Pescader\u00eda|tienda\\s{1,6}de\\s{1,6}discos|tienda\\s{1,6}de\\s{1,6}licores|tienda\\s{1,6}de\\s{1,6}muebles|lago|tienda\\s{1,6}de\\s{1,6}antig\u00fcedades|palacio|metro|subte|Hostel|playa|Universidades|puerto|Parque|plaza|edif|escuelas\\s{1,6}t\u00e9cnicas\\s{1,6}productivas|Kursaal|aeropuerto|los\\s{1,6}Alpes|tienda\\s{1,6}oficial|cerro|Disneyland|albergue|CORTE\\s{1,6}INGLES|los\\s{1,6}Palacios|los\\s{1,6}Valles|clinica|Galer\u00eda|Conciergerie|bosque|Museum|Park|Villa|Parc|Pla\u00e7a|Museu|Restaurant|Templo|Hammam|Apartamento|Cathedral|Estaci\u00f3|Alcazar|Caixa|Naval|Cuesta|Church|University|Bodegas|Bar|Farmacia|Mausoleos|Universitat|Zoo|Jardines|Monumento|Bas\u00edlica|Apartaments|Hostal|Teatre|Cath\u00e9drale|Farm\u00e0cia|Llibreria|Gelateria|Igresia|College|Muelle|Academia|aparcamiento|Monta\u00f1a|Cafeteria|Zoobotanico|Universitdad|Supermercados|Apartamentos|Apartment|Apartamenos|Apartanebtos|Universitad|Cueva|Casino|Convento|Almac\u00e9n|Cervecer\u00eda|Embalse|Hospeder\u00eda|Bazar|Pedralbes|Galeria|Librerias|Alameda|Market|Pabell\u00f3n|Galer\u00edas)(?:\\p{Blank}{1,6}(?i)(?:entre|en|del|de|y))?(?:\\p{Blank}{1,6}(?i)(?:las|por|el|la))?(?:\\s{1,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s*(?i)(?:las|por|el|la)\\s*)?(?:(?:\\p{Blank}*[0-9*]+\\s*))?(?:(?:(?:\\s{0,2}(?:(?:,\\s*n\u00ba)|\u00ba|n\u00ba|\u00b0|#|-|/|\\(.+\\))\\s*)|\\s+))?(?:,?\\s{0,2}[0-9*]+\\s{0,2})?(?:(?:\\s{0,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*)?"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/es/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "p4"

    const-string v1, "\\s{0,2},?\\s{0,2}(?:(?i)CP|C\\.P\\.)\\s{0,2}(?:\\d{5})"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/es/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "p5"

    const-string v1, ",?\\s{0,2}\\b(?:(?i)Caf[\u00e8\u00e9e]s?|paseo|Cine|teatro|dormitorio|\u00f3pera|banco|empresa|parroquia|Oficina|gimnasio|oficinas|piscina|taquilla|tienda|terrazas|enfermer\u00eda|feria|f\u00e1brica|Congreso|exposici\u00f3n|Estudio|Plana|colegio|instituto|estaci\u00f3n|planetario|capilla|planta|Puente|Z\u00f3calo|Corte|Bodeguita|Consejo|Discoteca|Cines|Fabrica|Cocina|zona|Comunidad|ermita)(?:\\p{Blank}{1,6}(?i)(?:entre|en|del|de|y))?(?:\\p{Blank}{1,6}(?i)(?:las|por|el|la))?(?:\\s{1,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s*(?i)(?:las|por|el|la)\\s*)?(?:(?:\\p{Blank}*[0-9*]+\\s*))?(?:(?:(?:\\s{0,2}(?:(?:,\\s*n\u00ba)|\u00ba|n\u00ba|\u00b0|#|-|/|\\(.+\\))\\s*)|\\s+))?(?:,?\\s{0,2}[0-9*]+\\s{0,2})?(?:(?:\\s{0,2}(?:de|del|el))?\\s*(?:[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*(?:\\s+(?:(?i)del|de|da|i|d|la|en|el))?\\s+){0,2}[-A-Z\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00f1][A-Za-z0-9\u00c1\u00c9\u00cd\u00d3\u00da\u00d1\u00e1\u00e4\u00e3\u00e0\u00e8\u00e9\u00ec\u00ed\u00f6\u00f3\u00f9\u00fa\u00fc\u00f1\u00e7\']*)?"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/es/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "pgrep"

    const-string v1, "(?:\\p{Blank}{1,6}(?i)(en\\p{Blank}{1,6}(la|el|al)?|ir\\p{Blank}{1,6}(a|al|el|la)?|al|a\\p{Blank}{1,6}(la|el)?)\\b)"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/es/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "pPrepAndSc"

    const-string v1, "prepAndSc"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/es/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method
