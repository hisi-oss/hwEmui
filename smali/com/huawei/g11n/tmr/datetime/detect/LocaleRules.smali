.class public Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;
.super Ljava/lang/Object;
.source "LocaleRules.java"


# instance fields
.field private locale_rules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private rules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/g11n/tmr/datetime/detect/Rules;)V
    .locals 1
    .param p1, "r"    # Lcom/huawei/g11n/tmr/datetime/detect/Rules;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->rules:Ljava/util/HashMap;

    .line 17
    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->locale_rules:Ljava/util/HashMap;

    .line 20
    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->getRules()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->rules:Ljava/util/HashMap;

    .line 21
    invoke-direct {p0}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->init()V

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;)Ljava/util/HashMap;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->rules:Ljava/util/HashMap;

    return-object p0
.end method

.method private getOthers(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v1, "zh_hans"

    const-string v2, "ja"

    const-string v3, "ko"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 339
    .local v1, "exLocales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x791a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 340
    .local v2, "id":Ljava/lang/Integer;
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->rules:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->rules:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->locale_rules:Ljava/util/HashMap;

    .line 333
    return-void
.end method


# virtual methods
.method public getLocaleRules(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "localeRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->locale_rules:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->locale_rules:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->getOthers(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 32
    return-object v0
.end method
