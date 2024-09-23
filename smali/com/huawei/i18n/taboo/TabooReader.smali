.class public Lcom/huawei/i18n/taboo/TabooReader;
.super Ljava/lang/Object;
.source "TabooReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/i18n/taboo/TabooReader$ParamType;
    }
.end annotation


# static fields
.field private static final CLOUD_PATH:Ljava/lang/String; = "/data/cota/para/taboo"

.field private static final LOG_TAG:Ljava/lang/String; = "TabooReader"

.field private static final MAX_WAIT:J = 0xea60L

.field private static final PREAS_PATH:Ljava/lang/String; = "/preas/xml/taboo"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system/emui/base/taboo"

.field private static cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

.field private static insideTaboo:Lcom/huawei/i18n/taboo/Taboo;

.field private static lastReadTime:J

.field private static preasTaboo:Lcom/huawei/i18n/taboo/Taboo;

.field private static sParam:Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/huawei/i18n/taboo/TabooReader;->lastReadTime:J

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader;->insideTaboo:Lcom/huawei/i18n/taboo/Taboo;

    .line 31
    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    .line 32
    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader;->preasTaboo:Lcom/huawei/i18n/taboo/Taboo;

    .line 34
    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader;->sParam:Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfig(Lcom/huawei/i18n/taboo/Taboo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "taboo"    # Lcom/huawei/i18n/taboo/Taboo;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isFallBack"    # Z

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "result":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 191
    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader;->sParam:Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    invoke-static {v1, p1}, Lcom/huawei/i18n/taboo/FindTargetRules;->getSequentialFallBack(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/Taboo;->getmTabooConfig()Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    return-object v3

    .line 196
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 200
    :cond_1
    return-object v0

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/Taboo;->getmTabooConfig()Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCurrentTaboo()Lcom/huawei/i18n/taboo/Taboo;
    .locals 9

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "currentTaboo":Lcom/huawei/i18n/taboo/Taboo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v1, "tabooMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/huawei/i18n/taboo/Taboo;>;"
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader;->insideTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-eqz v2, :cond_0

    .line 249
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader;->insideTaboo:Lcom/huawei/i18n/taboo/Taboo;

    invoke-virtual {v2}, Lcom/huawei/i18n/taboo/Taboo;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->insideTaboo:Lcom/huawei/i18n/taboo/Taboo;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-eqz v2, :cond_1

    .line 252
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    invoke-virtual {v2}, Lcom/huawei/i18n/taboo/Taboo;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_1
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader;->preasTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-eqz v2, :cond_2

    .line 255
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader;->preasTaboo:Lcom/huawei/i18n/taboo/Taboo;

    invoke-virtual {v2}, Lcom/huawei/i18n/taboo/Taboo;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->preasTaboo:Lcom/huawei/i18n/taboo/Taboo;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_2
    const-wide/16 v2, 0x0

    .line 258
    .local v2, "currentVersion":J
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 259
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/huawei/i18n/taboo/Taboo;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 260
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 261
    .local v5, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/huawei/i18n/taboo/Taboo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 262
    .local v6, "key":J
    cmp-long v8, v2, v6

    if-gez v8, :cond_3

    .line 263
    move-wide v2, v6

    .line 264
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/huawei/i18n/taboo/Taboo;

    .line 266
    .end local v5    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/huawei/i18n/taboo/Taboo;>;"
    .end local v6    # "key":J
    :cond_3
    goto :goto_0

    .line 267
    :cond_4
    return-object v0
.end method

.method private static getData(Lcom/huawei/i18n/taboo/Taboo;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "taboo"    # Lcom/huawei/i18n/taboo/Taboo;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "key"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 164
    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/Taboo;->getLanguageList()Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    invoke-static {v1, p1}, Lcom/huawei/i18n/taboo/FindTargetRules;->getFilterList(Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .line 172
    .local v3, "localeId":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 173
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 177
    sget-object v4, Lcom/huawei/i18n/taboo/TabooReader;->sParam:Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    invoke-static {v4, p2}, Lcom/huawei/i18n/taboo/FindTargetRules;->getSequentialFallBack(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 179
    .local v4, "fallBackKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 180
    .local v6, "strKey":Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Lcom/huawei/i18n/taboo/Taboo;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 182
    return-object v7

    .line 184
    .end local v6    # "strKey":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 185
    :cond_3
    return-object v0

    .line 175
    .end local v4    # "fallBackKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-object v0

    .line 168
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v3    # "localeId":Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Lcom/huawei/i18n/taboo/TabooReader$ParamType;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "key"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/huawei/i18n/taboo/TabooReader;->initAndcheckUpdate()V

    .line 78
    invoke-static {}, Lcom/huawei/i18n/taboo/TabooReader;->getCurrentTaboo()Lcom/huawei/i18n/taboo/Taboo;

    move-result-object v0

    .line 79
    .local v0, "current":Lcom/huawei/i18n/taboo/Taboo;
    const/4 v1, 0x0

    .line 80
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 83
    :cond_0
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader$1;->$SwitchMap$com$huawei$i18n$taboo$TabooReader$ParamType:[I

    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 118
    if-eqz p2, :cond_5

    invoke-static {p0, p2}, Lcom/huawei/i18n/taboo/TabooReader;->isContain(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/huawei/i18n/taboo/TabooReader;->getData(Lcom/huawei/i18n/taboo/Taboo;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 105
    :pswitch_0
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    goto/16 :goto_2

    .line 108
    :cond_1
    invoke-static {p0, p2}, Lcom/huawei/i18n/taboo/TabooReader;->isContain(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/huawei/i18n/taboo/TabooReader;->getData(Lcom/huawei/i18n/taboo/Taboo;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    move-object v1, v2

    .line 109
    if-nez v1, :cond_6

    .line 110
    invoke-static {p2}, Lcom/huawei/i18n/taboo/FindTargetRules;->langTagFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "formatKey":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/huawei/i18n/taboo/TabooReader;->isContain(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/huawei/i18n/taboo/TabooReader;->getData(Lcom/huawei/i18n/taboo/Taboo;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    .line 112
    :cond_3
    move-object v1, v4

    .line 113
    .end local v2    # "formatKey":Ljava/lang/String;
    goto :goto_2

    .line 99
    :pswitch_1
    invoke-static {p2}, Lcom/huawei/i18n/taboo/FindTargetRules;->cityNameNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 101
    if-eqz p2, :cond_4

    invoke-static {p0, p2}, Lcom/huawei/i18n/taboo/TabooReader;->isContain(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/huawei/i18n/taboo/TabooReader;->getData(Lcom/huawei/i18n/taboo/Taboo;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    :cond_4
    move-object v1, v4

    .line 102
    goto :goto_2

    .line 95
    :pswitch_2
    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader;->getConfig(Lcom/huawei/i18n/taboo/Taboo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 96
    goto :goto_2

    .line 90
    :pswitch_3
    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader;->getConfig(Lcom/huawei/i18n/taboo/Taboo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 91
    goto :goto_2

    .line 85
    :pswitch_4
    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader;->getConfig(Lcom/huawei/i18n/taboo/Taboo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 86
    goto :goto_2

    .line 118
    :cond_5
    :goto_1
    move-object v1, v4

    .line 122
    :cond_6
    :goto_2
    return-object v1

    .line 81
    :cond_7
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized initAndcheckUpdate()V
    .locals 7

    const-class v0, Lcom/huawei/i18n/taboo/TabooReader;

    monitor-enter v0

    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 209
    .local v1, "currentTime":J
    sget-wide v3, Lcom/huawei/i18n/taboo/TabooReader;->lastReadTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-nez v3, :cond_0

    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->insideTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-nez v3, :cond_0

    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->preasTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-eqz v3, :cond_1

    :cond_0
    sget-wide v3, Lcom/huawei/i18n/taboo/TabooReader;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v3, v1, v3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_1
    :try_start_1
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->insideTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-nez v3, :cond_2

    .line 214
    const-string v3, "/system/emui/base/taboo"

    invoke-static {v3}, Lcom/huawei/i18n/taboo/Taboo;->getInstance(Ljava/lang/String;)Lcom/huawei/i18n/taboo/Taboo;

    move-result-object v3

    .line 215
    .local v3, "taboo":Lcom/huawei/i18n/taboo/Taboo;
    sput-object v3, Lcom/huawei/i18n/taboo/TabooReader;->insideTaboo:Lcom/huawei/i18n/taboo/Taboo;

    .line 217
    .end local v3    # "taboo":Lcom/huawei/i18n/taboo/Taboo;
    :cond_2
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->preasTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-nez v3, :cond_3

    .line 218
    const-string v3, "/preas/xml/taboo"

    invoke-static {v3}, Lcom/huawei/i18n/taboo/Taboo;->getInstance(Ljava/lang/String;)Lcom/huawei/i18n/taboo/Taboo;

    move-result-object v3

    .line 219
    .restart local v3    # "taboo":Lcom/huawei/i18n/taboo/Taboo;
    sput-object v3, Lcom/huawei/i18n/taboo/TabooReader;->preasTaboo:Lcom/huawei/i18n/taboo/Taboo;

    .line 222
    .end local v3    # "taboo":Lcom/huawei/i18n/taboo/Taboo;
    :cond_3
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    if-nez v3, :cond_5

    .line 223
    const-string v3, "/data/cota/para/taboo"

    invoke-static {v3}, Lcom/huawei/i18n/taboo/Taboo;->getInstance(Ljava/lang/String;)Lcom/huawei/i18n/taboo/Taboo;

    move-result-object v3

    .line 224
    .restart local v3    # "taboo":Lcom/huawei/i18n/taboo/Taboo;
    if-eqz v3, :cond_4

    .line 225
    sput-object v3, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    .line 227
    .end local v3    # "taboo":Lcom/huawei/i18n/taboo/Taboo;
    :cond_4
    goto :goto_0

    .line 228
    :cond_5
    const-string v3, "/data/cota/para/taboo"

    invoke-static {v3}, Lcom/huawei/i18n/taboo/ParseXml;->getFileLastModify(Ljava/lang/String;)J

    move-result-wide v3

    .line 229
    .local v3, "lastModify":J
    sget-object v5, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    invoke-virtual {v5}, Lcom/huawei/i18n/taboo/Taboo;->getLastmodify()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_6

    .line 230
    const-string v5, "/data/cota/para/taboo"

    invoke-static {v5}, Lcom/huawei/i18n/taboo/Taboo;->getInstance(Ljava/lang/String;)Lcom/huawei/i18n/taboo/Taboo;

    move-result-object v5

    sput-object v5, Lcom/huawei/i18n/taboo/TabooReader;->cloudTaboo:Lcom/huawei/i18n/taboo/Taboo;

    .line 233
    .end local v3    # "lastModify":J
    :cond_6
    :goto_0
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader;->sParam:Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    if-nez v3, :cond_7

    .line 234
    invoke-static {}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->getSystemParam()Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    move-result-object v3

    sput-object v3, Lcom/huawei/i18n/taboo/TabooReader;->sParam:Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 236
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/huawei/i18n/taboo/TabooReader;->lastReadTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    monitor-exit v0

    return-void

    .line 206
    .end local v1    # "currentTime":J
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isContain(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/lang/String;)Z
    .locals 5
    .param p0, "type"    # Lcom/huawei/i18n/taboo/TabooReader$ParamType;
    .param p1, "key"    # Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/huawei/i18n/taboo/TabooReader;->initAndcheckUpdate()V

    .line 133
    invoke-static {}, Lcom/huawei/i18n/taboo/TabooReader;->getCurrentTaboo()Lcom/huawei/i18n/taboo/Taboo;

    move-result-object v0

    .line 134
    .local v0, "current":Lcom/huawei/i18n/taboo/Taboo;
    const/4 v1, 0x0

    .line 135
    .local v1, "isContain":Z
    if-nez v0, :cond_0

    .line 136
    return v1

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/i18n/taboo/Taboo;->getmTabooConfig()Lcom/huawei/i18n/taboo/Taboo$TabooConfig;

    move-result-object v2

    .line 139
    .local v2, "tabooConfig":Lcom/huawei/i18n/taboo/Taboo$TabooConfig;
    if-eqz v2, :cond_1

    .line 140
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader$1;->$SwitchMap$com$huawei$i18n$taboo$TabooReader$ParamType:[I

    invoke-virtual {p0}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual {v2}, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->getRegionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 147
    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual {v2}, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->getLangList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 143
    goto :goto_0

    .line 150
    :pswitch_2
    invoke-virtual {v2}, Lcom/huawei/i18n/taboo/Taboo$TabooConfig;->getCityList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 151
    nop

    .line 158
    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
