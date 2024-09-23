.class public Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;
.super Ljava/lang/Object;
.source "HwSuggestedLocaleAdapterEx.java"

# interfaces
.implements Lcom/huawei/android/app/IHwSuggestedLocaleAdapterEx;


# static fields
.field private static final MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field private static final TYPE_HEADER_ADDED:I = 0x3

.field private static final TYPE_HEADER_ALL_OTHERS:I = 0x1

.field private static final TYPE_HEADER_SUGGESTED:I = 0x0

.field private static final TYPE_LOCALE:I = 0x2


# instance fields
.field private addedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAddedCount:I

.field private mContext:Landroid/content/Context;

.field private mIsAddedLanguages:Z

.field private mOriginalLocaleInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "inner"    # Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isAddedLanguages"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    .line 73
    iput-object p2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean p3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    .line 76
    return-void
.end method


# virtual methods
.method public changeAddedLanguagesPos(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p2, "mLocaleOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    .line 205
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v0}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->isCountryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 208
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->isSuggestedLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getSuggestionCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->setSuggestionCount(I)V

    .line 211
    :cond_0
    invoke-virtual {p2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public changePerformFiltering(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 219
    move-object v0, p1

    .line 220
    .local v0, "mPrefix":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    .line 222
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mOriginalLocaleInfo:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getmLocaleOptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mOriginalLocaleInfo:Ljava/util/ArrayList;

    .line 224
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    if-ge v2, v3, :cond_0

    .line 225
    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mOriginalLocaleInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 234
    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v3, v1}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->setSuggestionCount(I)V

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mOriginalLocaleInfo:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 237
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getmOriginalLocaleOptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 229
    :cond_3
    :goto_1
    iget-object v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v1}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->isCountryMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 230
    iput-boolean v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    .line 232
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getmOriginalLocaleOptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :goto_2
    nop

    .line 240
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->isCountryMode()Z

    move-result v3

    if-nez v3, :cond_6

    .line 241
    iput-boolean v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    .line 243
    :cond_6
    return-object v1
.end method

.method public getSuggestionCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "count"    # I

    .line 253
    move v0, p2

    .line 254
    .local v0, "suggestionCount":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 255
    :cond_0
    iget-object v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 257
    .local v1, "addedSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 258
    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 259
    .local v3, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-object v4, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v4, v3}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->isSuggestedLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    if-lez v0, :cond_1

    .line 261
    add-int/lit8 v0, v0, -0x1

    .line 257
    .end local v3    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "addedSize":I
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public init(Ljava/util/Set;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    .local p2, "mLocaleOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    .line 83
    iget-boolean v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 87
    .local v0, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 89
    .local v1, "localeListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_7

    .line 90
    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 91
    .local v3, "userLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "country":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "language":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "languageTag":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 96
    .local v8, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    .line 97
    .local v9, "locale":Ljava/util/Locale;
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwLocaleStoreEx()Lcom/huawei/android/app/IHwLocaleStoreEx;

    move-result-object v10

    iget-object v11, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mContext:Landroid/content/Context;

    invoke-interface {v10, v11, v9, v4}, Lcom/huawei/android/app/IHwLocaleStoreEx;->isSupportRegion(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v10

    .line 98
    .local v10, "isSupport":Z
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, "localeId":Ljava/lang/String;
    const-string v12, "en-XA"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "ar-XB"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "en-XA"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "ar-XB"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    .line 106
    :cond_1
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v10, :cond_5

    .line 107
    const-string v12, "zh"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 108
    iget-object v12, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v12, v8}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getLocaleInfoScript(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 109
    iget-object v12, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 113
    :cond_2
    const-string v12, "Latn"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "Latn"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 114
    iget-object v7, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    goto :goto_4

    .line 118
    :cond_3
    const-string v12, "Latn"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "Latn"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 119
    iget-object v7, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    goto :goto_4

    .line 100
    :cond_4
    :goto_2
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 101
    iget-object v7, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->addedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    goto :goto_4

    .line 126
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v9    # "locale":Ljava/util/Locale;
    .end local v10    # "isSupport":Z
    .end local v11    # "localeId":Ljava/lang/String;
    :cond_5
    :goto_3
    goto/16 :goto_1

    .line 89
    .end local v3    # "userLocale":Ljava/util/Locale;
    .end local v4    # "country":Ljava/lang/String;
    .end local v5    # "language":Ljava/lang/String;
    .end local v6    # "languageTag":Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 128
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method public isAddedLanguages()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    return v0
.end method

.method public preGetCount(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)I"
        }
    .end annotation

    .line 158
    .local p1, "mLocaleOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-boolean v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    if-nez v0, :cond_1

    .line 163
    const/4 v0, -0x1

    return v0

    .line 165
    :cond_1
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v0}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->isShowHeaders()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0

    .line 168
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 159
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public preGetItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .line 132
    iget-boolean v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    if-nez v0, :cond_0

    .line 133
    const/4 v0, -0x1

    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v0}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->isShowHeaders()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 136
    if-nez p1, :cond_1

    .line 137
    return v1

    .line 138
    :cond_1
    iget v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    .line 139
    return v3

    .line 141
    :cond_2
    return v2

    .line 144
    :cond_3
    if-nez p1, :cond_4

    .line 145
    return v1

    .line 146
    :cond_4
    iget v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_5

    .line 147
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_5
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v0}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getSuggestionCount()I

    move-result v0

    iget v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_6

    .line 149
    return v3

    .line 151
    :cond_6
    return v2
.end method

.method public rePlaceGetItem(ILjava/util/ArrayList;)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 174
    .local p2, "mLocaleOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-nez p2, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "offset":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 179
    .local v1, "size":I
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v2}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->isShowHeaders()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz v2, :cond_5

    .line 180
    iget-boolean v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    if-eqz v2, :cond_3

    .line 181
    iget v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_1

    .line 182
    const/4 v0, -0x1

    goto :goto_0

    .line 183
    :cond_1
    iget v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    iget-object v3, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getSuggestionCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_2

    .line 184
    const/4 v0, -0x2

    goto :goto_0

    .line 186
    :cond_2
    const/4 v0, -0x3

    goto :goto_0

    .line 189
    :cond_3
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    invoke-interface {v2}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getSuggestionCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_4

    move v3, v4

    nop

    :cond_4
    move v0, v3

    goto :goto_0

    .line 191
    :cond_5
    iget-boolean v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mIsAddedLanguages:Z

    if-eqz v2, :cond_7

    .line 192
    iget v2, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mAddedCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_6

    move v3, v4

    nop

    :cond_6
    move v0, v3

    .line 194
    :cond_7
    :goto_0
    add-int v2, p1, v0

    if-ge v2, v1, :cond_8

    .line 195
    add-int v2, p1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 197
    :cond_8
    add-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public setDefaultItemDivider(Landroid/view/View;II)V
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "lastPosition"    # I

    .line 281
    const v0, 0x21001ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, "divider":Landroid/view/View;
    if-ge p2, p3, :cond_0

    iget-object v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    add-int/lit8 v2, p2, 0x1

    .line 283
    invoke-interface {v1, v2}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getItemViewTypeEx(I)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhuawei/com/android/internal/app/HwSuggestedLocaleAdapterEx;->mSlaInner:Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;

    add-int/lit8 v2, p2, 0x1

    .line 284
    invoke-interface {v1, v2}, Lcom/android/internal/app/IHwSuggestedLocaleAdapterInner;->getItemViewTypeEx(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    :cond_0
    if-ne p2, p3, :cond_2

    .line 285
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 287
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :goto_0
    return-void
.end method

.method public setHeaderDivider(Landroid/view/View;I)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 272
    const v0, 0x21001ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "divider":Landroid/view/View;
    if-nez p2, :cond_0

    .line 274
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :goto_0
    return-void
.end method
