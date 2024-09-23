.class Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;
.super Ljava/util/HashMap;
.source "UniverseRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->this$0:Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;

    .line 68
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const p1, 0x9c41

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[regex_d]\\.?\\s*([-\u2013~]|\u062a\u0627|\u0926\u0947\u0916\u093f|\u09a5\u09c7\u0995\u09c7|ngantos|tekan|\u043f\u0430)\\s*[regex_d](\\.|([ ]+de[ ]+)|/){0,1}[ ]*([param_MMMM]|[param_MMM])(([ ]+de|\\.|,|/|\u060c){0,1}[ ]*[regex_y](\\s*\u0436\\.|\\.|\\s*\u0433\\.){0,1}){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const p1, 0x9c42

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\\.{0,1}[ ]*)?([param_MMMM]|[param_MMM])[ ]+[regex_d](\\.){0,1}\\s*([-\u2013]|\u0926\u0947\u0916\u093f|\u09a5\u09c7\u0995\u09c7|ngantos|tekan|\u043f\u0430)\\s*[regex_d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/16 p1, 0x4e21

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]),{0,1}[ ]*){0,1}[regex_d](\\.|([ ]+de[ ]+)|/){0,1}[ ]*([param_MMMM]|[param_MMM])(([ ]+de|\\.|,|/){0,1}[ ]*[regex_y](\\s*(\u0433\u043e\u0434\u0430|\u0433))?\\.{0,1}){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 p1, 0x4e22

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])[\\s\\p{Punct}]*)?([param_MMMM]|[param_MMM])([\\s\\p{Punct}]|de)+\\d{1,2}(?!\\d)\\p{Punct}?(\\s*-?\\s*\\d{1,2}(?!\\d))?([\\s\\p{Punct}]*\\d{2,4}(?!\\d))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 p1, 0x4e23

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![-/.a-zA-Z\\d])\\d{1,4}(\\.?\\s*[-~]+\\s*\\d{1,2})?(/|-|(\\.[ ]*))\\d{1,2}(?!\\d)((/|-|(\\.[ ]*))\\d{1,4}(?!\\d)\\.?)?(\\s*[-~]+\\s*\\d{1,2}(\\.|\\s*\u0433\\.)?(?!\\d))?(?![-/.a-zA-Z\\d])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/16 p1, 0x4e24

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])[\\s\\p{Punct}]*)?(?<!\\d)\\d{1,4}\\s*(/|-|\\.)\\s*\\d{1,2}(\\s*\\3\\s*\\d{1,4}(\\s*\u0433\\.)?)?\\.?(?!\\d)(?!\\3)"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/16 p1, 0x4e25

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[regex_d][ ]+([param_MMMM]|[param_MMM])([ ]+(de[ ]+)?[regex_y]\\.{0,1})?(\\s*,)?([ ]*([param_EEEE]|[param_E]))"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/16 p1, 0x4e26

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E2])(,[ ]*|[ ]+))[regex_d]\\.?(?![.:\\d])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 p1, 0x4e2d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[regex_d](\u53f7|\u65e5|\uc77c)[ ]*[(\uff08]{0,1}([param_EEEE]|[param_E])[)\uff09]{0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/16 p1, 0x4e27

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<!\u6708)([regex_d][param_digitDay])[\u53f7\u65e5\uc77c]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/16 p1, 0x4e28

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\\.{0,1}[ ]*){0,1}([param_MMMM]|[param_MMM])[ ]+[regex_d](\\.,|\\.|,){0,1}([ ]*([param_EEEE]|[param_E])){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/16 p1, 0x4e29

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E2])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/16 p1, 0x4e2a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[param_days]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/16 p1, 0x4e2b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_nextweek]|[param_thisweek])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/16 p1, 0x7531

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_hms])(\\s*\\(?[regex_zzzz]\\)?(?![.:]?\\d)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
