.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_hu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_am"

    const-string v0, "de\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_pm"

    const-string v0, "du\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_MMM"

    const-string v0, "jan\\.|febr\\.|m\u00e1rc\\.|\u00e1pr\\.|m\u00e1j\\.|j\u00fan\\.|j\u00fal\\.|aug\\.|szept\\.|okt\\.|nov\\.|dec\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMMM"

    const-string v0, "janu\u00e1r|febru\u00e1r|m\u00e1rcius|\u00e1prilis|m\u00e1jus|j\u00fanius|j\u00falius|augusztus|szeptember|okt\u00f3ber|november|december"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_E"

    const-string v0, "V|H|K|Sze|Cs|P|Szo"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E2"

    const-string v0, "Sze|Cs|Szo"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_EEEE"

    const-string v0, "vas\u00e1rnap|h\u00e9tf\u0151|kedd|szerda|cs\u00fct\u00f6rt\u00f6k|p\u00e9ntek|szombat"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_days"

    const-string v0, "ma|holnap|holnaput\u00e1n"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_thisweek"

    const-string v0, "ez\\s+a\\s+vas\u00e1rnap|ez\\s+a\\s+h\u00e9tf\u0151|ez\\s+a\\s+kedd|ez\\s+a\\s+szerda|ez\\s+a\\s+cs\u00fct\u00f6rt\u00f6k|ez\\s+a\\s+p\u00e9ntek|ez\\s+a\\s+szombat"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_nextweek"

    const-string v0, "k\u00f6vetkez\u0151\\s+vas\u00e1rnap|k\u00f6vetkez\u0151\\s+h\u00e9tf\u0151|k\u00f6vetkez\u0151\\s+kedd|k\u00f6vetkez\u0151\\s+szerda|k\u00f6vetkez\u0151\\s+cs\u00fct\u00f6rt\u00f6k|k\u00f6vetkez\u0151\\s+p\u00e9ntek|k\u00f6vetkez\u0151\\s+szombat"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
