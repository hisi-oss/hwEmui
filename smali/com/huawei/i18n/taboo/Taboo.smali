.class public Lcom/huawei/i18n/taboo/Taboo;
.super Ljava/lang/Object;
.source "Taboo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/i18n/taboo/Taboo$TabooConfig;
    }
.end annotation


# instance fields
.field private lastmodify:J

.field private mLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTabooConfig:Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

.field private mTabooDataMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private version:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->path:Ljava/lang/String;

    .line 23
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/i18n/taboo/Taboo;->version:J

    .line 24
    iput-wide v1, p0, Lcom/huawei/i18n/taboo/Taboo;->lastmodify:J

    .line 26
    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mTabooConfig:Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    .line 27
    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mTabooDataMap:Ljava/util/WeakHashMap;

    .line 28
    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mLanguageList:Ljava/util/List;

    .line 90
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/huawei/i18n/taboo/Taboo;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/huawei/i18n/taboo/Taboo;

    invoke-direct {v0}, Lcom/huawei/i18n/taboo/Taboo;-><init>()V

    .line 100
    .local v0, "taboo":Lcom/huawei/i18n/taboo/Taboo;
    invoke-static {p0}, Lcom/huawei/i18n/taboo/ParseXml;->getVersion(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/huawei/i18n/taboo/Taboo;->version:J

    .line 101
    iget-wide v1, v0, Lcom/huawei/i18n/taboo/Taboo;->version:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 103
    return-object v0

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/huawei/i18n/taboo/ParseXml;->getFileLastModify(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/huawei/i18n/taboo/Taboo;->lastmodify:J

    .line 106
    iput-object p0, v0, Lcom/huawei/i18n/taboo/Taboo;->path:Ljava/lang/String;

    .line 107
    invoke-static {p0}, Lcom/huawei/i18n/taboo/ParseXml;->getXmlLanguageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/i18n/taboo/Taboo;->mLanguageList:Ljava/util/List;

    .line 109
    new-instance v1, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/huawei/i18n/taboo/ParseXml;->parseConfigXml(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;-><init>(Lcom/huawei/i18n/taboo/Taboo;Ljava/util/HashMap;)V

    iput-object v1, v0, Lcom/huawei/i18n/taboo/Taboo;->mTabooConfig:Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    .line 110
    iget-object v1, v0, Lcom/huawei/i18n/taboo/Taboo;->mTabooConfig:Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    invoke-static {v1}, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->access$000(Lcom/huawei/i18n/taboo/Taboo$TabooConfig;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 113
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localeTag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mTabooDataMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mTabooDataMap:Ljava/util/WeakHashMap;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mTabooDataMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mTabooDataMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 129
    .local v0, "tabooData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 134
    .end local v0    # "tabooData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->path:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huawei/i18n/taboo/ParseXml;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 135
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const-string v1, ""

    return-object v1

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/huawei/i18n/taboo/Taboo;->mTabooDataMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getLastmodify()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/huawei/i18n/taboo/Taboo;->lastmodify:J

    return-wide v0
.end method

.method public getVersion()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/huawei/i18n/taboo/Taboo;->version:J

    return-wide v0
.end method

.method public getmTabooConfig()Lcom/huawei/i18n/taboo/Taboo$TabooConfig;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/huawei/i18n/taboo/Taboo;->mTabooConfig:Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    return-object v0
.end method
