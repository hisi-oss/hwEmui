.class Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT$1;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
.source "PhoneNumberRule_PT_PT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V
    .locals 0
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT$1;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_PT_PT;

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 11
    .param p1, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x27

    const/16 v4, 0x2d

    const/4 v5, 0x2

    if-ltz v0, :cond_a

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v6

    invoke-virtual {p2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "before":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 85
    .local v6, "beChars":[C
    const/4 v7, 0x1

    .line 86
    .local v7, "isTwo":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v6

    if-lt v8, v9, :cond_0

    .end local v8    # "i":I
    goto :goto_2

    .line 87
    .restart local v8    # "i":I
    :cond_0
    array-length v9, v6

    sub-int/2addr v9, v1

    sub-int/2addr v9, v8

    aget-char v9, v6, v9

    .line 88
    .local v9, "t":C
    if-nez v8, :cond_1

    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_1

    .line 89
    const/4 v7, 0x0

    .line 90
    goto :goto_2

    .line 92
    :cond_1
    if-ge v8, v5, :cond_3

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 93
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 94
    nop

    .line 86
    .end local v9    # "t":C
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 96
    .restart local v9    # "t":C
    :cond_2
    const/4 v7, 0x0

    .line 97
    goto :goto_2

    .line 101
    :cond_3
    if-eq v9, v4, :cond_7

    if-ne v9, v3, :cond_4

    goto :goto_1

    .line 104
    :cond_4
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    goto :goto_2

    .line 109
    :cond_6
    const/4 v7, 0x0

    .line 110
    goto :goto_2

    .line 102
    :cond_7
    :goto_1
    const/4 v7, 0x0

    .line 103
    nop

    .line 116
    .end local v8    # "i":I
    .end local v9    # "t":C
    :cond_8
    :goto_2
    if-nez v7, :cond_9

    .line 117
    return-object p1

    .line 119
    :cond_9
    return-object v2

    .line 123
    .end local v0    # "before":Ljava/lang/String;
    .end local v6    # "beChars":[C
    .end local v7    # "isTwo":Z
    :cond_a
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    if-gt v0, v6, :cond_17

    .line 124
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "after":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 126
    .restart local v6    # "beChars":[C
    const/4 v7, 0x1

    .line 127
    .restart local v7    # "isTwo":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    array-length v9, v6

    if-lt v8, v9, :cond_b

    .end local v8    # "i":I
    goto :goto_7

    .line 128
    .restart local v8    # "i":I
    :cond_b
    aget-char v9, v6, v8

    .line 129
    .restart local v9    # "t":C
    if-nez v8, :cond_c

    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_c

    .line 130
    const/4 v7, 0x0

    .line 131
    goto :goto_7

    .line 133
    :cond_c
    if-ge v8, v5, :cond_e

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 134
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 135
    goto :goto_4

    .line 137
    :cond_d
    const/4 v7, 0x0

    .line 138
    goto :goto_7

    .line 141
    :cond_e
    if-eq v8, v1, :cond_10

    if-ne v8, v5, :cond_f

    goto :goto_5

    .line 127
    .end local v9    # "t":C
    :cond_f
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 142
    .restart local v9    # "t":C
    :cond_10
    :goto_5
    if-eq v9, v4, :cond_14

    if-ne v9, v3, :cond_11

    goto :goto_6

    .line 145
    :cond_11
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 146
    goto :goto_7

    .line 147
    :cond_12
    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_13

    .line 148
    goto :goto_7

    .line 150
    :cond_13
    const/4 v7, 0x0

    .line 151
    goto :goto_7

    .line 143
    :cond_14
    :goto_6
    const/4 v7, 0x0

    .line 144
    nop

    .line 158
    .end local v8    # "i":I
    .end local v9    # "t":C
    :cond_15
    :goto_7
    if-nez v7, :cond_16

    .line 159
    return-object p1

    .line 161
    :cond_16
    return-object v2

    .line 166
    .end local v0    # "after":Ljava/lang/String;
    .end local v6    # "beChars":[C
    .end local v7    # "isTwo":Z
    :cond_17
    return-object p1
.end method
