.class public Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;
.super Ljava/lang/Object;
.source "SearchPhoneNumber.java"


# static fields
.field private static volatile instance:Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;->instance:Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getInstance(Ljava/lang/String;)Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    const-class v0, Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;->instance:Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;

    invoke-direct {v1, p0}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;->instance:Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;->instance:Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;

    invoke-direct {v1, p0}, Lcom/huawei/g11n/tmr/phonenumber/PhoneNumberMatcher;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;->instance:Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;

    .line 15
    :cond_1
    :goto_0
    sget-object v1, Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;->instance:Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 7
    .end local p0    # "country":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getMatchedPhoneNumber(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/huawei/g11n/tmr/phonenumber/SearchPhoneNumber;->getInstance(Ljava/lang/String;)Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;->getMatchedPhoneNumber(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method
