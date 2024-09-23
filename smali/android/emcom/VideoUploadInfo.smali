.class public Landroid/emcom/VideoUploadInfo;
.super Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
.source "VideoUploadInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoUploadInfo"


# instance fields
.field public appName:Ljava/lang/String;

.field public cellId:Ljava/lang/String;

.field public fullDelay:I

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

.field public result:Z

.field public srDelay:I

.field public streamDur:I

.field public tcpPathStatInfo:Landroid/emcom/MPStatInfo;

.field public tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

.field public techCode:Ljava/lang/String;

.field public times:S

.field public totalLen:I

.field public trafficInfo:Landroid/emcom/TrafficInfo;

.field public type:S

.field public uVMos:B

.field public videoDataRate:I

.field public videoEndTime:I

.field public videoStartDate:I

.field public videoStartTime:I

.field public videoTerminateFlag:B

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

    .line 59
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    .line 55
    new-instance v0, Landroid/emcom/PolicyStatInfo;

    invoke-direct {v0}, Landroid/emcom/PolicyStatInfo;-><init>()V

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    .line 56
    new-instance v0, Landroid/emcom/MPStatInfo;

    invoke-direct {v0}, Landroid/emcom/MPStatInfo;-><init>()V

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    .line 57
    new-instance v0, Landroid/emcom/TrafficInfo;

    invoke-direct {v0}, Landroid/emcom/TrafficInfo;-><init>()V

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    .line 60
    invoke-direct {p0}, Landroid/emcom/VideoUploadInfo;->init()V

    .line 61
    return-void
.end method

.method private init()V
    .locals 4

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->appName:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->type:S

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Landroid/emcom/VideoUploadInfo;->srDelay:I

    .line 67
    iput v1, p0, Landroid/emcom/VideoUploadInfo;->fullDelay:I

    .line 68
    iput-short v1, p0, Landroid/emcom/VideoUploadInfo;->times:S

    .line 69
    iput v1, p0, Landroid/emcom/VideoUploadInfo;->totalLen:I

    .line 70
    iput v1, p0, Landroid/emcom/VideoUploadInfo;->streamDur:I

    .line 71
    iput v1, p0, Landroid/emcom/VideoUploadInfo;->videoDataRate:I

    .line 72
    const/4 v2, 0x1

    iput-byte v2, p0, Landroid/emcom/VideoUploadInfo;->videoTerminateFlag:B

    .line 73
    iput-byte v0, p0, Landroid/emcom/VideoUploadInfo;->uVMos:B

    .line 74
    const-string v3, ""

    iput-object v3, p0, Landroid/emcom/VideoUploadInfo;->hostName:Ljava/lang/String;

    .line 75
    iput v0, p0, Landroid/emcom/VideoUploadInfo;->videoStartDate:I

    .line 76
    iput v0, p0, Landroid/emcom/VideoUploadInfo;->videoStartTime:I

    .line 77
    iput v0, p0, Landroid/emcom/VideoUploadInfo;->videoEndTime:I

    .line 78
    iput-boolean v2, p0, Landroid/emcom/VideoUploadInfo;->result:Z

    .line 80
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->mcc:S

    .line 81
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->mnc:S

    .line 82
    iput-byte v0, p0, Landroid/emcom/VideoUploadInfo;->networkType:B

    .line 83
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/VideoUploadInfo;->cellId:Ljava/lang/String;

    .line 84
    iput-byte v1, p0, Landroid/emcom/VideoUploadInfo;->radioSs:B

    .line 85
    iput-byte v1, p0, Landroid/emcom/VideoUploadInfo;->radioSq:B

    .line 86
    iput v1, p0, Landroid/emcom/VideoUploadInfo;->radioSnr:I

    .line 87
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL1Dur:S

    .line 88
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL2Dur:S

    .line 89
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL3Dur:S

    .line 90
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL4Dur:S

    .line 91
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL5Dur:S

    .line 92
    iput-byte v1, p0, Landroid/emcom/VideoUploadInfo;->wlanSs:B

    .line 93
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/VideoUploadInfo;->wlanBssid:Ljava/lang/String;

    .line 94
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/VideoUploadInfo;->wlanSsid:Ljava/lang/String;

    .line 95
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->wlanL1Dur:S

    .line 96
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->wlanL2Dur:S

    .line 97
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->wlanL3Dur:S

    .line 98
    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->wlanL4Dur:S

    .line 100
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/VideoUploadInfo;->techCode:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    .line 108
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 109
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput-short v1, v2, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 110
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput-short v1, v2, Landroid/emcom/PolicyStatInfo;->linkMode:S

    .line 111
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 112
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 113
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 114
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 115
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 116
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 117
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iput v0, v2, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    .line 119
    iget-object v2, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput-byte v1, v2, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 120
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 121
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 122
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 123
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 124
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 126
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iput v0, v1, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    .line 127
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iput v0, v1, Landroid/emcom/TrafficInfo;->radioTraffic:I

    .line 129
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iput v0, v1, Landroid/emcom/MPStatInfo;->mpDur:I

    .line 130
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iput v0, v1, Landroid/emcom/TrafficInfo;->mpWifiTraffic:I

    .line 131
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iput v0, v1, Landroid/emcom/TrafficInfo;->mpRadioTraffic:I

    .line 132
    return-void

    .line 103
    :cond_1
    :goto_0
    const-string v0, "VideoUploadInfo"

    const-string v1, "copyFrom: Video this.tcpPolicyStatInfo, this.tcpPathStatInfo or this.trafficInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method


# virtual methods
.method public addToInfos(Landroid/emcom/SmartcareInfos;)V
    .locals 0
    .param p1, "cis"    # Landroid/emcom/SmartcareInfos;

    .line 212
    invoke-super {p0, p1}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 213
    iput-object p0, p1, Landroid/emcom/SmartcareInfos;->videoUploadInfo:Landroid/emcom/VideoUploadInfo;

    .line 214
    return-void
.end method

.method public final copyFrom(Landroid/emcom/VideoUploadInfo;)V
    .locals 2
    .param p1, "o"    # Landroid/emcom/VideoUploadInfo;

    .line 135
    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->appName:Ljava/lang/String;

    .line 136
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->type:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->type:S

    .line 137
    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->techCode:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->techCode:Ljava/lang/String;

    .line 139
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->srDelay:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->srDelay:I

    .line 140
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->fullDelay:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->fullDelay:I

    .line 141
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->times:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->times:S

    .line 142
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->totalLen:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->totalLen:I

    .line 143
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->streamDur:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->streamDur:I

    .line 144
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->videoDataRate:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->videoDataRate:I

    .line 145
    iget-byte v0, p1, Landroid/emcom/VideoUploadInfo;->videoTerminateFlag:B

    iput-byte v0, p0, Landroid/emcom/VideoUploadInfo;->videoTerminateFlag:B

    .line 146
    iget-byte v0, p1, Landroid/emcom/VideoUploadInfo;->uVMos:B

    iput-byte v0, p0, Landroid/emcom/VideoUploadInfo;->uVMos:B

    .line 147
    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->hostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->hostName:Ljava/lang/String;

    .line 148
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->videoStartDate:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->videoStartDate:I

    .line 149
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->videoStartTime:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->videoStartTime:I

    .line 150
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->videoEndTime:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->videoEndTime:I

    .line 151
    iget-boolean v0, p1, Landroid/emcom/VideoUploadInfo;->result:Z

    iput-boolean v0, p0, Landroid/emcom/VideoUploadInfo;->result:Z

    .line 153
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->mcc:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->mcc:S

    .line 154
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->mnc:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->mnc:S

    .line 155
    iget-byte v0, p1, Landroid/emcom/VideoUploadInfo;->networkType:B

    iput-byte v0, p0, Landroid/emcom/VideoUploadInfo;->networkType:B

    .line 156
    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->cellId:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->cellId:Ljava/lang/String;

    .line 157
    iget-byte v0, p1, Landroid/emcom/VideoUploadInfo;->radioSs:B

    iput-byte v0, p0, Landroid/emcom/VideoUploadInfo;->radioSs:B

    .line 158
    iget-byte v0, p1, Landroid/emcom/VideoUploadInfo;->radioSq:B

    iput-byte v0, p0, Landroid/emcom/VideoUploadInfo;->radioSq:B

    .line 159
    iget v0, p1, Landroid/emcom/VideoUploadInfo;->radioSnr:I

    iput v0, p0, Landroid/emcom/VideoUploadInfo;->radioSnr:I

    .line 160
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->radioL1Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL1Dur:S

    .line 161
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->radioL2Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL2Dur:S

    .line 162
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->radioL3Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL3Dur:S

    .line 163
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->radioL4Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL4Dur:S

    .line 164
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->radioL5Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->radioL5Dur:S

    .line 165
    iget-byte v0, p1, Landroid/emcom/VideoUploadInfo;->wlanSs:B

    iput-byte v0, p0, Landroid/emcom/VideoUploadInfo;->wlanSs:B

    .line 166
    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->wlanBssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->wlanBssid:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->wlanSsid:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/VideoUploadInfo;->wlanSsid:Ljava/lang/String;

    .line 168
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->wlanL1Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->wlanL1Dur:S

    .line 169
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->wlanL2Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->wlanL2Dur:S

    .line 170
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->wlanL3Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->wlanL3Dur:S

    .line 171
    iget-short v0, p1, Landroid/emcom/VideoUploadInfo;->wlanL4Dur:S

    iput-short v0, p0, Landroid/emcom/VideoUploadInfo;->wlanL4Dur:S

    .line 173
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 177
    :cond_0
    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyStartCond:I

    .line 183
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->flowType:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->flowType:I

    .line 184
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->policyType:S

    iput-short v1, v0, Landroid/emcom/PolicyStatInfo;->policyType:S

    .line 185
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->linkMode:S

    iput-short v1, v0, Landroid/emcom/PolicyStatInfo;->linkMode:S

    .line 186
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->succFlg:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->succFlg:I

    .line 188
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnSuccCnt:I

    .line 189
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnCnt:I

    .line 190
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policyEnRspLat:I

    .line 191
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwSuccCnt:I

    .line 192
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwCnt:I

    .line 193
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    iput v1, v0, Landroid/emcom/PolicyStatInfo;->policySwRspLat:I

    .line 195
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-byte v1, v1, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    iput-byte v1, v0, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    .line 196
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWCnt:I

    .line 197
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWB2GCnt:I

    .line 198
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWB2BCnt:I

    .line 199
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWG2GCnt:I

    .line 200
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->sWG2BCnt:I

    .line 202
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    iput v1, v0, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    .line 203
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->radioTraffic:I

    iput v1, v0, Landroid/emcom/TrafficInfo;->radioTraffic:I

    .line 205
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->mpDur:I

    iput v1, v0, Landroid/emcom/MPStatInfo;->mpDur:I

    .line 206
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->mpWifiTraffic:I

    iput v1, v0, Landroid/emcom/TrafficInfo;->mpWifiTraffic:I

    .line 207
    iget-object v0, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget-object v1, p1, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->mpRadioTraffic:I

    iput v1, v0, Landroid/emcom/TrafficInfo;->mpRadioTraffic:I

    .line 208
    return-void

    .line 178
    :cond_2
    :goto_0
    const-string v0, "VideoUploadInfo"

    const-string v1, "copyFrom: Video o.tcpPolicyStatInfo, o.tcpPathStatInfo or o.trafficInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 174
    :cond_3
    :goto_1
    const-string v0, "VideoUploadInfo"

    const-string v1, "copyFrom: Video this.tcpPolicyStatInfo, this.tcpPathStatInfo or this.trafficInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public recycle()V
    .locals 0

    .line 282
    invoke-super {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->recycle()V

    .line 283
    invoke-direct {p0}, Landroid/emcom/VideoUploadInfo;->init()V

    .line 284
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ",app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ",srDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->srDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ",fullDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->fullDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ",times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-short v1, p0, Landroid/emcom/VideoUploadInfo;->times:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ",totalLen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->totalLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, ",streamDur: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->streamDur:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, ",videoDataRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->videoDataRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ",videoTerminateFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-byte v1, p0, Landroid/emcom/VideoUploadInfo;->videoTerminateFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ",uVMos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-byte v1, p0, Landroid/emcom/VideoUploadInfo;->uVMos:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ",videoStartDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->videoStartDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ",videoStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->videoStartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ",videoEndTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->videoEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ",result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-boolean v1, p0, Landroid/emcom/VideoUploadInfo;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ",networkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-byte v1, p0, Landroid/emcom/VideoUploadInfo;->networkType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ",radioSs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-byte v1, p0, Landroid/emcom/VideoUploadInfo;->radioSs:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ",radioSnr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Landroid/emcom/VideoUploadInfo;->radioSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, ",wlanSs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-byte v1, p0, Landroid/emcom/VideoUploadInfo;->wlanSs:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, ",flowType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget v1, v1, Landroid/emcom/PolicyStatInfo;->flowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, ",policyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->policyType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, ",linkMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPolicyStatInfo:Landroid/emcom/PolicyStatInfo;

    iget-short v1, v1, Landroid/emcom/PolicyStatInfo;->linkMode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, ",initPrbRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget-byte v1, v1, Landroid/emcom/MPStatInfo;->initPrbRoute:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ",wifiTraffic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, ",radioTraffic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->radioTraffic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ",mpDur:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->tcpPathStatInfo:Landroid/emcom/MPStatInfo;

    iget v1, v1, Landroid/emcom/MPStatInfo;->mpDur:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ",mpWifiTraffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->mpWifiTraffic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ",mpRadioTraffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Landroid/emcom/VideoUploadInfo;->trafficInfo:Landroid/emcom/TrafficInfo;

    iget v1, v1, Landroid/emcom/TrafficInfo;->mpRadioTraffic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-short v1, p0, Landroid/emcom/VideoUploadInfo;->type:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
