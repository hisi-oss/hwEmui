.class Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR$1;
.super Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
.source "PhoneNumberRule_FR_FR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V
    .locals 0
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR$1;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule_FR_FR;

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 3
    .param p1, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_1
    :goto_0
    return-object p1
.end method
