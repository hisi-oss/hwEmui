.class Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$3;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
.source "PhoneNumberRule_EN_GB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V
    .locals 0
    .param p3, "$anonymous0"    # Ljava/lang/String;
    .param p4, "$anonymous1"    # I

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$3;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;

    .line 219
    invoke-direct {p0, p2, p3, p4}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .line 222
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$3;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;

    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$3;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->access$1(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;Ljava/util/regex/Pattern;Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
