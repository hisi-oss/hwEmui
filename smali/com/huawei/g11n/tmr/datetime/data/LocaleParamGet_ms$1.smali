.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_ms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms;

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string p1, "param_tmark"

    const-string v0, "[:.]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_am"

    const-string v0, "PG"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_pm"

    const-string v0, "PTG"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMM"

    const-string v0, "Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ogo|Sep|Okt|Nov|Dis"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_MMMM"

    const-string v0, "Januari|Februari|Mac|April|Mei|Jun|Julai|Ogos|September|Oktober|November|Disember"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E"

    const-string v0, "Ahd|Isn|Sel|Rab|Kha|Jum|Sab"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_E2"

    const-string v0, "Ahd|Isn|Sel|Rab|Kha|Jum|Sab"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_EEEE"

    const-string v0, "Ahad|Isnin|Selasa|Rabu|Khamis|Jumaat|Sabtu"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_days"

    const-string v0, "Hari\\s+ini|Esok|Hari\\s+selepas\\s+esok"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_thisweek"

    const-string v0, "Ahad\\s+ini|Isnin\\s+ini|Selasa\\s+ini|Rabu\\s+ini|Khamis\\s+ini|Jumaat\\s+ini|Sabtu\\s+ini"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_nextweek"

    const-string v0, "Ahad\\s+depan|Isnin\\s+depan|Selasa\\s+depan|Rabu\\s+depan|Khamis\\s+depan|Jumaat\\s+depan|Sabtu\\s+depan"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
