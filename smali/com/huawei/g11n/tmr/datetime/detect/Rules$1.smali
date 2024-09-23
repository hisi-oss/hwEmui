.class Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;
.super Ljava/util/HashMap;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/detect/Rules;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/detect/Rules;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/detect/Rules;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;->this$0:Lcom/huawei/g11n/tmr/datetime/detect/Rules;

    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 13
    const-string p1, "hms"

    const-string v0, "(?<!\\d)(2[0-3]|[0-1]?[0-9])(([param_tmark])([0-5][0-9])){1,2}(?!\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "ampm"

    const-string v0, "[param_am]|[param_pm]|\\bAM\\b|\\bPM\\b|\\bnoon\\b|\\ba\\.m\\.|\\bp\\.m\\.|[paramopt_mm]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "hms2"

    const-string v0, "(?<!\\d)(1[0-2]|0?[0-9])([:.]([0-5][0-9])){1,2}(?!\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "d"

    const-string v0, "(?<!\\d)(30|31|0?[1-9]|[1-2][0-9])(?!\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "y"

    const-string v0, "(?<!\\d)((20){0,1}[0-9]{2})(?!\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "m"

    const-string v0, "(?<!\\d)(1[0-2]|0{0,1}[1-9])(?!\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "zzzz"

    const-string v0, "((GMT[+-])|\\+)([0-1]?[0-9]|2[0-3])(:?[0-5][0-9])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
