.class public Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;
.super Ljava/lang/Object;
.source "LocaleParamGet_ja.java"


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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja$1;-><init>(Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;->date:Ljava/util/HashMap;

    .line 7
    return-void
.end method
