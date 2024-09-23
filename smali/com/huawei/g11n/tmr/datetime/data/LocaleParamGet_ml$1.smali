.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "AM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "PM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "\u0d1c\u0d28\u0d41|\u0d2b\u0d46\u0d2c\u0d4d\u0d30\u0d41|\u0d2e\u0d3e\u0d7c|\u0d0f\u0d2a\u0d4d\u0d30\u0d3f|\u0d2e\u0d47\u0d2f\u0d4d|\u0d1c\u0d42\u0d7a|\u0d1c\u0d42\u0d32\u0d48|\u0d13\u0d17|\u0d38\u0d46\u0d2a\u0d4d\u0d31\u0d4d\u0d31\u0d02|\u0d12\u0d15\u0d4d\u0d1f\u0d4b|\u0d28\u0d35\u0d02|\u0d21\u0d3f\u0d38\u0d02"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u0d1c\u0d28\u0d41\u0d35\u0d30\u0d3f|\u0d2b\u0d46\u0d2c\u0d4d\u0d30\u0d41\u0d35\u0d30\u0d3f|\u0d2e\u0d3e\u0d7c\u0d1a\u0d4d\u0d1a\u0d4d|\u0d0f\u0d2a\u0d4d\u0d30\u0d3f\u0d7d|\u0d2e\u0d47\u0d2f\u0d4d|\u0d1c\u0d42\u0d7a|\u0d1c\u0d42\u0d32\u0d48|\u0d13\u0d17\u0d38\u0d4d\u0d31\u0d4d\u0d31\u0d4d|\u0d38\u0d46\u0d2a\u0d4d\u0d31\u0d4d\u0d31\u0d02\u0d2c\u0d7c|\u0d12\u0d15\u0d4d\u200c\u0d1f\u0d4b\u0d2c\u0d7c|\u0d28\u0d35\u0d02\u0d2c\u0d7c|\u0d21\u0d3f\u0d38\u0d02\u0d2c\u0d7c"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\u0d1e\u0d3e\u0d2f\u0d7c|\u0d24\u0d3f\u0d19\u0d4d\u0d15\u0d7e|\u0d1a\u0d4a\u0d35\u0d4d\u0d35|\u0d2c\u0d41\u0d27\u0d7b|\u0d35\u0d4d\u0d2f\u0d3e\u0d34\u0d02|\u0d35\u0d46\u0d33\u0d4d\u0d33\u0d3f|\u0d36\u0d28\u0d3f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\u0d1e\u0d3e\u0d2f\u0d7c|\u0d24\u0d3f\u0d19\u0d4d\u0d15\u0d7e|\u0d1a\u0d4a\u0d35\u0d4d\u0d35|\u0d2c\u0d41\u0d27\u0d7b|\u0d35\u0d4d\u0d2f\u0d3e\u0d34\u0d02|\u0d35\u0d46\u0d33\u0d4d\u0d33\u0d3f|\u0d36\u0d28\u0d3f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u0d1e\u0d3e\u0d2f\u0d31\u0d3e\u0d34\u0d4d\u200c\u0d1a|\u0d24\u0d3f\u0d19\u0d4d\u0d15\u0d33\u0d3e\u0d34\u0d4d\u200c\u0d1a|\u0d1a\u0d4a\u0d35\u0d4d\u0d35\u0d3e\u0d34\u0d4d\u0d1a|\u0d2c\u0d41\u0d27\u0d28\u0d3e\u0d34\u0d4d\u200c\u0d1a|\u0d35\u0d4d\u0d2f\u0d3e\u0d34\u0d3e\u0d34\u0d4d\u200c\u0d1a|\u0d35\u0d46\u0d33\u0d4d\u0d33\u0d3f\u0d2f\u0d3e\u0d34\u0d4d\u200c\u0d1a|\u0d36\u0d28\u0d3f\u0d2f\u0d3e\u0d34\u0d4d\u200c\u0d1a"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u0d07\u0d28\u0d4d\u0d28\u0d4d|\u0d28\u0d3e\u0d33\u0d46|\u0d2e\u0d31\u0d4d\u0d31\u0d28\u0d4d\u0d28\u0d3e\u0d7e"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u0d08\\s+\u0d1e\u0d3e\u0d2f\u0d31\u0d3e\u0d34\u0d4d\u0d1a|\u0d08\\s+\u0d24\u0d3f\u0d19\u0d4d\u0d15\u0d33\u0d3e\u0d34\u0d4d\u0d1a|\u0d08\\s+\u0d1a\u0d4a\u0d35\u0d4d\u0d35\u0d3e\u0d34\u0d4d\u0d1a|\u0d08\\s+\u0d2c\u0d41\u0d27\u0d28\u0d3e\u0d34\u0d4d\u0d1a|\u0d08\\s+\u0d35\u0d4d\u0d2f\u0d3e\u0d34\u0d3e\u0d34\u0d4d\u0d1a|\u0d08\\s+\u0d35\u0d46\u0d33\u0d4d\u0d33\u0d3f\u0d2f\u0d3e\u0d34\u0d4d\u0d1a|\u0d08\\s+\u0d36\u0d28\u0d3f\u0d2f\u0d3e\u0d34\u0d4d\u0d1a"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "\u0d05\u0d1f\u0d41\u0d24\u0d4d\u0d24\\s+\u0d1e\u0d3e\u0d2f\u0d31\u0d3e\u0d34\u0d4d\u0d1a|\u0d05\u0d1f\u0d41\u0d24\u0d4d\u0d24\\s+\u0d24\u0d3f\u0d19\u0d4d\u0d15\u0d33\u0d3e\u0d34\u0d4d\u0d1a|\u0d05\u0d1f\u0d41\u0d24\u0d4d\u0d24\\s+\u0d1a\u0d4a\u0d35\u0d4d\u0d35\u0d3e\u0d34\u0d4d\u0d1a|\u0d05\u0d1f\u0d41\u0d24\u0d4d\u0d24\\s+\u0d2c\u0d41\u0d27\u0d28\u0d3e\u0d34\u0d4d\u0d1a|\u0d05\u0d1f\u0d41\u0d24\u0d4d\u0d24\\s+\u0d35\u0d4d\u0d2f\u0d3e\u0d34\u0d3e\u0d34\u0d4d\u0d1a|\u0d05\u0d1f\u0d41\u0d24\u0d4d\u0d24\\s+\u0d35\u0d46\u0d33\u0d4d\u0d33\u0d3f\u0d2f\u0d3e\u0d34\u0d4d\u0d1a|\u0d05\u0d1f\u0d41\u0d24\u0d4d\u0d24\\s+\u0d36\u0d28\u0d3f\u0d2f\u0d3e\u0d34\u0d4d\u0d1a"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p1, "mark_ShortDateLevel"

    const-string v0, "dmy"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
