.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_ja.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;

    .line 9
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p1, "param_am"

    const-string v0, "\u5348\u524d|\u5348\u524d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_pm"

    const-string v0, "\u6b63\u5348|\u5348\u5f8c"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMM"

    const-string v0, "1\u6708|2\u6708|3\u6708|4\u6708|5\u6708|6\u6708|7\u6708|8\u6708|9\u6708|10\u6708|11\u6708|12\u6708"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_MMMM"

    const-string v0, "\u4e00\u6708|\u4e8c\u6708|\u4e09\u6708|\u56db\u6708|\u4e94\u6708|\u516d\u6708|\u4e03\u6708|\u516b\u6708|\u4e5d\u6708|\u5341\u6708|\u5341\u4e00\u6708|\u5341\u4e8c\u6708"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E"

    const-string v0, "\u65e5|\u6708|\u706b|\u6c34|\u6728|\u91d1|\u571f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_EEEE"

    const-string v0, "\u65e5\u66dc\u65e5|\u6708\u66dc\u65e5|\u706b\u66dc\u65e5|\u6c34\u66dc\u65e5|\u6728\u66dc\u65e5|\u91d1\u66dc\u65e5|\u571f\u66dc\u65e5"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_days"

    const-string v0, "\u4eca\u65e5|\u660e\u65e5|\u660e\u5f8c\u65e5"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_thisweek"

    const-string v0, "\u4eca\u9031\u306e\u65e5\u66dc\u65e5|\u4eca\u9031\u306e\u6708\u66dc\u65e5|\u4eca\u9031\u306e\u706b\u66dc\u65e5|\u4eca\u9031\u306e\u6c34\u66dc\u65e5|\u4eca\u9031\u306e\u6728\u66dc\u65e5|\u4eca\u9031\u306e\u91d1\u66dc\u65e5|\u4eca\u9031\u306e\u571f\u66dc\u65e5"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_nextweek"

    const-string v0, "\u6765\u9031\u306e\u65e5\u66dc\u65e5|\u6765\u9031\u306e\u6708\u66dc\u65e5|\u6765\u9031\u306e\u706b\u66dc\u65e5|\u6765\u9031\u306e\u6c34\u66dc\u65e5|\u6765\u9031\u306e\u6728\u66dc\u65e5|\u6765\u9031\u306e\u91d1\u66dc\u65e5|\u6765\u9031\u306e\u571f\u66dc\u65e5"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string p1, "param_pastForward"

    const-string v0, "\u6628[\u65e5\u5929]|\u4e00\u6628[\u65e5\u5929]|\u6628\u5e74|\u5148\u6708"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string p1, "param_digit"

    const-string v0, "\\u0604|[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u4e24]+"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string p1, "param_digitYear"

    const-string v0, "\\u0604|\u4e8c[\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]{3}|(?<![\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])[\u96f6\u4e00\u4e8c\u4e09\u56db][\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string p1, "param_digitMonth"

    const-string v0, "\\u0604|\u5341[\u4e00\u4e8c]|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p1, "param_digitDay"

    const-string v0, "\\u0604|\u4e09\u5341\u4e00?|\u4e8c?\u5341[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]?|[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p1, "param_textyear"

    const-string v0, "\\u0604|\u4eca|\u7fcc"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string p1, "param_textmonth"

    const-string v0, "\\u0604|\u4eca|\u7fcc"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string p1, "param_filtertext"

    const-string v0, "[0-9]+(\u65e5|\u6708|\u706b|\u6c34|\u6728|\u91d1|\u571f)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p1, "param_pastForward"

    .line 34
    const-string v0, "1[0-9]{3}\u5e74|\u4e00[\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u96f6]{3}\u5e74|[\u4e94\u516d\u4e03\u516b\u4e5d][\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u96f6]\u5e74"

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string p1, "mark_ShortDateLevel"

    const-string v0, "ymd"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
