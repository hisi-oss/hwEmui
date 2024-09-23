.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_kk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "\u0442\u0430\u04a3\u0493\u044b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "\u0442\u04af\u0441\u043a\u0456|\u043a\u0435\u0448\u043a\u0456|\u0442\u04af\u043d\u0433\u0456"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "\u049b\u0430\u04a3\\.|\u0430\u049b\u043f\\.|\u043d\u0430\u0443\\.|\u0441\u04d9\u0443\\.|\u043c\u0430\u043c\\.|\u043c\u0430\u0443\\.|\u0448\u0456\u043b\\.|\u0442\u0430\u043c\\.|\u049b\u044b\u0440\\.|\u049b\u0430\u0437\\.|\u049b\u0430\u0440\\.|\u0436\u0435\u043b\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u049b\u0430\u04a3\u0442\u0430\u0440|\u0430\u049b\u043f\u0430\u043d|\u043d\u0430\u0443\u0440\u044b\u0437|\u0441\u04d9\u0443\u0456\u0440|\u043c\u0430\u043c\u044b\u0440|\u043c\u0430\u0443\u0441\u044b\u043c|\u0448\u0456\u043b\u0434\u0435|\u0442\u0430\u043c\u044b\u0437|\u049b\u044b\u0440\u043a\u04af\u0439\u0435\u043a|\u049b\u0430\u0437\u0430\u043d|\u049b\u0430\u0440\u0430\u0448\u0430|\u0436\u0435\u043b\u0442\u043e\u049b\u0441\u0430\u043d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\\b\u0436\u0441\\b|\\b\u0434\u0441\\b|\\b\u0441\u0441\\b|\\b\u0441\u0440\\b|\\b\u0431\u0441\\b|\\b\u0436\u043c\\b|\\b\u0441\u0431\\b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\\b\u0436\u0441\\b|\\b\u0434\u04af\u0439\\b|\\b\u0441\u0441\\b|\\b\u0441\u04d9\u0440\\b|\\b\u0431\u0441\\b|\\b\u0436\u04b1\u043c\\b|\\b\u0441\u0431\\b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u0436\u0435\u043a\u0441\u0435\u043d\u0431\u0456|\u0434\u04af\u0439\u0441\u0435\u043d\u0431\u0456|\u0441\u0435\u0439\u0441\u0435\u043d\u0431\u0456|\u0441\u04d9\u0440\u0441\u0435\u043d\u0431\u0456|\u0431\u0435\u0439\u0441\u0435\u043d\u0431\u0456|\u0436\u04b1\u043c\u0430|\u0441\u0435\u043d\u0431\u0456"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u0431\u04af\u0433\u0456\u043d|\u0435\u0440\u0442\u0435\u04a3|\u0431\u04af\u0440\u0441\u0456\u0433\u04af\u043d\u0456"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u043e\u0441\u044b\\s+\u0436\u0435\u043a\u0441\u0435\u043d\u0431\u0456|\u043e\u0441\u044b\\s+\u0434\u04af\u0439\u0441\u0435\u043d\u0431\u0456|\u043e\u0441\u044b\\s+\u0441\u0435\u0439\u0441\u0435\u043d\u0431\u0456|\u043e\u0441\u044b\\s+\u0441\u04d9\u0440\u0441\u0435\u043d\u0431\u0456|\u043e\u0441\u044b\\s+\u0431\u0435\u0439\u0441\u0435\u043d\u0431\u0456|\u043e\u0441\u044b\\s+\u0436\u04b1\u043c\u0430|\u043e\u0441\u044b\\s+\u0441\u0435\u043d\u0431\u0456"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "\u043a\u0435\u043b\u0435\u0441\u0456\\s+\u0436\u0435\u043a\u0441\u0435\u043d\u0431\u0456|\u043a\u0435\u043b\u0435\u0441\u0456\\s+\u0434\u04af\u0439\u0441\u0435\u043d\u0431\u0456|\u043a\u0435\u043b\u0435\u0441\u0456\\s+\u0441\u0435\u0439\u0441\u0435\u043d\u0431\u0456|\u043a\u0435\u043b\u0435\u0441\u0456\\s+\u0441\u04d9\u0440\u0441\u0435\u043d\u0431\u0456|\u043a\u0435\u043b\u0435\u0441\u0456\\s+\u0431\u0435\u0439\u0441\u0435\u043d\u0431\u0456|\u043a\u0435\u043b\u0435\u0441\u0456\\s+\u0436\u04b1\u043c\u0430|\u043a\u0435\u043b\u0435\u0441\u0456\\s+\u0441\u0435\u043d\u0431\u0456"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_DateTimeBridge"

    const-string v0, "|\u0441\u0430\u0493\u0430\u0442"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
