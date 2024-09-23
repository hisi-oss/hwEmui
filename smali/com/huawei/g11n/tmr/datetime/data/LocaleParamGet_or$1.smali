.class Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;
.super Ljava/util/HashMap;
.source "LocaleParamGet_or.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->this$0:Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or;

    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string p1, "param_am"

    const-string v0, "am"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "param_pm"

    const-string v0, "pm"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "param_MMM"

    const-string v0, "\u0b1c\u0b3e\u0b28\u0b41\u0b06\u0b30\u0b40|\u0b2b\u0b47\u0b2c\u0b43\u0b06\u0b30\u0b40|\u0b2e\u0b3e\u0b30\u0b4d\u0b1a\u0b4d\u0b1a|\u0b05\u0b2a\u0b4d\u0b30\u0b47\u0b32|\u0b2e\u0b07|\u0b1c\u0b41\u0b28|\u0b1c\u0b41\u0b32\u0b3e\u0b07|\u0b05\u0b17\u0b37\u0b4d\u0b1f|\u0b38\u0b47\u0b2a\u0b4d\u0b1f\u0b47\u0b2e\u0b4d\u0b2c\u0b30|\u0b05\u0b15\u0b4d\u0b1f\u0b4b\u0b2c\u0b30|\u0b28\u0b2d\u0b47\u0b2e\u0b4d\u0b2c\u0b30|\u0b21\u0b3f\u0b38\u0b47\u0b2e\u0b4d\u0b2c\u0b30"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p1, "param_MMMM"

    const-string v0, "\u0b1c\u0b3e\u0b28\u0b41\u0b06\u0b30\u0b40|\u0b2b\u0b47\u0b2c\u0b43\u0b06\u0b30\u0b40|\u0b2e\u0b3e\u0b30\u0b4d\u0b1a\u0b4d\u0b1a|\u0b05\u0b2a\u0b4d\u0b30\u0b47\u0b32|\u0b2e\u0b07|\u0b1c\u0b41\u0b28|\u0b1c\u0b41\u0b32\u0b3e\u0b07|\u0b05\u0b17\u0b37\u0b4d\u0b1f|\u0b38\u0b47\u0b2a\u0b4d\u0b1f\u0b47\u0b2e\u0b4d\u0b2c\u0b30|\u0b05\u0b15\u0b4d\u0b1f\u0b4b\u0b2c\u0b30|\u0b28\u0b2d\u0b47\u0b2e\u0b4d\u0b2c\u0b30|\u0b21\u0b3f\u0b38\u0b47\u0b2e\u0b4d\u0b2c\u0b30"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "param_E"

    const-string v0, "\u0b30\u0b2c\u0b3f|\u0b38\u0b4b\u0b2e|\u0b2e\u0b19\u0b4d\u0b17\u0b33|\u0b2c\u0b41\u0b27|\u0b17\u0b41\u0b30\u0b41|\u0b36\u0b41\u0b15\u0b4d\u0b30|\u0b36\u0b28\u0b3f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "param_E2"

    const-string v0, "\u0b30\u0b2c\u0b3f|\u0b38\u0b4b\u0b2e|\u0b2e\u0b19\u0b4d\u0b17\u0b33|\u0b2c\u0b41\u0b27|\u0b17\u0b41\u0b30\u0b41|\u0b36\u0b41\u0b15\u0b4d\u0b30|\u0b36\u0b28\u0b3f"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "param_EEEE"

    const-string v0, "\u0b30\u0b2c\u0b3f\u0b2c\u0b3e\u0b30|\u0b38\u0b4b\u0b2e\u0b2c\u0b3e\u0b30|\u0b2e\u0b19\u0b4d\u0b17\u0b33\u0b2c\u0b3e\u0b30|\u0b2c\u0b41\u0b27\u0b2c\u0b3e\u0b30|\u0b17\u0b41\u0b30\u0b41\u0b2c\u0b3e\u0b30|\u0b36\u0b41\u0b15\u0b4d\u0b30\u0b2c\u0b3e\u0b30|\u0b36\u0b28\u0b3f\u0b2c\u0b3e\u0b30"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string p1, "param_days"

    const-string v0, "today|tomorrow"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string p1, "param_thisweek"

    const-string v0, "this\\s+Sunday|this\\s+Monday|this\\s+Tuesday|this\\s+Wednesday|this\\s+Thursday|this\\s+Friday|this\\s+Saturday"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "param_nextweek"

    const-string v0, "next\\s+Sunday|next\\s+Monday|next\\s+Tuesday|next\\s+Wednesday|next\\s+Thursday|next\\s+Friday|next\\s+Saturday"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
