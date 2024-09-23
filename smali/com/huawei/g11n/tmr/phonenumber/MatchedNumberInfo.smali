.class public Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
.super Ljava/lang/Object;
.source "MatchedNumberInfo.java"


# instance fields
.field private begin:I

.field private content:Ljava/lang/String;

.field private end:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBegin()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->begin:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->end:I

    return v0
.end method

.method public setBegin(I)V
    .locals 0
    .param p1, "begin"    # I

    .line 11
    iput p1, p0, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->begin:I

    .line 12
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->content:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setEnd(I)V
    .locals 0
    .param p1, "end"    # I

    .line 23
    iput p1, p0, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->end:I

    .line 24
    return-void
.end method
