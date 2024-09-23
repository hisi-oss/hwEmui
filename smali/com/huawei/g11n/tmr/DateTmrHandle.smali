.class public Lcom/huawei/g11n/tmr/DateTmrHandle;
.super Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;
.source "DateTmrHandle.java"


# instance fields
.field private convert:Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;

.field private obj:Lcom/huawei/g11n/tmr/RuleInit;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "localeBk"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/huawei/g11n/tmr/RuleInit;

    invoke-direct {v0, p1, p2}, Lcom/huawei/g11n/tmr/RuleInit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/DateTmrHandle;->obj:Lcom/huawei/g11n/tmr/RuleInit;

    .line 24
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/DateTmrHandle;->convert:Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;

    .line 25
    return-void
.end method


# virtual methods
.method public convertDate(Ljava/lang/String;J)[Ljava/util/Date;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "defaultDate"    # J

    .line 54
    invoke-virtual {p0, p1}, Lcom/huawei/g11n/tmr/DateTmrHandle;->strPreProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/huawei/g11n/tmr/DateTmrHandle;->obj:Lcom/huawei/g11n/tmr/RuleInit;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/g11n/tmr/RuleInit;->parse(Ljava/lang/String;J)Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;

    move-result-object v0

    .line 56
    .local v0, "dt":Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;
    iget-object v1, p0, Lcom/huawei/g11n/tmr/DateTmrHandle;->convert:Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;

    invoke-virtual {v1, v0, p2, p3}, Lcom/huawei/g11n/tmr/datetime/parse/DateConvert;->convert(Lcom/huawei/g11n/tmr/datetime/utils/DatePeriod;J)Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 60
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Date;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Date;

    .line 63
    .local v2, "r":[Ljava/util/Date;
    return-object v2
.end method

.method public getTime(Ljava/lang/String;)[I
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/huawei/g11n/tmr/DateTmrHandle;->strPreProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/huawei/g11n/tmr/DateTmrHandle;->obj:Lcom/huawei/g11n/tmr/RuleInit;

    invoke-virtual {v0, p1}, Lcom/huawei/g11n/tmr/RuleInit;->detect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 30
    .local v0, "ms":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/Match;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 32
    .local v2, "length":I
    :goto_1
    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 34
    new-array v3, v3, [I

    .line 35
    .local v3, "result":[I
    aput v1, v3, v1

    .line 36
    goto :goto_3

    .line 37
    .end local v3    # "result":[I
    :cond_2
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v3

    new-array v4, v4, [I

    .line 38
    .local v4, "result":[I
    aput v2, v4, v1

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v2, :cond_3

    .line 50
    .end local v1    # "i":I
    move-object v3, v4

    .end local v4    # "result":[I
    .restart local v3    # "result":[I
    :goto_3
    return-object v3

    .line 40
    .end local v3    # "result":[I
    .restart local v1    # "i":I
    .restart local v4    # "result":[I
    :cond_3
    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/g11n/tmr/Match;

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getType()I

    move-result v6

    aput v6, v4, v5

    .line 41
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/g11n/tmr/Match;

    invoke-virtual {v6}, Lcom/huawei/g11n/tmr/Match;->getBegin()I

    move-result v6

    aput v6, v4, v5

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/g11n/tmr/Match;

    invoke-virtual {v5}, Lcom/huawei/g11n/tmr/Match;->getEnd()I

    move-result v5

    .line 44
    .local v5, "end":I
    if-le v5, v3, :cond_4

    .line 45
    add-int/lit8 v5, v5, -0x1

    .line 47
    :cond_4
    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x3

    aput v5, v4, v6

    .line 39
    .end local v5    # "end":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public strPreProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;-><init>()V

    .line 73
    .local v0, "c":Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/DateTmrHandle;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/g11n/tmr/datetime/utils/StringConvert;->convertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
