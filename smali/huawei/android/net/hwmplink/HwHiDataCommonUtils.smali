.class public Lhuawei/android/net/hwmplink/HwHiDataCommonUtils;
.super Ljava/lang/Object;
.source "HwHiDataCommonUtils.java"


# static fields
.field public static final APP_WIFI_NO_SLEEP:I = 0x0

.field public static final APP_WIFI_SLEEP_UNKNOWN:I = -0x1

.field public static final BASE_TAG:Ljava/lang/String; = "HiData_"

.field private static final BroadcastKey:Ljava/lang/String; = "com.android.server.hidata.arbitration.HwArbitrationStateMachine"

.field private static final BroadcastNetworkKey:Ljava/lang/String; = "MPLinkSuccessNetWorkKey"

.field private static final BroadcastUIDKey:Ljava/lang/String; = "MPLinkSuccessUIDKey"

.field public static final CELL_NETWORK:I = 0x0

.field public static final HIDATA_DEBUG:Z

.field public static final NONE_NETWORK:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static final WHITE_LIST_TYPE_WIFI_SLEEP:I = 0x7

.field public static final WIFI_NETWORK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HiData_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lhuawei/android/net/hwmplink/HwHiDataCommonUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/net/hwmplink/HwHiDataCommonUtils;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "ro.config.mplink_log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/net/hwmplink/HwHiDataCommonUtils;->HIDATA_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentBssid(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 59
    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 61
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentRssi(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 69
    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 71
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    return v1

    .line 75
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/16 v0, -0x7f

    return v0
.end method

.method public static getCurrentSsid(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 49
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 51
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 55
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isWifi5GConnected(Landroid/net/wifi/WifiManager;)Z
    .locals 3
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 89
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 91
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 93
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    return v0
.end method

.method public static isWifiConnected(Landroid/net/wifi/WifiManager;)Z
    .locals 3
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 79
    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 81
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_0

    .line 82
    const/4 v1, 0x1

    return v1

    .line 85
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isWifiConnectedOrConnecting(Landroid/net/wifi/WifiManager;)Z
    .locals 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 98
    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 100
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    return v1

    .line 104
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isWpaOrWpa2(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 108
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 109
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    .line 110
    .local v1, "authType":I
    :goto_0
    if-eq v1, v2, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    return v0

    .line 112
    .end local v1    # "authType":I
    :cond_3
    return v0
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 43
    sget-boolean v0, Lhuawei/android/net/hwmplink/HwHiDataCommonUtils;->HIDATA_DEBUG:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method
