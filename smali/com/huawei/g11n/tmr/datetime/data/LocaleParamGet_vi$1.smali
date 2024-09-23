.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_vi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi;

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string p1, "param_am"

    const-string v0, "SA|s\u00e1ng"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "CH|chi\u1ec1u|t\u1ed1i"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "thg\\s+1|thg\\s+2|thg\\s+3|thg\\s+4|thg\\s+5|thg\\s+6|thg\\s+7|thg\\s+8|thg\\s+9|thg\\s+10|thg\\s+11|thg\\s+12"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "th\u00e1ng\\s+1|th\u00e1ng\\s+2|th\u00e1ng\\s+3|th\u00e1ng\\s+4|th\u00e1ng\\s+5|th\u00e1ng\\s+6|th\u00e1ng\\s+7|th\u00e1ng\\s+8|th\u00e1ng\\s+9|th\u00e1ng\\s+10|th\u00e1ng\\s+11|th\u00e1ng\\s+12"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "CN|Th\\s+2|Th\\s+3|Th\\s+4|Th\\s+5|Th\\s+6|Th\\s+7"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "CN|Th\\s+2|Th\\s+3|Th\\s+4|Th\\s+5|Th\\s+6|Th\\s+7"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "Ch\u1ee7\\s+Nh\u1eadt|Th\u1ee9\\s+Hai|Th\u1ee9\\s+Ba|Th\u1ee9\\s+T\u01b0|Th\u1ee9\\s+N\u0103m|Th\u1ee9\\s+S\u00e1u|Th\u1ee9\\s+B\u1ea3y"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "H\u00f4m\\s+nay|Ng\u00e0y\\s+mai|Ng\u00e0y\\s+kia"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "Ch\u1ee7\\s+Nh\u1eadt\\s+tu\u1ea7n\\s+n\u00e0y|Th\u1ee9\\s+Hai\\s+tu\u1ea7n\\s+n\u00e0y|Th\u1ee9\\s+Ba\\s+tu\u1ea7n\\s+n\u00e0y|Th\u1ee9\\s+T\u01b0\\s+tu\u1ea7n\\s+n\u00e0y|Th\u1ee9\\s+N\u0103m\\s+tu\u1ea7n\\s+n\u00e0y|Th\u1ee9\\s+S\u00e1u\\s+tu\u1ea7n\\s+n\u00e0y|Th\u1ee9\\s+B\u1ea3y\\s+tu\u1ea7n\\s+n\u00e0y"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "Ch\u1ee7\\s+Nh\u1eadt\\s+tu\u1ea7n\\s+sau|Th\u1ee9\\s+Hai\\s+tu\u1ea7n\\s+sau|Th\u1ee9\\s+Ba\\s+tu\u1ea7n\\s+sau|Th\u1ee9\\s+T\u01b0\\s+tu\u1ea7n\\s+sau|Th\u1ee9\\s+N\u0103m\\s+tu\u1ea7n\\s+sau|Th\u1ee9\\s+S\u00e1u\\s+tu\u1ea7n\\s+sau|Th\u1ee9\\s+B\u1ea3y\\s+tu\u1ea7n\\s+sau"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
