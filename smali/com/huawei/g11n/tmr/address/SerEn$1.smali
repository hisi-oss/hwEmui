.class Lcom/huawei/g11n/tmr/address/SerEn$1;
.super Ljava/lang/Object;
.source "SerEn.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/g11n/tmr/address/SerEn;->sortAndMergePosList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/huawei/g11n/tmr/address/Match;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/address/SerEn;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/address/SerEn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/address/SerEn$1;->this$0:Lcom/huawei/g11n/tmr/address/SerEn;

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/g11n/tmr/address/Match;Lcom/huawei/g11n/tmr/address/Match;)I
    .locals 2
    .param p1, "p1"    # Lcom/huawei/g11n/tmr/address/Match;
    .param p2, "p2"    # Lcom/huawei/g11n/tmr/address/Match;

    .line 2002
    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2003
    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0

    .line 2005
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/g11n/tmr/address/Match;

    check-cast p2, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/g11n/tmr/address/SerEn$1;->compare(Lcom/huawei/g11n/tmr/address/Match;Lcom/huawei/g11n/tmr/address/Match;)I

    move-result p1

    return p1
.end method
