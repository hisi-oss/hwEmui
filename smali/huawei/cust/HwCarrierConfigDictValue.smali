.class public Lhuawei/cust/HwCarrierConfigDictValue;
.super Lhuawei/cust/HWCarrierConfigComplexValue;
.source "HwCarrierConfigDictValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhuawei/cust/HWCarrierConfigComplexValue<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lhuawei/cust/HWCarrierConfigComplexValue;-><init>(Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lhuawei/cust/HwCarrierConfigDictValue;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
