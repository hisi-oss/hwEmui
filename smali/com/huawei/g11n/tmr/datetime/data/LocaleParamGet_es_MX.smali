.class public Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es_MX;
.super Ljava/lang/Object;
.source "LocaleParamGet_es_MX.java"


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

    .line 8
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es_MX$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es_MX$1;-><init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es_MX;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es_MX;->date:Ljava/util/HashMap;

    .line 5
    return-void
.end method
