.class public Lcom/huawei/g11n/tmr/address/Match;
.super Ljava/lang/Object;
.source "Match.java"


# instance fields
.field private endPos:Ljava/lang/Integer;

.field private matchedAddr:Ljava/lang/String;

.field private startPos:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "regex"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/Match;->startPos:Ljava/lang/Integer;

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/Match;->endPos:Ljava/lang/Integer;

    .line 13
    iput-object p3, p0, Lcom/huawei/g11n/tmr/address/Match;->matchedAddr:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getEndPos()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/Match;->endPos:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMatchedAddr()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/Match;->matchedAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/Match;->startPos:Ljava/lang/Integer;

    return-object v0
.end method

.method public setEndPos(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "endPos"    # Ljava/lang/Integer;

    .line 28
    iput-object p1, p0, Lcom/huawei/g11n/tmr/address/Match;->endPos:Ljava/lang/Integer;

    .line 29
    return-void
.end method

.method public setMatchedAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "matchedAddr"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/huawei/g11n/tmr/address/Match;->matchedAddr:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setStartPos(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "startPos"    # Ljava/lang/Integer;

    .line 22
    iput-object p1, p0, Lcom/huawei/g11n/tmr/address/Match;->startPos:Ljava/lang/Integer;

    .line 23
    return-void
.end method
