.class Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam$2;
.super Ljava/util/HashMap;
.source "LocaleParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam$2;->this$0:Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;

    .line 321
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 323
    const-string p1, "param_tmark"

    const-string v0, ":"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
