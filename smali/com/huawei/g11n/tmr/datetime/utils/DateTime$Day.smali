.class public Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;
.super Ljava/lang/Object;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/utils/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Day"
.end annotation


# instance fields
.field public day:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->year:I

    .line 21
    iput v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->month:I

    .line 22
    iput v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->day:I

    .line 25
    iput p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->year:I

    .line 26
    iput p2, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->month:I

    .line 27
    iput p3, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->day:I

    .line 28
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->year:I

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "flag":Z
    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->year:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->month:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->day:I

    if-ne v1, v2, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 58
    :cond_0
    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .line 46
    iput p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->day:I

    .line 47
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .line 40
    iput p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->month:I

    .line 41
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .line 34
    iput p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->year:I

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->year:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->month:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/DateTime$Day;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
