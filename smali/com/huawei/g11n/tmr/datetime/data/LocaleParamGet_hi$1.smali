.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_hi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_am"

    const-string v0, "\u092a\u0942|\u092a\u0942\u0930\u094d\u0935\u093e\u0939\u094d\u0928"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_pm"

    const-string v0, "\u0905\u092a\u0930\u093e\u0939\u094d\u0928|\u0905"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_MMM"

    const-string v0, "\u091c\u0928|\u092b\u093c\u0930|\u092e\u093e\u0930\u094d\u091a|\u0905\u092a\u094d\u0930\u0948|\u092e\u0908|\u091c\u0942\u0928|\u091c\u0941\u0932\u093e|\u0905\u0917|\u0938\u093f\u0924\u0902|\u0905\u0915\u094d\u091f\u0942|\u0928\u0935\u0902|\u0926\u093f\u0938\u0902"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMMM"

    const-string v0, "\u091c\u0928\u0935\u0930\u0940|\u092b\u093c\u0930\u0935\u0930\u0940|\u092e\u093e\u0930\u094d\u091a|\u0905\u092a\u094d\u0930\u0948\u0932|\u092e\u0908|\u091c\u0942\u0928|\u091c\u0941\u0932\u093e\u0908|\u0905\u0917\u0938\u094d\u0924|\u0938\u093f\u0924\u0902\u092c\u0930|\u0905\u0915\u094d\u091f\u0942\u092c\u0930|\u0928\u0935\u0902\u092c\u0930|\u0926\u093f\u0938\u0902\u092c\u0930"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_E"

    const-string v0, "\u0930\u0935\u093f|\u0938\u094b\u092e|\u092e\u0902\u0917\u0932|\u092c\u0941\u0927|\u0917\u0941\u0930\u0941|\u0936\u0941\u0915\u094d\u0930|\u0936\u0928\u093f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E2"

    const-string v0, "\u0930\u0935\u093f|\u0938\u094b\u092e|\u092e\u0902\u0917\u0932|\u092c\u0941\u0927|\u0917\u0941\u0930\u0941|\u0936\u0941\u0915\u094d\u0930|\u0936\u0928\u093f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_EEEE"

    const-string v0, "\u0930\u0935\u093f\u0935\u093e\u0930|\u0938\u094b\u092e\u0935\u093e\u0930|\u092e\u0902\u0917\u0932\u0935\u093e\u0930|\u092c\u0941\u0927\u0935\u093e\u0930|\u0917\u0941\u0930\u0941\u0935\u093e\u0930|\u0936\u0941\u0915\u094d\u0930\u0935\u093e\u0930|\u0936\u0928\u093f\u0935\u093e\u0930"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_days"

    const-string v0, "\u0906\u091c|\u0906\u0928\u0947\\s+\u0935\u093e\u0932\u093e\\s+\u0915\u0932|\u092a\u0930\u0938\u094b\u0902"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_thisweek"

    const-string v0, "\u092f\u0939\\s+\u0930\u0935\u093f\u0935\u093e\u0930|\u092f\u0939\\s+\u0938\u094b\u092e\u0935\u093e\u0930|\u092f\u0939\\s+\u092e\u0902\u0917\u0932\u0935\u093e\u0930|\u092f\u0939\\s+\u092c\u0941\u0927\u0935\u093e\u0930|\u092f\u0939\\s+\u0917\u0941\u0930\u0941\u0935\u093e\u0930|\u092f\u0939\\s+\u0936\u0941\u0915\u094d\u0930\u0935\u093e\u0930|\u092f\u0939\\s+\u0936\u0928\u093f\u0935\u093e\u0930"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_nextweek"

    const-string v0, "\u0905\u0917\u0932\u093e\\s+\u0930\u0935\u093f\u0935\u093e\u0930|\u0905\u0917\u0932\u093e\\s+\u0938\u094b\u092e\u0935\u093e\u0930|\u0905\u0917\u0932\u093e\\s+\u092e\u0902\u0917\u0932\u0935\u093e\u0930|\u0905\u0917\u0932\u093e\\s+\u092c\u0941\u0927\u0935\u093e\u0930|\u0905\u0917\u0932\u093e\\s+\u0917\u0941\u0930\u0941\u0935\u093e\u0930|\u0905\u0917\u0932\u093e\\s+\u0936\u0941\u0915\u094d\u0930\u0935\u093e\u0930|\u0905\u0917\u0932\u093e\\s+\u0936\u0928\u093f\u0935\u093e\u0930"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
