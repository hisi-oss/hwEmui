.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_ka.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "AM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "PM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "\u10d8\u10d0\u10dc|\u10d7\u10d4\u10d1|\u10db\u10d0\u10e0|\u10d0\u10de\u10e0|\u10db\u10d0\u10d8|\u10d8\u10d5\u10dc|\u10d8\u10d5\u10da|\u10d0\u10d2\u10d5|\u10e1\u10d4\u10e5|\u10dd\u10e5\u10e2|\u10dc\u10dd\u10d4|\u10d3\u10d4\u10d9"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u10d8\u10d0\u10dc\u10d5\u10d0\u10e0\u10d8|\u10d7\u10d4\u10d1\u10d4\u10e0\u10d5\u10d0\u10da\u10d8|\u10db\u10d0\u10e0\u10e2\u10d8|\u10d0\u10de\u10e0\u10d8\u10da\u10d8|\u10db\u10d0\u10d8\u10e1\u10d8|\u10d8\u10d5\u10dc\u10d8\u10e1\u10d8|\u10d8\u10d5\u10da\u10d8\u10e1\u10d8|\u10d0\u10d2\u10d5\u10d8\u10e1\u10e2\u10dd|\u10e1\u10d4\u10e5\u10e2\u10d4\u10db\u10d1\u10d4\u10e0\u10d8|\u10dd\u10e5\u10e2\u10dd\u10db\u10d1\u10d4\u10e0\u10d8|\u10dc\u10dd\u10d4\u10db\u10d1\u10d4\u10e0\u10d8|\u10d3\u10d4\u10d9\u10d4\u10db\u10d1\u10d4\u10e0\u10d8"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\u10d9\u10d5\u10d8|\u10dd\u10e0\u10e8|\u10e1\u10d0\u10db|\u10dd\u10d7\u10ee|\u10ee\u10e3\u10d7|\u10de\u10d0\u10e0|\u10e8\u10d0\u10d1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\u10d9\u10d5\u10d8|\u10dd\u10e0\u10e8|\u10e1\u10d0\u10db|\u10dd\u10d7\u10ee|\u10ee\u10e3\u10d7|\u10de\u10d0\u10e0|\u10e8\u10d0\u10d1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u10d9\u10d5\u10d8\u10e0\u10d0|\u10dd\u10e0\u10e8\u10d0\u10d1\u10d0\u10d7\u10d8|\u10e1\u10d0\u10db\u10e8\u10d0\u10d1\u10d0\u10d7\u10d8|\u10dd\u10d7\u10ee\u10e8\u10d0\u10d1\u10d0\u10d7\u10d8|\u10ee\u10e3\u10d7\u10e8\u10d0\u10d1\u10d0\u10d7\u10d8|\u10de\u10d0\u10e0\u10d0\u10e1\u10d9\u10d4\u10d5\u10d8|\u10e8\u10d0\u10d1\u10d0\u10d7\u10d8"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u10d3\u10e6\u10d4\u10e1|\u10ee\u10d5\u10d0\u10da|\u10d6\u10d4\u10d2"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u10d0\u10db\\s+\u10d9\u10d5\u10d8\u10e0\u10d0\u10e1|\u10d0\u10db\\s+\u10dd\u10e0\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1|\u10d0\u10db\\s+\u10e1\u10d0\u10db\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1|\u10d0\u10db\\s+\u10dd\u10d7\u10ee\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1|\u10d0\u10db\\s+\u10ee\u10e3\u10d7\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1|\u10d0\u10db\\s+\u10de\u10d0\u10e0\u10d0\u10e1\u10d9\u10d4\u10d5\u10e1|\u10d0\u10db\\s+\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "\u10db\u10dd\u10db\u10d0\u10d5\u10d0\u10da\\s+\u10d9\u10d5\u10d8\u10e0\u10d0\u10e1|\u10db\u10dd\u10db\u10d0\u10d5\u10d0\u10da\\s+\u10dd\u10e0\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1|\u10db\u10dd\u10db\u10d0\u10d5\u10d0\u10da\\s+\u10e1\u10d0\u10db\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1|\u10db\u10dd\u10db\u10d0\u10d5\u10d0\u10da\\s+\u10dd\u10d7\u10ee\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1|\u10db\u10dd\u10db\u10d0\u10d5\u10d0\u10da\\s+\u10ee\u10e3\u10d7\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1|\u10db\u10dd\u10db\u10d0\u10d5\u10d0\u10da\\s+\u10de\u10d0\u10e0\u10d0\u10e1\u10d9\u10d4\u10d5\u10e1|\u10db\u10dd\u10db\u10d0\u10d5\u10d0\u10da\\s+\u10e8\u10d0\u10d1\u10d0\u10d7\u10e1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
