.class Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$1;
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
.method constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V
    .locals 0
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB$1;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;

    .line 92
    invoke-direct {p0, p2, p3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 5
    .param p1, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    .line 96
    .local v0, "isvalid":Z
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";ext="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "ind":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 100
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_0
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_2
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->access$0(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 107
    const/4 v0, 0x0

    .line 110
    :cond_3
    invoke-static {v1}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_EN_GB;->access$0(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_4

    .line 111
    const/4 v0, 0x0

    .line 113
    :cond_4
    if-eqz v0, :cond_5

    .line 114
    return-object p1

    .line 116
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method
