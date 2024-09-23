.class Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;
.super Ljava/util/HashMap;
.source "ConstantsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->init()V
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;

    .line 31
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string p1, "aite"

    const-string v0, "[@#][a-zA-Z_0-9-]{0,20}[0-9]{3,}[a-zA-Z0-9_-]{0,20}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p1, "email"

    const-string v0, "[a-zA-Z_0-9]{1,20}@[a-zA-Z_0-9]{1,20}\\.[A-Za-z]{1,10}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string p1, "url"

    const-string v0, "(?<![a-zA-Z_0-9.@])((https?|ftp)://)?([a-zA-Z_0-9][a-zA-Z0-9_-]*(\\.[a-zA-Z0-9_-]{1,20})*\\.(org|com|edu|net|[a-z]{2})|(?!0)[1-2]?[0-9]{1,2}\\.(?!0)[1-2]?[0-9]{1,2}\\.(?!0)[1-2]?[0-9]{1,2}\\.(?!0)[1-2]?[0-9]{1,2})(?![a-zA-Z0-9_.])(:[1-9][0-9]{0,4})?(/([a-zA-Z0-9/_.\\p{Punct}]*(\\?\\S+)?)?)?(?![a-zA-Z_0-9])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string p1, "date"

    const-string v0, "(?<!\\d)(?:[012]?\\d|3[01])\\p{Blank}{0,2}(\\.|-|\\/)\\p{Blank}{0,2}(0?[1-9]|1[0-2])\\p{Blank}{0,2}\\1\\p{Blank}{0,2}(20[01][0-9]|19\\d{2})(?!\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string p1, "date1"

    const-string v0, "(?<!\\d)(?:(?:0?[1-9]|[1-2]\\d|3[01])\\p{Blank}{0,2}(\\.|\\s|-|\\/)\\p{Blank}{0,2}(?:0?[1-9]|[1-2]\\d|3[01])(?:\\p{Blank}{0,2}\\1\\p{Blank}{0,2}(?:20[01][1-9]|19\\d{2}))?|(?:20[01][0-9]|19\\d{2})\\p{Blank}{0,2}(\\.|\\s|-|\\/)\\p{Blank}{0,2}(?:0?[1-9]|[1-2]\\d|3[01])\\p{Blank}{0,2}\\2\\p{Blank}{0,2}(?:0?[1-9]|[1-2]\\d|3[01])\\p{Blank}{0,2})\\p{Blank}{0,2},?\\p{Blank}{0,2}(?:[01]?\\d|2[0-4])\\p{Blank}{0,2}:\\p{Blank}{0,2}[0-5]\\d(?:\\p{Blank}{0,2}:\\p{Blank}{0,2}[0-5]\\d)?(?!(\\d|\\.\\d))"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string p1, "date2"

    const-string v0, "(?<!\\d)(?:[01]?\\d|2[0-4])\\p{Blank}{0,2}:\\p{Blank}{0,2}[0-5]\\d(?:\\p{Blank}{0,2}:\\p{Blank}{0,2}[0-5]\\d)?\\p{Blank}{0,2}(?:(?:0?[1-9]|[1-2]\\d|3[01])\\p{Blank}{0,2}(\\.|\\s|-|\\/)\\p{Blank}{0,2}(?:0?[1-9]|[1-2]\\d|3[01])(?:\\p{Blank}{0,2}\\1\\p{Blank}{0,2}(?:20[01][0-9]|19\\d{2}))?|(?:20[01][0-9]|19\\d{2})\\p{Blank}{0,2}(\\.|\\s|-|\\/)\\p{Blank}{0,2}(?:0?[1-9]|[1-5]\\d)\\p{Blank}{0,2}\\3\\p{Blank}{0,2}(?:0?[1-9]|[1-5]\\d)\\p{Blank}{0,2})(?!(\\d|\\.\\d))"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string p1, "time"

    const-string v0, "(?<![\\d:.])(?:[01]?\\d|2[0-4])(:)[0-5]\\d(?:\\1[0-5]\\d)?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string p1, "yearperiod"

    const-string v0, "20[01]\\d\\p{Blank}{0,2}-\\p{Blank}{0,2}20[01]\\d"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string p1, "dateperiod"

    const-string v0, "(?<![\\d:.])(?:[01]?\\d|2[0-4])([.:])[0-5]\\d(?:\\1[0-5]\\d)?\\p{Blank}{0,2}-\\p{Blank}{0,2}(?:[01]?\\d|2[0-4])\\1[0-5]\\d(?:\\1[0-5]\\d)?(?!(\\d|[.]\\d))"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string p1, "samenum"

    const-string v0, "(0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,})"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string p1, "exp"

    const-string v0, "[0-9]+\\p{Blank}{0,2}([Xx*/+-])\\p{Blank}{0,2}[0-9]+(\\p{Blank}{0,2}([Xx*/+-])\\p{Blank}{0,2}[0-9]+)*\\p{Blank}{0,2}=\\p{Blank}{0,2}[0-9]+"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string p1, "float_2"

    const-string v0, "(?<!\\d)[1-9][0-9]{0,2}(?:(?:[,\\p{Blank}]\\d{3})*|\\d{0,13})(\\.\\d{1,3})(?!\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string p1, "float_1"

    const-string v0, "(?<!\\d)[1-9][0-9]{0,2}(?:(?:[.\\p{Blank}]\\d{3})*|\\d{0,13})(\\,\\d{1,3})(?!\\d)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
