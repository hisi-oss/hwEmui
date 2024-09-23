.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_bg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "\u043f\u0440\\.\u043e\u0431\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "\u0441\u043b\\.\u043e\u0431\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "\u044f\u043d\\.|\u0444\u0435\u0432\u0440\\.|\u043c\u0430\u0440\u0442|\u0430\u043f\u0440\\.|\u043c\u0430\u0439|\u044e\u043d\u0438|\u044e\u043b\u0438|\u0430\u0432\u0433\\.|\u0441\u0435\u043f\u0442\\.|\u043e\u043a\u0442\\.|\u043d\u043e\u0435\u043c\\.|\u0434\u0435\u043a\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u044f\u043d\u0443\u0430\u0440\u0438|\u0444\u0435\u0432\u0440\u0443\u0430\u0440\u0438|\u043c\u0430\u0440\u0442|\u0430\u043f\u0440\u0438\u043b|\u043c\u0430\u0439|\u044e\u043d\u0438|\u044e\u043b\u0438|\u0430\u0432\u0433\u0443\u0441\u0442|\u0441\u0435\u043f\u0442\u0435\u043c\u0432\u0440\u0438|\u043e\u043a\u0442\u043e\u043c\u0432\u0440\u0438|\u043d\u043e\u0435\u043c\u0432\u0440\u0438|\u0434\u0435\u043a\u0435\u043c\u0432\u0440\u0438"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\u043d\u0434|\u043f\u043d|\u0432\u0442|\u0441\u0440|\u0447\u0442|\u043f\u0442|\u0441\u0431"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\u043d\u0434|\u043f\u043d|\u0432\u0442|\u0441\u0440|\u0447\u0442|\u043f\u0442|\u0441\u0431"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u043d\u0435\u0434\u0435\u043b\u044f|\u043f\u043e\u043d\u0435\u0434\u0435\u043b\u043d\u0438\u043a|\u0432\u0442\u043e\u0440\u043d\u0438\u043a|\u0441\u0440\u044f\u0434\u0430|\u0447\u0435\u0442\u0432\u044a\u0440\u0442\u044a\u043a|\u043f\u0435\u0442\u044a\u043a|\u0441\u044a\u0431\u043e\u0442\u0430"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u0434\u043d\u0435\u0441|\u0443\u0442\u0440\u0435|\u0432\u0434\u0440\u0443\u0433\u0438\u0434\u0435\u043d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u0442\u0430\u0437\u0438\\s+\u043d\u0435\u0434\u0435\u043b\u044f|\u0442\u043e\u0437\u0438\\s+\u043f\u043e\u043d\u0435\u0434\u0435\u043b\u043d\u0438\u043a|\u0442\u043e\u0437\u0438\\s+\u0432\u0442\u043e\u0440\u043d\u0438\u043a|\u0442\u0430\u0437\u0438\\s+\u0441\u0440\u044f\u0434\u0430|\u0442\u043e\u0437\u0438\\s+\u0447\u0435\u0442\u0432\u044a\u0440\u0442\u044a\u043a|\u0442\u043e\u0437\u0438\\s+\u043f\u0435\u0442\u044a\u043a|\u0442\u0430\u0437\u0438\\s+\u0441\u044a\u0431\u043e\u0442\u0430"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430\\s+\u043d\u0435\u0434\u0435\u043b\u044f|\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442\\s+\u043f\u043e\u043d\u0435\u0434\u0435\u043b\u043d\u0438\u043a|\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442\\s+\u0432\u0442\u043e\u0440\u043d\u0438\u043a|\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430\\s+\u0441\u0440\u044f\u0434\u0430|\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442\\s+\u0447\u0435\u0442\u0432\u044a\u0440\u0442\u044a\u043a|\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442\\s+\u043f\u0435\u0442\u044a\u043a|\u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430\\s+\u0441\u044a\u0431\u043e\u0442\u0430"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
