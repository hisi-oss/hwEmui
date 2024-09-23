.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_bn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "\u09ad\u09cb\u09b0|\u09b8\u0995\u09be\u09b2|am"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "\u09b0\u09be\u09a4\u09cd\u09b0\u09bf|\u09b8\u09a8\u09cd\u09a7\u09cd\u09af\u09be|\u09ac\u09bf\u0995\u09be\u09b2|\u09a6\u09c1\u09aa\u09c1\u09b0|pm"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMM"

    const-string v0, "\u099c\u09be\u09a8\u09c1\\.|\u09ab\u09c7\u09ac\u09cd\u09b0\u09c1\\.|\u09ae\u09be\u09b0\u09cd\u099a|\u098f\u09aa\u09cd\u09b0\u09bf\u09b2|\u09ae\u09c7|\u099c\u09c1\u09a8|\u099c\u09c1\u09b2\u09be\u0987|\u0985\u0997\u09b8\u09cd\u099f|\u09b8\u09c7\u09aa\u09cd\u099f\u09c7\\.|\u0985\u0995\u09cd\u099f\u09cb\\.|\u09a8\u09ad\u09c7\\.|\u09a1\u09bf\u09b8\u09c7\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_MMMM"

    const-string v0, "\u099c\u09be\u09a8\u09c1\u09df\u09be\u09b0\u09bf|\u09ab\u09c7\u09ac\u09cd\u09b0\u09c1\u09af\u09bc\u09be\u09b0\u09bf|\u09ae\u09be\u09b0\u09cd\u099a|\u098f\u09aa\u09cd\u09b0\u09bf\u09b2|\u09ae\u09c7|\u099c\u09c1\u09a8|\u099c\u09c1\u09b2\u09be\u0987|\u0986\u0997\u09b8\u09cd\u099f|\u09b8\u09c7\u09aa\u09cd\u099f\u09c7\u09ae\u09cd\u09ac\u09b0|\u0985\u0995\u09cd\u099f\u09cb\u09ac\u09b0|\u09a8\u09ad\u09c7\u09ae\u09cd\u09ac\u09b0|\u09a1\u09bf\u09b8\u09c7\u09ae\u09cd\u09ac\u09b0"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E"

    const-string v0, "\u09b0\u09ac\u09bf|\u09b8\u09cb\u09ae|\u09ae\u0999\u09cd\u0997\u09b2|\u09ac\u09c1\u09a7|\u09ac\u09c3\u09b9\u09b8\u09cd\u09aa\u09a4\u09bf|\u09b6\u09c1\u0995\u09cd\u09b0|\u09b6\u09a8\u09bf"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_E2"

    const-string v0, "\u09b0\u09ac\u09bf|\u09b8\u09cb\u09ae|\u09ae\u0999\u09cd\u0997\u09b2|\u09ac\u09c1\u09a7|\u09ac\u09c3\u09b9\u09b8\u09cd\u09aa\u09a4\u09bf|\u09b6\u09c1\u0995\u09cd\u09b0|\u09b6\u09a8\u09bf"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_EEEE"

    const-string v0, "\u09b0\u09ac\u09bf\u09ac\u09be\u09b0|\u09b8\u09cb\u09ae\u09ac\u09be\u09b0|\u09ae\u0999\u09cd\u0997\u09b2\u09ac\u09be\u09b0|\u09ac\u09c1\u09a7\u09ac\u09be\u09b0|\u09ac\u09c3\u09b9\u09b8\u09cd\u09aa\u09a4\u09bf\u09ac\u09be\u09b0|\u09b6\u09c1\u0995\u09cd\u09b0\u09ac\u09be\u09b0|\u09b6\u09a8\u09bf\u09ac\u09be\u09b0"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_days"

    const-string v0, "\u0986\u099c|(\u0986\u0997\u09be\u09ae\u09c0)?\u0995\u09be\u09b2|\u0986\u0997\u09be\u09ae\u09c0\\s+\u09aa\u09b0\u09b6\u09c1"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_thisweek"

    const-string v0, "\u098f\u0987\\s+\u09b0\u09ac\u09bf\u09ac\u09be\u09b0|\u098f\u0987\\s+\u09b8\u09cb\u09ae\u09ac\u09be\u09b0|\u098f\u0987\\s+\u09ae\u0999\u09cd\u0997\u09b2\u09ac\u09be\u09b0|\u098f\u0987\\s+\u09ac\u09c1\u09a7\u09ac\u09be\u09b0|\u098f\u0987\\s+\u09ac\u09c3\u09b9\u09b8\u09cd\u09aa\u09a4\u09bf\u09ac\u09be\u09b0|\u098f\u0987\\s+\u09b6\u09c1\u0995\u09cd\u09b0\u09ac\u09be\u09b0|\u098f\u0987\\s+\u09b6\u09a8\u09bf\u09ac\u09be\u09b0"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_nextweek"

    const-string v0, "\u09aa\u09b0\u09c7\u09b0\\s+\u09b0\u09ac\u09bf\u09ac\u09be\u09b0|\u09aa\u09b0\u09c7\u09b0\\s+\u09b8\u09cb\u09ae\u09ac\u09be\u09b0|\u09aa\u09b0\u09c7\u09b0\\s+\u09ae\u0999\u09cd\u0997\u09b2\u09ac\u09be\u09b0|\u09aa\u09b0\u09c7\u09b0\\s+\u09ac\u09c1\u09a7\u09ac\u09be\u09b0|\u09aa\u09b0\u09c7\u09b0\\s+\u09ac\u09c3\u09b9\u09b8\u09cd\u09aa\u09a4\u09bf\u09ac\u09be\u09b0|\u09aa\u09b0\u09c7\u09b0\\s+\u09b6\u09c1\u0995\u09cd\u09b0\u09ac\u09be\u09b0|\u09aa\u09b0\u09c7\u09b0\\s+\u09b6\u09a8\u09bf\u09ac\u09be\u09b0"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
