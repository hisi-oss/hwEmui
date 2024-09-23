.class Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;
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
        "Ljava/lang/Integer;",
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
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->this$0:Lcom/huawei/g11n/tmr/datetime/detect/Rules;

    .line 33
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 36
    const/16 p1, 0x520a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![-/.A-Za-z])([regex_y](/|-|(\\.[ ]*)))?([regex_m])(/|-|(\\.[ ]*))[regex_d]\\.?\\s*\\(?([param_EEEE]|[param_E])\\)?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const/16 p1, 0x520b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![-/.A-Za-z])[regex_d](/|-|(\\.[ ]*))([regex_m])((/|-|(\\.[ ]*))[regex_y])?\\s*([param_EEEE]|[param_E])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/16 p1, 0x520c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])\\s*[regex_d]\\.[regex_m]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/16 p1, 0x520d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])[ ]+den[ ]+[regex_d]\\.[ ]*([param_MMMM]|[param_MMM])([ ]*[regex_y]){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/16 p1, 0x520e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])en[ ]+den[ ]+){0,1}[regex_d]:e[ ]*([param_MMMM]|[param_MMM])([ ]*[regex_y]){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/16 p1, 0x520f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])[ ]+[regex_d]:e[ ]*([param_MMMM]|[param_MMM])([ ]*[regex_y]){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/16 p1, 0x5210

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])\u060c[ ]+){0,1}[regex_d][ ]*([param_MMMM]|[param_MMM])(\u060c[ ]*[regex_y]){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/16 p1, 0x5211

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])\u060c[ ]+)[regex_d]\\b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/16 p1, 0x5212

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]),?[ ]+){0,1}[regex_d][ ]+\u05d1([param_MMMM]|[param_MMM])([ ]+[regex_y]){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/16 p1, 0x5213

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])(\u0e17\u0e35\u0e48|[ ]*\u0e97\u0eb5|\u1363)[ ]*[regex_d][ ]+([param_MMMM]|[param_MMM])[ ]+[regex_y]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/16 p1, 0x5214

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E]),?[ ]*ng\u00e0y[ ]*[regex_d][ ]+([param_MMMM]|[param_MMM])([ ]+n\u0103m[ ]+[regex_y])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/16 p1, 0x5215

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "ng\u00e0y[ ]*[regex_d][ ]+th\u00e1ng[ ]+([regex_m])[ ]+n\u0103m[ ]+[regex_y]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/16 p1, 0x5216

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_y][param_digitYear][param_textyear])\\s*\u5e74\\s*)?(([regex_m][param_digitMonth][param_textmonth])\\s*\u6708)\\s*([regex_d][param_digitDay])\\s*(\u65e5|\u53f7)(\\s*[\\(\uff08]?([param_EEEE]|[param_E]|[param_days])[\\)\uff09]?){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/16 p1, 0x5217

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\ub144[ ]*){0,1}([regex_m])\uc6d4[ ]*[regex_d]\uc77c[ ]*([\\(\uff08]?([param_EEEE]|[param_E])[\\)\uff09]?){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/16 p1, 0x5218

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_MMMM])[ ]*[regex_d]\uc77c([ ]*[\\(\uff08]?([param_EEEE]|[param_E])[\\)\uff09]?){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/16 p1, 0x5219

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])[ ]+(d\\.|den)[ ]+[regex_d]\\b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/16 p1, 0x521a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])[ ]+\u05d4-[regex_d]\\b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/16 p1, 0x521d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\\(e\\)ko\\s+)?([param_MMMM])ren\\s+[regex_d]a(\\s*,\\s*([param_EEEE]|[param_E]))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 p1, 0x521b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\\s+)?([param_MMM])\\s+[regex_d]a(\\s*,\\s*([param_EEEE]|[param_E]))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/16 p1, 0x521c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(\u1790\u17d2\u1784\u17c3)?\u1791\u17b8[regex_d]\\s+([param_MMM]|[param_MMMM])\\s+\u1786\u17d2\u1793\u17b6\u17c6[regex_y]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 p1, 0x521e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\\s+m\\.\\s+)?([param_MMM]|[param_MMMM])\\s+[regex_d]\\s*d\\.(,\\s*([param_EEEE]|[param_E]))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 p1, 0x521f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[regex_d](\\s+d\\.|a)(\\s*,\\s*([param_EEEE]|[param_E]))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 p1, 0x5220

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(((\u0f66\u0fa4\u0fb1\u0f72\u0f0b\u0f63\u0f7c\u0f0b[regex_y]\\s+)?([param_MMMM])\u0f60\u0f72\u0f0b\u0f5a\u0f7a\u0f66\u0f0b)|(([regex_y]\\s+\u0f63\u0f7c\u0f60\u0f72\u0f0b)?([param_MMM])\u0f5a\u0f7a\u0f66\u0f0b))[regex_d](\\s+([param_EEEE]|[param_E]))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 p1, 0x5221

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])\u1014\u1031\u1037\u104a\\s+)?([regex_y]\u1001\u102f\u1014\u103e\u1005\u103a\\s+)?([param_MMM]|[param_MMMM])\u101c\\s{0,3}[regex_d]\u101b\u1000\u103a"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 p1, 0x5222

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])\u1014\u1031\u1037\u104a"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/16 p1, 0x5223

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]),\\s+)?([regex_y]\\.?\\s+gada\\s+)[regex_d]\\.?\\s+([param_MMM]|[param_MMMM])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/16 p1, 0x5224

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_MMM])\\s*[-\u2013]\\s*[regex_d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 p1, 0x5225

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]|[param_E2])\\s*,\\s*)?[regex_d]\\s*[-\u2013]?\\s*([param_MMMM]|[param_MMM])(\\s*\\,?\\s*[regex_y]\\s+(\u0436\\.)?)?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/16 p1, 0x5226

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]|[param_E2])\\s*,{0,1}[ ]*){0,1}[regex_d]([-\u2013](\u0433\u0430|\u0435)){0,1}(\\.|/){0,1}[ ]*([param_MMMM]|[param_MMM])((\\.|,|/){0,1}[ ]*[regex_y](\\s*(\u0433\u043e\u0434\u0430|\u0433))?\\.{0,1}){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 p1, 0x5227

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]|[param_E2]),{0,1}[ ]*){0,1}\\s*\\bika\\b\\s*[-\u2013]\\s*[regex_d][ ]*ng[ ]*([param_MMMM]|[param_MMM])[ ]*(\\.|,|/){0,1}([ ]*[regex_y](?!:)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/16 p1, 0x5228

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])?([ ]*,){0,1}[ ]*[regex_d][ ]+\u0ec0\u0e94\u0eb7\u0ead\u0e99([param_MMMM]|[param_MMM])([ ]+\u0e9b\u0eb5[ ]+[regex_y])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/16 p1, 0x5229

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E2]|[param_E])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/16 p1, 0x522a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E2]|[param_E])(,[ ]*|[ ]+))[regex_d]\\.?(?![.:\\d])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 p1, 0x522b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[regex_d]\\s*(/|-|\\.)\\s*[regex_m]([\\s,]*([param_EEEE]|[param_E]|[param_E2]))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/16 p1, 0x522c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_EEEE]|[param_E])\u1363\\s+[regex_d]\\s+([param_MMMM]|[param_MMM])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/16 p1, 0x522d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\\s*,?\\s*){0,1}([param_MMMM]|[param_MMM])\\s+[regex_d](\\s*,\\s*([param_EEEE]|[param_E]))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/16 p1, 0x522e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])\\s*,\\s+te\\s+){0,1}[regex_d]\\s+o\\s+([param_MMMM]|[param_MMM])(\\s*,\\s*[regex_y]){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 p1, 0x522f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])\\s*,\\s*)?([regex_y]\\s*\u043e\u043d\u044b\\s*)?([regex_m])\\s*\u0441\u0430\u0440\u044b\u043d\\s+[regex_d](\\s*\u04e9\u0434\u04e9\u0440)?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 p1, 0x5230

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E])\\s*,\\s*)?([regex_y]\\s*\u043e\u043d\u044b\\s*)?([param_MMMM]|[param_MMM])\\s*\u0441\u0430\u0440\u044b\u043d\\s+[regex_d](\\s*\u04e9\u0434\u04e9\u0440)?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/16 p1, 0x7919

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_ampm])[ ]*)[regex_hms](\\s*\\(?([regex_zzzz])\\)?(?![.:]?\\d)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 p1, 0x791a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_hms])([ ]*([regex_ampm]))?(\\s*\\(?[regex_zzzz]\\)?(?![.:]?\\d)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/16 p1, 0x791b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(2[0-3]|[0-1]?[0-9])[ ]*h\\b"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/16 p1, 0x791c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_am]|[param_pm]|am|pm])?\\s*(2[0-3]|[0-1]?[0-9])\uc2dc([ ]*([0-5][0-9])\ubd84)?([ ]*([0-5][0-9]|60)\ucd08)?([ ]+([regex_zzzz])){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 p1, 0x791d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<!\u5468)(([regex_zzzz])[ ]*){0,1}(([param_mm]|[param_am]|[param_pm]|am|pm)[ ]*){0,1}((2[0-3]|[0-1]?[0-9])[param_digitHour])\\s*([\u6642\u65f6]|[\u70b9\u9ede]\u534a?)(\u6574|[\u4e00\u4e09]\u523b|((([0-5]?[0-9][param_digitMS2])\\s*\u5206|([0-5][0-9][param_digitMS])(\\s*\u5206)?)(\\s*(([0-5]?[0-9])[param_digitMS])\\s*\u79d2)?))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 p1, 0x791e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_am]|[param_pm]|am|pm)[ ]*)?(2[0-3]|[0-1]?[0-9])\\s*(\u6642|\u65f6)([ ]*([0-5][0-9])\u5206)?([ ]*([0-5][0-9])\u79d2)?([ ]*[regex_zzzz])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 p1, 0x791f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(2[0-3]|[0-1]?[0-9])[ ]*(\u0e19\u0e32\u0e2c\u0e34\u0e01\u0e32|\u0ec2\u0ea1\u0e87)[ ]*([0-5]?[0-9])[ ]*(\u0e19\u0e32\u0e17\u0e35|\u0e99\u0eb2\u0e97\u0eb5) (([0-5]?[0-9])[ ]*(\u0e27\u0e34\u0e19\u0e32\u0e17\u0e35|\u0ea7\u0eb4\u0e99\u0eb2\u0e97\u0eb5)){0,1}([ ]*[regex_zzzz]){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 p1, 0x7920

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_zzzz][ ]*)?(([regex_ampm])[ ]*)[regex_hms]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 p1, 0x7921

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[param_am]|[param_pm]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 p1, 0x7922

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_hms])([ ]*([regex_ampm]|\u0433\u0430\u0434\u0437\u0456\u043d))?(\\s*\\(?[regex_zzzz]\\)?(?![.:]?\\d)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 p1, 0x7923

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_ampm])[ ]*)?[regex_hms]\\s*(am|pm)?\\s*(\u099f\u09be\u09b0|\u092c\u091c\u0947|\u098f|\u099f\u09be)?(\\s*\\(?([regex_zzzz])\\)?(?![.:]?\\d)){0,1}(\\s+(\u098f|\u092c\u091c\u0947))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 p1, 0x7924

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_hms])([ ]*([regex_ampm]))(\\s*\\(?[regex_zzzz]\\)?(?![.:]?\\d)){0,1}(\\s+(\u098f|\u092c\u091c\u0947))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 p1, 0x7925

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "((\\b(jam|sa[ ]+ganap[ ]+na)\\s+)?[regex_hms])([ ]*([regex_ampm]))?(\\s*\\(?[regex_zzzz]\\)?(?![.:]?\\d)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 p1, 0x7926

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_ampm])[ ]*)?jam\\s+[regex_hms]\\s*(am|pm)?\\s*(\\s*\\(?([regex_zzzz])\\)?(?![.:]?\\d)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 p1, 0x7927

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_hms])\\s+ng\\s+([ ]*[regex_ampm])?(\\s*\\(?[regex_zzzz]\\)?(?![.:]?\\d)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 p1, 0x7928

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "\\b\u0ec0\u0ea7\u0ea5\u0eb2[ ]*([regex_hms])[ ]+(\u0ec2\u0ea1\u0e87)([ ]*[regex_ampm])?(\\s*\\(?[regex_zzzz]\\)?(?![.:]?\\d)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const p1, 0xa029

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\\s*[\u5e74|\ub144]\\s*)?([regex_m])\\s*[\u6708|\uc6d4]\\s*[regex_d]\\s*(\u65e5|\u53f7|\uc77c)?(\\s*\\(([param_EEEE]|[param_E])\\))?\\s*[-~\u81f3\uff5e]\\s*(([regex_m])\\s*[\u6708|\uc6d4]\\s*)?[regex_d]\\s*(\u65e5|\u53f7|\uc77c)(\\s*\\(([param_EEEE]|[param_E])\\))?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const p1, 0xa02a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "ng\u00e0y[ ]*[regex_d][ ]+th\u00e1ng[ ]+([regex_m])\\s*-\\s*ng\u00e0y[ ]*[regex_d][ ]+th\u00e1ng[ ]+([regex_m])([ ]+n\u0103m[ ]+[regex_y])?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const p1, 0xa02b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_y])\\s+\u0f63\u0f7c\u0f60\u0f72\u0f0b)?([param_MMM])\u0f5a\u0f7a\u0f66\u0f0b([regex_d])\\s*[-\u2013]\\s*\u0f0b?([regex_d])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const p1, 0xa02c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([regex_y]\u1001\u102f\u1014\u103e\u1005\u103a\\s+)?([param_MMM]|[param_MMMM])\u101c\\s{0,3}[regex_d]\u101b\u1000\u103a\\s{0,3}[-\u2013]\\s{0,3}[regex_d]\u101b\u1000\u103a"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const p1, 0xa02d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([regex_y])\\.?\\s+gada\\s+)?([regex_d])\\.?\\s*[-\u2013]\\s*([regex_d])\\.?\\s+([param_MMM]|[param_MMMM])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const p1, 0xa02e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![-/.])([param_MMMM]|[param_MMM])([-/]|\\.|[ ]{0,3})([regex_d])\\.?\\s*(?!\\3)(-|\u2013|~)\\s*([regex_d])(\\s*,\\s*[regex_y])?\\.?(?![.\\d\u2013~-])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const p1, 0xa02f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![-/.])([regex_d])\\s*([-\u2013~])\\s*([regex_d])(\\s*o\\s*)([param_MMM]|[param_MMMM])(\\s*,\\s*([regex_y])){0,1}(?![-/.])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
