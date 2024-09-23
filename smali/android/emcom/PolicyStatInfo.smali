.class public Landroid/emcom/PolicyStatInfo;
.super Ljava/lang/Object;
.source "PolicyStatInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PolicyStatInfo"


# instance fields
.field public flowType:I

.field public linkMode:S

.field public pkgName:Ljava/lang/String;

.field public policyEnCnt:I

.field public policyEnRspLat:I

.field public policyEnSuccCnt:I

.field public policyStartCond:I

.field public policySwCnt:I

.field public policySwRspLat:I

.field public policySwSuccCnt:I

.field public policyType:S

.field public succFlg:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/emcom/PolicyStatInfo;->pkgName:Ljava/lang/String;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/PolicyStatInfo;->uid:I

    .line 12
    const/4 v1, 0x0

    iput v1, p0, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    .line 13
    iput v1, p0, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 14
    iput-short v1, p0, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 15
    iput-short v1, p0, Landroid/emcom/PolicyStatInfo;->linkMode:S

    .line 16
    iput v0, p0, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 17
    iput v1, p0, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 18
    iput v1, p0, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 19
    iput v1, p0, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 20
    iput v1, p0, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 21
    iput v1, p0, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 22
    iput v1, p0, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    .line 25
    return-void
.end method


# virtual methods
.method public cleanPolicyStatInfo()V
    .locals 2

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 31
    iput-short v0, p0, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 33
    iput v0, p0, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 34
    iput v0, p0, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 35
    iput v0, p0, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 36
    iput v0, p0, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 37
    iput v0, p0, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 38
    iput v0, p0, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    .line 39
    return-void
.end method

.method public getFlowType()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/emcom/PolicyStatInfo;->flowType:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/emcom/PolicyStatInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyEnCnt()I
    .locals 1

    .line 88
    iget v0, p0, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    return v0
.end method

.method public getPolicyEnRspLat()I
    .locals 1

    .line 120
    iget v0, p0, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    return v0
.end method

.method public getPolicyEnSuccCnt()I
    .locals 1

    .line 96
    iget v0, p0, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    return v0
.end method

.method public getPolicySwCnt()I
    .locals 1

    .line 104
    iget v0, p0, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    return v0
.end method

.method public getPolicySwSuccCnt()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    return v0
.end method

.method public getPolicyType()S
    .locals 1

    .line 70
    iget-short v0, p0, Landroid/emcom/PolicyStatInfo;->policyType:S

    return v0
.end method

.method public getSuccFlg()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/emcom/PolicyStatInfo;->succFlg:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 54
    iget v0, p0, Landroid/emcom/PolicyStatInfo;->uid:I

    return v0
.end method

.method public setFlowType(I)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "flowType"    # I

    .line 58
    iput p1, p0, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 59
    return-object p0
.end method

.method public setPkgName(Ljava/lang/String;)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroid/emcom/PolicyStatInfo;->pkgName:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public setPolicyEnCnt(I)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "cnt"    # I

    .line 84
    iput p1, p0, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 85
    return-object p0
.end method

.method public setPolicyEnRspLat(I)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "latency"    # I

    .line 116
    iput p1, p0, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 117
    return-object p0
.end method

.method public setPolicyEnSuccCnt(I)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "cnt"    # I

    .line 92
    iput p1, p0, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 93
    return-object p0
.end method

.method public setPolicySwCnt(I)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "cnt"    # I

    .line 100
    iput p1, p0, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 101
    return-object p0
.end method

.method public setPolicySwSuccCnt(I)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "cnt"    # I

    .line 108
    iput p1, p0, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 109
    return-object p0
.end method

.method public setPolicyType(I)Landroid/emcom/PolicyStatInfo;
    .locals 1
    .param p1, "policyType"    # I

    .line 66
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 67
    return-object p0
.end method

.method public setSuccFlg(I)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "succFlg"    # I

    .line 75
    iput p1, p0, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 76
    return-object p0
.end method

.method public setUid(I)Landroid/emcom/PolicyStatInfo;
    .locals 0
    .param p1, "uid"    # I

    .line 50
    iput p1, p0, Landroid/emcom/PolicyStatInfo;->uid:I

    .line 51
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Landroid/emcom/PolicyStatInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Landroid/emcom/PolicyStatInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", flowType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Landroid/emcom/PolicyStatInfo;->flowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", policyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-short v1, p0, Landroid/emcom/PolicyStatInfo;->policyType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", succFlg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Landroid/emcom/PolicyStatInfo;->succFlg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", policyEnCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", policyEnSuccCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", policyEnRspLat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
