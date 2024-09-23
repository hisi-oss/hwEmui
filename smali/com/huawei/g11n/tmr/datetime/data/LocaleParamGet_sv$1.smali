.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_sv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv;

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string p1, "param_tmark"

    const-string v0, "[:.]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_am"

    const-string v0, "f|fm"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_pm"

    const-string v0, "em|e"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMM"

    const-string v0, "jan|feb|mar|apr|maj|jun|jul|aug|sep|okt|nov|dec"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_MMMM"

    const-string v0, "januari|februari|mars|april|maj|juni|juli|augusti|september|oktober|november|december"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E"

    const-string v0, "s\u00f6n|m\u00e5n|tis|ons|tors|fre|l\u00f6r"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_E2"

    const-string v0, "s\u00f6n|m\u00e5n|tis|ons|tors|fre|l\u00f6r"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_EEEE"

    const-string v0, "s\u00f6ndag|m\u00e5ndag|tisdag|onsdag|torsdag|fredag|l\u00f6rdag"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_days"

    const-string v0, "i\\s+dag|i\\s+morgon|i\\s+\u00f6vermorgon"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_thisweek"

    const-string v0, "s\u00f6ndag\\s+denna\\s+vecka|m\u00e5ndag\\s+denna\\s+vecka|tisdag\\s+denna\\s+vecka|onsdag\\s+denna\\s+vecka|torsdag\\s+denna\\s+vecka|fredag\\s+denna\\s+vecka|l\u00f6rdag\\s+denna\\s+vecka"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "param_nextweek"

    const-string v0, "s\u00f6ndag\\s+n\u00e4sta\\s+vecka|m\u00e5ndag\\s+n\u00e4sta\\s+vecka|tisdag\\s+n\u00e4sta\\s+vecka|onsdag\\s+n\u00e4sta\\s+vecka|torsdag\\s+n\u00e4sta\\s+vecka|fredag\\s+n\u00e4sta\\s+vecka|l\u00f6rdag\\s+n\u00e4sta\\s+vecka"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
