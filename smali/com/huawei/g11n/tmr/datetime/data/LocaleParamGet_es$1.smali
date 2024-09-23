.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_es.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es;

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string p1, "param_am"

    const-string v0, "a\\.\\s+m\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "p\\.\\s+m\\.|p\\.m\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "ene\\.|feb\\.|mar\\.|abr\\.|may\\.|jun\\.|jul\\.|ago\\.|sept\\.|oct\\.|nov\\.|dic\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "dom\\.|lun\\.|mar\\.|mi\u00e9\\.|jue\\.|vie\\.|s\u00e1b\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "dom\\.|lun\\.|mar\\.|mi\u00e9\\.|jue\\.|vie\\.|s\u00e1b\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "domingo|lunes|martes|mi\u00e9rcoles|jueves|viernes|s\u00e1bado"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "hoy|ma\u00f1ana|pasado\\s+ma\u00f1ana"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "este\\s+domingo|este\\s+lunes|este\\s+martes|este\\s+mi\u00e9rcoles|este\\s+jueves|este\\s+viernes|este\\s+s\u00e1bado"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "el\\s+pr\u00f3ximo\\s+domingo|el\\s+pr\u00f3ximo\\s+lunes|el\\s+pr\u00f3ximo\\s+martes|el\\s+pr\u00f3ximo\\s+mi\u00e9rcoles|el\\s+pr\u00f3ximo\\s+jueves|el\\s+pr\u00f3ximo\\s+viernes|el\\s+pr\u00f3ximo\\s+s\u00e1bado"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
