.class Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$4;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
.source "PhoneNumberRule_ZH_CN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V
    .locals 0
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$4;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 21
    .param p1, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;

    .line 188
    move-object/from16 v0, p2

    const/4 v1, 0x1

    .line 190
    .local v1, "isvalid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";ext="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 194
    .local v3, "ind":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 195
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_0
    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-nez v6, :cond_2

    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 234
    .end local p1    # "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .local v4, "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_1
    :goto_0
    move-object/from16 v4, p1

    goto/16 :goto_3

    .line 201
    .end local v4    # "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .restart local p1    # "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_2
    :goto_1
    const-string v6, ""

    .line 202
    .local v6, "lStr":Ljava/lang/String;
    const-string v9, ""

    .line 203
    .local v9, "rStr":Ljava/lang/String;
    const-string v10, "("

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 204
    const-string v6, "("

    .line 205
    const-string v9, ")"

    .line 207
    :cond_3
    const-string v10, "["

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 208
    const-string v6, "["

    .line 209
    const-string v9, "]"

    .line 211
    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 212
    .local v10, "neind":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 213
    .local v11, "meind":I
    if-eq v10, v4, :cond_8

    .line 214
    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->access$1(Ljava/lang/String;)I

    move-result v4

    .line 215
    .local v4, "phoneLength":I
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->access$1(Ljava/lang/String;)I

    move-result v12

    .line 216
    .local v12, "extra":I
    if-le v4, v7, :cond_7

    if-eq v12, v8, :cond_5

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 217
    :cond_5
    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 218
    .end local v2    # "number":Ljava/lang/String;
    .local v13, "number":Ljava/lang/String;
    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "delStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v20

    .line 220
    .local v20, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    nop

    .line 221
    const-string v16, "CN"

    sget-object v17, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v18, 0x7fffffffffffffffL

    .line 220
    move-object/from16 v14, v20

    move-object v15, v5

    invoke-virtual/range {v14 .. v19}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v14

    .line 222
    .local v14, "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v2, p1

    .end local p1    # "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .local v2, "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_6

    .line 225
    .end local v5    # "delStr":Ljava/lang/String;
    .end local v14    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v20    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    nop

    .line 234
    move-object v4, v2

    move-object v2, v13

    goto :goto_3

    .line 222
    .restart local v5    # "delStr":Ljava/lang/String;
    .restart local v14    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .restart local v20    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 223
    .local v16, "m":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    move-object/from16 v2, v16

    .end local v16    # "m":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    goto :goto_2

    .line 226
    .end local v5    # "delStr":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v14    # "matchesList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    .end local v20    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .local v2, "number":Ljava/lang/String;
    .restart local p1    # "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .end local v4    # "phoneLength":I
    .end local v12    # "extra":I
    goto :goto_0

    .line 230
    :cond_8
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .end local v6    # "lStr":Ljava/lang/String;
    .end local v9    # "rStr":Ljava/lang/String;
    .end local v10    # "neind":I
    .end local v11    # "meind":I
    goto/16 :goto_0

    .line 234
    .end local p1    # "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .local v4, "possibleNumber":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :goto_3
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->access$1(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    if-le v5, v6, :cond_b

    .line 235
    const-string v5, "11808"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "17909"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "12593"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "17951"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "17911"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    .line 238
    :cond_9
    const/4 v1, 0x0

    .line 240
    goto/16 :goto_6

    .line 236
    :cond_a
    :goto_4
    const/4 v1, 0x1

    .line 237
    goto/16 :goto_6

    .line 240
    :cond_b
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->access$1(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc

    if-le v5, v6, :cond_c

    .line 241
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_c

    .line 242
    const/4 v1, 0x0

    .line 243
    goto/16 :goto_6

    :cond_c
    const-string v5, "400"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 244
    const-string v5, "800"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    invoke-static {v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->access$1(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_e

    .line 245
    const/4 v1, 0x0

    .line 246
    goto/16 :goto_6

    :cond_e
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 247
    const-string v5, "400"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 249
    const-string v5, "800"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 250
    invoke-static {v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->access$1(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x9

    if-lt v5, v6, :cond_12

    .line 252
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 253
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_5

    .line 259
    :cond_f
    const/4 v1, 0x0

    .line 261
    goto :goto_6

    .line 254
    :cond_10
    :goto_5
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "\\"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 255
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 256
    :cond_11
    const/4 v1, 0x1

    .line 257
    goto :goto_6

    .line 261
    :cond_12
    invoke-static {v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;->access$1(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v7, :cond_13

    .line 262
    const/4 v1, 0x0

    .line 265
    :cond_13
    :goto_6
    if-eqz v1, :cond_14

    .line 266
    return-object v4

    .line 268
    :cond_14
    const/4 v5, 0x0

    return-object v5
.end method
