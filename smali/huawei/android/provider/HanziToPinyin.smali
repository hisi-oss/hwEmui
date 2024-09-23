.class public Lhuawei/android/provider/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/provider/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static sInstance:Lhuawei/android/provider/HanziToPinyin;


# instance fields
.field private mAsciiTransliterator:Landroid/icu/text/Transliterator;

.field final mMultiPinyin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPinyinTransliterator:Landroid/icu/text/Transliterator;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lhuawei/android/provider/HanziToPinyin$1;

    invoke-direct {v0, p0}, Lhuawei/android/provider/HanziToPinyin$1;-><init>(Lhuawei/android/provider/HanziToPinyin;)V

    iput-object v0, p0, Lhuawei/android/provider/HanziToPinyin;->mMultiPinyin:Ljava/util/HashMap;

    .line 80
    :try_start_0
    const-string v0, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/provider/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    .line 81
    const-string v0, "Latin-Ascii"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/provider/HanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HanziToPinyin"

    const-string v2, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Lhuawei/android/provider/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .line 267
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhuawei/android/provider/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lhuawei/android/provider/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lhuawei/android/provider/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    return-void
.end method

.method private checkMultiPinyin(Lhuawei/android/provider/HanziToPinyin$Token;)V
    .locals 6
    .param p1, "token"    # Lhuawei/android/provider/HanziToPinyin$Token;

    .line 182
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    iget v1, p1, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p1, Lhuawei/android/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 186
    .local v0, "src":Ljava/lang/String;
    iget-object v1, p1, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 187
    .local v1, "tgt":Ljava/lang/String;
    iget-object v2, p0, Lhuawei/android/provider/HanziToPinyin;->mMultiPinyin:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "pinyin":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    iput-object v2, p1, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 190
    const-string v3, "HanziToPinyin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set new pinyin for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    return-void

    .line 183
    .end local v0    # "src":Ljava/lang/String;
    .end local v1    # "tgt":Ljava/lang/String;
    .end local v2    # "pinyin":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method public static getInstance()Lhuawei/android/provider/HanziToPinyin;
    .locals 2

    .line 93
    const-class v0, Lhuawei/android/provider/HanziToPinyin;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lhuawei/android/provider/HanziToPinyin;->sInstance:Lhuawei/android/provider/HanziToPinyin;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lhuawei/android/provider/HanziToPinyin;

    invoke-direct {v1}, Lhuawei/android/provider/HanziToPinyin;-><init>()V

    sput-object v1, Lhuawei/android/provider/HanziToPinyin;->sInstance:Lhuawei/android/provider/HanziToPinyin;

    .line 97
    :cond_0
    sget-object v1, Lhuawei/android/provider/HanziToPinyin;->sInstance:Lhuawei/android/provider/HanziToPinyin;

    monitor-exit v0

    return-object v1

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tokenize(CLhuawei/android/provider/HanziToPinyin$Token;)V
    .locals 2
    .param p1, "character"    # C
    .param p2, "token"    # Lhuawei/android/provider/HanziToPinyin$Token;

    .line 102
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 106
    iput v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    .line 107
    iget-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 108
    return-void

    .line 112
    :cond_0
    const/16 v1, 0x250

    if-lt p1, v1, :cond_4

    const/16 v1, 0x1e00

    if-gt v1, p1, :cond_1

    const/16 v1, 0x1eff

    if-ge p1, v1, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x2

    iput v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    .line 120
    iget-object v0, p0, Lhuawei/android/provider/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    iget-object v1, p2, Lhuawei/android/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 121
    iget-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    iget-object v1, p2, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 122
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    :cond_2
    const/4 v0, 0x3

    iput v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    .line 124
    iget-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 126
    :cond_3
    return-void

    .line 113
    :cond_4
    :goto_0
    iput v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    .line 114
    iget-object v0, p0, Lhuawei/android/provider/HanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;

    if-nez v0, :cond_5

    iget-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_5
    iget-object v0, p0, Lhuawei/android/provider/HanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;

    iget-object v1, p2, Lhuawei/android/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p2, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lhuawei/android/provider/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhuawei/android/provider/HanziToPinyin$Token;>;"
    invoke-virtual {p0}, Lhuawei/android/provider/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 140
    .local v1, "inputLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 142
    .local v3, "tokenType":I
    new-instance v4, Lhuawei/android/provider/HanziToPinyin$Token;

    invoke-direct {v4}, Lhuawei/android/provider/HanziToPinyin$Token;-><init>()V

    .line 148
    .local v4, "token":Lhuawei/android/provider/HanziToPinyin$Token;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_6

    .line 149
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 150
    .local v6, "character":C
    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 152
    invoke-direct {p0, v2, v0, v3}, Lhuawei/android/provider/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 155
    :cond_1
    invoke-direct {p0, v6, v4}, Lhuawei/android/provider/HanziToPinyin;->tokenize(CLhuawei/android/provider/HanziToPinyin$Token;)V

    .line 156
    iget v7, v4, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 158
    invoke-direct {p0, v4}, Lhuawei/android/provider/HanziToPinyin;->checkMultiPinyin(Lhuawei/android/provider/HanziToPinyin$Token;)V

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 161
    invoke-direct {p0, v2, v0, v3}, Lhuawei/android/provider/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 163
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v7, Lhuawei/android/provider/HanziToPinyin$Token;

    invoke-direct {v7}, Lhuawei/android/provider/HanziToPinyin$Token;-><init>()V

    move-object v4, v7

    goto :goto_1

    .line 166
    :cond_3
    iget v7, v4, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    if-eq v3, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 167
    invoke-direct {p0, v2, v0, v3}, Lhuawei/android/provider/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 169
    :cond_4
    iget-object v7, v4, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_1
    iget v3, v4, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    .line 148
    .end local v6    # "character":C
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 174
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 175
    invoke-direct {p0, v2, v0, v3}, Lhuawei/android/provider/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 177
    :cond_7
    return-object v0

    .line 137
    .end local v1    # "inputLength":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "tokenType":I
    .end local v4    # "token":Lhuawei/android/provider/HanziToPinyin$Token;
    :cond_8
    :goto_3
    return-object v0
.end method

.method public hasChineseTransliterator()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lhuawei/android/provider/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
