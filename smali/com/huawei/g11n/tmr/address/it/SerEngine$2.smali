.class Lcom/huawei/g11n/tmr/address/it/SerEngine$2;
.super Ljava/lang/Object;
.source "SerEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/g11n/tmr/address/it/SerEngine;->merge(Ljava/util/List;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/huawei/g11n/tmr/address/it/SerEngine$2;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 3
    .param p1, "pair1"    # [I
    .param p2, "pair2"    # [I

    .line 336
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    if-ge v1, v2, :cond_0

    .line 337
    const/4 v0, -0x1

    return v0

    .line 338
    :cond_0
    aget v1, p1, v0

    aget v2, p2, v0

    if-ne v1, v2, :cond_1

    .line 339
    return v0

    .line 340
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
