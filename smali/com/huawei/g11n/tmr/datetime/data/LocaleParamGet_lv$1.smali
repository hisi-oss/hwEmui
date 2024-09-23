.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_lv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "AM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "PM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "janv\\.|febr\\.|marts|apr\\.|maijs|j\u016bn\\.|j\u016bl\\.|aug\\.|sept\\.|okt\\.|nov\\.|dec\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "janv\u0101r\u012b|febru\u0101r\u012b|mart\u0101|apr\u012bl\u012b|maij\u0101|j\u016bnij\u0101|j\u016blij\u0101|august\u0101|septembr\u012b|oktobr\u012b|novembr\u012b|decembr\u012b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "Sv|Pr|Ot|Tr|Ce|Pk|Se"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "Sv|Pr|Ot|Tr|Ce|Pk|Se"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "sv\u0113tdiena|pirmdiena|otrdiena|tre\u0161diena|ceturtdiena|piektdiena|sestdiena"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u0161odien|r\u012bt|par\u012bt"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u0161aj\u0101\\s+sv\u0113tdien\u0101|\u0161aj\u0101\\s+pirmdien\u0101|\u0161aj\u0101\\s+otrdien\u0101|\u0161aj\u0101\\s+tre\u0161dien\u0101|\u0161aj\u0101\\s+ceturtdien\u0101|\u0161aj\u0101\\s+piektdien\u0101|\u0161aj\u0101\\s+sestdien\u0101"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "n\u0101kamaj\u0101\\s+sv\u0113tdien\u0101|n\u0101kamaj\u0101\\s+pirmdien\u0101|n\u0101kamaj\u0101\\s+otrdien\u0101|n\u0101kamaj\u0101\\s+tre\u0161dien\u0101|n\u0101kamaj\u0101\\s+ceturtdien\u0101|n\u0101kamaj\u0101\\s+piektdien\u0101|n\u0101kamaj\u0101\\s+sestdien\u0101"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
