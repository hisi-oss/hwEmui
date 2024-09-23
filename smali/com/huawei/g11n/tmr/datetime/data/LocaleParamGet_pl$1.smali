.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_pl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl;

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p1, "param_am"

    const-string v0, "nad\\s+ranem|rano"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_pm"

    const-string v0, "po\\s+po\u0142udniu|w\\s+nocy|w\\s+po\u0142udnie"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMM"

    const-string v0, "sty|lut|mar|kwi|maj|cze|lip|sie|wrz|pa\u017a|lis|gru"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_MMMM"

    const-string v0, "stycznia|lutego|marca|kwietnia|maja|czerwca|lipca|sierpnia|wrze\u015bnia|pa\u017adziernika|listopada|grudnia"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E"

    const-string v0, "niedz\\.|pon\\.|wt\\.|\u015br\\.|czw\\.|pt\\.|sob\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_E2"

    const-string v0, "niedz\\.|pon\\.|wt\\.|\u015br\\.|czw\\.|pt\\.|sob\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_EEEE"

    const-string v0, "niedziela|poniedzia\u0142ek|wtorek|\u015broda|czwartek|pi\u0105tek|sobota"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_days"

    const-string v0, "dzisiaj|jutro|pojutrze"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_thisweek"

    const-string v0, "w\\s+t\u0119\\s+niedziel\u0119|w\\s+ten\\s+poniedzia\u0142ek|w\\s+ten\\s+wtorek|w\\s+t\u0119\\s+\u015brod\u0119|w\\s+ten\\s+czwartek|w\\s+ten\\s+pi\u0105tek|w\\s+t\u0119\\s+sobot\u0119"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_nextweek"

    const-string v0, "w\\s+przysz\u0142\u0105\\s+niedziel\u0119|w\\s+przysz\u0142y\\s+poniedzia\u0142ek|w\\s+przysz\u0142y\\s+wtorek|w\\s+przysz\u0142\u0105\\s+\u015brod\u0119|w\\s+przysz\u0142y\\s+czwartek|w\\s+przysz\u0142y\\s+pi\u0105tek|w\\s+przysz\u0142\u0105\\s+sobot\u0119"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
