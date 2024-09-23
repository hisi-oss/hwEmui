.class Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;
.super Ljava/lang/Object;
.source "SectionLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwutil/SectionLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionLocaleUtilsBase"
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final NUMBER_STRING:Ljava/lang/String; = "#"


# instance fields
.field protected final mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private final mAlphabeticIndexBucketCount:I

.field private final mCurrentLocale:Ljava/util/Locale;

.field private final mNumberBucketIndex:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mCurrentLocale:Ljava/util/Locale;

    .line 155
    sget-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    .line 156
    .local v0, "arabicScriptLocale":Ljava/util/Locale;
    const-string v1, "fa"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sget-object v0, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_FARSI:Ljava/util/Locale;

    .line 160
    :cond_0
    new-instance v1, Landroid/icu/text/AlphabeticIndex;

    invoke-direct {v1, p1}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex;->setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 161
    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    aput-object v4, v3, v5

    .line 162
    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Locale;

    aput-object v0, v3, v5

    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    aput-object v4, v3, v5

    .line 163
    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Locale;

    sget-object v4, Lhuawei/android/hwutil/SectionLocaleUtils;->LOCALE_HINDI:Ljava/util/Locale;

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 165
    iget-object v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result v1

    iput v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    .line 166
    iget v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mNumberBucketIndex:I

    .line 167
    return-void
.end method

.method private isCodePointIllegal(I)Z
    .locals 1
    .param p1, "codePoint"    # I

    .line 171
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "illegal":Z
    :goto_0
    return v0
.end method


# virtual methods
.method public getBucketCount()I
    .locals 1

    .line 224
    iget v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "prefixIsNumeric":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 181
    .local v1, "length":I
    const/4 v2, 0x0

    .line 182
    .local v2, "offset":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 183
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 185
    .local v3, "codePoint":I
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 187
    goto :goto_1

    .line 188
    :cond_0
    invoke-direct {p0, v3}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->isCodePointIllegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    goto :goto_1

    .line 192
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 193
    .end local v3    # "codePoint":I
    goto :goto_0

    .line 197
    :cond_2
    :goto_1
    iget-object v3, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v3, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v3

    .line 198
    .local v3, "bucket":I
    if-gez v3, :cond_3

    .line 199
    const/4 v4, -0x1

    return v4

    .line 201
    :cond_3
    iget v4, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mNumberBucketIndex:I

    if-lt v3, v4, :cond_4

    .line 202
    add-int/lit8 v4, v3, 0x1

    return v4

    .line 211
    :cond_4
    const-string v4, "TW"

    iget-object v5, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 212
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 214
    .local v4, "codePoint":I
    const/16 v5, 0x311d

    const/16 v6, 0x3105

    if-lt v4, v6, :cond_5

    if-gt v4, v5, :cond_5

    .line 215
    add-int/lit16 v5, v4, -0x3105

    add-int/lit8 v5, v5, 0x1

    return v5

    .line 216
    :cond_5
    if-lt v4, v5, :cond_6

    const/16 v5, 0x3129

    if-gt v4, v5, :cond_6

    .line 217
    add-int/lit16 v5, v4, -0x3106

    add-int/lit8 v5, v5, 0x1

    return v5

    .line 220
    .end local v4    # "codePoint":I
    :cond_6
    return v3
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "bucketIndex"    # I

    .line 228
    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->getBucketCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    if-nez p1, :cond_1

    .line 231
    const-string v0, "#"

    return-object v0

    .line 232
    :cond_1
    iget v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mNumberBucketIndex:I

    if-le p1, v0, :cond_2

    .line 233
    add-int/lit8 p1, p1, -0x1

    .line 236
    :cond_2
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 229
    :cond_4
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 242
    return-object p1
.end method
