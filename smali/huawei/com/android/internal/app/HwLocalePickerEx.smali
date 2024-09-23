.class public Lhuawei/com/android/internal/app/HwLocalePickerEx;
.super Ljava/lang/Object;
.source "HwLocalePickerEx.java"

# interfaces
.implements Lcom/huawei/android/app/IHwLocalePickerEx;


# instance fields
.field inner:Lcom/android/internal/app/IHwLocalePickerInner;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IHwLocalePickerInner;Landroid/content/Context;)V
    .locals 0
    .param p1, "inner"    # Lcom/android/internal/app/IHwLocalePickerInner;
    .param p2, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lhuawei/com/android/internal/app/HwLocalePickerEx;->inner:Lcom/android/internal/app/IHwLocalePickerInner;

    .line 31
    iput-object p2, p0, Lhuawei/com/android/internal/app/HwLocalePickerEx;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public isBlackLanguage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "language"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "isBlack":Z
    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 40
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocaleHelperEx;->getBlackLangsPart(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 41
    .local v2, "blackLanguage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    .line 42
    .local v4, "black":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    invoke-virtual {v1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_1

    .line 54
    .end local v4    # "black":Ljava/util/Locale;
    :cond_1
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    return v0
.end method
