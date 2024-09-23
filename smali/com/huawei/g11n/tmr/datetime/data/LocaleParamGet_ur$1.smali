.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_ur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "AM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "PM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "\u062c\u0646\u0648\u0631\u06cc|\u0641\u0631\u0648\u0631\u06cc|\u0645\u0627\u0631\u0686|\u0627\u067e\u0631\u06cc\u0644|\u0645\u0626\u06cc|\u062c\u0648\u0646|\u062c\u0648\u0644\u0627\u0626\u06cc|\u0627\u06af\u0633\u062a|\u0633\u062a\u0645\u0628\u0631|\u0627\u06a9\u062a\u0648\u0628\u0631|\u0646\u0648\u0645\u0628\u0631|\u062f\u0633\u0645\u0628\u0631"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u062c\u0646\u0648\u0631\u06cc|\u0641\u0631\u0648\u0631\u06cc|\u0645\u0627\u0631\u0686|\u0627\u067e\u0631\u06cc\u0644|\u0645\u0626\u06cc|\u062c\u0648\u0646|\u062c\u0648\u0644\u0627\u0626\u06cc|\u0627\u06af\u0633\u062a|\u0633\u062a\u0645\u0628\u0631|\u0627\u06a9\u062a\u0648\u0628\u0631|\u0646\u0648\u0645\u0628\u0631|\u062f\u0633\u0645\u0628\u0631"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\u0627\u062a\u0648\u0627\u0631|\u067e\u06cc\u0631|\u0645\u0646\u06af\u0644|\u0628\u062f\u06be|\u062c\u0645\u0639\u0631\u0627\u062a|\u062c\u0645\u0639\u06c1|\u06c1\u0641\u062a\u06c1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\u0627\u062a\u0648\u0627\u0631|\u067e\u06cc\u0631|\u0645\u0646\u06af\u0644|\u0628\u062f\u06be|\u062c\u0645\u0639\u0631\u0627\u062a|\u062c\u0645\u0639\u06c1|\u06c1\u0641\u062a\u06c1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u0627\u062a\u0648\u0627\u0631|\u067e\u06cc\u0631|\u0645\u0646\u06af\u0644|\u0628\u062f\u06be|\u062c\u0645\u0639\u0631\u0627\u062a|\u062c\u0645\u0639\u06c1|\u06c1\u0641\u062a\u06c1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u0622\u062c|\u0622\u0626\u0646\u062f\u06c1\\s+\u06a9\u0644|\u0622\u0646\u06d2\\s+\u0648\u0627\u0644\u0627\\s+\u067e\u0631\u0633\u0648\u06ba"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u0627\u0633\\s+\u0627\u062a\u0648\u0627\u0631|\u0627\u0633\\s+\u0633\u0648\u0645\u0648\u0627\u0631|\u0627\u0633\\s+\u0645\u0646\u06af\u0644|\u0627\u0633\\s+\u0628\u062f\u06be|\u0627\u0633\\s+\u062c\u0645\u0639\u0631\u0627\u062a|\u0627\u0633\\s+\u062c\u0645\u0639\u06c1|\u06cc\u06c1\\s+\u06c1\u0641\u062a\u06c1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "\u0627\u06af\u0644\u06d2\\s+\u0627\u062a\u0648\u0627\u0631|\u0627\u06af\u0644\u06d2\\s+\u0633\u0648\u0645\u0648\u0627\u0631|\u0627\u06af\u0644\u06d2\\s+\u0645\u0646\u06af\u0644|\u0627\u06af\u0644\u06d2\\s+\u0628\u062f\u06be|\u0627\u06af\u0644\u06d2\\s+\u062c\u0645\u0639\u0631\u0627\u062a|\u0627\u06af\u0644\u06d2\\s+\u062c\u0645\u0639\u06c1|\u0627\u06af\u0644\u06d2\\s+\u06c1\u0641\u062a\u06c1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
