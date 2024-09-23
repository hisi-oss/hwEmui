.class public Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
.super Ljava/lang/Object;
.source "DatePeriod.java"


# instance fields
.field private begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

.field private end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;


# direct methods
.method public constructor <init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V
    .locals 0
    .param p1, "b"    # Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V
    .locals 0
    .param p1, "b"    # Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .param p2, "e"    # Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 20
    iput-object p2, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 21
    return-void
.end method


# virtual methods
.method public getBegin()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    return-object v0
.end method

.method public getEnd()Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    return-object v0
.end method

.method public getType()I
    .locals 4

    .line 47
    const/4 v0, -0x1

    .line 48
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    return v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getDate()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getTime()Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 53
    const/4 v0, 0x2

    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 57
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getSatuts()I

    move-result v1

    .line 58
    .local v1, "bSt":I
    iget-object v2, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->getSatuts()I

    move-result v2

    .line 59
    .local v2, "endSt":I
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 60
    const/4 v0, 0x3

    goto :goto_1

    .line 61
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    if-ne v2, v3, :cond_4

    .line 62
    const/4 v0, 0x4

    goto :goto_1

    .line 63
    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    if-ne v2, v3, :cond_5

    .line 64
    const/4 v0, 0x5

    goto :goto_1

    .line 66
    :cond_5
    const/4 v0, 0x6

    .line 68
    .end local v1    # "bSt":I
    .end local v2    # "endSt":I
    :cond_6
    :goto_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v0}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setBegin(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V
    .locals 0
    .param p1, "begin"    # Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 33
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 34
    return-void
.end method

.method public setEnd(Lcom/huawei/g11n/tmr/datetime/utils/DateTime;)V
    .locals 0
    .param p1, "end"    # Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 39
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, ""

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->begin:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/datetime/utils/DateTime;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;->end:Lcom/huawei/g11n/tmr/datetime/utils/DateTime;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
