.class public Landroid/rms/iaware/DataNormalizer;
.super Ljava/lang/Object;
.source "DataNormalizer.java"


# static fields
.field private static final COLLECT_SEPARATOR:Ljava/lang/String; = "\u0001"

.field private static final COLLECT_SEPARATOR_PAT:Ljava/util/regex/Pattern;

.field private static final VALUE_SEPARATOR:Ljava/lang/String; = "\u0394"

.field private static final VALUE_SEPARATOR_PAT:Ljava/util/regex/Pattern;


# instance fields
.field private mSB:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "\u0001"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/rms/iaware/DataNormalizer;->COLLECT_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    .line 27
    const-string v0, "\u0394"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/rms/iaware/DataNormalizer;->VALUE_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    .line 38
    return-void
.end method

.method private static encapsulateCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encapsulateCondition(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueArray"    # [Ljava/lang/String;
    .param p2, "arrayLen"    # I

    .line 129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 136
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, ","

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encapsulateConditionArray([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "keyArray"    # [Ljava/lang/String;
    .param p1, "valueArray"    # [Ljava/lang/String;
    .param p2, "arrayLen"    # I

    .line 105
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-ne v0, p2, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 111
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0394"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, "\u0394"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 106
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCollectArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 169
    :cond_0
    sget-object v0, Landroid/rms/iaware/DataNormalizer;->COLLECT_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "collectArray":[Ljava/lang/String;
    return-object v0
.end method

.method public static getConditionArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "conditionList"    # Ljava/lang/String;

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "conditionList2":Ljava/lang/String;
    sget-object v1, Landroid/rms/iaware/DataNormalizer;->VALUE_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "conditionArray":[Ljava/lang/String;
    return-object v1

    .line 180
    .end local v0    # "conditionList2":Ljava/lang/String;
    .end local v1    # "conditionArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    return-object v0
.end method

.method public static parseCollect(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "collect"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 194
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 197
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 198
    .local v1, "end":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 202
    .local v3, "array":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 203
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 204
    return-object v3

    .line 199
    .end local v3    # "array":[Ljava/lang/String;
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static parseCondition(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "condition"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 215
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 218
    :cond_0
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 219
    .local v1, "end":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 223
    .local v3, "array":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 224
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 225
    return-object v3

    .line 220
    .end local v3    # "array":[Ljava/lang/String;
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static parseConditionExt(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "condition"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 236
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 239
    :cond_0
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 240
    .local v1, "end":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 247
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "valueArray":[Ljava/lang/String;
    array-length v6, v5

    add-int/2addr v6, v2

    new-array v6, v6, [Ljava/lang/String;

    .line 249
    .local v6, "array":[Ljava/lang/String;
    aput-object v3, v6, v0

    .line 250
    array-length v7, v5

    invoke-static {v5, v0, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    return-object v6

    .line 241
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "valueArray":[Ljava/lang/String;
    .end local v6    # "array":[Ljava/lang/String;
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public appendCollect(Ljava/lang/String;)V
    .locals 2
    .param p1, "collect"    # Ljava/lang/String;

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    iget-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    iget-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    return-void
.end method

.method public appendCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "conditionList"    # Ljava/lang/String;

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    iget-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_1
    iget-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    return-void
.end method

.method public appendCondition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 50
    invoke-static {p1, p2}, Landroid/rms/iaware/DataNormalizer;->encapsulateCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "condition":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 54
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    const-string v2, "\u0394"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method

.method public appendCondition(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueArray"    # [Ljava/lang/String;
    .param p3, "arrayLen"    # I

    .line 72
    invoke-static {p1, p2, p3}, Landroid/rms/iaware/DataNormalizer;->encapsulateCondition(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "conditionArray":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 76
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    const-string v2, "\u0394"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    return-void
.end method

.method public appendConditionArray([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "keyArray"    # [Ljava/lang/String;
    .param p2, "valueArray"    # [Ljava/lang/String;
    .param p3, "arrayLen"    # I

    .line 61
    invoke-static {p1, p2, p3}, Landroid/rms/iaware/DataNormalizer;->encapsulateConditionArray([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "conditionArray":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 65
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    const-string v2, "\u0394"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_1
    iget-object v1, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    return-void
.end method

.method public clean()V
    .locals 2

    .line 46
    iget-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/rms/iaware/DataNormalizer;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
