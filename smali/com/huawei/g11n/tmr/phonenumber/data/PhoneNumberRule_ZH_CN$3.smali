.class Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$3;
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
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN$3;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_ZH_CN;

    .line 166
    invoke-direct {p0, p2, p3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "matchList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    new-instance v1, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v1}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 171
    .local v1, "matcher":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    goto :goto_1

    .line 173
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 174
    nop

    .line 177
    :goto_1
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 178
    invoke-virtual {v1, p2}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method
