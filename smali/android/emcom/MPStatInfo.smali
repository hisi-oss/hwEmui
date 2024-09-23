.class public Landroid/emcom/MPStatInfo;
.super Ljava/lang/Object;
.source "MPStatInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MPStatInfo"


# instance fields
.field public currSelectedPath:I

.field public flowType:I

.field public initPrbRoute:B

.field public linkMode:S

.field public mpDur:I

.field public mpEndTime:J

.field public mpStartTime:J

.field public pkg:Ljava/lang/String;

.field public policyType:S

.field public sWB2BCnt:I

.field public sWB2GCnt:I

.field public sWCnt:I

.field public sWG2BCnt:I

.field public sWG2GCnt:I

.field public succFlg:B

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/emcom/MPStatInfo;->pkg:Ljava/lang/String;

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/MPStatInfo;->uid:I

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Landroid/emcom/MPStatInfo;->flowType:I

    .line 16
    iput-short v1, p0, Landroid/emcom/MPStatInfo;->policyType:S

    .line 17
    iput-short v1, p0, Landroid/emcom/MPStatInfo;->linkMode:S

    .line 19
    iput-byte v0, p0, Landroid/emcom/MPStatInfo;->succFlg:B

    .line 20
    iput-byte v0, p0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 21
    iput v0, p0, Landroid/emcom/MPStatInfo;->currSelectedPath:I

    .line 22
    iput v1, p0, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 23
    iput v1, p0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 24
    iput v1, p0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 25
    iput v1, p0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 26
    iput v1, p0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 28
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/emcom/MPStatInfo;->mpStartTime:J

    .line 29
    iput-wide v2, p0, Landroid/emcom/MPStatInfo;->mpEndTime:J

    .line 30
    iput v1, p0, Landroid/emcom/MPStatInfo;->mpDur:I

    .line 33
    return-void
.end method


# virtual methods
.method public cleanStatisticInfo()V
    .locals 3

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/MPStatInfo;->flowType:I

    .line 39
    iput-short v0, p0, Landroid/emcom/MPStatInfo;->policyType:S

    .line 40
    iput-short v0, p0, Landroid/emcom/MPStatInfo;->linkMode:S

    .line 41
    const/4 v1, -0x1

    iput-byte v1, p0, Landroid/emcom/MPStatInfo;->succFlg:B

    .line 42
    iput-byte v1, p0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 43
    iput v1, p0, Landroid/emcom/MPStatInfo;->currSelectedPath:I

    .line 44
    iput v0, p0, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 45
    iput v0, p0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 46
    iput v0, p0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 47
    iput v0, p0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 48
    iput v0, p0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/emcom/MPStatInfo;->mpStartTime:J

    .line 51
    iput-wide v1, p0, Landroid/emcom/MPStatInfo;->mpEndTime:J

    .line 52
    iput v0, p0, Landroid/emcom/MPStatInfo;->mpDur:I

    .line 53
    return-void
.end method

.method public getCurrSelectedPath()I
    .locals 1

    .line 108
    iget v0, p0, Landroid/emcom/MPStatInfo;->currSelectedPath:I

    return v0
.end method

.method public getFlowType()I
    .locals 1

    .line 76
    iget v0, p0, Landroid/emcom/MPStatInfo;->flowType:I

    return v0
.end method

.method public getInitPrbRoute()B
    .locals 1

    .line 100
    iget-byte v0, p0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    return v0
.end method

.method public getMpDur()I
    .locals 1

    .line 169
    iget v0, p0, Landroid/emcom/MPStatInfo;->mpDur:I

    return v0
.end method

.method public getMpEndTime()J
    .locals 2

    .line 162
    iget-wide v0, p0, Landroid/emcom/MPStatInfo;->mpEndTime:J

    return-wide v0
.end method

.method public getMpStartTime()J
    .locals 2

    .line 155
    iget-wide v0, p0, Landroid/emcom/MPStatInfo;->mpStartTime:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/emcom/MPStatInfo;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyType()S
    .locals 1

    .line 84
    iget-short v0, p0, Landroid/emcom/MPStatInfo;->policyType:S

    return v0
.end method

.method public getSuccFlg()B
    .locals 1

    .line 92
    iget-byte v0, p0, Landroid/emcom/MPStatInfo;->succFlg:B

    return v0
.end method

.method public getSwB2BCnt()I
    .locals 1

    .line 132
    iget v0, p0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    return v0
.end method

.method public getSwB2GCnt()I
    .locals 1

    .line 124
    iget v0, p0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    return v0
.end method

.method public getSwCnt()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/emcom/MPStatInfo;->sWCnt:I

    return v0
.end method

.method public getSwG2BCnt()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    return v0
.end method

.method public getSwG2GCnt()I
    .locals 1

    .line 140
    iget v0, p0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 68
    iget v0, p0, Landroid/emcom/MPStatInfo;->uid:I

    return v0
.end method

.method public setCurrSelectedPath(I)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "currSelectedPath"    # I

    .line 104
    iput p1, p0, Landroid/emcom/MPStatInfo;->currSelectedPath:I

    .line 105
    return-object p0
.end method

.method public setFlowType(I)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "flowType"    # I

    .line 72
    iput p1, p0, Landroid/emcom/MPStatInfo;->flowType:I

    .line 73
    return-object p0
.end method

.method public setInitPrbRoute(I)Landroid/emcom/MPStatInfo;
    .locals 1
    .param p1, "initPrbRoute"    # I

    .line 96
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 97
    return-object p0
.end method

.method public setMpDur(I)V
    .locals 0
    .param p1, "mpDur"    # I

    .line 166
    iput p1, p0, Landroid/emcom/MPStatInfo;->mpDur:I

    .line 167
    return-void
.end method

.method public setMpEndTime(J)V
    .locals 0
    .param p1, "mpEndTime"    # J

    .line 159
    iput-wide p1, p0, Landroid/emcom/MPStatInfo;->mpEndTime:J

    .line 160
    return-void
.end method

.method public setMpStartTime(J)V
    .locals 0
    .param p1, "mpStartTime"    # J

    .line 152
    iput-wide p1, p0, Landroid/emcom/MPStatInfo;->mpStartTime:J

    .line 153
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Landroid/emcom/MPStatInfo;->pkg:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setPolicyType(I)Landroid/emcom/MPStatInfo;
    .locals 1
    .param p1, "policyType"    # I

    .line 80
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/emcom/MPStatInfo;->policyType:S

    .line 81
    return-object p0
.end method

.method public setSuccFlg(I)Landroid/emcom/MPStatInfo;
    .locals 1
    .param p1, "succFlg"    # I

    .line 88
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/MPStatInfo;->succFlg:B

    .line 89
    return-object p0
.end method

.method public setSwB2BCnt(I)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "sWB2BCnt"    # I

    .line 128
    iput p1, p0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 129
    return-object p0
.end method

.method public setSwB2GCnt(I)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "sWB2GCnt"    # I

    .line 120
    iput p1, p0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 121
    return-object p0
.end method

.method public setSwCnt(I)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "sWCnt"    # I

    .line 112
    iput p1, p0, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 113
    return-object p0
.end method

.method public setSwG2BCnt(I)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "sWG2BCnt"    # I

    .line 144
    iput p1, p0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 145
    return-object p0
.end method

.method public setSwG2GCnt(I)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "sWG2GCnt"    # I

    .line 136
    iput p1, p0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 137
    return-object p0
.end method

.method public setUid(I)Landroid/emcom/MPStatInfo;
    .locals 0
    .param p1, "uid"    # I

    .line 64
    iput p1, p0, Landroid/emcom/MPStatInfo;->uid:I

    .line 65
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/MPStatInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "pkg="

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/emcom/MPStatInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "flowType="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/MPStatInfo;->flowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "policyType="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Landroid/emcom/MPStatInfo;->policyType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "linkMode="

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Landroid/emcom/MPStatInfo;->linkMode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "initPrbRoute="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v1, p0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "currSelectedPath="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/MPStatInfo;->currSelectedPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sWCnt="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/MPStatInfo;->sWCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sWB2GCnt="

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sWB2BCnt="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sWG2GCnt="

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sWG2BCnt="

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateStatsInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonStr"    # Ljava/lang/String;

    .line 174
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, "tmpUid":I
    if-eq v1, v2, :cond_1

    iget v3, p0, Landroid/emcom/MPStatInfo;->uid:I

    if-eq v3, v1, :cond_0

    iget v3, p0, Landroid/emcom/MPStatInfo;->uid:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Landroid/emcom/MPStatInfo;->uid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/emcom/MPStatInfo;->pkg:Ljava/lang/String;

    .line 182
    const-string v3, "initPrbRoute"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 183
    const-string v3, "currSelectedPath"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/emcom/MPStatInfo;->currSelectedPath:I

    .line 184
    const-string v2, "sWCnt"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 185
    const-string v2, "sWB2GCnt"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 186
    const-string v2, "sWB2BCnt"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 187
    const-string v2, "sWG2GCnt"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 188
    const-string v2, "sWG2BCnt"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 191
    const-string v2, "MPStatInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatsInfo jsonStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/emcom/MPStatInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "tmpUid":I
    goto :goto_1

    .line 178
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "tmpUid":I
    :cond_1
    :goto_0
    const-string v2, "MPStatInfo"

    const-string v3, "not the same app for updateStatsInfo."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-void

    .line 192
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "tmpUid":I
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "MPStatInfo"

    const-string v2, "parse MPStatsInfo Error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
