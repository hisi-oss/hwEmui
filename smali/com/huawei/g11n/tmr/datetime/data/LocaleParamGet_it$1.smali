.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_it.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it;

    .line 9
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p1, "param_am"

    const-string v0, "m\\.|AM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_pm"

    const-string v0, "p\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMM"

    const-string v0, "gen|feb|mar|apr|mag|giu|lug|ago|set|ott|nov|dic"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_MMMM"

    const-string v0, "gennaio|febbraio|marzo|aprile|maggio|giugno|luglio|agosto|settembre|ottobre|novembre|dicembre"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E"

    const-string v0, "dom|lun|mar|mer|gio|ven|sab"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_E2"

    const-string v0, "dom|lun|mar|mer|gio|ven|sab"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_EEEE"

    const-string v0, "domenica|luned\u00ec|marted\u00ec|mercoled\u00ec|gioved\u00ec|venerd\u00ec|sabato"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_days"

    const-string v0, "oggi|domani|dopodomani"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_thisweek"

    const-string v0, "questa\\s+domenica|questo\\s+luned\u00ec|questo\\s+marted\u00ec|questo\\s+mercoled\u00ec|questo\\s+gioved\u00ec|questo\\s+venerd\u00ec|questo\\s+sabato"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_nextweek"

    const-string v0, "domenica\\s+prossima|luned\u00ec\\s+prossimo|marted\u00ec\\s+prossimo|mercoled\u00ec\\s+prossimo|gioved\u00ec\\s+prossimo|venerd\u00ec\\s+prossimo|sabato\\s+prossimo"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
