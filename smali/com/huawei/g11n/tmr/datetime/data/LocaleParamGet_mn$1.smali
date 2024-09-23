.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_mn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "\u04af\\.\u04e9"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "\u04af\\.\u0445"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "1-\u0440\\s+\u0441\u0430\u0440|2-\u0440\\s+\u0441\u0430\u0440|3-\u0440\\s+\u0441\u0430\u0440|4-\u0440\\s+\u0441\u0430\u0440|5-\u0440\\s+\u0441\u0430\u0440|6-\u0440\\s+\u0441\u0430\u0440|7-\u0440\\s+\u0441\u0430\u0440|8-\u0440\\s+\u0441\u0430\u0440|9-\u0440\\s+\u0441\u0430\u0440|10-\u0440\\s+\u0441\u0430\u0440|11-\u0440\\s+\u0441\u0430\u0440|12-\u0440\\s+\u0441\u0430\u0440"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u041d\u044d\u0433\u0434\u04af\u0433\u044d\u044d\u0440\\s+\u0441\u0430\u0440|\u0425\u043e\u0451\u0440\u0434\u0443\u0433\u0430\u0430\u0440\\s+\u0441\u0430\u0440|\u0413\u0443\u0440\u0430\u0432\u0434\u0443\u0433\u0430\u0430\u0440\\s+\u0441\u0430\u0440|\u0414\u04e9\u0440\u04e9\u0432\u0434\u04af\u0433\u044d\u044d\u0440\\s+\u0441\u0430\u0440|\u0422\u0430\u0432\u0434\u0443\u0433\u0430\u0430\u0440\\s+\u0441\u0430\u0440|\u0417\u0443\u0440\u0433\u0430\u0434\u0443\u0433\u0430\u0430\u0440\\s+\u0441\u0430\u0440|\u0414\u043e\u043b\u0434\u0443\u0433\u0430\u0430\u0440\\s+\u0441\u0430\u0440|\u041d\u0430\u0439\u043c\u0434\u0443\u0433\u0430\u0430\u0440\\s+\u0441\u0430\u0440|\u0415\u0441\u0434\u04af\u0433\u044d\u044d\u0440\\s+\u0441\u0430\u0440|\u0410\u0440\u0430\u0432\u0434\u0443\u0433\u0430\u0430\u0440\\s+\u0441\u0430\u0440|\u0410\u0440\u0432\u0430\u043d\\s+\u043d\u044d\u0433\u0434\u04af\u0433\u044d\u044d\u0440\\s+\u0441\u0430\u0440|\u0410\u0440\u0432\u0430\u043d\\s+\u0445\u043e\u0451\u0440\u0434\u0443\u0433\u0430\u0430\u0440\\s+\u0441\u0430\u0440"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\u041d\u044f|\u0414\u0430|\u041c\u044f|\u041b\u0445|\u041f\u04af|\u0411\u0430|\u0411\u044f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\u041d\u044f|\u0414\u0430|\u041c\u044f|\u041b\u0445|\u041f\u04af|\u0411\u0430|\u0411\u044f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u043d\u044f\u043c|\u0434\u0430\u0432\u0430\u0430|\u043c\u044f\u0433\u043c\u0430\u0440|\u043b\u0445\u0430\u0433\u0432\u0430|\u043f\u04af\u0440\u044d\u0432|\u0431\u0430\u0430\u0441\u0430\u043d|\u0431\u044f\u043c\u0431\u0430"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u04e9\u043d\u04e9\u04e9\u0434\u04e9\u0440|\u043c\u0430\u0440\u0433\u0430\u0430\u0448|\u043d\u04e9\u0433\u04e9\u04e9\u0434\u04e9\u0440"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u044d\u043d\u044d\\s+\u043d\u044f\u043c\\s+\u0433\u0430\u0440\u0430\u0433|\u044d\u043d\u044d\\s+\u0434\u0430\u0432\u0430\u0430\\s+\u0433\u0430\u0440\u0430\u0433|\u044d\u043d\u044d\\s+\u043c\u044f\u0433\u043c\u0430\u0440\\s+\u0433\u0430\u0440\u0430\u0433|\u044d\u043d\u044d\\s+\u043b\u0445\u0430\u0433\u0432\u0430\\s+\u0433\u0430\u0440\u0430\u0433|\u044d\u043d\u044d\\s+\u043f\u04af\u0440\u044d\u0432\\s+\u0433\u0430\u0440\u0430\u0433|\u044d\u043d\u044d\\s+\u0431\u0430\u0430\u0441\u0430\u043d\\s+\u0433\u0430\u0440\u0430\u0433|\u044d\u043d\u044d\\s+\u0431\u044f\u043c\u0431\u0430\\s+\u0433\u0430\u0440\u0430\u0433"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "\u0438\u0440\u044d\u0445\\s+\u043d\u044f\u043c\\s+\u0433\u0430\u0440\u0430\u0433|\u0438\u0440\u044d\u0445\\s+\u0434\u0430\u0432\u0430\u0430\\s+\u0433\u0430\u0440\u0430\u0433|\u0438\u0440\u044d\u0445\\s+\u043c\u044f\u0433\u043c\u0430\u0440\\s+\u0433\u0430\u0440\u0430\u0433|\u0438\u0440\u044d\u0445\\s+\u043b\u0445\u0430\u0433\u0432\u0430\\s+\u0433\u0430\u0440\u0430\u0433|\u0438\u0440\u044d\u0445\\s+\u043f\u04af\u0440\u044d\u0432\\s+\u0433\u0430\u0440\u0430\u0433|\u0438\u0440\u044d\u0445\\s+\u0431\u0430\u0430\u0441\u0430\u043d\\s+\u0433\u0430\u0440\u0430\u0433|\u0438\u0440\u044d\u0445\\s+\u0431\u044f\u043c\u0431\u0430\\s+\u0433\u0430\u0440\u0430\u0433"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p1, "mark_ShortDateLevel"

    const-string v0, "ymd"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
