.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_cs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_am"

    const-string v0, "AM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_pm"

    const-string v0, "PM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_MMM"

    const-string v0, "led|\u00fano|b\u0159e|dub|kv\u011b|\u010dvn|\u010dvc|srp|z\u00e1\u0159|\u0159\u00edj|lis|pro"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMMM"

    const-string v0, "ledna|\u00fanora|b\u0159ezna|dubna|kv\u011btna|\u010dervna|\u010dervence|srpna|z\u00e1\u0159\u00ed|\u0159\u00edjna|listopadu|prosince"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_E"

    const-string v0, "ne|po|\u00fat|st|\u010dt|p\u00e1|so"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E2"

    const-string v0, "ne|po|\u00fat|st|\u010dt|p\u00e1|so"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_EEEE"

    const-string v0, "ned\u011ble|pond\u011bl\u00ed|\u00fater\u00fd|st\u0159eda|\u010dtvrtek|p\u00e1tek|sobota"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_days"

    const-string v0, "dnes|z\u00edtra|poz\u00edt\u0159\u00ed"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_thisweek"

    const-string v0, "tuto\\s+ned\u011bli|toto\\s+pond\u011bl\u00ed|toto\\s+\u00fater\u00fd|tuto\\s+st\u0159edu|tento\\s+\u010dtvrtek|tento\\s+p\u00e1tek|tuto\\s+sobotu"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_nextweek"

    const-string v0, "p\u0159\u00ed\u0161t\u00ed\\s+ned\u011bli|p\u0159\u00ed\u0161t\u00ed\\s+pond\u011bl\u00ed|p\u0159\u00ed\u0161t\u00ed\\s+\u00fater\u00fd|p\u0159\u00ed\u0161t\u00ed\\s+st\u0159edu|p\u0159\u00ed\u0161t\u00ed\\s+\u010dtvrtek|p\u0159\u00ed\u0161t\u00ed\\s+p\u00e1tek|p\u0159\u00ed\u0161t\u00ed\\s+sobotu"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
