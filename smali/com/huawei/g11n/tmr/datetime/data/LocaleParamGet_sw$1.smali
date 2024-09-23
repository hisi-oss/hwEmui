.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_sw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "Asubuhi"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "Mchana"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ago|Sep|Okt|Nov|Des"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "Januari|Februari|Machi|Aprili|Mei|Juni|Julai|Agosti|Septemba|Oktoba|Novemba|Desemba"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "leo|kesho|kesho\\s+kutwa"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "Jumapili\\s+hii|Jumatatu\\s+hii|Jumanne\\s+hii|Jumatano\\s+hii|Alhamisi\\s+hii|Ijumaa\\s+hii|Jumamosi\\s+hii"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "Jumapili\\s+ijayo|Jumatatu\\s+ijayo|Jumanne\\s+ijayo|Jumatano\\s+ijayo|Alhamisi\\s+ijayo|Ijumaa\\s+ijayo|Jumamosi\\s+ijayo"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
