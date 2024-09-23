.class public Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;
.super Ljava/lang/Object;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Time"
.end annotation


# instance fields
.field public clock:I

.field public isMarkBefore:Z

.field public mark:Ljava/lang/String;

.field public minute:I

.field public second:I

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "m"    # I
    .param p3, "s"    # I
    .param p4, "mark"    # Ljava/lang/String;
    .param p5, "timezone"    # Ljava/lang/String;
    .param p6, "isBefore"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->clock:I

    .line 65
    iput v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->minute:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->second:I

    .line 72
    iput p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->clock:I

    .line 73
    iput p2, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->minute:I

    .line 74
    iput p3, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->second:I

    .line 75
    iput-object p4, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->mark:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->timezone:Ljava/lang/String;

    .line 77
    iput-boolean p6, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->isMarkBefore:Z

    .line 78
    return-void
.end method


# virtual methods
.method public getClock()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->clock:I

    return v0
.end method

.method public getMark()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->mark:Ljava/lang/String;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->minute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->second:I

    return v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "flag":Z
    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->clock:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->second:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->minute:I

    if-nez v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :cond_0
    return v0
.end method

.method public isMarkBefore()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->isMarkBefore:Z

    return v0
.end method

.method public setClock(I)V
    .locals 0
    .param p1, "clock"    # I

    .line 84
    iput p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->clock:I

    .line 85
    return-void
.end method

.method public setMark(Ljava/lang/String;)V
    .locals 0
    .param p1, "mark"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->mark:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setMarkBefore(Z)V
    .locals 0
    .param p1, "isMarkBefore"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->isMarkBefore:Z

    .line 128
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .line 90
    iput p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->minute:I

    .line 91
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .line 96
    iput p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->second:I

    .line 97
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->timezone:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->clock:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Time;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
