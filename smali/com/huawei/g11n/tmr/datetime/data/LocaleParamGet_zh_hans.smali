.class public Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;
.super Ljava/lang/Object;
.source "LocaleParamGet_zh_hans.java"


# instance fields
.field private ampm2Time:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public date:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$1;-><init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;->date:Ljava/util/HashMap;

    .line 52
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$2;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans$2;-><init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;->ampm2Time:Ljava/util/HashMap;

    .line 7
    return-void
.end method


# virtual methods
.method public getAmPm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;->ampm2Time:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
