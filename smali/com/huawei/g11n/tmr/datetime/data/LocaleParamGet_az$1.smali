.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_az.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "AM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "PM"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "yan|fev|mar|apr|may|iyn|iyl|avq|sen|okt|noy|dek"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "yanvar|fevral|mart|aprel|may|iyun|iyul|avqust|sentyabr|oktyabr|noyabr|dekabr"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "B\\.|B\\.E\\.|\u00c7\\.A\\.|\u00c7\\.|C\\.A\\.|C\\.|\u015e\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "B\\.|B\\.E\\.|\u00c7\\.A\\.|\u00c7\\.|C\\.A\\.|C\\.|\u015e\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "bazar|bazar\\s+ert\u0259si|\u00e7\u0259r\u015f\u0259nb\u0259\\s+ax\u015fam\u0131|\u00e7\u0259r\u015f\u0259nb\u0259|c\u00fcm\u0259\\s+ax\u015fam\u0131|c\u00fcm\u0259|\u015f\u0259nb\u0259"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "bu\\s+g\u00fcn|sabah"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "bu\\s+bazar|bu\\s+bazar\\s+ert\u0259si|bu\\s+\u00e7\u0259r\u015f\u0259nb\u0259\\s+ax\u015fam\u0131|bu\\s+\u00e7\u0259r\u015f\u0259nb\u0259|bu\\s+c\u00fcm\u0259\\s+ax\u015fam\u0131|bu\\s+c\u00fcm\u0259|bu\\s+\u015f\u0259nb\u0259"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "g\u0259l\u0259n\\s+bazar|g\u0259l\u0259n\\s+bazar\\s+ert\u0259si|g\u0259l\u0259n\\s+\u00e7\u0259r\u015f\u0259nb\u0259\\s+ax\u015fam\u0131|g\u0259l\u0259n\\s+\u00e7\u0259r\u015f\u0259nb\u0259|g\u0259l\u0259n\\s+c\u00fcm\u0259\\s+ax\u015fam\u0131|g\u0259l\u0259n\\s+c\u00fcm\u0259|g\u0259l\u0259n\\s+\u015f\u0259nb\u0259"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
