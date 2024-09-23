.class public Lhuawei/com/android/internal/app/HwLocaleStoreEx;
.super Ljava/lang/Object;
.source "HwLocaleStoreEx.java"

# interfaces
.implements Lcom/huawei/android/app/IHwLocaleStoreEx;


# static fields
.field private static final GLOBAL_CONFIG:Ljava/lang/String; = "dialects.xml"

.field private static final dialectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final languagesK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final rDialectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->rDialectMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->languagesK:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillLanguageCache(Landroid/content/Context;Lcom/android/internal/app/IHwLocaleStoreInner;)Ljava/util/HashMap;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iHwLSI"    # Lcom/android/internal/app/IHwLocaleStoreInner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/IHwLocaleStoreInner;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 161
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/internal/app/IHwLocaleStoreInner;->getSimCountriesEx(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 162
    .local v2, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static/range {p0 .. p0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackRegionsPart(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "development_settings_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 170
    .local v3, "isInDeveloperMode":Z
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v6, "relatedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackLocalesPart(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 176
    .local v7, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_5

    aget-object v11, v8, v10

    .line 177
    .local v11, "localeId":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 180
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 181
    goto :goto_3

    .line 183
    :cond_1
    invoke-static {v11}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v12

    .line 186
    .local v12, "locale":Ljava/util/Locale;
    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 187
    sget-object v13, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    sget-object v13, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {v11}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getMainLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, "matchLocaleId":Ljava/lang/String;
    :goto_2
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v11    # "localeId":Ljava/lang/String;
    .end local v12    # "locale":Ljava/util/Locale;
    .end local v13    # "matchLocaleId":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 178
    .restart local v11    # "localeId":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/util/IllformedLocaleException;

    const-string v5, "Bad locale entry in locale_config.xml"

    invoke-direct {v4, v5}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    .end local v11    # "localeId":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v8, "systemAssetLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v5

    :goto_4
    if-ge v11, v10, :cond_6

    aget-object v12, v9, v11

    .line 194
    .local v12, "sAssetLocale":Ljava/lang/String;
    invoke-static {v12}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getLangScriptLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v12    # "sAssetLocale":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 196
    :cond_6
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v9, "sLocaleLanguageCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static/range {p0 .. p0}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getSupportedLanguagesFromConfig(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "supportLanguages":[Ljava/lang/String;
    array-length v11, v10

    :goto_5
    if-ge v5, v11, :cond_c

    aget-object v12, v10, v5

    .line 200
    .local v12, "localeId":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 203
    invoke-interface {v0, v12}, Lcom/android/internal/app/IHwLocaleStoreInner;->getLanguageLocaleInfo(Ljava/lang/String;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v13

    .line 205
    .local v13, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 207
    if-eqz v3, :cond_a

    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 208
    invoke-virtual {v13, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 209
    invoke-interface {v0, v13, v4}, Lcom/android/internal/app/IHwLocaleStoreInner;->setPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 210
    invoke-interface {v0, v13}, Lcom/android/internal/app/IHwLocaleStoreInner;->setSuggestionTypeSim(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 217
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 218
    .local v15, "tRelatedLocale":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 219
    invoke-interface {v0, v13}, Lcom/android/internal/app/IHwLocaleStoreInner;->setSuggestionTypeSim(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 221
    .end local v15    # "tRelatedLocale":Ljava/lang/String;
    :cond_8
    goto :goto_6

    .line 222
    :cond_9
    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getLangScriptLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v14

    .line 223
    .local v14, "mainLocale":Ljava/util/Locale;
    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v13, v15}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 224
    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v12    # "localeId":Ljava/lang/String;
    .end local v13    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v14    # "mainLocale":Ljava/util/Locale;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 201
    .restart local v12    # "localeId":Ljava/lang/String;
    :cond_b
    new-instance v4, Ljava/util/IllformedLocaleException;

    const-string v5, "Bad locale entry in language_lists.xml"

    invoke-direct {v4, v5}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    .end local v12    # "localeId":Ljava/lang/String;
    :cond_c
    return-object v9
.end method

.method private static fillRegionCache(Landroid/content/Context;Ljava/util/Locale;Lcom/android/internal/app/IHwLocaleStoreInner;)Ljava/util/HashMap;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "iHwLSI"    # Lcom/android/internal/app/IHwLocaleStoreInner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Lcom/android/internal/app/IHwLocaleStoreInner;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 242
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "defLocaleStr":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getLangScriptLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "tLanguageScript":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v3, "languageZG":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "en"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v4, "en-Latn"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v4, "my"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v4, "zh-Hans"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v4, "zh-Hant"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    move-object/from16 v4, p0

    invoke-interface {v0, v4}, Lcom/android/internal/app/IHwLocaleStoreInner;->getSimCountriesEx(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 251
    .local v5, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 252
    .local v6, "countryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    const-string v7, "ZG"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    const-string v7, "en-XA"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 256
    const-string v7, "XA"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_1
    const-string v7, "ar-XB"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 258
    const-string v7, "XB"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_2
    :goto_0
    invoke-static/range {p0 .. p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackAllRegionsPart(Landroid/content/Context;Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v7

    .line 261
    .local v7, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v6, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 262
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v8, "sLocaleRegionCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 264
    .local v10, "country":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 267
    move-object/from16 v11, p1

    invoke-static {v11, v10}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getRegionChangeLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "localeId":Ljava/lang/String;
    sget-object v13, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->languagesK:Ljava/util/Set;

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 270
    sget-object v13, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 271
    sget-object v13, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->rDialectMap:Ljava/util/HashMap;

    sget-object v14, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 272
    goto :goto_1

    .line 275
    :cond_3
    sget-object v13, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 276
    goto :goto_1

    .line 282
    :cond_4
    invoke-interface {v0, v12}, Lcom/android/internal/app/IHwLocaleStoreInner;->getLanguageLocaleInfo(Ljava/lang/String;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v13

    .line 284
    .local v13, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 286
    invoke-interface {v0, v13}, Lcom/android/internal/app/IHwLocaleStoreInner;->setSuggestionTypeSim(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 289
    :cond_5
    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .end local v10    # "country":Ljava/lang/String;
    .end local v12    # "localeId":Ljava/lang/String;
    .end local v13    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_1

    .line 265
    .restart local v10    # "country":Ljava/lang/String;
    :cond_6
    move-object/from16 v11, p1

    new-instance v9, Ljava/util/IllformedLocaleException;

    const-string v12, "Bad locale entry in locale_config.xml"

    invoke-direct {v9, v12}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 293
    .end local v10    # "country":Ljava/lang/String;
    :cond_7
    move-object/from16 v11, p1

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 294
    .local v9, "localizedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v10, "systemAssetLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_8

    aget-object v15, v12, v14

    .line 296
    .local v15, "sAssetLocale":Ljava/lang/String;
    move-object/from16 v16, v1

    invoke-static {v15}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .end local v1    # "defLocaleStr":Ljava/lang/String;
    .local v16, "defLocaleStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v15    # "sAssetLocale":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    goto :goto_2

    .line 298
    .end local v16    # "defLocaleStr":Ljava/lang/String;
    .restart local v1    # "defLocaleStr":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v1

    .end local v1    # "defLocaleStr":Ljava/lang/String;
    .restart local v16    # "defLocaleStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 299
    .local v1, "isTranslated":Z
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Locale;

    .line 300
    .local v13, "assetLocale":Ljava/util/Locale;
    invoke-virtual {v13}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 301
    const/4 v1, 0x1

    .line 302
    goto :goto_4

    .line 304
    .end local v13    # "assetLocale":Ljava/util/Locale;
    :cond_9
    goto :goto_3

    .line 306
    :cond_a
    :goto_4
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 307
    .local v13, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v14

    .line 308
    .local v14, "likelyLocale":Ljava/util/Locale;
    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 309
    invoke-interface {v0, v13}, Lcom/android/internal/app/IHwLocaleStoreInner;->setSuggestionTypeCfg(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 311
    :cond_b
    invoke-virtual {v13, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 312
    .end local v13    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v14    # "likelyLocale":Ljava/util/Locale;
    goto :goto_5

    .line 313
    :cond_c
    return-object v8
.end method

.method private static getCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 351
    .local v0, "countries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 352
    .local v4, "localeId":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 353
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v4    # "localeId":Ljava/lang/String;
    .end local v5    # "locale":Ljava/util/Locale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_0
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 356
    const-string v1, "XA"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 357
    const-string v1, "XB"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 358
    const-string v1, "ZG"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 359
    const-string v1, "ZX"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 360
    return-object v0
.end method

.method private static getDialectsDocument(Ljava/lang/String;Landroid/content/Context;)Lorg/w3c/dom/Document;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "localeInputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 394
    .local v1, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 395
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 396
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 397
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 402
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    if-eqz v0, :cond_0

    .line 404
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    :goto_0
    goto :goto_2

    .line 405
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Fate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v5, "Can not parse the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 402
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 398
    :catch_1
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Fate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 404
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 405
    :catch_2
    move-exception v2

    .line 407
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Fate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 411
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v1

    .line 402
    :goto_3
    if-eqz v0, :cond_1

    .line 404
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 408
    goto :goto_4

    .line 405
    :catch_3
    move-exception v3

    .line 407
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not parse the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Fate"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v2
.end method

.method private static getLangScriptLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 364
    const-string v0, ""

    invoke-static {p0, v0}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getRegionChangeLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static getLanguageLocaleStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localeStr"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "specialCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ar-XB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "en-XA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "zz-ZX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {p0}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->initDialectsData(Landroid/content/Context;)V

    .line 101
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    return-object p1

    .line 104
    :cond_0
    sget-object v1, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getMainLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1
.end method

.method private static getMainLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localeId"    # Ljava/lang/String;

    .line 381
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 382
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getLangScriptLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "langScript":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v2, "sameLanguageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "en"

    const-string v4, "en-US"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v3, "es"

    const-string v4, "es-ES"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v3, "zh-Hant"

    const-string v4, "zh-Hant-TW"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    return-object v3
.end method

.method private static getRegionChangeLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "region"    # Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 372
    .local v0, "localeBuilder":Ljava/util/Locale$Builder;
    :try_start_0
    new-instance v1, Ljava/util/Locale$Builder;

    invoke-direct {v1}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 375
    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/util/IllformedLocaleException;
    const-string v2, "LocaleStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v1    # "e":Ljava/util/IllformedLocaleException;
    :goto_0
    const/16 v1, 0x75

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v1

    .line 376
    return-object v1
.end method

.method private static getSupportedLanguagesFromConfig(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 232
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v0, "realList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {p0, v1}, Lcom/android/internal/app/LocalePicker;->getRealLocaleListStaticEx(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 235
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 236
    .local v1, "size":I
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static initDialectsData(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .line 415
    sget-object v0, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    return-void

    .line 417
    :cond_0
    const-string v0, "dialects.xml"

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getDialectsDocument(Ljava/lang/String;Landroid/content/Context;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 418
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_2

    .line 419
    const-string v2, "index"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 420
    .local v2, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 421
    .local v3, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 422
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 423
    .local v6, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v7, "language"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 424
    .local v7, "language":Ljava/lang/String;
    const-string v8, "locales"

    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, "locales":Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "localeArray":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v10, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    sget-object v11, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->rDialectMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {v7}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getLangScriptLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    .line 430
    .local v11, "languageK":Ljava/lang/String;
    sget-object v12, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->languagesK:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_1

    aget-object v15, v12, v14

    .line 432
    .local v15, "locale":Ljava/lang/String;
    sget-object v4, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v4, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .end local v15    # "locale":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 421
    .end local v6    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "language":Ljava/lang/String;
    .end local v8    # "locales":Ljava/lang/String;
    .end local v9    # "localeArray":[Ljava/lang/String;
    .end local v10    # "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "languageK":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "nl":Lorg/w3c/dom/NodeList;
    .end local v3    # "len":I
    .end local v5    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getDialectsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localeTag"    # Ljava/lang/String;

    .line 441
    invoke-static {p1, p2}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getLanguageLocaleStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullLanguageName(Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "displayLocale"    # Ljava/util/Locale;

    .line 76
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getLanguageLocaleStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "dLocaleStr":Ljava/lang/String;
    const-string v1, "en-US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v0, "en"

    goto :goto_2

    .line 82
    :cond_0
    const-string v1, "es-Latn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "es-ES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    const-string v1, "pt-Latn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pt-PT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "zh-Hant-TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    const-string v0, "zh-Hant"

    goto :goto_2

    .line 86
    :cond_3
    :goto_0
    const-string v0, "pt"

    goto :goto_2

    .line 83
    :cond_4
    :goto_1
    const-string v0, "es"

    .line 91
    :cond_5
    :goto_2
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 92
    .local v1, "dLocale":Ljava/util/Locale;
    const/4 v2, 0x1

    invoke-static {v1, p3, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLanguageLocales(Landroid/content/Context;Lcom/android/internal/app/IHwLocaleStoreInner;)Ljava/util/Set;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iHwLSI"    # Lcom/android/internal/app/IHwLocaleStoreInner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/IHwLocaleStoreInner;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->initDialectsData(Landroid/content/Context;)V

    .line 323
    invoke-static {p1, p2}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->fillLanguageCache(Landroid/content/Context;Lcom/android/internal/app/IHwLocaleStoreInner;)Ljava/util/HashMap;

    move-result-object v0

    .line 325
    .local v0, "sLocaleLanguageCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 326
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 327
    .local v3, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v3    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_0

    .line 329
    :cond_0
    return-object v1
.end method

.method public getRegionLocales(Landroid/content/Context;Ljava/util/Locale;Lcom/android/internal/app/IHwLocaleStoreInner;)Ljava/util/Set;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "iHwLSI"    # Lcom/android/internal/app/IHwLocaleStoreInner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Lcom/android/internal/app/IHwLocaleStoreInner;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->initDialectsData(Landroid/content/Context;)V

    .line 340
    invoke-static {p1, p2, p3}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->fillRegionCache(Landroid/content/Context;Ljava/util/Locale;Lcom/android/internal/app/IHwLocaleStoreInner;)Ljava/util/HashMap;

    move-result-object v0

    .line 342
    .local v0, "sLocaleRegionCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 344
    .local v3, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v3    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_0

    .line 346
    :cond_0
    return-object v1
.end method

.method public isSupportRegion(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "region"    # Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->initDialectsData(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "selectLanguageTag":Ljava/lang/String;
    invoke-static {p2, p3}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getRegionChangeLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "newLocale":Ljava/lang/String;
    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackLocalesPart(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 123
    return v3

    .line 125
    :cond_0
    const-string v2, "ar-XB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_8

    const-string v2, "en-XA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 128
    :cond_1
    const-string v2, "XA"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "XB"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {p2}, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->getLangScriptLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "selectLanguage":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v5, "languageZG":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "en"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v6, "en-Latn"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v6, "my"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v6, "zh-Hans"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v6, "zh-Hant"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v6, "ZG"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 139
    return v3

    .line 141
    :cond_3
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    return v4

    .line 146
    :cond_4
    sget-object v3, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->languagesK:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 147
    return v4

    .line 149
    :cond_5
    sget-object v3, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 150
    sget-object v3, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->rDialectMap:Ljava/util/HashMap;

    sget-object v4, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 152
    :cond_6
    sget-object v3, Lhuawei/com/android/internal/app/HwLocaleStoreEx;->dialectMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    return v3

    .line 129
    .end local v2    # "selectLanguage":Ljava/lang/String;
    .end local v5    # "languageZG":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_0
    return v3

    .line 126
    :cond_8
    :goto_1
    return v4
.end method
