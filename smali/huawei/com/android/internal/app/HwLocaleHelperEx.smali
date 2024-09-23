.class public Lhuawei/com/android/internal/app/HwLocaleHelperEx;
.super Ljava/lang/Object;
.source "HwLocaleHelperEx.java"

# interfaces
.implements Lcom/huawei/android/app/IHwLocaleHelperEx;


# static fields
.field private static final IS_DT:Z

.field private static final IS_HIDE_COUNTRY_NAME:Z

.field private static final IS_MKD:Z

.field private static final TAG:Ljava/lang/String; = "HwLocaleHelperEx"


# instance fields
.field mHWlpinner:Lcom/android/internal/app/IHwLocaleStoreInner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "ro.config.hw_optb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "807"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->IS_MKD:Z

    .line 29
    const-string v0, "ro.config.hw_opta"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "150"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->IS_DT:Z

    .line 30
    const-string v0, "ro.config.hw_hide_country_name"

    .line 31
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->IS_HIDE_COUNTRY_NAME:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IHwLocaleStoreInner;)V
    .locals 0
    .param p1, "inner"    # Lcom/android/internal/app/IHwLocaleStoreInner;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->mHWlpinner:Lcom/android/internal/app/IHwLocaleStoreInner;

    .line 38
    return-void
.end method

.method private formatParentheses(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .line 417
    move-object v0, p1

    .line 418
    .local v0, "tabooCountry":Ljava/lang/String;
    const-string v1, "\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const-string v1, "\uff08"

    const-string v2, "\uff3b"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 420
    const-string v1, "\uff09"

    const-string v2, "\uff3d"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 422
    :cond_0
    const-string v1, "("

    const-string v2, "["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v1, ")"

    const-string v2, "]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0
.end method

.method public static getBlackAllRegionsPart(Landroid/content/Context;Ljava/util/Locale;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackAllRegionsPart(Landroid/content/Context;Ljava/util/Locale;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getBlackAllRegionsPart(Landroid/content/Context;Ljava/util/Locale;Z)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "useTabooData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "blackRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackRegionsPart(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 101
    .local v1, "givenLocale":Landroid/icu/util/ULocale;
    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 102
    .local v2, "giveLikelyLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "giveLanguage":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "giveScript":Ljava/lang/String;
    invoke-static {p0, p2}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackLocalesPart(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 105
    .local v6, "blackLocaleStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 106
    .local v7, "blackLikelyLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 108
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v6    # "blackLocaleStr":Ljava/lang/String;
    .end local v7    # "blackLikelyLocale":Landroid/icu/util/ULocale;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    return-object v0
.end method

.method public static getBlackCities(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "blackCitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->BLACK_CITY:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/huawei/i18n/taboo/TabooReader;->getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "tabooCitys":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 266
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    return-object v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "black_timezone_cities"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "blackStrings":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 272
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    :cond_1
    return-object v0
.end method

.method public static getBlackLangsPart(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackLangsPart(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getBlackLangsPart(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useTabooData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "blackLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-static {p0, p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "blackString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 160
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 161
    .local v5, "localeStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 162
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    const-string v6, "-*"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "str":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    .line 165
    .local v7, "locale":Ljava/util/Locale;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v5    # "localeStr":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "locale":Ljava/util/Locale;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return-object v0
.end method

.method public static getBlackLocalesPart(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackLocalesPart(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getBlackLocalesPart(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useTabooData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "blackLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "blackString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 221
    return-object v0

    .line 223
    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 224
    .local v5, "localeStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 225
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 226
    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    .line 227
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 228
    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v5    # "localeStr":Ljava/lang/String;
    .end local v6    # "locale":Ljava/util/Locale;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_2
    return-object v0
.end method

.method public static getBlackRegionsPart(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackRegionsPart(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getBlackRegionsPart(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useTabooData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "blackRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "blackString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 197
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 198
    .local v5, "localeStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 199
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v5    # "localeStr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_1
    return-object v0
.end method

.method private static getBlackString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useTabooData"    # Z

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "blackString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 238
    .local v1, "cloudBlackString":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 239
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->TABOO_BLACK_LANG:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-static {v3, v2, v2}, Lcom/huawei/i18n/taboo/TabooReader;->getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "black_languages"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->BLACK_LANG:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-static {v3, v2, v2}, Lcom/huawei/i18n/taboo/TabooReader;->getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    :goto_0
    if-eqz v1, :cond_1

    .line 246
    move-object v0, v1

    .line 248
    :cond_1
    if-eqz v0, :cond_2

    .line 249
    const-string v2, "tl"

    const-string v3, "fil"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_2
    return-object v0
.end method

.method public static getCityName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "city"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Ljava/util/Locale;

    .line 285
    sget-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->CITY_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-static {v0, p1, p0}, Lcom/huawei/i18n/taboo/TabooReader;->getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;
    .param p3, "originalStr"    # Ljava/lang/String;

    .line 501
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 503
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    aget-object v2, p2, v1

    return-object v2

    .line 502
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "i":I
    :cond_1
    return-object p3
.end method

.method public static getTabooBlackAllRegionsPart(Landroid/content/Context;Ljava/util/Locale;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackAllRegionsPart(Landroid/content/Context;Ljava/util/Locale;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getTabooBlackLangs2String(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "blackLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "blackString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 135
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 136
    .local v5, "localeStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 137
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    const-string v6, "-*"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v5    # "localeStr":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-object v0
.end method

.method public static getTabooBlackLangsPart(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 179
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackLangsPart(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static isGreeceSIM()Z
    .locals 9

    .line 457
    const-string v0, "202"

    .line 458
    .local v0, "GREECE_CODE":Ljava/lang/String;
    const/4 v1, 0x4

    .line 459
    .local v1, "MIN_LENGTH":I
    const/4 v2, 0x3

    .line 460
    .local v2, "MCC_END":I
    const/4 v3, 0x0

    .line 461
    .local v3, "isGreece":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v4, "mccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "202"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v5, "persist.sys.mcc_match_fyrom"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, "simOperator":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 467
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_1

    .line 468
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_0

    .line 469
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 471
    :cond_0
    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 472
    const/4 v3, 0x1

    .line 476
    :cond_1
    return v3
.end method

.method private replaceDisplayCountryName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "displayLocale"    # Ljava/util/Locale;
    .param p3, "result"    # Ljava/lang/String;

    .line 396
    move-object v0, p3

    .line 397
    .local v0, "display":Ljava/lang/String;
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 398
    .local v1, "uDisplayLocale":Landroid/icu/util/ULocale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "icuCountry":Ljava/lang/String;
    invoke-direct {p0, v2}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->formatParentheses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->REGION_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    .line 401
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p2, v4}, Lcom/huawei/i18n/taboo/TabooReader;->getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "tabooCountry":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 403
    invoke-direct {p0, v3}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->formatParentheses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 405
    .local v4, "lastIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 406
    return-object v0

    .line 408
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "endDisplay":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "startDisplay":Ljava/lang/String;
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .end local v4    # "lastIndex":I
    .end local v5    # "endDisplay":Ljava/lang/String;
    .end local v6    # "startDisplay":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static replaceMKCountryName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;
    .param p2, "country"    # Ljava/lang/String;

    .line 344
    move-object v0, p2

    .line 345
    .local v0, "newCountry":Ljava/lang/String;
    const-string v1, "MK"

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "en"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v0, "North Macedonia"

    .line 349
    :cond_0
    return-object v0
.end method

.method private static replaceMKDisplayName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;
    .param p2, "result"    # Ljava/lang/String;

    .line 441
    move-object v0, p2

    .line 442
    .local v0, "replaceStr":Ljava/lang/String;
    const-string v1, "mk_MK"

    const-string v2, "mk"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "specialCode3":[Ljava/lang/String;
    const-string v2, "FYROM"

    const-string v3, "FYROM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "specialNames3":[Ljava/lang/String;
    const-string v3, "MK"

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "en"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    const-string v3, "Macedonia (FYROM)"

    const-string v4, "North Macedonia"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_0
    invoke-static {}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->isGreeceSIM()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->IS_DT:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->IS_MKD:Z

    if-eqz v3, :cond_2

    :cond_1
    sget-boolean v3, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->IS_DT:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->IS_MKD:Z

    if-nez v3, :cond_3

    .line 451
    :cond_2
    invoke-static {p0, v1, v2, p2}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getCustomDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_3
    return-object v0
.end method

.method private replaceMyDisplayName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "displayLocale"    # Ljava/util/Locale;
    .param p3, "display"    # Ljava/lang/String;

    .line 296
    move-object v0, p3

    .line 297
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 298
    .local v1, "systemLocale":Ljava/util/Locale;
    const-string v2, "my"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "my"

    .line 299
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    const-string v2, "ZG"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    const-string v2, "my-ZG"

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    goto :goto_0

    .line 303
    :cond_0
    const-string v2, "my"

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    .line 305
    :goto_0
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 306
    .local v2, "uDisplayLocale":Landroid/icu/util/ULocale;
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .end local v2    # "uDisplayLocale":Landroid/icu/util/ULocale;
    :cond_1
    return-object v0
.end method

.method private replaceParentheses(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "display"    # Ljava/lang/String;

    .line 429
    move-object v0, p1

    .line 430
    .local v0, "replaceDisplay":Ljava/lang/String;
    sget-boolean v1, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->IS_HIDE_COUNTRY_NAME:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 431
    const-string v1, "("

    const-string v2, "\uff08"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 432
    const-string v1, "\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "str":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 434
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 437
    .end local v1    # "str":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static replaceTestLocaleDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "display"    # Ljava/lang/String;

    .line 480
    const-string v0, "ar_XB"

    const-string v1, "en_XA"

    const-string v2, "zz_ZX"

    const-string v3, "zz"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "specialCodes":[Ljava/lang/String;
    const-string v1, "[Bidirection test locale]"

    const-string v2, "[Pseudo locale]"

    const-string v3, "[DBID version]"

    const-string v4, "[DBID version]"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "specialNames":[Ljava/lang/String;
    invoke-static {p0, v0, v1, p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getCustomDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getBlackLocales(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "blacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackRegionsPart(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackLocalesPart(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    return-object v0
.end method

.method public getCompareIntEx(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/List;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "rhs"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 48
    .local p3, "relatedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "lhsStr":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "rhsStr":Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    const-string v2, "-Latn"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v2, "-Latn"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_1
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->mHWlpinner:Lcom/android/internal/app/IHwLocaleStoreInner;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IHwLocaleStoreInner;->isSuggestedLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 56
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->mHWlpinner:Lcom/android/internal/app/IHwLocaleStoreInner;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IHwLocaleStoreInner;->getSuggestionTypeSim(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v2

    iget-object v4, p0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->mHWlpinner:Lcom/android/internal/app/IHwLocaleStoreInner;

    invoke-interface {v4, p2}, Lcom/android/internal/app/IHwLocaleStoreInner;->getSuggestionTypeSim(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v4

    if-ne v2, v4, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v2, v4, :cond_2

    .line 57
    return v3

    .line 60
    :cond_2
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->mHWlpinner:Lcom/android/internal/app/IHwLocaleStoreInner;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IHwLocaleStoreInner;->getSuggestionTypeSim(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_4

    .line 61
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    return v5

    .line 64
    :cond_3
    return v4

    .line 66
    :cond_4
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->mHWlpinner:Lcom/android/internal/app/IHwLocaleStoreInner;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IHwLocaleStoreInner;->getSuggestionTypeSim(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 67
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    return v4

    .line 70
    :cond_5
    return v5

    .line 73
    :cond_6
    return v3
.end method

.method public getRelatedLocalesEx()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "localeArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "relatedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-object v1
.end method

.method public replaceCountryName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "displayLocale"    # Ljava/util/Locale;
    .param p3, "giveString"    # Ljava/lang/String;

    .line 313
    move-object v0, p3

    .line 314
    .local v0, "display":Ljava/lang/String;
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 317
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 322
    .local v1, "uDisplayLocale":Landroid/icu/util/ULocale;
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "localeTag":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "en-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    :cond_1
    invoke-static {v2, v1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "icuCountry":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 328
    return-object v0

    .line 332
    :cond_2
    invoke-static {p1, p2, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->replaceMKCountryName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    sget-object v4, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->REGION_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    .line 335
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-static {v4, p2, v5}, Lcom/huawei/i18n/taboo/TabooReader;->getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "tabooCountry":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 337
    move-object v0, v4

    .line 339
    :cond_3
    return-object v0

    .line 318
    .end local v1    # "uDisplayLocale":Landroid/icu/util/ULocale;
    .end local v2    # "localeTag":Ljava/lang/String;
    .end local v3    # "icuCountry":Ljava/lang/String;
    .end local v4    # "tabooCountry":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v0
.end method

.method public replaceDisplayName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "displayLocale"    # Ljava/util/Locale;
    .param p3, "result"    # Ljava/lang/String;

    .line 354
    move-object v0, p3

    .line 355
    .local v0, "display":Ljava/lang/String;
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 356
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 359
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->replaceMyDisplayName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {p1, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->replaceTestLocaleDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {p1, p2, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->replaceMKDisplayName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "localeTag":Ljava/lang/String;
    sget-object v2, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->LANGUAGE_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-static {v2, p2, v1}, Lcom/huawei/i18n/taboo/TabooReader;->getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "changeName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 365
    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 368
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    :goto_0
    sget-object v3, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->LANGUAGE_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-static {v3, p2, v1}, Lcom/huawei/i18n/taboo/TabooReader;->getValue(Lcom/huawei/i18n/taboo/TabooReader$ParamType;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 374
    const-string v3, "[\\(|\u1363|\\)|\u060c|,|\u3001|\u2018|\uff08|\uff0c|\uff09|\u104a]"

    .line 377
    .local v3, "regex":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "transTaboo":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "transDisplay":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, "tabooArray":[Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "displayArray":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_3

    array-length v8, v7

    if-lez v8, :cond_3

    const/4 v8, 0x0

    aget-object v9, v6, v8

    if-eqz v9, :cond_3

    aget-object v9, v7, v8

    if-eqz v9, :cond_3

    .line 382
    aget-object v9, v7, v8

    aget-object v8, v6, v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_3
    array-length v8, v6

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    array-length v8, v7

    if-le v8, v9, :cond_4

    aget-object v8, v6, v9

    if-eqz v8, :cond_4

    aget-object v8, v7, v9

    if-eqz v8, :cond_4

    .line 385
    aget-object v8, v7, v9

    aget-object v9, v6, v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .end local v3    # "regex":Ljava/lang/String;
    .end local v4    # "transTaboo":Ljava/lang/String;
    .end local v5    # "transDisplay":Ljava/lang/String;
    .end local v6    # "tabooArray":[Ljava/lang/String;
    .end local v7    # "displayArray":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 389
    invoke-direct {p0, p1, p2, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->replaceDisplayCountryName(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_5
    invoke-direct {p0, v0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->replaceParentheses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    return-object v0

    .line 357
    .end local v1    # "localeTag":Ljava/lang/String;
    .end local v2    # "changeName":Ljava/lang/String;
    :cond_6
    :goto_1
    return-object v0
.end method
