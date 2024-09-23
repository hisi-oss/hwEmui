.class Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;
.super Ljava/util/HashMap;
.source "ParseRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->this$0:Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;

    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 20
    const/16 p1, 0x385

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y].*?)?([param_MMMM]|[param_MMM]).*?[regex_d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const/16 p1, 0x386

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_MMMM]|[param_MMM]).*?[regex_d](.+?[regex_y])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const/16 p1, 0x387

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[regex_d].*?([param_MMMM]|[param_MMM])(.*?[regex_y])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/16 p1, 0x388

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\\d+).+?(\\d+).+?(\\d+)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/16 p1, 0x389

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\\d+).+?(\\d+)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const/16 p1, 0x38a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, ".*?(\\d{1,2}).*?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const/16 p1, 0x38b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\\bam|\\bpm|\\bmm)?\\s*(\\d{1,2})[\\s.:]+(\\d{2})([\\s.:]+(\\d{2}))?\\s*(\\bam|\\bpm|\\bmm)?[\\s(]*([regex_zzzz])?[\\s)]*"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/16 p1, 0x38c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\\bam|\\bpm|\\bmm)?\\s*(\\d{1,2}).\\s*(\\d{2})?(.\\s*(\\d{2}))?.?\\s*\\(?([regex_zzzz])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const/16 p1, 0x38d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\\bam|\\bpm|\\bmm)?\\s*(\\d{1,2})\\s*[^0-9+-]+\\s*(\\d{2})(\\s*[^0-9+-]+\\s*(\\d{2}))?[^0-9+-]+([regex_zzzz])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/16 p1, 0x38e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])\\s*)?(([regex_zzzz])\\s*)?(\\bam|\\bpm|\\bmm)?\\s*(\\d{1,2}[param_digit])(\u6642|\u65f6|\u70b9|\u9ede|\u0433\u0430\u0434\u0437\u0456\u043d|\\s)+(\\d{1,2}[param_timesuf][param_digit])?[\\s\u5206]*((\\d{1,2}[param_digit])[\\s\u79d2]+)?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/16 p1, 0x38f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(2[0-4]|[0-1]?[0-9])[:.]([0-5][0-9]|60)([:.]([0-5][0-9]|60))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/16 p1, 0x390

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\\b(am|pm|mm)\\b)?\\s*(\\d{1,2})"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/16 p1, 0x391

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_zzzz])\\s*)?(\\bam|\\bpm|\\bmm)\\s*(\\d{1,2})[\\s.:]+(\\d{2})([\\s.:]+(\\d{2}))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/16 p1, 0x393

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\\d{1,2}).+?(\\d{1,2}).*?\\b([param_MMMM]|[param_MMM])(.*?((20)?[0-9]{2}))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/16 p1, 0x394

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "\\b([param_MMMM]|[param_MMM]).*?(\\d{1,2}).+?(\\d{1,2}).+?((20)?[0-9]{2})"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/16 p1, 0x395

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\\d{1,2}).+?\\b([param_MMMM]|[param_MMM]).+?(\\d{1,2}).+?\\b([param_MMMM]|[param_MMM])(.+?((20)?[0-9]{2}))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/16 p1, 0x398

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "((?!<\\d)(\\d{2,4})\\s*[\u5e74|\ub144]\\s*)?(\\d{1,2})[^0-9]+(\\d{1,2})([^0-9]+(\\d{1,2}))?[^0-9]+(\\d{1,2})"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/16 p1, 0x399

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(((20)?[0-9]{2}).*?)?([param_MMMM]|[param_MMM])[^0-9]*?(\\d{1,2}).+?(\\d{1,2})"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/16 p1, 0x39c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_y])(/|-|(\\.[ ]{0,3})))?([regex_m])(\\5|(/|-|(\\.[ ]{0,3})))([regex_d])\\.?\\s*[-\u2013~]\\s*([regex_d])\\.?(?!\\.?\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/16 p1, 0x39d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_y])[^0-9]*\\s+)?([param_MMMM]|[param_MMM])(ren)?\\s+[regex_d]a?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/16 p1, 0x39e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_y])[^0-9]+)([regex_d])[^0-9]+([param_MMMM]|[param_MMM])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
