.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_ro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro;

    .line 9
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p1, "param_am"

    const-string v0, "a\\.m\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_pm"

    const-string v0, "p\\.m\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMM"

    const-string v0, "ian\\.|feb\\.|mar\\.|apr\\.|mai|iun\\.|iul\\.|aug\\.|sept\\.|oct\\.|nov\\.|dec\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_MMMM"

    const-string v0, "ianuarie|februarie|martie|aprilie|mai|iunie|iulie|august|septembrie|octombrie|noiembrie|decembrie"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E"

    const-string v0, "Dum|Lun|Mar|Mie|Joi|Vin|S\u00e2m"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_E2"

    const-string v0, "Dum|Lun|Mar|Mie|Joi|Vin|S\u00e2m"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_EEEE"

    const-string v0, "duminic\u0103|luni|mar\u021bi|miercuri|joi|vineri|s\u00e2mb\u0103t\u0103"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_days"

    const-string v0, "azi|m\u00e2ine|poim\u00e2ine"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_thisweek"

    const-string v0, "duminica\\s+aceasta|lunea\\s+aceasta|mar\u021bea\\s+aceasta|miercurea\\s+aceasta|joia\\s+aceasta|vinerea\\s+aceasta|s\u00e2mb\u0103ta\\s+aceasta"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_nextweek"

    const-string v0, "duminica\\s+viitoare|lunea\\s+viitoare|mar\u021bea\\s+viitoare|miercurea\\s+viitoare|joia\\s+viitoare|vinerea\\s+viitoare|s\u00e2mb\u0103ta\\s+viitoare"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
