.class public abstract Lhuawei/cust/HWCarrierConfigComplexValue;
.super Ljava/lang/Object;
.source "HWCarrierConfigComplexValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 13
    .local p0, "this":Lhuawei/cust/HWCarrierConfigComplexValue;, "Lhuawei/cust/HWCarrierConfigComplexValue<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lhuawei/cust/HWCarrierConfigComplexValue;->mData:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract addData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    .local p0, "this":Lhuawei/cust/HWCarrierConfigComplexValue;, "Lhuawei/cust/HWCarrierConfigComplexValue<TT;>;"
    iget-object v0, p0, Lhuawei/cust/HWCarrierConfigComplexValue;->mData:Ljava/lang/Object;

    return-object v0
.end method
