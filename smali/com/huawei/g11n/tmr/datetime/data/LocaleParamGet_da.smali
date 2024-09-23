.class public Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_da;
.super Ljava/lang/Object;
.source "LocaleParamGet_da.java"


# instance fields
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_da$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_da$1;-><init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_da;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_da;->date:Ljava/util/HashMap;

    .line 5
    return-void
.end method
