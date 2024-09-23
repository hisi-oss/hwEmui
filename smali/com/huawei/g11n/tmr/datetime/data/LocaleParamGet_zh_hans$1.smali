.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_zh_hans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;

    .line 9
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p1, "param_am"

    const-string v0, "\u4e0a\u5348|\u6e05\u6668|\u51cc\u6668|\u65e9[\u4e0a\u6668]?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_pm"

    const-string v0, "\u4e0b\u5348|\u665a\u4e0a|\u508d\u665a|\u534a\u591c|\u665a"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_mm"

    const-string v0, "\u4e2d\u5348|\u6b63\u5348"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_MMM"

    const-string v0, "1\u6708|2\u6708|3\u6708|4\u6708|5\u6708|6\u6708|7\u6708|8\u6708|9\u6708|10\u6708|11\u6708|12\u6708"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_MMMM"

    const-string v0, "\u4e00\u6708|\u4e8c\u6708|\u4e09\u6708|\u56db\u6708|\u4e94\u6708|\u516d\u6708|\u4e03\u6708|\u516b\u6708|\u4e5d\u6708|\u5341\u6708|\u5341\u4e00\u6708|\u5341\u4e8c\u6708"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_E"

    const-string v0, "\u5468\u65e5|\u5468\u4e00|\u5468\u4e8c|\u5468\u4e09|\u5468\u56db|\u5468\u4e94|\u5468\u516d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_E2"

    const-string v0, "\u5468\u65e5|\u5468\u4e00|\u5468\u4e8c|\u5468\u4e09|\u5468\u56db|\u5468\u4e94|\u5468\u516d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_EEEE"

    const-string v0, "\u661f\u671f\u65e5|\u661f\u671f\u4e00|\u661f\u671f\u4e8c|\u661f\u671f\u4e09|\u661f\u671f\u56db|\u661f\u671f\u4e94|\u661f\u671f\u516d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_days"

    const-string v0, "\u4eca[\u5929\u65e5]?(?!\u5e74)|\u660e[\u5929\u65e5]?(?!\u5e74)|\u540e[\u5929\u65e5](?!\u5e74)|\u5927\u540e[\u5929\u65e5](?!\u5e74)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_thisweek"

    const-string v0, "\u672c\u5468\u65e5|\u672c\u5468\u4e00|\u672c\u5468\u4e8c|\u672c\u5468\u4e09|\u672c\u5468\u56db|\u672c\u5468\u4e94|\u672c\u5468\u516d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p1, "param_nextweek"

    .line 22
    const-string v0, "\u4e0b\u5468\u65e5|\u4e0b\u5468\u4e00|\u4e0b\u5468\u4e8c|\u4e0b\u5468\u4e09|\u4e0b\u5468\u56db|\u4e0b\u5468\u4e94|\u4e0b\u5468\u516d|\u4e0b\u4e0b\u5468\u65e5|\u4e0b\u4e0b\u5468\u4e00|\u4e0b\u4e0b\u5468\u4e8c|\u4e0b\u4e0b\u5468\u4e09|\u4e0b\u4e0b\u5468\u56db|\u4e0b\u4e0b\u5468\u4e94|\u4e0b\u4e0b\u5468\u516d"

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string p1, "param_textyear"

    const-string v0, "\\u0604|\u4eca|\u660e|\u540e"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p1, "param_textmonth"

    const-string v0, "\\u0604|\u672c|\u4e0b\u4e2a\uff1f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string p1, "param_digit"

    const-string v0, "\\u0604|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u4e24]+"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p1, "param_digitYear"

    const-string v0, "\\u0604|\u4e8c[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{3}|(?<![\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])[\u96f6\u4e00\u4e8c\u4e09\u56db][\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p1, "param_digitMonth"

    const-string v0, "\\u0604|\u5341[\u4e00\u4e8c]|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string p1, "param_digitDay"

    const-string v0, "\\u0604|\u4e09\u5341\u4e00?|\u4e8c?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string p1, "param_digitHour"

    const-string v0, "\\u0604|\u4e8c\u5341[\u4e00\u4e8c\u4e09\u56db]?|\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string p1, "param_digitMS"

    const-string v0, "\\u0604|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u4e00\u5341|\u96f6[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string p1, "param_digitMS2"

    const-string v0, "\\u0604|[\u4e8c\u4e09\u56db\u4e94]?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|\u4e00\u5341|\u96f6?[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p1, "param_timesuf"

    const-string v0, "\\u0604|\u949f|\u534a|\u6574|[\u4e00\u4e09]\u523b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string p1, "param_pastForward"

    .line 41
    const-string v0, "\u6628[\u65e5\u5929]?\\(?|\u524d[\u65e5\u5929]\\(?|\u53bb\u5e74|\u524d\u5e74|\u4e0a\u6708|\u4e0a\u4e2a\u6708|\u4e0a\u4e2a?|1[0-9]{3}\u5e74|\u4e00[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u96f6]{3}\u5e74|[\u4e94\u516d\u4e03\u516b\u4e5d][\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u96f6]\u5e74"

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string p1, "param_filtertext"

    .line 45
    const-string v0, "\u65e9\u4e00\u70b9|\u665a\u4e00\u70b9|\u660e\u540e\u5929|\u4e0a\u5348|\u6e05\u6668|\u51cc\u6668|\u65e9[\u4e0a\u6668]?|\u4e0b\u5348|\u4e2d\u5348|\u665a\u4e0a|\u508d\u665a|\u534a\u591c|\u665a|\u4eca|\u660e|\u540e|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u4e24\u96f6]\u70b9[[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u96f6]]"

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p1, "mark_ShortDateLevel"

    const-string v0, "ymd"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
