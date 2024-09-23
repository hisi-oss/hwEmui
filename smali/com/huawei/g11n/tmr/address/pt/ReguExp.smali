.class public Lcom/huawei/g11n/tmr/address/pt/ReguExp;
.super Lcom/huawei/g11n/tmr/util/Regexs;
.source "ReguExp.java"


# static fields
.field private static AT:Ljava/lang/String;

.field private static POS:Ljava/lang/String;

.field private static _cityNoCode:Ljava/lang/String;

.field private static _cityWithCode:Ljava/lang/String;

.field private static bs:Ljava/lang/String;

.field private static bui:Ljava/lang/String;

.field private static buiStr:Ljava/lang/String;

.field private static cat:Ljava/lang/String;

.field private static code:Ljava/lang/String;

.field private static codeCity:Ljava/lang/String;

.field private static con:Ljava/lang/String;

.field private static keyBui:Ljava/lang/String;

.field private static keyBui_B:Ljava/lang/String;

.field private static keyStr:Ljava/lang/String;

.field private static str:Ljava/lang/String;

.field private static strNum:Ljava/lang/String;

.field private static word:Ljava/lang/String;

.field private static words2_Str:Ljava/lang/String;

.field private static words3_Str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-string v0, "\\b((?i)Rota\\b|Rua\\b|R\\.|R\\b|Avenida\\b|Av\\.|Av\\b|Av\u00aa\\b|Travessa\\b|Tv\\.|Cal\u00e7ada\\b|Cal\u00e7\\.|Estrada\\b|Estr\\.|Rovovia\\b|Rod\\.|Pra\u00e7a\\b|P\u00e7\\b|Largo\\b|Lg\\.|Campo\\b|Rodovia\\b|T\u00fanel\\b|Ladeirados\\b|Ladeira\\b|Viaduto\\b|Boulevard\\b|Bulevar\\b|Lig\\.|Estradas\\b|No\\.|Bloco\\b)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->keyStr:Ljava/lang/String;

    .line 13
    const-string v0, "\\b(?<build>(?i)(?:Condom\u00ednio|Apartamento|Loja|Hispital|Catedral|Lote|Conjunto|Andar|Bairro|Freguesia|Estado|Residencial|Audit\u00f3rio|Igreja|Arquip\u00e9lago|Catetral|Mosteiro|Convento|Capela|Santu\u00e1rio|Memorial|Casa|Pa\u00e7o|Monumento|Cemit\u00e9rio|Templo|Pante\u00e3o|Castelo|Forte Duque de Caixas|C\u00e2mara municipal|Direc\u00e7\u00e3o|Chilindr\u00f3|Tribunal|Funda\u00e7\u00e3o|Ag\u00eancia|Edif\u00edcio|Pr\u00e9dio|Posto|Estacionamento|Correios|Editora|Banco|Cl\u00ednica|Congrega\u00e7\u00e3o Crist\u00e3|Mercado|Feira|Shopping|Loja|Mall|Livraria|Hall|Outlet|Centro|Supermercado|acess\u00f3rio|comboio|Exposi\u00e7\u00e3o|Alameda|P\u00e1lace|Laborat\u00f3rio|Col\u00e9gio|Faculdade|Cinema|Teatro|Theatro|Torre|Ponte|Museu|Miradouro|Miradouro|Mirante|Aqu\u00e1rio|Galeria|Bar|Parque|Lounge|Clube|Porto|Cais|Jardim|Elevador|Passeio|Pal\u00e1cio|Hospital|Hotel|Hot\u00e9is|Hostel|Motel|Bodega|Taverna|Taberna|Condom\u00ednio|Pizzaria|Clinica|Aeroporto|Esta\u00e7\u00e3o|Parada|Rodovi\u00e1ria|Restaurante|Lanchonete|Caf\u00e9|Churrascaria|Cervejaria|Cantina|Hamburgueria|Biblioteca|Bar|Pastelaria|Terminal|Padaria|Bistro|Universidade|Campus|Est\u00e1dio|Arena|Resid\u00eancia|Praia|Metr\u00f4|Sal\u00e3o|Oficina|Palace|Lagoa|Campo|Square|Mercadinho|Pra\u00e7a|Fazenda|Academia|Vale|Banc\u00e1rios|Ilha|Ponto|Emp\u00f3rio|Gin\u00e1sio)\\b|apt\\.|Apto\\.|Conj\\.|s\\.m\\.|\\s+S\u00e9|Pte\\.)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->keyBui:Ljava/lang/String;

    .line 33
    const-string v0, "\\b((?:Condom\u00ednio|Apartamento|Loja|Hispital|Catedral|Lote|Conjunto|Andar|Bairro|Freguesia|Estado|Residencial|Audit\u00f3rio|Igreja|Arquip\u00e9lago|\\s+S\u00e9|Catetral|Mosteiro|Convento|Capela|Santu\u00e1rio|Memorial|Casa|Pa\u00e7o|Monumento|Cemit\u00e9rio|Templo|Pante\u00e3o|Castelo|Forte Duque\\s+de\\s+Caixas|C\u00e2mara municipal|Direc\u00e7\u00e3o|Chilindr\u00f3|Tribunal|Funda\u00e7\u00e3o|Ag\u00eancia|Edif\u00edcio|Pr\u00e9dio|Posto|Estacionamento|Correios|Editora|Banco|Cl\u00ednica|Congrega\u00e7\u00e3o\\s+Crist\u00e3|Mercado|Feira|Shopping|Loja|Mall|Livraria|Hall|Outlet|Centro|Supermercado|acess\u00f3rio|comboio|Exposi\u00e7\u00e3o|Alameda|P\u00e1lace|Laborat\u00f3rio|Col\u00e9gio|Faculdade|Cinema|Teatro|Theatro|Torre|Ponte|Pte\\.|Museu|Miradouro|Miradouro|Mirante|Aqu\u00e1rio|Galeria|Bar|Parque|Lounge|Clube|Porto|Cais|Jardim|Elevador|Passeio|Pal\u00e1cio|Hospital|Hotel|Hot\u00e9is|Hostel|Motel|Bodega|Taverna|Taberna|Condom\u00ednio|Pizzaria|Clinica|Aeroporto|Esta\u00e7\u00e3o|Parada|Rodovi\u00e1ria|Restaurante|Lanchonete|Caf\u00e9|Churrascaria|Cervejaria|Cantina|Hamburgueria|Biblioteca|Bar|Pastelaria|Terminal|Padaria|Bistro|Universidade|Campus|Est\u00e1dio|Arena|Resid\u00eancia|Praia|Metr\u00f4|Sal\u00e3o|Oficina|Palace|Lagoa|Campo|Square|Mercadinho|Pra\u00e7a|Fazenda|Academia|Vale|Banc\u00e1rios|Ilha|Ponto|Emp\u00f3rio|Gin\u00e1sio)\\b|apt\\.|Apto\\.|Conj\\.|S\\.M\\.)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->keyBui_B:Ljava/lang/String;

    .line 53
    const-string v0, "[A-Z\u00c1\u00c3\u00c0\u00c2\u00c9\u00c8\u00ca\u00cc\u00ce\u00cd\u00d2\u00d4\u00d3\u00d5\u00da\u00d9\u00db0-9][0-9\'A-Z\u00c1\u00c3\u00c0\u00c2\u00c9\u00c8\u00ca\u00cc\u00ce\u00cd\u00d2\u00d4\u00d3\u00da\u00d9\u00dba-z\u00e1\u00e3\u00e0\u00e2\u00e9\u00e8\u00ea\u00ec\u00ee\u00ed\u00f2\u00f4\u00f3\u00f5\u00fa\u00f9\u00fb\u00aa\u00e7]*"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    .line 55
    const-string v0, "\\b(?:(?i)n\u00ba\\s*)?\\d{1,4}(?:\\s*(/|-)\\s*\\d{1,3})?\\b"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->strNum:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\b(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s+(?:(?:(?i)das?|dos?|de)\\s+)?|\\s*(?:/|-)\\s*)){0,5}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->words3_Str:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\b(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s+(?:(?:(?i)das?|dos?|de)\\s+)?|\\s*(?:/|-)\\s*)){0,2}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->words2_Str:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:\\b(?i)lote\\s+\\d{1,4}\\s*)?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->keyStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\s+(?:(?:(?i)das?|dos?)?\\s+)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->words3_Str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:(?:\\s+(?i)lote)?\\s*(?:,\\s*)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->strNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->str:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->keyBui:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\s+(?:(?:de|dos?|das?)\\s+)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->words3_Str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->bui:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->bui:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(?:(?:\\s+(?:dos?\\s+)?|\\s*\\(\\s*|\\s*,\\s*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?<street1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s*\\))?)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->buiStr:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->buiStr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?<street2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->bs:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:\\b(?:(?i)at|no|em?)\\s+|@\\s*)("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->words2_Str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->keyBui_B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->AT:Ljava/lang/String;

    .line 67
    const-string v0, "\\b(?:(?i)cep\\s*:\\s*)?\\d{4,5}(?:-\\d{3})?\\b"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->code:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?(?:\\s*,\\s*|\\s+))?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\bAPARTADO\\s*\\d{4,5}\\s*,\\s*)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s+(?:(?:(?i)de|das?)\\s+)?|\\s*(?:-|,)\\s*)){0,4}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "(?:\\s*(,\\s*)?(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s+(?:(?:(?i)de|das?)\\s+)?|\\s*(?:-|,)\\s*)){0,3}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->codeCity:Ljava/lang/String;

    .line 72
    const-string v0, "(?:,?\\s+(?:(?i)em?\\s+|de\\s+|in\\s+|na\\s+|das?\\s+|no\\s+)?|\\s*(?:,|-)\\s*)"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->con:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->con:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->codeCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->_cityWithCode:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\s*\\(.*\\)|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->con:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\(?(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s+(?:(?:(?i)de|das?|do)\\s+)?|\\s*(?:,|/|-|\\(|\\))\\s*)){0,4}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:\\s*\\))?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->_cityNoCode:Ljava/lang/String;

    .line 75
    const-string v0, "\\b(?:(?i)cep\\s*:?\\s*)\\d{4,5}(?:-\\d{3})?\\b"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->POS:Ljava/lang/String;

    .line 76
    const-string v0, "\\s*,\\s*"

    sput-object v0, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->cat:Ljava/lang/String;

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

    .line 81
    const-string v0, "pbs"

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->bs:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "pat"

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->AT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "pCat"

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->cat:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "pnum"

    const-string v1, "\\d{4,5}"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "pCityWithCode"

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->_cityWithCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "pCityNoCode"

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->_cityNoCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "pPos"

    sget-object v1, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->POS:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/g11n/tmr/address/pt/ReguExp;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
