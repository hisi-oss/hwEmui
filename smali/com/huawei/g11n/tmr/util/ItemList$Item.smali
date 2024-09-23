.class Lcom/huawei/g11n/tmr/util/ItemList$Item;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/util/ItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field private begin:I

.field private end:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "b"    # I
    .param p2, "e"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->begin:I

    .line 84
    iput p2, p0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->end:I

    .line 85
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/huawei/g11n/tmr/util/ItemList$Item;

    .line 109
    .local v0, "it":Lcom/huawei/g11n/tmr/util/ItemList$Item;
    iget v1, p0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->begin:I

    .line 110
    .local v1, "cb":I
    iget v2, p0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->end:I

    .line 111
    .local v2, "ce":I
    iget v3, v0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->begin:I

    .line 112
    .local v3, "nb":I
    iget v4, v0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->end:I

    .line 113
    .local v4, "ne":I
    const/4 v5, 0x0

    .line 114
    .local v5, "r":I
    if-ge v1, v3, :cond_0

    .line 115
    const/4 v5, -0x1

    .line 116
    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_3

    .line 117
    if-ge v2, v4, :cond_1

    .line 118
    const/4 v5, -0x1

    goto :goto_0

    .line 119
    :cond_1
    if-ne v2, v4, :cond_2

    .line 120
    const/4 v5, 0x0

    goto :goto_0

    .line 122
    :cond_2
    const/4 v5, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    const/4 v5, 0x1

    .line 126
    :goto_0
    return v5
.end method

.method public getBegin()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->begin:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->end:I

    return v0
.end method

.method public setBegin(I)V
    .locals 0
    .param p1, "begin"    # I

    .line 92
    iput p1, p0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->begin:I

    .line 93
    return-void
.end method

.method public setEnd(I)V
    .locals 0
    .param p1, "end"    # I

    .line 100
    iput p1, p0, Lcom/huawei/g11n/tmr/util/ItemList$Item;->end:I

    .line 101
    return-void
.end method
