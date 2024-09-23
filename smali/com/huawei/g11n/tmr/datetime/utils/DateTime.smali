.class public Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;,
        Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;
    }
.end annotation


# instance fields
.field private date:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

.field private time:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method


# virtual methods
.method public getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->date:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    return-object v0
.end method

.method public getSatuts()I
    .locals 4

    .line 279
    const/4 v0, -0x1

    .line 280
    .local v0, "result":I
    const/4 v1, 0x1

    .local v1, "dflag":Z
    const/4 v2, 0x1

    .line 281
    .local v2, "tflag":Z
    iget-object v3, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->date:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->date:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    :cond_0
    const/4 v1, 0x0

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->time:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->time:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    :cond_2
    const/4 v2, 0x0

    .line 285
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 286
    const/4 v0, 0x0

    goto :goto_0

    .line 288
    :cond_4
    if-eqz v1, :cond_5

    .line 289
    const/4 v0, 0x1

    .line 290
    :cond_5
    if-eqz v2, :cond_6

    .line 291
    const/4 v0, 0x2

    .line 293
    :cond_6
    :goto_0
    return v0
.end method

.method public getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->time:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->date:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->time:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 5
    .param p1, "d"    # Ljava/util/Date;

    .line 153
    if-nez p1, :cond_0

    .line 154
    return-void

    .line 155
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 157
    new-instance v1, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;-><init>(III)V

    iput-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->date:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    .line 158
    return-void
.end method

.method public setDay(III)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 198
    const/4 v0, -0x1

    .local v0, "y":I
    const/4 v1, -0x1

    .local v1, "m":I
    const/4 v2, -0x1

    .line 199
    .local v2, "d":I
    const/4 v3, -0x1

    if-le p1, v3, :cond_1

    .line 200
    const/16 v4, 0x64

    if-ge p1, v4, :cond_0

    .line 201
    add-int/lit16 p1, p1, 0x7d0

    .line 202
    :cond_0
    move v0, p1

    .line 205
    :cond_1
    if-le p2, v3, :cond_2

    .line 206
    move v1, p2

    .line 207
    :cond_2
    if-le p3, v3, :cond_3

    .line 208
    move v2, p3

    .line 209
    :cond_3
    new-instance v3, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    invoke-direct {v3, v0, v1, v2}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;-><init>(III)V

    iput-object v3, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->date:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    .line 210
    return-void
.end method

.method public setDay(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;)V
    .locals 0
    .param p1, "day"    # Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    .line 162
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->date:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    .line 163
    return-void
.end method

.method public setDayByAddDays(IJ)V
    .locals 2
    .param p1, "d"    # I
    .param p2, "defaultTime"    # J

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 233
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 235
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDate(Ljava/util/Date;)V

    .line 236
    return-void
.end method

.method public setDayByWeekValue(IJ)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "defaultTime"    # J

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 214
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 215
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 216
    .local v2, "c":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 217
    const/4 v2, 0x6

    goto :goto_0

    .line 219
    :cond_0
    add-int/lit8 v2, v2, -0x2

    .line 221
    :goto_0
    const/4 v3, 0x0

    .line 222
    .local v3, "t":I
    sub-int v4, p1, v2

    if-ltz v4, :cond_1

    .line 223
    sub-int v1, p1, v2

    .line 224
    .end local v3    # "t":I
    .local v1, "t":I
    goto :goto_1

    .line 225
    .end local v1    # "t":I
    .restart local v3    # "t":I
    :cond_1
    sub-int v4, p1, v2

    add-int/2addr v1, v4

    .line 227
    .end local v3    # "t":I
    .restart local v1    # "t":I
    :goto_1
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 228
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->setDate(Ljava/util/Date;)V

    .line 229
    return-void
.end method

.method public setTime(IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "s"    # I
    .param p4, "mk"    # Ljava/lang/String;
    .param p5, "tz"    # Ljava/lang/String;
    .param p6, "isBefore"    # Z

    .line 180
    const-string v0, "mm"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/16 v0, 0xb

    if-gt p1, v0, :cond_0

    .line 183
    const-string p4, "am"

    .line 184
    goto :goto_0

    .line 185
    :cond_0
    const-string p4, "pm"

    .line 188
    :cond_1
    :goto_0
    new-instance v7, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v7, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->time:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    .line 189
    return-void
.end method

.method public setTime(Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;)V
    .locals 8
    .param p1, "t"    # Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    .line 192
    new-instance v7, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getClock()I

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMinute()I

    move-result v2

    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getSecond()I

    move-result v3

    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getMark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->getTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->isMarkBefore()Z

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v7, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->time:Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    .line 193
    return-void
.end method
