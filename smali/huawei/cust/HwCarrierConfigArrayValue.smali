.class public Lhuawei/cust/HwCarrierConfigArrayValue;
.super Lhuawei/cust/HWCarrierConfigComplexValue;
.source "HwCarrierConfigArrayValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhuawei/cust/HWCarrierConfigComplexValue<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lhuawei/cust/HWCarrierConfigComplexValue;-><init>(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lhuawei/cust/HwCarrierConfigArrayValue;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method
