.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_sk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_am"

    const-string v0, "AM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_pm"

    const-string v0, "PM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_MMM"

    const-string v0, "jan|feb|mar|apr|m\u00e1j|j\u00fan|j\u00fal|aug|sep|okt|nov|dec"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMMM"

    const-string v0, "janu\u00e1ra|febru\u00e1ra|marca|apr\u00edla|m\u00e1ja|j\u00fana|j\u00fala|augusta|septembra|okt\u00f3bra|novembra|decembra"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_E"

    const-string v0, "ne|po|ut|st|\u0161t|pi|so"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E2"

    const-string v0, "ne|po|ut|st|\u0161t|pi|so"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_EEEE"

    const-string v0, "nede\u013ea|pondelok|utorok|streda|\u0161tvrtok|piatok|sobota"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_days"

    const-string v0, "Dnes|Zajtra|Pozajtra"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_thisweek"

    const-string v0, "T\u00fato\\s+nede\u013eu|Tento\\s+pondelok|Tento\\s+utorok|T\u00fato\\s+stredu|Tento\\s+\u0161tvrtok|Tento\\s+piatok|T\u00fato\\s+sobotu"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_nextweek"

    const-string v0, "Bud\u00facu\\s+nede\u013eu|Bud\u00faci\\s+pondelok|Bud\u00faci\\s+utorok|Bud\u00facu\\s+stredu|Bud\u00faci\\s+\u0161tvrtok|Bud\u00faci\\s+piatok|Bud\u00facu\\s+sobotu"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
