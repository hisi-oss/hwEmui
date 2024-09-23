.class public Lhuawei/android/hwutil/SectionLocaleUtils;
.super Ljava/lang/Object;
.source "SectionLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hwutil/SectionLocaleUtils$SimplifiedChineseSectionUtils;,
        Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;,
        Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;
    }
.end annotation


# static fields
.field private static final DEFAULTNUMBERBUCKETINDEX:I

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field public static final LOCALE_ARABIC:Ljava/util/Locale;

.field public static final LOCALE_FARSI:Ljava/util/Locale;

.field public static final LOCALE_GREEK:Ljava/util/Locale;

.field public static final LOCALE_HEBREW:Ljava/util/Locale;

.field public static final LOCALE_HINDI:Ljava/util/Locale;

.field public static final LOCALE_THAI:Ljava/util/Locale;

.field public static final LOCALE_UKRAINIAN:Ljava/util/Locale;

.field private static sSingleton:Lhuawei/android/hwutil/SectionLocaleUtils;


# instance fields
.field private mLanguage:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mUtils:Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    .line 43
    new-instance v0, Ljava/util/Locale;

    const-string v1, "fa"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_FARSI:Ljava/util/Locale;

    .line 44
    new-instance v0, Ljava/util/Locale;

    const-string v1, "el"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    .line 45
    new-instance v0, Ljava/util/Locale;

    const-string v1, "he"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    .line 46
    new-instance v0, Ljava/util/Locale;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    .line 47
    new-instance v0, Ljava/util/Locale;

    const-string v1, "uk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    .line 48
    new-instance v0, Ljava/util/Locale;

    const-string v1, "hi"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_HINDI:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    goto :goto_0

    .line 60
    :cond_0
    iput-object p1, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    .line 62
    :goto_0
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLanguage:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLanguage:Ljava/lang/String;

    sget-object v1, Lhuawei/android/hwutil/SectionLocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;

    iget-object v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mUtils:Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;

    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Lhuawei/android/hwutil/SectionLocaleUtils$SimplifiedChineseSectionUtils;

    iget-object v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lhuawei/android/hwutil/SectionLocaleUtils$SimplifiedChineseSectionUtils;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mUtils:Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;

    goto :goto_1

    .line 68
    :cond_2
    new-instance v0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;

    iget-object v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mUtils:Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;

    .line 70
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/hwutil/SectionLocaleUtils;
    .locals 3

    const-class v0, Lhuawei/android/hwutil/SectionLocaleUtils;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lhuawei/android/hwutil/SectionLocaleUtils;->sSingleton:Lhuawei/android/hwutil/SectionLocaleUtils;

    if-eqz v1, :cond_0

    sget-object v1, Lhuawei/android/hwutil/SectionLocaleUtils;->sSingleton:Lhuawei/android/hwutil/SectionLocaleUtils;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhuawei/android/hwutil/SectionLocaleUtils;->isLocale(Ljava/util/Locale;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    new-instance v1, Lhuawei/android/hwutil/SectionLocaleUtils;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lhuawei/android/hwutil/SectionLocaleUtils;-><init>(Ljava/util/Locale;)V

    sput-object v1, Lhuawei/android/hwutil/SectionLocaleUtils;->sSingleton:Lhuawei/android/hwutil/SectionLocaleUtils;

    .line 76
    :cond_1
    sget-object v1, Lhuawei/android/hwutil/SectionLocaleUtils;->sSingleton:Lhuawei/android/hwutil/SectionLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLocaleScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 130
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "subtags":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-object v2, v1, v3

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    return-object v2
.end method

.method public static getScript()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/hwutil/SectionLocaleUtils;->getLocaleScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    const-class v0, Lhuawei/android/hwutil/SectionLocaleUtils;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lhuawei/android/hwutil/SectionLocaleUtils;->sSingleton:Lhuawei/android/hwutil/SectionLocaleUtils;

    if-eqz v1, :cond_0

    sget-object v1, Lhuawei/android/hwutil/SectionLocaleUtils;->sSingleton:Lhuawei/android/hwutil/SectionLocaleUtils;

    invoke-virtual {v1, p0}, Lhuawei/android/hwutil/SectionLocaleUtils;->isLocale(Ljava/util/Locale;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    new-instance v1, Lhuawei/android/hwutil/SectionLocaleUtils;

    invoke-direct {v1, p0}, Lhuawei/android/hwutil/SectionLocaleUtils;-><init>(Ljava/util/Locale;)V

    sput-object v1, Lhuawei/android/hwutil/SectionLocaleUtils;->sSingleton:Lhuawei/android/hwutil/SectionLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    monitor-exit v0

    return-void

    .line 79
    .end local p0    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBucketIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mUtils:Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "bucketIndex"    # I

    .line 117
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mUtils:Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 95
    .local v0, "ch":C
    const/16 v1, 0x3105

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3129

    if-gt v0, v1, :cond_0

    .line 96
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 98
    .end local v0    # "ch":C
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    .restart local v0    # "ch":C
    const/16 v1, 0x626

    if-ge v0, v1, :cond_2

    const/16 v1, 0x621

    if-le v0, v1, :cond_2

    .line 105
    const-string v1, "\u0622"

    return-object v1

    .line 109
    .end local v0    # "ch":C
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhuawei/android/hwutil/SectionLocaleUtils;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lhuawei/android/hwutil/SectionLocaleUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mUtils:Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 86
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
