.class public Landroid/emcom/ShareData;
.super Ljava/lang/Object;
.source "ShareData.java"


# static fields
.field public static final DATA_TYPE_REALTIME:I = 0x1

.field public static final DATA_TYPE_REAL_PLUS_STAT:I = 0x3

.field public static final DATA_TYPE_STATISTICS:I = 0x2

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_SMARTDATA_GAME:I = 0x1000000

.field public static final LISTEN_SMARTDATA_VIDEO:I = 0x2000000

.field private static final TAG:Ljava/lang/String; = "ShareData"


# instance fields
.field public appType:Ljava/lang/String;

.field public currAppStatus:I

.field public currNetworkType:I

.field public currRadio1Throughput:I

.field public currRadio2Throughput:I

.field public currRadioNetworkType:I

.field public currRadioSl:I

.field public currRadioSnr:I

.field public currRadioSq:I

.field public currRadioSs:I

.field public currRtt:I

.field public currWifiThroughput:I

.field public currWlanSl:I

.field public currWlanSs:I

.field public dataType:I

.field public netKpiRtt200:I

.field public pkgName:Ljava/lang/String;

.field public radio1Traffic:I

.field public radio2Traffic:I

.field public radioL1Dur:I

.field public radioL2Dur:I

.field public radioL3Dur:I

.field public radioL4Dur:I

.field public radioL5Dur:I

.field public radioSnrAvg:I

.field public radioSqAvg:I

.field public radioSsAvg:I

.field public rttAvg:I

.field public rttL1Dur:I

.field public rttL2Dur:I

.field public rttL3Dur:I

.field public rttL4Dur:I

.field public rttL5Dur:I

.field public rttL6Dur:I

.field public rttL7Dur:I

.field public rttL8Dur:I

.field public sessionDur:I

.field public wifiTraffic:I

.field public wlanL1Dur:I

.field public wlanL2Dur:I

.field public wlanL3Dur:I

.field public wlanL4Dur:I

.field public wlanSsAvg:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/emcom/ShareData;->pkgName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroid/emcom/ShareData;->appType:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/ShareData;->dataType:I

    .line 26
    iput v0, p0, Landroid/emcom/ShareData;->currAppStatus:I

    .line 29
    iput v0, p0, Landroid/emcom/ShareData;->currRtt:I

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Landroid/emcom/ShareData;->currNetworkType:I

    .line 34
    iput v1, p0, Landroid/emcom/ShareData;->currRadioNetworkType:I

    .line 36
    iput v0, p0, Landroid/emcom/ShareData;->currWlanSs:I

    .line 37
    iput v0, p0, Landroid/emcom/ShareData;->currWlanSl:I

    .line 39
    iput v0, p0, Landroid/emcom/ShareData;->currRadioSs:I

    .line 40
    iput v0, p0, Landroid/emcom/ShareData;->currRadioSq:I

    .line 41
    iput v0, p0, Landroid/emcom/ShareData;->currRadioSnr:I

    .line 42
    iput v0, p0, Landroid/emcom/ShareData;->currRadioSl:I

    .line 45
    iput v1, p0, Landroid/emcom/ShareData;->currWifiThroughput:I

    .line 46
    iput v1, p0, Landroid/emcom/ShareData;->currRadio1Throughput:I

    .line 47
    iput v1, p0, Landroid/emcom/ShareData;->currRadio2Throughput:I

    .line 51
    iput v1, p0, Landroid/emcom/ShareData;->sessionDur:I

    .line 54
    iput v0, p0, Landroid/emcom/ShareData;->rttAvg:I

    .line 55
    iput v0, p0, Landroid/emcom/ShareData;->netKpiRtt200:I

    .line 56
    iput v1, p0, Landroid/emcom/ShareData;->rttL1Dur:I

    .line 57
    iput v1, p0, Landroid/emcom/ShareData;->rttL2Dur:I

    .line 58
    iput v1, p0, Landroid/emcom/ShareData;->rttL3Dur:I

    .line 59
    iput v1, p0, Landroid/emcom/ShareData;->rttL4Dur:I

    .line 60
    iput v1, p0, Landroid/emcom/ShareData;->rttL5Dur:I

    .line 61
    iput v1, p0, Landroid/emcom/ShareData;->rttL6Dur:I

    .line 62
    iput v1, p0, Landroid/emcom/ShareData;->rttL7Dur:I

    .line 63
    iput v1, p0, Landroid/emcom/ShareData;->rttL8Dur:I

    .line 66
    iput v0, p0, Landroid/emcom/ShareData;->wlanSsAvg:I

    .line 67
    iput v1, p0, Landroid/emcom/ShareData;->wlanL1Dur:I

    .line 68
    iput v1, p0, Landroid/emcom/ShareData;->wlanL2Dur:I

    .line 69
    iput v1, p0, Landroid/emcom/ShareData;->wlanL3Dur:I

    .line 70
    iput v1, p0, Landroid/emcom/ShareData;->wlanL4Dur:I

    .line 72
    iput v0, p0, Landroid/emcom/ShareData;->radioSsAvg:I

    .line 73
    iput v0, p0, Landroid/emcom/ShareData;->radioSqAvg:I

    .line 74
    iput v0, p0, Landroid/emcom/ShareData;->radioSnrAvg:I

    .line 75
    iput v1, p0, Landroid/emcom/ShareData;->radioL1Dur:I

    .line 76
    iput v1, p0, Landroid/emcom/ShareData;->radioL2Dur:I

    .line 77
    iput v1, p0, Landroid/emcom/ShareData;->radioL3Dur:I

    .line 78
    iput v1, p0, Landroid/emcom/ShareData;->radioL4Dur:I

    .line 79
    iput v1, p0, Landroid/emcom/ShareData;->radioL5Dur:I

    .line 82
    iput v1, p0, Landroid/emcom/ShareData;->wifiTraffic:I

    .line 83
    iput v1, p0, Landroid/emcom/ShareData;->radio1Traffic:I

    .line 84
    iput v1, p0, Landroid/emcom/ShareData;->radio2Traffic:I

    .line 87
    return-void
.end method


# virtual methods
.method public cleanShareData()V
    .locals 2

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/emcom/ShareData;->pkgName:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Landroid/emcom/ShareData;->appType:Ljava/lang/String;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/ShareData;->dataType:I

    .line 94
    iput v0, p0, Landroid/emcom/ShareData;->currAppStatus:I

    .line 96
    iput v0, p0, Landroid/emcom/ShareData;->currRtt:I

    .line 98
    iput v0, p0, Landroid/emcom/ShareData;->rttAvg:I

    .line 99
    iput v0, p0, Landroid/emcom/ShareData;->netKpiRtt200:I

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Landroid/emcom/ShareData;->rttL1Dur:I

    .line 101
    iput v1, p0, Landroid/emcom/ShareData;->rttL2Dur:I

    .line 102
    iput v1, p0, Landroid/emcom/ShareData;->rttL3Dur:I

    .line 103
    iput v1, p0, Landroid/emcom/ShareData;->rttL4Dur:I

    .line 104
    iput v1, p0, Landroid/emcom/ShareData;->rttL5Dur:I

    .line 105
    iput v1, p0, Landroid/emcom/ShareData;->rttL6Dur:I

    .line 106
    iput v1, p0, Landroid/emcom/ShareData;->rttL7Dur:I

    .line 107
    iput v1, p0, Landroid/emcom/ShareData;->rttL8Dur:I

    .line 109
    iput v1, p0, Landroid/emcom/ShareData;->currNetworkType:I

    .line 110
    iput v1, p0, Landroid/emcom/ShareData;->currRadioNetworkType:I

    .line 111
    iput v0, p0, Landroid/emcom/ShareData;->currWlanSs:I

    .line 112
    iput v0, p0, Landroid/emcom/ShareData;->currWlanSl:I

    .line 114
    iput v0, p0, Landroid/emcom/ShareData;->currRadioSs:I

    .line 115
    iput v0, p0, Landroid/emcom/ShareData;->currRadioSq:I

    .line 116
    iput v0, p0, Landroid/emcom/ShareData;->currRadioSnr:I

    .line 117
    iput v0, p0, Landroid/emcom/ShareData;->currRadioSl:I

    .line 119
    iput v1, p0, Landroid/emcom/ShareData;->currWifiThroughput:I

    .line 120
    iput v1, p0, Landroid/emcom/ShareData;->currRadio1Throughput:I

    .line 121
    iput v1, p0, Landroid/emcom/ShareData;->currRadio2Throughput:I

    .line 123
    iput v1, p0, Landroid/emcom/ShareData;->sessionDur:I

    .line 125
    iput v0, p0, Landroid/emcom/ShareData;->wlanSsAvg:I

    .line 126
    iput v1, p0, Landroid/emcom/ShareData;->wlanL1Dur:I

    .line 127
    iput v1, p0, Landroid/emcom/ShareData;->wlanL2Dur:I

    .line 128
    iput v1, p0, Landroid/emcom/ShareData;->wlanL3Dur:I

    .line 129
    iput v1, p0, Landroid/emcom/ShareData;->wlanL4Dur:I

    .line 131
    iput v0, p0, Landroid/emcom/ShareData;->radioSsAvg:I

    .line 132
    iput v0, p0, Landroid/emcom/ShareData;->radioSqAvg:I

    .line 133
    iput v0, p0, Landroid/emcom/ShareData;->radioSnrAvg:I

    .line 134
    iput v1, p0, Landroid/emcom/ShareData;->radioL1Dur:I

    .line 135
    iput v1, p0, Landroid/emcom/ShareData;->radioL2Dur:I

    .line 136
    iput v1, p0, Landroid/emcom/ShareData;->radioL3Dur:I

    .line 137
    iput v1, p0, Landroid/emcom/ShareData;->radioL4Dur:I

    .line 138
    iput v1, p0, Landroid/emcom/ShareData;->radioL5Dur:I

    .line 140
    iput v1, p0, Landroid/emcom/ShareData;->wifiTraffic:I

    .line 141
    iput v1, p0, Landroid/emcom/ShareData;->radio1Traffic:I

    .line 142
    iput v1, p0, Landroid/emcom/ShareData;->radio2Traffic:I

    .line 143
    return-void
.end method
