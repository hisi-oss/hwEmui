.class public Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;
.super Ljava/lang/Object;
.source "DataConvertTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calRelDays(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, "\\\\s+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 211
    const-string v0, "\\."

    const-string v1, "\\\\."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 212
    const-string v0, "param_thisweek"

    invoke-static {v0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    nop

    .line 214
    .local v0, "weeks":[Ljava/lang/String;
    const-string v1, "param_nextweek"

    invoke-static {v1, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "\\|"

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "nweeks":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 217
    .local v2, "result":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_4

    .line 226
    .end local v3    # "i":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v1

    if-lt v3, v4, :cond_0

    .line 238
    .end local v3    # "i":I
    return v2

    .line 227
    .restart local v3    # "i":I
    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    const/4 v4, 0x7

    if-nez v3, :cond_1

    .line 229
    const/4 v2, 0x6

    goto :goto_2

    .line 230
    :cond_1
    if-ne v3, v4, :cond_2

    .line 231
    const/16 v2, 0xd

    goto :goto_2

    .line 233
    :cond_2
    add-int/lit8 v2, v3, -0x1

    .line 234
    :goto_2
    add-int/2addr v2, v4

    .line 235
    return v2

    .line 226
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    :cond_4
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 219
    if-nez v3, :cond_5

    .line 220
    const/4 v2, 0x6

    goto :goto_3

    .line 222
    :cond_5
    add-int/lit8 v2, v3, -0x1

    .line 223
    :goto_3
    return v2

    .line 217
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static calRelDays(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "localeBk"    # Ljava/lang/String;

    .line 39
    invoke-static {p0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->calRelDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "r":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 41
    invoke-static {p0, p2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->calRelDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    :cond_0
    return v0
.end method

.method private static calTextDay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .line 250
    const-string v0, "param_days"

    invoke-static {v0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "days":[Ljava/lang/String;
    const/4 v1, -0x1

    .line 252
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 258
    .end local v2    # "i":I
    return v1

    .line 253
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "cp":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 255
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    move v1, v2

    .line 252
    .end local v3    # "cp":Ljava/lang/String;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static calTextDay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "localeBk"    # Ljava/lang/String;

    .line 53
    invoke-static {p0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->calTextDay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "r":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 55
    invoke-static {p0, p2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->calTextDay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56
    :cond_0
    return v0
.end method

.method private static convertE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .line 150
    const-string v0, "\\s+"

    const-string v1, "\\\\s+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 151
    const-string v0, "\\."

    const-string v1, "\\\\."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    const/4 v0, -0x1

    .line 153
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    return v0

    .line 156
    :cond_0
    const-string v1, "param_E"

    invoke-static {v1, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "e":Ljava/lang/String;
    const-string v2, "be"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "kk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    :cond_1
    const-string v2, "\\\\b"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "a":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_3

    .end local v2    # "a":[Ljava/lang/String;
    .end local v3    # "i":I
    goto :goto_2

    .line 163
    .restart local v2    # "a":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_3
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 164
    if-nez v3, :cond_4

    .line 165
    const/4 v0, 0x6

    goto :goto_1

    .line 167
    :cond_4
    add-int/lit8 v0, v3, -0x1

    .line 169
    :goto_1
    return v0

    .line 162
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "a":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6
    :goto_2
    const-string v2, "param_EEEE"

    invoke-static {v2, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "ee":Ljava/lang/String;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 175
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "a":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v5, v3

    if-lt v4, v5, :cond_7

    .end local v3    # "a":[Ljava/lang/String;
    .end local v4    # "i":I
    goto :goto_5

    .line 177
    .restart local v3    # "a":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_7
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 178
    if-nez v4, :cond_8

    .line 179
    const/4 v0, 0x6

    goto :goto_4

    .line 181
    :cond_8
    add-int/lit8 v0, v4, -0x1

    .line 182
    :goto_4
    return v0

    .line 176
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 187
    .end local v3    # "a":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_a
    :goto_5
    const-string v3, "param_E2"

    invoke-static {v3, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "e2":Ljava/lang/String;
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 189
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "a":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    array-length v6, v4

    if-lt v5, v6, :cond_b

    .end local v4    # "a":[Ljava/lang/String;
    .end local v5    # "i":I
    goto :goto_8

    .line 191
    .restart local v4    # "a":[Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_b
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 192
    if-nez v5, :cond_c

    .line 193
    const/4 v0, 0x6

    goto :goto_7

    .line 195
    :cond_c
    add-int/lit8 v0, v5, -0x1

    .line 196
    :goto_7
    return v0

    .line 190
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 200
    .end local v4    # "a":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_e
    :goto_8
    return v0
.end method

.method public static convertE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "localeBk"    # Ljava/lang/String;

    .line 24
    invoke-static {p0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertE(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "r":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 26
    invoke-static {p0, p2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertE(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 27
    :cond_0
    return v0
.end method

.method private static convertMMM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "mstr"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .line 269
    const-string v0, "\\s+"

    const-string v1, "\\\\s+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "mmm":Ljava/lang/String;
    const-string v1, "\\."

    const-string v2, "\\\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "param_MMM"

    invoke-static {v1, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "mc":Ljava/lang/String;
    const-string v2, "param_MMMM"

    invoke-static {v2, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "mmc":Ljava/lang/String;
    const/4 v3, -0x1

    .line 275
    .local v3, "result":I
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 276
    const-string v4, "\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "mcs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-lt v5, v6, :cond_0

    .end local v4    # "mcs":[Ljava/lang/String;
    .end local v5    # "i":I
    goto :goto_1

    .line 278
    .restart local v4    # "mcs":[Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_0
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 279
    move v3, v5

    .line 280
    return v3

    .line 277
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 284
    .end local v4    # "mcs":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 285
    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 286
    .restart local v4    # "mcs":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v6, v4

    if-lt v5, v6, :cond_3

    .end local v4    # "mcs":[Ljava/lang/String;
    .end local v5    # "i":I
    goto :goto_3

    .line 287
    .restart local v4    # "mcs":[Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_3
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 288
    move v3, v5

    .line 289
    return v3

    .line 286
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 293
    .end local v4    # "mcs":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_5
    :goto_3
    return v3
.end method

.method public static convertMMM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "mstr"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "localeBk"    # Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "r":I
    if-ne v1, v0, :cond_1

    .line 71
    invoke-static {p0, p2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertMMM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 72
    :cond_1
    return v1

    .line 67
    .end local v1    # "r":I
    :cond_2
    :goto_0
    return v0
.end method

.method private static convertRelText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "mstr"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 305
    const-string v0, "\\s+"

    const-string v1, "\\\\s+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "mmm":Ljava/lang/String;
    const-string v1, "\\."

    const-string v2, "\\\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {p2, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "mc":Ljava/lang/String;
    const/4 v2, -0x1

    .line 309
    .local v2, "result":I
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 310
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "mcs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 312
    .local v4, "add":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-lt v5, v6, :cond_0

    .end local v3    # "mcs":[Ljava/lang/String;
    .end local v4    # "add":I
    .end local v5    # "i":I
    goto :goto_2

    .line 313
    .restart local v3    # "mcs":[Ljava/lang/String;
    .restart local v4    # "add":I
    .restart local v5    # "i":I
    :cond_0
    if-nez v5, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\u0604"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 314
    const/4 v4, -0x1

    .line 315
    goto :goto_1

    .line 318
    :cond_1
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    add-int v2, v5, v4

    .line 320
    return v2

    .line 312
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "mcs":[Ljava/lang/String;
    .end local v4    # "add":I
    .end local v5    # "i":I
    :cond_3
    :goto_2
    return v2
.end method

.method public static convertRelText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "mstr"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "localeBk"    # Ljava/lang/String;

    .line 84
    invoke-static {p0, p1, p2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertRelText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "r":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-static {p0, p3, p2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->convertRelText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    :cond_0
    return v0
.end method

.method private static getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;-><init>(Ljava/lang/String;)V

    .line 13
    .local v0, "param":Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
    invoke-virtual {v0, p0}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->getWithoutB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "param_am"

    invoke-static {v1, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "lam":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_0
    const-string v2, "param_am"

    const-string v3, "en"

    invoke-static {v2, v3}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 107
    .local v2, "amPa":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 108
    .local v4, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_5

    .line 118
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v5, "sb2":Ljava/lang/StringBuffer;
    const-string v6, "param_pm"

    invoke-static {v6, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "lpm":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    :cond_1
    const-string v7, "param_pm"

    const-string v8, "en"

    invoke-static {v7, v8}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 124
    nop

    .line 126
    .local v7, "ampm":Ljava/util/regex/Pattern;
    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 127
    .local v8, "m2":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_4

    .line 132
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v9, "sb3":Ljava/lang/StringBuffer;
    const-string v10, "param_mm"

    invoke-static {v10, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "lmm":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_2
    const-string v11, "param_mm"

    const-string v12, "en"

    invoke-static {v11, v12}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->getParamWithoutB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 138
    move-object v11, v3

    .line 140
    .local v11, "mmpm":Ljava/util/regex/Pattern;
    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 141
    .local v12, "m3":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    return-object p0

    .line 142
    :cond_3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "a":Ljava/lang/String;
    const-string v13, " mm "

    invoke-virtual {p0, v3, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .end local v3    # "a":Ljava/lang/String;
    goto :goto_2

    .line 128
    .end local v9    # "sb3":Ljava/lang/StringBuffer;
    .end local v10    # "lmm":Ljava/lang/String;
    .end local v11    # "mmpm":Ljava/util/regex/Pattern;
    .end local v12    # "m3":Ljava/util/regex/Matcher;
    :cond_4
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, "a":Ljava/lang/String;
    const-string v10, " pm "

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .end local v9    # "a":Ljava/lang/String;
    goto :goto_1

    .line 114
    .end local v5    # "sb2":Ljava/lang/StringBuffer;
    .end local v6    # "lpm":Ljava/lang/String;
    .end local v7    # "ampm":Ljava/util/regex/Pattern;
    .end local v8    # "m2":Ljava/util/regex/Matcher;
    :cond_5
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "a":Ljava/lang/String;
    const-string v6, " am "

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .end local v5    # "a":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "localeBk"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "c":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/huawei/g11n/tmr/datetime/utils/DataConvertTool;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    return-object v0
.end method
