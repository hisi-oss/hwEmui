.class Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;
.super Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;
.source "SectionLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwutil/SectionLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JapaneseSectionUtils"
.end annotation


# static fields
.field private static final CJ_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAPANESE_MISC_LABEL:Ljava/lang/String; = "\u4ed6"


# instance fields
.field private final mMiscBucketIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 265
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;->CJ_BLOCKS:Ljava/util/Set;

    .line 279
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 252
    invoke-direct {p0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;-><init>(Ljava/util/Locale;)V

    .line 253
    const-string v0, "\u65e5"

    invoke-super {p0, v0}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;->mMiscBucketIndex:I

    .line 254
    return-void
.end method

.method private static isChineseOrJapanese(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .line 282
    sget-object v0, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;->CJ_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBucketCount()I
    .locals 1

    .line 305
    invoke-super {p0}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->getBucketCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 291
    invoke-super {p0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, "bucketIndex":I
    iget v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;->mMiscBucketIndex:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;->isChineseOrJapanese(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;->mMiscBucketIndex:I

    if-le v0, v1, :cond_2

    .line 294
    :cond_1
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 296
    :cond_2
    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "bucketIndex"    # I

    .line 316
    iget v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;->mMiscBucketIndex:I

    if-ne p1, v0, :cond_0

    .line 317
    const-string v0, "\u4ed6"

    return-object v0

    .line 318
    :cond_0
    iget v0, p0, Lhuawei/android/hwutil/SectionLocaleUtils$JapaneseSectionUtils;->mMiscBucketIndex:I

    if-le p1, v0, :cond_1

    .line 319
    add-int/lit8 p1, p1, -0x1

    .line 321
    :cond_1
    invoke-super {p0, p1}, Lhuawei/android/hwutil/SectionLocaleUtils$SectionLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
