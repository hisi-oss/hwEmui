.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "\u1320\u12cb\u1275"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "\u12a8\u1230\u12d3\u1275"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "\u1303\u1295\u12cb|\u134c\u1265\u1229|\u121b\u122d\u127d|\u12a4\u1355\u122a|\u121c\u12ed|\u1301\u1295|\u1301\u120b\u12ed|\u12a6\u1308\u1235|\u1234\u1355\u1274|\u12a6\u12ad\u1276|\u1296\u126c\u121d|\u12f2\u1234\u121d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u1303\u1295\u12cb\u122a|\u134c\u1265\u1229\u12cb\u122a|\u121b\u122d\u127d|\u12a4\u1355\u122a\u120d|\u121c\u12ed|\u1301\u1295|\u1301\u120b\u12ed|\u12a6\u1308\u1235\u1275|\u1234\u1355\u1274\u121d\u1260\u122d|\u12a6\u12ad\u1276\u1260\u122d|\u1296\u126c\u121d\u1260\u122d|\u12f2\u1234\u121d\u1260\u122d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\u12a5\u1211\u12f5|\u1230\u129e|\u121b\u12ad\u1230|\u1228\u1261\u12d5|\u1210\u1219\u1235|\u12d3\u122d\u1265|\u1245\u12f3\u121c"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\u12a5\u1211\u12f5|\u1230\u129e|\u121b\u12ad\u1230|\u1228\u1261\u12d5|\u1210\u1219\u1235|\u12d3\u122d\u1265|\u1245\u12f3\u121c"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u12a5\u1211\u12f5|\u1230\u129e|\u121b\u12ad\u1230\u129e|\u1228\u1261\u12d5|\u1210\u1219\u1235|\u12d3\u122d\u1265|\u1245\u12f3\u121c"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u12db\u122c|\u1290\u1308|\u12a8\u1290\u1308\\s+\u12c8\u12f2\u12eb"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u12e8\u12a0\u1201\u1291\\s+\u12a5\u1211\u12f5|\u12e8\u12a0\u1201\u1291\\s+\u1230\u129e|\u12e8\u12a0\u1201\u1291\\s+\u121b\u12ad\u1230\u129e|\u12e8\u12a0\u1201\u1291\\s+\u1228\u1261\u12d5|\u12e8\u12a0\u1201\u1291\\s+\u1210\u1219\u1235|\u12e8\u12a0\u1201\u1291\\s+\u12d3\u122d\u1265|\u12e8\u12a0\u1201\u1291\\s+\u1245\u12f3\u121c"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "\u12e8\u121a\u1240\u1325\u1208\u12cd\\s+\u12a5\u1211\u12f5|\u12e8\u121a\u1240\u1325\u1208\u12cd\\s+\u1230\u129e|\u12e8\u121a\u1240\u1325\u1208\u12cd\\s+\u121b\u12ad\u1230\u129e|\u12e8\u121a\u1240\u1325\u1208\u12cd\\s+\u1228\u1261\u12d5|\u12e8\u121a\u1240\u1325\u1208\u12cd\\s+\u1210\u1219\u1235|\u12e8\u121a\u1240\u1325\u1208\u12cd\\s+\u12d3\u122d\u1265|\u12e8\u121a\u1240\u1325\u1208\u12cd\\s+\u1245\u12f3\u121c"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
