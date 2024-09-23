.class public Lcom/huawei/i18n/taboo/Taboo$TabooConfig;
.super Ljava/lang/Object;
.source "Taboo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/i18n/taboo/Taboo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabooConfig"
.end annotation


# static fields
.field private static final SEP:Ljava/lang/String; = ","


# instance fields
.field private cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private langList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/huawei/i18n/taboo/Taboo;


# direct methods
.method public constructor <init>(Lcom/huawei/i18n/taboo/Taboo;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "this$0"    # Lcom/huawei/i18n/taboo/Taboo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->this$0:Lcom/huawei/i18n/taboo/Taboo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->cityList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->langList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->regionList:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->configDatas:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    iput-object p2, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->configDatas:Ljava/util/HashMap;

    .line 48
    sget-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->CITY_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-virtual {v0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getScopeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "citys":Ljava/lang/String;
    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->LANGUAGE_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-virtual {v1}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getScopeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, "langs":Ljava/lang/String;
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->REGION_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-virtual {v2}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getScopeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "regions":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/i18n/taboo/Taboo$TabooConfig;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    .line 36
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->configDatas:Ljava/util/HashMap;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "citys"    # Ljava/lang/String;
    .param p2, "langs"    # Ljava/lang/String;
    .param p3, "regions"    # Ljava/lang/String;

    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->cityList:Ljava/util/List;

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->langList:Ljava/util/List;

    .line 61
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->regionList:Ljava/util/List;

    .line 64
    :cond_2
    return-void
.end method


# virtual methods
.method public getCityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->cityList:Ljava/util/List;

    return-object v0
.end method

.method public getLangList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->langList:Ljava/util/List;

    return-object v0
.end method

.method public getRegionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->regionList:Ljava/util/List;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->configDatas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
