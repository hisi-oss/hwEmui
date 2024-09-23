.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_mr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "\u092e\\.\u092a\u0942\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "\u092e\\.\u0909\\."

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "\u091c\u093e\u0928\u0947|\u092b\u0947\u092c\u094d\u0930\u0941|\u092e\u093e\u0930\u094d\u091a|\u090f\u092a\u094d\u0930\u093f|\u092e\u0947|\u091c\u0942\u0928|\u091c\u0941\u0932\u0948|\u0911\u0917|\u0938\u092a\u094d\u091f\u0947\u0902|\u0911\u0915\u094d\u091f\u094b|\u0928\u094b\u0935\u094d\u0939\u0947\u0902|\u0921\u093f\u0938\u0947\u0902"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u091c\u093e\u0928\u0947\u0935\u093e\u0930\u0940|\u092b\u0947\u092c\u094d\u0930\u0941\u0935\u093e\u0930\u0940|\u092e\u093e\u0930\u094d\u091a|\u090f\u092a\u094d\u0930\u093f\u0932|\u092e\u0947|\u091c\u0942\u0928|\u091c\u0941\u0932\u0948|\u0911\u0917\u0938\u094d\u091f|\u0938\u092a\u094d\u091f\u0947\u0902\u092c\u0930|\u0911\u0915\u094d\u091f\u094b\u092c\u0930|\u0928\u094b\u0935\u094d\u0939\u0947\u0902\u092c\u0930|\u0921\u093f\u0938\u0947\u0902\u092c\u0930"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\u0930\u0935\u093f|\u0938\u094b\u092e|\u092e\u0902\u0917\u0933|\u092c\u0941\u0927|\u0917\u0941\u0930\u0941|\u0936\u0941\u0915\u094d\u0930|\u0936\u0928\u093f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\u0930\u0935\u093f|\u0938\u094b\u092e|\u092e\u0902\u0917\u0933|\u092c\u0941\u0927|\u0917\u0941\u0930\u0941|\u0936\u0941\u0915\u094d\u0930|\u0936\u0928\u093f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u0930\u0935\u093f\u0935\u093e\u0930|\u0938\u094b\u092e\u0935\u093e\u0930|\u092e\u0902\u0917\u0933\u0935\u093e\u0930|\u092c\u0941\u0927\u0935\u093e\u0930|\u0917\u0941\u0930\u0941\u0935\u093e\u0930|\u0936\u0941\u0915\u094d\u0930\u0935\u093e\u0930|\u0936\u0928\u093f\u0935\u093e\u0930"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "\u0906\u091c|\u0909\u0926\u094d\u092f\u093e|"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "\u0939\u093e\\s+\u0930\u0935\u093f\u0935\u093e\u0930|\u0939\u093e\\s+\u0938\u094b\u092e\u0935\u093e\u0930|\u0939\u093e\\s+\u092e\u0902\u0917\u0933\u0935\u093e\u0930|\u0939\u093e\\s+\u092c\u0941\u0927\u0935\u093e\u0930|\u0939\u093e\\s+\u0917\u0941\u0930\u0941\u0935\u093e\u0930|\u0939\u093e\\s+\u0936\u0941\u0915\u094d\u0930\u0935\u093e\u0930|\u0939\u093e\\s+\u0936\u0928\u093f\u0935\u093e\u0930"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "\u092a\u0941\u0922\u0940\u0932\\s+\u0930\u0935\u093f\u0935\u093e\u0930|\u092a\u0941\u0922\u0940\u0932\\s+\u0938\u094b\u092e\u0935\u093e\u0930|\u092a\u0941\u0922\u0940\u0932\\s+\u092e\u0902\u0917\u0933\u0935\u093e\u0930|\u092a\u0941\u0922\u0940\u0932\\s+\u092c\u0941\u0927\u0935\u093e\u0930|\u092a\u0941\u0922\u0940\u0932\\s+\u0917\u0941\u0930\u0941\u0935\u093e\u0930|\u092a\u0941\u0922\u0940\u0932\\s+\u0936\u0941\u0915\u094d\u0930\u0935\u093e\u0930|\u092a\u0941\u0922\u0940\u0932\\s+\u0936\u0928\u093f\u0935\u093e\u0930"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
