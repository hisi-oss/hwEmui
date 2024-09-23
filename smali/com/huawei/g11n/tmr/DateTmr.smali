.class public Lcom/huawei/g11n/tmr/DateTmr;
.super Ljava/lang/Object;
.source "DateTmr.java"


# static fields
.field private static instance:Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/g11n/tmr/DateTmr;->instance:Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calBkLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;

    .line 32
    const-string v0, "en"

    .line 33
    .local v0, "localeBk":Ljava/lang/String;
    const-string v1, "en"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v0, "zh_hans"

    .line 36
    :cond_0
    return-object v0
.end method

.method private static calLocale()Ljava/lang/String;
    .locals 5

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 41
    .local v0, "d":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "lang":Ljava/lang/String;
    const-string v2, "in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string v1, "id"

    .line 44
    :cond_0
    const-string v2, "iw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    const-string v1, "he"

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "region":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "l":Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const-string v4, "zh_hans"

    return-object v4

    .line 51
    :cond_2
    invoke-static {v3}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->isSupport(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 52
    move-object v3, v1

    .line 53
    :cond_3
    invoke-static {v3}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->isSupport(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 54
    const-string v3, "en"

    .line 55
    :cond_4
    return-object v3
.end method

.method public static convertDate(Ljava/lang/String;J)[Ljava/util/Date;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "defaultDate"    # J

    .line 81
    invoke-static {}, Lcom/huawei/g11n/tmr/DateTmr;->getInstance()Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;->convertDate(Ljava/lang/String;J)[Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstance()Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;
    .locals 4

    const-class v0, Lcom/huawei/g11n/tmr/DateTmr;

    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/huawei/g11n/tmr/DateTmr;->calLocale()Ljava/lang/String;

    move-result-object v1

    .line 14
    .local v1, "locale":Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/g11n/tmr/DateTmr;->calBkLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    .local v2, "localeBk":Ljava/lang/String;
    sget-object v3, Lcom/huawei/g11n/tmr/DateTmr;->instance:Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;

    if-nez v3, :cond_0

    .line 16
    new-instance v3, Lcom/huawei/g11n/tmr/DateTmrHandle;

    invoke-direct {v3, v1, v2}, Lcom/huawei/g11n/tmr/DateTmrHandle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/huawei/g11n/tmr/DateTmr;->instance:Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v3, Lcom/huawei/g11n/tmr/DateTmr;->instance:Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;

    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 19
    new-instance v3, Lcom/huawei/g11n/tmr/DateTmrHandle;

    invoke-direct {v3, v1, v2}, Lcom/huawei/g11n/tmr/DateTmrHandle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/huawei/g11n/tmr/DateTmr;->instance:Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;

    .line 23
    :cond_1
    :goto_0
    sget-object v3, Lcom/huawei/g11n/tmr/DateTmr;->instance:Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v3

    .line 12
    .end local v1    # "locale":Ljava/lang/String;
    .end local v2    # "localeBk":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTime(Ljava/lang/String;)[I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/huawei/g11n/tmr/DateTmr;->getInstance()Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;->getTime(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method
