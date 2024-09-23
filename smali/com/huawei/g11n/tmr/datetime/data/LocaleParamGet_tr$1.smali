.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_tr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_am"

    const-string v0, "\u00d6\u00d6"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_pm"

    const-string v0, "\u00d6S"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_MMM"

    const-string v0, "Oca|\u015eub|Mar|Nis|May|Haz|Tem|A\u011fu|Eyl|Eki|Kas|Ara"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMMM"

    const-string v0, "Ocak|\u015eubat|Mart|Nisan|May\u0131s|Haziran|Temmuz|A\u011fustos|Eyl\u00fcl|Ekim|Kas\u0131m|Aral\u0131k"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_E"

    const-string v0, "Paz|Pzt|Sal|\u00c7ar|Per|Cum|Cmt"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E2"

    const-string v0, "Paz|Pzt|Sal|\u00c7ar|Per|Cum|Cmt"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_EEEE"

    const-string v0, "Pazar|Pazartesi|Sal\u0131|\u00c7ar\u015famba|Per\u015fembe|Cuma|Cumartesi"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_days"

    const-string v0, "bug\u00fcn|yar\u0131n|\u00f6b\u00fcr\\s+g\u00fcn"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_thisweek"

    const-string v0, "bu\\s+pazar|bu\\s+pazartesi|bu\\s+sal\u0131|bu\\s+\u00e7ar\u015famba|bu\\s+per\u015fembe|bu\\s+cuma|bu\\s+cumartesi"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_nextweek"

    const-string v0, "gelecek\\s+pazar|gelecek\\s+pazartesi|gelecek\\s+sal\u0131|gelecek\\s+\u00e7ar\u015famba|gelecek\\s+per\u015fembe|gelecek\\s+cuma|gelecek\\s+cumartesi"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
