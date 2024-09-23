.class public Lcom/huawei/g11n/tmr/Match;
.super Ljava/lang/Object;
.source "Match.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field begin:I

.field dp:Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

.field end:I

.field isTimePeriod:Z

.field regex:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 5
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "regex"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/g11n/tmr/Match;->isTimePeriod:Z

    .line 40
    iput p1, p0, Lcom/huawei/g11n/tmr/Match;->begin:I

    .line 41
    iput p2, p0, Lcom/huawei/g11n/tmr/Match;->end:I

    .line 42
    iput-object p3, p0, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "result":I
    instance-of v1, p1, Lcom/huawei/g11n/tmr/Match;

    if-eqz v1, :cond_1

    .line 106
    move-object v1, p1

    check-cast v1, Lcom/huawei/g11n/tmr/Match;

    .line 107
    .local v1, "om":Lcom/huawei/g11n/tmr/Match;
    iget v2, p0, Lcom/huawei/g11n/tmr/Match;->begin:I

    iget v3, v1, Lcom/huawei/g11n/tmr/Match;->begin:I

    if-ge v2, v3, :cond_0

    .line 108
    const/4 v0, -0x1

    .line 109
    :cond_0
    iget v2, p0, Lcom/huawei/g11n/tmr/Match;->begin:I

    iget v3, v1, Lcom/huawei/g11n/tmr/Match;->begin:I

    if-le v2, v3, :cond_1

    .line 110
    const/4 v0, 0x1

    .line 112
    .end local v1    # "om":Lcom/huawei/g11n/tmr/Match;
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 117
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBegin()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/huawei/g11n/tmr/Match;->begin:I

    return v0
.end method

.method public getDp()Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/huawei/g11n/tmr/Match;->dp:Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/huawei/g11n/tmr/Match;->end:I

    return v0
.end method

.method public getRegex()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/huawei/g11n/tmr/Match;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 122
    nop

    .line 123
    const/16 v0, 0x2a

    return v0
.end method

.method public isTimePeriod()Z
    .locals 3

    .line 28
    iget-boolean v0, p0, Lcom/huawei/g11n/tmr/Match;->isTimePeriod:Z

    if-eqz v0, :cond_0

    .line 29
    iget-boolean v0, p0, Lcom/huawei/g11n/tmr/Match;->isTimePeriod:Z

    return v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "n":I
    const v2, 0xc34f

    if-le v0, v2, :cond_2

    const v2, 0xea60

    if-ge v0, v2, :cond_2

    .line 34
    const/4 v1, 0x1

    return v1

    .line 36
    :cond_2
    return v1

    .line 31
    .end local v0    # "n":I
    :cond_3
    :goto_0
    return v1
.end method

.method public setBegin(I)V
    .locals 0
    .param p1, "begin"    # I

    .line 87
    iput p1, p0, Lcom/huawei/g11n/tmr/Match;->begin:I

    .line 88
    return-void
.end method

.method public setDp(Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;)V
    .locals 0
    .param p1, "dp"    # Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    .line 78
    iput-object p1, p0, Lcom/huawei/g11n/tmr/Match;->dp:Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    .line 79
    return-void
.end method

.method public setEnd(I)V
    .locals 0
    .param p1, "end"    # I

    .line 93
    iput p1, p0, Lcom/huawei/g11n/tmr/Match;->end:I

    .line 94
    return-void
.end method

.method public setIsTimePeriod(Z)V
    .locals 0
    .param p1, "is"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/huawei/g11n/tmr/Match;->isTimePeriod:Z

    .line 26
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 0
    .param p1, "regex"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 66
    iput p1, p0, Lcom/huawei/g11n/tmr/Match;->type:I

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/g11n/tmr/Match;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/g11n/tmr/Match;->begin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/g11n/tmr/Match;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
