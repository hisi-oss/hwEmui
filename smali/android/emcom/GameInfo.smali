.class public Landroid/emcom/GameInfo;
.super Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
.source "GameInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameInfo"


# instance fields
.field public appName:Ljava/lang/String;

.field public battleDur:I

.field public battleRttAvg:S

.field public battleRttL1Dur:S

.field public battleRttL2Dur:S

.field public battleRttL3Dur:S

.field public battleRttL4Dur:S

.field public battleRttL5Dur:S

.field public battleRttL6Dur:S

.field public battleRttL7Dur:S

.field public battleRttL8Dur:S

.field public cellId:Ljava/lang/String;

.field public connDropFlg:B

.field public gameEndTime:I

.field public gameLoadLat:I

.field public gameLoadThrput:I

.field public gameStartDate:I

.field public gameStartTime:I

.field public hostName:Ljava/lang/String;

.field public mcc:S

.field public mnc:S

.field public networkType:B

.field public radioL1Dur:S

.field public radioL2Dur:S

.field public radioL3Dur:S

.field public radioL4Dur:S

.field public radioL5Dur:S

.field public radioSnr:I

.field public radioSq:B

.field public radioSs:B

.field public selfRoleLoadLat:I

.field public selfRoleLoadSuccFlg:B

.field public tcpPathStatInfo:Landroid/emcom/MPStatInfo;

.field public tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

.field public techCode:Ljava/lang/String;

.field public trafficInfo:Landroid/emcom/TrafficInfo;

.field public type:B

.field public udpPathStatInfo:Landroid/emcom/MPStatInfo;

.field public udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

.field public wlanBssid:Ljava/lang/String;

.field public wlanL1Dur:S

.field public wlanL2Dur:S

.field public wlanL3Dur:S

.field public wlanL4Dur:S

.field public wlanSs:B

.field public wlanSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    .line 60
    new-instance v0, Landroid/emcom/PolicyStatInfo;

    invoke-direct {v0}, Landroid/emcom/PolicyStatInfo;-><init>()V

    iput-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    .line 61
    new-instance v0, Landroid/emcom/PolicyStatInfo;

    invoke-direct {v0}, Landroid/emcom/PolicyStatInfo;-><init>()V

    iput-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    .line 62
    new-instance v0, Landroid/emcom/MPStatInfo;

    invoke-direct {v0}, Landroid/emcom/MPStatInfo;-><init>()V

    iput-object v0, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    .line 63
    new-instance v0, Landroid/emcom/MPStatInfo;

    invoke-direct {v0}, Landroid/emcom/MPStatInfo;-><init>()V

    iput-object v0, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    .line 64
    new-instance v0, Landroid/emcom/TrafficInfo;

    invoke-direct {v0}, Landroid/emcom/TrafficInfo;-><init>()V

    iput-object v0, p0, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    .line 68
    invoke-direct {p0}, Landroid/emcom/GameInfo;->init()V

    .line 69
    return-void
.end method

.method private init()V
    .locals 3

    .line 181
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/GameInfo;->hostName:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/GameInfo;->gameStartDate:I

    .line 183
    iput v0, p0, Landroid/emcom/GameInfo;->gameStartTime:I

    .line 184
    iput v0, p0, Landroid/emcom/GameInfo;->gameEndTime:I

    .line 186
    iput-short v0, p0, Landroid/emcom/GameInfo;->mcc:S

    .line 187
    iput-short v0, p0, Landroid/emcom/GameInfo;->mnc:S

    .line 188
    iput-byte v0, p0, Landroid/emcom/GameInfo;->networkType:B

    .line 189
    const-string v1, ""

    iput-object v1, p0, Landroid/emcom/GameInfo;->cellId:Ljava/lang/String;

    .line 190
    const/4 v1, -0x1

    iput-byte v1, p0, Landroid/emcom/GameInfo;->radioSs:B

    .line 191
    iput-byte v1, p0, Landroid/emcom/GameInfo;->radioSq:B

    .line 192
    iput v1, p0, Landroid/emcom/GameInfo;->radioSnr:I

    .line 193
    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL1Dur:S

    .line 194
    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL2Dur:S

    .line 195
    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL3Dur:S

    .line 196
    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL4Dur:S

    .line 197
    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL5Dur:S

    .line 198
    iput-byte v1, p0, Landroid/emcom/GameInfo;->wlanSs:B

    .line 199
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/GameInfo;->wlanBssid:Ljava/lang/String;

    .line 200
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/GameInfo;->wlanSsid:Ljava/lang/String;

    .line 201
    iput-short v0, p0, Landroid/emcom/GameInfo;->wlanL1Dur:S

    .line 202
    iput-short v0, p0, Landroid/emcom/GameInfo;->wlanL2Dur:S

    .line 203
    iput-short v0, p0, Landroid/emcom/GameInfo;->wlanL3Dur:S

    .line 204
    iput-short v0, p0, Landroid/emcom/GameInfo;->wlanL4Dur:S

    .line 206
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/GameInfo;->appName:Ljava/lang/String;

    .line 207
    iput-byte v0, p0, Landroid/emcom/GameInfo;->type:B

    .line 208
    iput v0, p0, Landroid/emcom/GameInfo;->gameLoadLat:I

    .line 209
    iput v0, p0, Landroid/emcom/GameInfo;->gameLoadThrput:I

    .line 210
    iput-byte v0, p0, Landroid/emcom/GameInfo;->connDropFlg:B

    .line 211
    iput v0, p0, Landroid/emcom/GameInfo;->selfRoleLoadLat:I

    .line 212
    iput-byte v1, p0, Landroid/emcom/GameInfo;->selfRoleLoadSuccFlg:B

    .line 213
    iput v0, p0, Landroid/emcom/GameInfo;->battleDur:I

    .line 214
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttAvg:S

    .line 215
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL1Dur:S

    .line 216
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL2Dur:S

    .line 217
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL3Dur:S

    .line 218
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL4Dur:S

    .line 219
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL5Dur:S

    .line 220
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL6Dur:S

    .line 221
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL7Dur:S

    .line 222
    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL8Dur:S

    .line 223
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/GameInfo;->techCode:Ljava/lang/String;

    .line 225
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 232
    :cond_0
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    .line 233
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 234
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput-short v1, v2, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 235
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput-short v1, v2, Landroid/emcom/PolicyStatInfo;->linkMode:S

    .line 236
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v1, v2, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 237
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 238
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 239
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 240
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 241
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 242
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    .line 244
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput-byte v0, v2, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 245
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v2, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 246
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v2, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 247
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v2, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 248
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v2, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 249
    iget-object v2, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v2, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 251
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    .line 252
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 253
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput-short v1, v2, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 254
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput-short v1, v2, Landroid/emcom/PolicyStatInfo;->linkMode:S

    .line 255
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 256
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 257
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 258
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 259
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 260
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 261
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    .line 263
    iget-object v2, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput-byte v1, v2, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 264
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 265
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 266
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 267
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 268
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 270
    iget-object v1, p0, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iput v0, v1, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    .line 271
    iget-object v1, p0, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iput v0, v1, Landroid/emcom/TrafficInfo;->radioTraffic:I

    .line 273
    return-void

    .line 228
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addToInfos(Landroid/emcom/SmartcareInfos;)V
    .locals 0
    .param p1, "cis"    # Landroid/emcom/SmartcareInfos;

    .line 73
    invoke-super {p0, p1}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 74
    iput-object p0, p1, Landroid/emcom/SmartcareInfos;->gameInfo:Landroid/emcom/GameInfo;

    .line 75
    return-void
.end method

.method public final copyFrom(Landroid/emcom/GameInfo;)V
    .locals 2
    .param p1, "o"    # Landroid/emcom/GameInfo;

    .line 79
    iget-object v0, p1, Landroid/emcom/GameInfo;->hostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/GameInfo;->hostName:Ljava/lang/String;

    .line 80
    iget v0, p1, Landroid/emcom/GameInfo;->gameStartDate:I

    iput v0, p0, Landroid/emcom/GameInfo;->gameStartDate:I

    .line 81
    iget v0, p1, Landroid/emcom/GameInfo;->gameStartTime:I

    iput v0, p0, Landroid/emcom/GameInfo;->gameStartTime:I

    .line 82
    iget v0, p1, Landroid/emcom/GameInfo;->gameEndTime:I

    iput v0, p0, Landroid/emcom/GameInfo;->gameEndTime:I

    .line 84
    iget-short v0, p1, Landroid/emcom/GameInfo;->mcc:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->mcc:S

    .line 85
    iget-short v0, p1, Landroid/emcom/GameInfo;->mnc:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->mnc:S

    .line 86
    iget-byte v0, p1, Landroid/emcom/GameInfo;->networkType:B

    iput-byte v0, p0, Landroid/emcom/GameInfo;->networkType:B

    .line 87
    iget-object v0, p1, Landroid/emcom/GameInfo;->cellId:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/GameInfo;->cellId:Ljava/lang/String;

    .line 88
    iget-byte v0, p1, Landroid/emcom/GameInfo;->radioSs:B

    iput-byte v0, p0, Landroid/emcom/GameInfo;->radioSs:B

    .line 89
    iget-byte v0, p1, Landroid/emcom/GameInfo;->radioSq:B

    iput-byte v0, p0, Landroid/emcom/GameInfo;->radioSq:B

    .line 90
    iget v0, p1, Landroid/emcom/GameInfo;->radioSnr:I

    iput v0, p0, Landroid/emcom/GameInfo;->radioSnr:I

    .line 91
    iget-short v0, p1, Landroid/emcom/GameInfo;->radioL1Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL1Dur:S

    .line 92
    iget-short v0, p1, Landroid/emcom/GameInfo;->radioL2Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL2Dur:S

    .line 93
    iget-short v0, p1, Landroid/emcom/GameInfo;->radioL3Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL3Dur:S

    .line 94
    iget-short v0, p1, Landroid/emcom/GameInfo;->radioL4Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL4Dur:S

    .line 95
    iget-short v0, p1, Landroid/emcom/GameInfo;->radioL5Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->radioL5Dur:S

    .line 96
    iget-byte v0, p1, Landroid/emcom/GameInfo;->wlanSs:B

    iput-byte v0, p0, Landroid/emcom/GameInfo;->wlanSs:B

    .line 97
    iget-object v0, p1, Landroid/emcom/GameInfo;->wlanBssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/GameInfo;->wlanBssid:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Landroid/emcom/GameInfo;->wlanSsid:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/GameInfo;->wlanSsid:Ljava/lang/String;

    .line 99
    iget-short v0, p1, Landroid/emcom/GameInfo;->wlanL1Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->wlanL1Dur:S

    .line 100
    iget-short v0, p1, Landroid/emcom/GameInfo;->wlanL2Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->wlanL2Dur:S

    .line 101
    iget-short v0, p1, Landroid/emcom/GameInfo;->wlanL3Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->wlanL3Dur:S

    .line 102
    iget-short v0, p1, Landroid/emcom/GameInfo;->wlanL4Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->wlanL4Dur:S

    .line 104
    iget-object v0, p1, Landroid/emcom/GameInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/GameInfo;->appName:Ljava/lang/String;

    .line 105
    iget-byte v0, p1, Landroid/emcom/GameInfo;->type:B

    iput-byte v0, p0, Landroid/emcom/GameInfo;->type:B

    .line 106
    iget v0, p1, Landroid/emcom/GameInfo;->gameLoadLat:I

    iput v0, p0, Landroid/emcom/GameInfo;->gameLoadLat:I

    .line 107
    iget v0, p1, Landroid/emcom/GameInfo;->gameLoadThrput:I

    iput v0, p0, Landroid/emcom/GameInfo;->gameLoadThrput:I

    .line 108
    iget-byte v0, p1, Landroid/emcom/GameInfo;->connDropFlg:B

    iput-byte v0, p0, Landroid/emcom/GameInfo;->connDropFlg:B

    .line 109
    iget v0, p1, Landroid/emcom/GameInfo;->selfRoleLoadLat:I

    iput v0, p0, Landroid/emcom/GameInfo;->selfRoleLoadLat:I

    .line 110
    iget-byte v0, p1, Landroid/emcom/GameInfo;->selfRoleLoadSuccFlg:B

    iput-byte v0, p0, Landroid/emcom/GameInfo;->selfRoleLoadSuccFlg:B

    .line 111
    iget v0, p1, Landroid/emcom/GameInfo;->battleDur:I

    iput v0, p0, Landroid/emcom/GameInfo;->battleDur:I

    .line 112
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttAvg:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttAvg:S

    .line 113
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttL1Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL1Dur:S

    .line 114
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttL2Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL2Dur:S

    .line 115
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttL3Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL3Dur:S

    .line 116
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttL4Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL4Dur:S

    .line 117
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttL5Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL5Dur:S

    .line 118
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttL6Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL6Dur:S

    .line 119
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttL7Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL7Dur:S

    .line 120
    iget-short v0, p1, Landroid/emcom/GameInfo;->battleRttL8Dur:S

    iput-short v0, p0, Landroid/emcom/GameInfo;->battleRttL8Dur:S

    .line 121
    iget-object v0, p1, Landroid/emcom/GameInfo;->techCode:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/GameInfo;->techCode:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 128
    :cond_0
    iget-object v0, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    .line 136
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->flowType:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 137
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->policyType:S

    iput-short v1, v0, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 138
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->linkMode:S

    iput-short v1, v0, Landroid/emcom/PolicyStatInfo;->linkMode:S

    .line 139
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->succFlg:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 141
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 142
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 143
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 144
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 145
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 146
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    .line 148
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-byte v1, v1, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    iput-byte v1, v0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 149
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 150
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 151
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 152
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 153
    iget-object v0, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 155
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    .line 156
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->flowType:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 157
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->policyType:S

    iput-short v1, v0, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 158
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->linkMode:S

    iput-short v1, v0, Landroid/emcom/PolicyStatInfo;->linkMode:S

    .line 159
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->succFlg:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 161
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 162
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 163
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 164
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 165
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 166
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    .line 168
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-byte v1, v1, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    iput-byte v1, v0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 169
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 170
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 171
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 172
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 173
    iget-object v0, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 175
    iget-object v0, p0, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    iput v1, v0, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    .line 176
    iget-object v0, p0, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget-object v1, p1, Landroid/emcom/GameInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->radioTraffic:I

    iput v1, v0, Landroid/emcom/TrafficInfo;->radioTraffic:I

    .line 178
    return-void

    .line 131
    :cond_2
    :goto_0
    return-void

    .line 126
    :cond_3
    :goto_1
    return-void
.end method

.method public recycle()V
    .locals 0

    .line 277
    invoke-super {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->recycle()V

    .line 278
    invoke-direct {p0}, Landroid/emcom/GameInfo;->init()V

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, ",StartDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget v1, p0, Landroid/emcom/GameInfo;->gameStartDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, ",StartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget v1, p0, Landroid/emcom/GameInfo;->gameStartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, ",EndTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget v1, p0, Landroid/emcom/GameInfo;->gameEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, ",app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Landroid/emcom/GameInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, ",type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-byte v1, p0, Landroid/emcom/GameInfo;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, ",gameLoadLat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget v1, p0, Landroid/emcom/GameInfo;->gameLoadLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, ",connDropFlg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-byte v1, p0, Landroid/emcom/GameInfo;->connDropFlg:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, ",selfRoleLoadLat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget v1, p0, Landroid/emcom/GameInfo;->selfRoleLoadLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ",battleDur: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget v1, p0, Landroid/emcom/GameInfo;->battleDur:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, ",battleRttAvg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-short v1, p0, Landroid/emcom/GameInfo;->battleRttAvg:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, ",networkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-byte v1, p0, Landroid/emcom/GameInfo;->networkType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, ",radioSs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-byte v1, p0, Landroid/emcom/GameInfo;->radioSs:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, ",radioSnr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget v1, p0, Landroid/emcom/GameInfo;->radioSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, ",wlanSs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-byte v1, p0, Landroid/emcom/GameInfo;->wlanSs:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ",techCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Landroid/emcom/GameInfo;->techCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, ",flowType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->flowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, ",policyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v1, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->policyType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, ",linkMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v1, p0, Landroid/emcom/GameInfo;->udpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->linkMode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ",initPrbRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v1, p0, Landroid/emcom/GameInfo;->udpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-byte v1, v1, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ",flowType2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->flowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ",policyType2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->policyType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ",linkMode2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->linkMode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ",initPrbRoute2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v1, p0, Landroid/emcom/GameInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-byte v1, v1, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
