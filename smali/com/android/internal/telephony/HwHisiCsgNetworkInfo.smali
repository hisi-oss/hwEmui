.class public Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;
.super Ljava/lang/Object;
.source "HwHisiCsgNetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;
    }
.end annotation


# instance fields
.field public isSelectedFail:Z

.field private mCSGId:Ljava/lang/String;

.field private mCsgIdName:Ljava/lang/String;

.field private mCsgIdType:I

.field private mIsConnected:Z

.field private mLongName:Ljava/lang/String;

.field private mOper:Ljava/lang/String;

.field private mRat:I

.field private mRsrp:I

.field private mRsrq:I

.field private mShortName:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "CSGId"    # Ljava/lang/String;
    .param p3, "rat"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_UNKNOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    iput-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mState:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->isSelectedFail:Z

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mOper:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCSGId:Ljava/lang/String;

    .line 74
    iput p3, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRat:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;)V
    .locals 1
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "CSGId"    # Ljava/lang/String;
    .param p3, "rat"    # I
    .param p4, "csgId_type"    # I
    .param p5, "csgId_name"    # Ljava/lang/String;
    .param p6, "longName"    # Ljava/lang/String;
    .param p7, "shortName"    # Ljava/lang/String;
    .param p8, "rsrp"    # I
    .param p9, "rsrq"    # I
    .param p10, "isConnected"    # Z
    .param p11, "state"    # Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_UNKNOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    iput-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mState:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->isSelectedFail:Z

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mOper:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCSGId:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRat:I

    .line 37
    iput-object p6, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mLongName:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mShortName:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCsgIdType:I

    .line 40
    iput-object p5, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCsgIdName:Ljava/lang/String;

    .line 41
    iput p8, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRsrp:I

    .line 42
    iput p9, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRsrq:I

    .line 43
    iput-boolean p10, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mIsConnected:Z

    .line 44
    iput-object p11, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mState:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 12
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "CSGId"    # Ljava/lang/String;
    .param p3, "rat"    # I
    .param p4, "csgId_type"    # I
    .param p5, "csgId_name"    # Ljava/lang/String;
    .param p6, "longName"    # Ljava/lang/String;
    .param p7, "shortName"    # Ljava/lang/String;
    .param p8, "rsrp"    # I
    .param p9, "rsrq"    # I
    .param p10, "isConnected"    # Z
    .param p11, "stateString"    # Ljava/lang/String;

    .line 50
    nop

    .line 51
    invoke-static/range {p11 .. p11}, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    move-result-object v11

    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;)V

    .line 53
    return-void
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;
    .locals 3
    .param p0, "stateString"    # Ljava/lang/String;

    .line 56
    const-string v0, "allow_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_ALLOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    return-object v0

    .line 58
    :cond_0
    const-string v0, "operator_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_OPERATOR_LIST_ALLOW:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    return-object v0

    .line 60
    :cond_1
    const-string v0, "forbiden_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    sget-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_OPERATOR_LIST_FORBIDEN:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    return-object v0

    .line 62
    :cond_2
    const-string v0, "unallow_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_UNKNOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    return-object v0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCSGId()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCSGId:Ljava/lang/String;

    return-object v0
.end method

.method public getCSGState()Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mState:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    return-object v0
.end method

.method public getCsgIdName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCsgIdName:Ljava/lang/String;

    return-object v0
.end method

.method public getCsgIdType()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCsgIdType:I

    return v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getOper()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mOper:Ljava/lang/String;

    return-object v0
.end method

.method public getRat()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRat:I

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getmRsrp()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRsrp:I

    return v0
.end method

.method public getmRsrq()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRsrq:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 163
    iget v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRat:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mOper:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mOper:Ljava/lang/String;

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCSGId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCSGId:Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0
.end method

.method public ismIsConnected()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mIsConnected:Z

    return v0
.end method

.method public setCSGId(Ljava/lang/String;)V
    .locals 0
    .param p1, "CSGId"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCSGId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setCsgIdName(Ljava/lang/String;)V
    .locals 0
    .param p1, "csgId_name"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCsgIdName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setCsgIdType(I)V
    .locals 0
    .param p1, "csgId_type"    # I

    .line 126
    iput p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCsgIdType:I

    .line 127
    return-void
.end method

.method public setLongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mLongName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setOper(Ljava/lang/String;)V
    .locals 0
    .param p1, "oper"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mOper:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setRat(I)V
    .locals 0
    .param p1, "rat"    # I

    .line 159
    iput p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRat:I

    .line 160
    return-void
.end method

.method public setRsrp(I)V
    .locals 0
    .param p1, "rsrp"    # I

    .line 98
    iput p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRsrp:I

    .line 99
    return-void
.end method

.method public setRsrq(I)V
    .locals 0
    .param p1, "rsrq"    # I

    .line 102
    iput p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRsrq:I

    .line 103
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortName"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mShortName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setmIsConnected(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .line 118
    iput-boolean p1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mIsConnected:Z

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwHisiCsgNetworkInfo{mOper=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mOper:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCSGId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCSGId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelectedFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->isSelectedFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLongName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mLongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mShortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCsgIdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCsgIdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCsgIdName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mCsgIdName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;->mState:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
