.class public Lhuawei/android/hwutil/HanziToBopomofo;
.super Ljava/lang/Object;
.source "HanziToBopomofo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hwutil/HanziToBopomofo$Token;
    }
.end annotation


# static fields
.field private static mInstance:Lhuawei/android/hwutil/HanziToBopomofo;


# instance fields
.field private mAsciiTransliterator:Landroid/icu/text/Transliterator;

.field private mZhuyinTransliterator:Landroid/icu/text/Transliterator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    :try_start_0
    const-string v0, "Han-Latin/Names; Latin-Ascii; Latin-Bopomofo"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/hwutil/HanziToBopomofo;->mZhuyinTransliterator:Landroid/icu/text/Transliterator;

    .line 75
    const-string v0, "Latin-Ascii"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/hwutil/HanziToBopomofo;->mAsciiTransliterator:Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
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
            "Lhuawei/android/hwutil/HanziToBopomofo$Token;",
            ">;I)V"
        }
    .end annotation

    .line 187
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhuawei/android/hwutil/HanziToBopomofo$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lhuawei/android/hwutil/HanziToBopomofo$Token;

    invoke-direct {v1, p3, v0, v0}, Lhuawei/android/hwutil/HanziToBopomofo$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 190
    return-void
.end method

.method private formatTransliteration(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lhuawei/android/hwutil/HanziToBopomofo;->mZhuyinTransliterator:Landroid/icu/text/Transliterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d9

    if-ne v1, v2, :cond_1

    .line 131
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 133
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lhuawei/android/hwutil/HanziToBopomofo;
    .locals 2

    .line 85
    const-class v0, Lhuawei/android/hwutil/HanziToBopomofo;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lhuawei/android/hwutil/HanziToBopomofo;->mInstance:Lhuawei/android/hwutil/HanziToBopomofo;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lhuawei/android/hwutil/HanziToBopomofo;

    invoke-direct {v1}, Lhuawei/android/hwutil/HanziToBopomofo;-><init>()V

    sput-object v1, Lhuawei/android/hwutil/HanziToBopomofo;->mInstance:Lhuawei/android/hwutil/HanziToBopomofo;

    .line 89
    :cond_0
    sget-object v1, Lhuawei/android/hwutil/HanziToBopomofo;->mInstance:Lhuawei/android/hwutil/HanziToBopomofo;

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tokenize(CLhuawei/android/hwutil/HanziToBopomofo$Token;)V
    .locals 2
    .param p1, "character"    # C
    .param p2, "token"    # Lhuawei/android/hwutil/HanziToBopomofo$Token;

    .line 94
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->source:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 98
    iput v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->type:I

    .line 99
    iget-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->target:Ljava/lang/String;

    .line 100
    return-void

    .line 104
    :cond_0
    const/16 v1, 0x250

    if-lt p1, v1, :cond_4

    const/16 v1, 0x1e00

    if-gt v1, p1, :cond_1

    const/16 v1, 0x1eff

    if-ge p1, v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x2

    iput v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->type:I

    .line 112
    iget-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->source:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhuawei/android/hwutil/HanziToBopomofo;->formatTransliteration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->target:Ljava/lang/String;

    .line 113
    iget-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->source:Ljava/lang/String;

    iget-object v1, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->target:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    :cond_2
    const/4 v0, 0x3

    iput v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->type:I

    .line 115
    iget-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->target:Ljava/lang/String;

    .line 117
    :cond_3
    return-void

    .line 105
    :cond_4
    :goto_0
    iput v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->type:I

    .line 106
    iget-object v0, p0, Lhuawei/android/hwutil/HanziToBopomofo;->mAsciiTransliterator:Landroid/icu/text/Transliterator;

    if-nez v0, :cond_5

    iget-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->source:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_5
    iget-object v0, p0, Lhuawei/android/hwutil/HanziToBopomofo;->mAsciiTransliterator:Landroid/icu/text/Transliterator;

    iget-object v1, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p2, Lhuawei/android/hwutil/HanziToBopomofo$Token;->target:Ljava/lang/String;

    .line 108
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
            "Lhuawei/android/hwutil/HanziToBopomofo$Token;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhuawei/android/hwutil/HanziToBopomofo$Token;>;"
    invoke-virtual {p0}, Lhuawei/android/hwutil/HanziToBopomofo;->hasChineseTransliterator()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 149
    .local v1, "inputLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 151
    .local v3, "tokenType":I
    new-instance v4, Lhuawei/android/hwutil/HanziToBopomofo$Token;

    invoke-direct {v4}, Lhuawei/android/hwutil/HanziToBopomofo$Token;-><init>()V

    .line 157
    .local v4, "token":Lhuawei/android/hwutil/HanziToBopomofo$Token;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_6

    .line 158
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 159
    .local v6, "character":C
    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 161
    invoke-direct {p0, v2, v0, v3}, Lhuawei/android/hwutil/HanziToBopomofo;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 164
    :cond_1
    invoke-direct {p0, v6, v4}, Lhuawei/android/hwutil/HanziToBopomofo;->tokenize(CLhuawei/android/hwutil/HanziToBopomofo$Token;)V

    .line 165
    iget v7, v4, Lhuawei/android/hwutil/HanziToBopomofo$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 167
    invoke-direct {p0, v2, v0, v3}, Lhuawei/android/hwutil/HanziToBopomofo;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 169
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v7, Lhuawei/android/hwutil/HanziToBopomofo$Token;

    invoke-direct {v7}, Lhuawei/android/hwutil/HanziToBopomofo$Token;-><init>()V

    move-object v4, v7

    goto :goto_1

    .line 172
    :cond_3
    iget v7, v4, Lhuawei/android/hwutil/HanziToBopomofo$Token;->type:I

    if-eq v3, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 173
    invoke-direct {p0, v2, v0, v3}, Lhuawei/android/hwutil/HanziToBopomofo;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 175
    :cond_4
    iget-object v7, v4, Lhuawei/android/hwutil/HanziToBopomofo$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :goto_1
    iget v3, v4, Lhuawei/android/hwutil/HanziToBopomofo$Token;->type:I

    .line 157
    .end local v6    # "character":C
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 180
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 181
    invoke-direct {p0, v2, v0, v3}, Lhuawei/android/hwutil/HanziToBopomofo;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 183
    :cond_7
    return-object v0

    .line 146
    .end local v1    # "inputLength":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "tokenType":I
    .end local v4    # "token":Lhuawei/android/hwutil/HanziToBopomofo$Token;
    :cond_8
    :goto_3
    return-object v0
.end method

.method public hasChineseTransliterator()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lhuawei/android/hwutil/HanziToBopomofo;->mZhuyinTransliterator:Landroid/icu/text/Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
