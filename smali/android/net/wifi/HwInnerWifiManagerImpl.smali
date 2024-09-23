.class public Landroid/net/wifi/HwInnerWifiManagerImpl;
.super Ljava/lang/Object;
.source "HwInnerWifiManagerImpl.java"

# interfaces
.implements Landroid/net/wifi/HwInnerWifiManager;


# static fields
.field private static final CODE_DISABLE_RX_FILTER:I = 0xbcd

.field private static final CODE_ENABLE_HILINK_HANDSHAKE:I = 0x7d1

.field private static final CODE_ENABLE_RX_FILTER:I = 0xbce

.field private static final CODE_EXTEND_WIFI_SCAN_PERIOD_FOR_P2P:I = 0x7d6

.field private static final CODE_GET_APLINKED_STA_LIST:I = 0x3ed

.field private static final CODE_GET_CONNECTION_RAW_PSK:I = 0x7d2

.field private static final CODE_GET_PPPOE_INFO_CONFIG:I = 0x3ec

.field private static final CODE_GET_RSDB_SUPPORTED_MODE:I = 0x7d8

.field private static final CODE_GET_SINGNAL_INFO:I = 0x3f3

.field private static final CODE_GET_SOFTAP_CHANNEL_LIST:I = 0x3f1

.field private static final CODE_GET_SUPPORT_LIST:I = 0xbd2

.field private static final CODE_GET_VOWIFI_DETECT_MODE:I = 0x3f5

.field private static final CODE_GET_VOWIFI_DETECT_PERIOD:I = 0x3f7

.field private static final CODE_GET_WPA_SUPP_CONFIG:I = 0x3e9

.field private static final CODE_IS_BG_LIMIT_ALLOWED:I = 0xbc0

.field private static final CODE_IS_SUPPORT_VOWIFI_DETECT:I = 0x3f8

.field private static final CODE_NOTIFY_UI_EVENT:I = 0xbd3

.field private static final CODE_REQUEST_FRESH_WHITE_LIST:I = 0x7d7

.field private static final CODE_REQUEST_WIFI_ENABLE:I = 0x7d4

.field private static final CODE_SET_SOFTAP_DISASSOCIATESTA:I = 0x3ef

.field private static final CODE_SET_SOFTAP_MACFILTER:I = 0x3ee

.field private static final CODE_SET_VOWIFI_DETECT_MODE:I = 0x3f4

.field private static final CODE_SET_VOWIFI_DETECT_PERIOD:I = 0x3f6

.field private static final CODE_SET_WIFI_ANTSET:I = 0xbbf

.field private static final CODE_SET_WIFI_AP_EVALUATE_ENABLED:I = 0x3f2

.field private static final CODE_SET_WIFI_TXPOWER:I = 0x7d5

.field private static final CODE_START_PPPOE_CONFIG:I = 0x3ea

.field private static final CODE_START_WIFI_KEEP_ALIVE:I = 0xbcf

.field private static final CODE_STOP_PPPOE_CONFIG:I = 0x3eb

.field private static final CODE_STOP_WIFI_KEEP_ALIVE:I = 0xbd0

.field private static final CODE_UPDATE_APP_EXPERIENCE_STATUS:I = 0xbbe

.field private static final CODE_UPDATE_APP_RUNNING_STATUS:I = 0xbbd

.field private static final CODE_UPDATE_LIMIT_SPEED_STATUS:I = 0xbd1

.field private static final CODE_UPDATE_WM_FREQ_LOC:I = 0xfa2

.field private static final CODE_USER_HANDOVER_WIFI:I = 0x3f0

.field private static final CODE_WIFI_QOE_EVALUATE:I = 0xbbb

.field private static final CODE_WIFI_QOE_START_MONITOR:I = 0xbb9

.field private static final CODE_WIFI_QOE_STOP_MONITOR:I = 0xbba

.field private static final CODE_WIFI_QOE_UPDATE_STATUS:I = 0xbbc

.field private static final DBG:Z = false

.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field public static final EAP_AKA:I = 0x5

.field public static final EAP_AKAPrim:I = 0x6

.field private static final EAP_KEY:Ljava/lang/String; = "eap"

.field public static final EAP_SIM:I = 0x4

.field private static final ERROR:I = -0x1

.field private static final PCSC_KEY:Ljava/lang/String; = "pcsc"

.field private static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HwInnerWifiManagerImpl"

.field private static mInstance:Landroid/net/wifi/HwInnerWifiManager;


# instance fields
.field private wifi_level_threshold:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/net/wifi/HwInnerWifiManagerImpl;

    invoke-direct {v0}, Landroid/net/wifi/HwInnerWifiManagerImpl;-><init>()V

    sput-object v0, Landroid/net/wifi/HwInnerWifiManagerImpl;->mInstance:Landroid/net/wifi/HwInnerWifiManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "ro.config.hw_wifi_signal_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    return-void
.end method

.method public static getDefault()Landroid/net/wifi/HwInnerWifiManager;
    .locals 1

    .line 87
    sget-object v0, Landroid/net/wifi/HwInnerWifiManagerImpl;->mInstance:Landroid/net/wifi/HwInnerWifiManager;

    return-object v0
.end method


# virtual methods
.method public calculateSignalLevelHW(I)I
    .locals 14
    .param p1, "rssi"    # I

    .line 202
    const/16 v0, -0x41

    .line 203
    .local v0, "rssi_Level_4":I
    const/16 v1, -0x4b

    .line 204
    .local v1, "rssi_Level_3":I
    const/16 v2, -0x52

    .line 205
    .local v2, "rssi_Level_2":I
    const/16 v3, -0x58

    .line 206
    .local v3, "rssi_Level_1":I
    const/4 v4, 0x0

    .line 207
    .local v4, "wifi_level_threshold_arr":[Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-eqz v5, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 211
    array-length v5, v4

    if-ne v5, v9, :cond_1

    .line 213
    :try_start_0
    aget-object v5, v4, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 214
    aget-object v5, v4, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 215
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 216
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_0

    .line 217
    :catch_0
    move-exception v5

    .line 218
    .local v5, "e":Ljava/lang/Exception;
    const-string v11, "HwInnerWifiManagerImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception occured,use the default level threshold! wifi_level_threshold = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/16 v3, -0x58

    .line 220
    const/16 v2, -0x52

    .line 221
    const/16 v1, -0x4b

    .line 222
    const/16 v0, -0x41

    .line 223
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 225
    :cond_1
    const-string v5, "HwInnerWifiManagerImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Customization of wifi level is illeagel! wifi_level_threshold ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_1
    if-gt v0, p1, :cond_2

    .line 229
    return v9

    .line 230
    :cond_2
    if-gt v1, p1, :cond_3

    add-int/lit8 v5, v0, -0x1

    if-lt v5, p1, :cond_3

    .line 231
    return v6

    .line 232
    :cond_3
    if-gt v2, p1, :cond_4

    add-int/lit8 v5, v1, -0x1

    if-lt v5, p1, :cond_4

    .line 233
    return v7

    .line 234
    :cond_4
    if-gt v3, p1, :cond_5

    add-int/lit8 v5, v2, -0x1

    if-lt v5, p1, :cond_5

    .line 235
    return v10

    .line 237
    :cond_5
    return v8
.end method

.method public calculateSignalLevelHW(II)I
    .locals 16
    .param p1, "freq"    # I
    .param p2, "rssi"    # I

    move-object/from16 v1, p0

    .line 144
    move/from16 v2, p2

    const/4 v0, 0x0

    .line 145
    .local v0, "wifi_level_threshold_arr":[Ljava/lang/String;
    const/16 v3, -0x41

    .line 146
    .local v3, "rssi_Level_4":I
    const/16 v4, -0x4b

    .line 147
    .local v4, "rssi_Level_3":I
    const/16 v5, -0x52

    .line 148
    .local v5, "rssi_Level_2":I
    const/16 v6, -0x58

    .line 149
    .local v6, "rssi_Level_1":I
    invoke-static/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    const/16 v3, -0x41

    .line 151
    const/16 v4, -0x48

    .line 152
    const/16 v5, -0x4f

    .line 153
    const/16 v6, -0x55

    .line 155
    :cond_0
    iget-object v7, v1, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x1

    if-eqz v7, :cond_1

    .line 176
    move-object v7, v0

    goto :goto_1

    .line 158
    :cond_1
    iget-object v7, v1, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 159
    .end local v0    # "wifi_level_threshold_arr":[Ljava/lang/String;
    .local v7, "wifi_level_threshold_arr":[Ljava/lang/String;
    array-length v0, v7

    if-ne v0, v11, :cond_2

    .line 161
    :try_start_0
    aget-object v0, v7, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 162
    aget-object v0, v7, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 163
    aget-object v0, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 164
    aget-object v0, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v13, "HwInnerWifiManagerImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception occured,use the default level threshold! wifi_level_threshold = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/16 v3, -0x41

    .line 168
    const/16 v4, -0x4b

    .line 169
    const/16 v5, -0x52

    .line 170
    const/16 v6, -0x58

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 173
    :cond_2
    const-string v0, "HwInnerWifiManagerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Customization of wifi level is illeagel! wifi_level_threshold ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroid/net/wifi/HwInnerWifiManagerImpl;->wifi_level_threshold:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_1
    if-gt v3, v2, :cond_3

    .line 177
    return v11

    .line 178
    :cond_3
    add-int/lit8 v0, v3, -0x1

    if-lt v0, v2, :cond_4

    if-gt v4, v2, :cond_4

    .line 179
    return v8

    .line 180
    :cond_4
    add-int/lit8 v0, v4, -0x1

    if-lt v0, v2, :cond_5

    if-gt v5, v2, :cond_5

    .line 181
    return v9

    .line 182
    :cond_5
    add-int/lit8 v0, v5, -0x1

    if-lt v0, v2, :cond_6

    if-gt v6, v2, :cond_6

    .line 183
    return v12

    .line 185
    :cond_6
    return v10
.end method

.method public disableWifiFilter(Landroid/os/IBinder;Landroid/content/Context;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "context"    # Landroid/content/Context;

    .line 1165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1167
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1168
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    move v4, v3

    .line 1170
    .local v4, "_result":Z
    if-eqz v2, :cond_1

    .line 1171
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1172
    if-eqz p1, :cond_0

    move-object v5, p1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1173
    const/16 v5, 0xbcd

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1175
    const/4 v5, 0x1

    new-array v5, v5, [Z

    .line 1176
    .local v5, "resultArray":[Z
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 1177
    aget-boolean v3, v5, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    .end local v4    # "_result":Z
    .end local v5    # "resultArray":[Z
    .local v3, "_result":Z
    move v4, v3

    goto :goto_2

    .end local v3    # "_result":Z
    .restart local v4    # "_result":Z
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1179
    :catch_0
    move-exception v3

    .line 1180
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "HwInnerWifiManagerImpl"

    const-string v6, "disableWifiFilter, localRemoteException e"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_2

    .line 1182
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1182
    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1184
    nop

    .line 1186
    return v4
.end method

.method public enableHiLinkHandshake(ZLjava/lang/String;)V
    .locals 5
    .param p1, "uiEnable"    # Z
    .param p2, "bssid"    # Ljava/lang/String;

    .line 759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 761
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 763
    .local v2, "b":Landroid/os/IBinder;
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    const/16 v3, 0x7d1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 768
    :catch_0
    move-exception v3

    .line 769
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 773
    nop

    .line 774
    return-void

    .line 771
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public enableWifiFilter(Landroid/os/IBinder;Landroid/content/Context;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "context"    # Landroid/content/Context;

    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1193
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1194
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    move v4, v3

    .line 1196
    .local v4, "_result":Z
    if-eqz v2, :cond_1

    .line 1197
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1198
    if-eqz p1, :cond_0

    move-object v5, p1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1199
    const/16 v5, 0xbce

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1201
    const/4 v5, 0x1

    new-array v5, v5, [Z

    .line 1202
    .local v5, "resultArray":[Z
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 1203
    aget-boolean v3, v5, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    .end local v4    # "_result":Z
    .end local v5    # "resultArray":[Z
    .local v3, "_result":Z
    move v4, v3

    goto :goto_2

    .end local v3    # "_result":Z
    .restart local v4    # "_result":Z
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1205
    :catch_0
    move-exception v3

    .line 1206
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "HwInnerWifiManagerImpl"

    const-string v6, "enableWifiFilter, localRemoteException e"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_2

    .line 1208
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1208
    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1210
    nop

    .line 1212
    return v4
.end method

.method public evaluateNetworkQuality(Landroid/net/wifi/HwQoE/IHwQoECallback;)Z
    .locals 8
    .param p1, "callback"    # Landroid/net/wifi/HwQoE/IHwQoECallback;

    .line 893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 894
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 895
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 896
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "evaluateNetworkQuality"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v3, 0x0

    move v4, v3

    .line 899
    .local v4, "_result":I
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 900
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/wifi/HwQoE/IHwQoECallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 901
    const/16 v5, 0xbbb

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_1

    .line 907
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 904
    :catch_0
    move-exception v5

    .line 905
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "evaluateNetworkQuality, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    nop

    .line 910
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v3, v5

    nop

    :cond_1
    return v3

    .line 907
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public extendWifiScanPeriodForP2p(Landroid/content/Context;ZI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bExtend"    # Z
    .param p3, "iTimes"    # I

    .line 1044
    const-string v0, "com.huawei.instantshare.permission.ACCESS_INSTANTSHARE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1045
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    .line 1046
    const-string v0, "HwInnerWifiManagerImpl"

    const-string v1, "No INSTANTSHARE permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void

    .line 1049
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1050
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1051
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1052
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extendWifiScanPeriodForP2p flag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    const/16 v3, 0x7d6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1062
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1059
    :catch_0
    move-exception v3

    .line 1060
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwInnerWifiManagerImpl"

    const-string v5, "extendWifiScanPeriodForP2p, localRemoteException e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1064
    nop

    .line 1065
    return-void

    .line 1062
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public fetchWifiSignalInfoForVoWiFi()[B
    .locals 6

    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 618
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 619
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "fetchWifiSignalInfoForVoWiFi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v3, 0x0

    .line 623
    .local v3, "_result":[B
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    const/16 v4, 0x3f3

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 627
    :catch_0
    move-exception v4

    .line 628
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    nop

    .line 633
    return-object v3

    .line 630
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getApLinkedStaList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 489
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 490
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "getApLinkedStaList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-eqz v2, :cond_0

    .line 493
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    const/16 v3, 0x3ed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    return-object v3

    .line 501
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 498
    :catch_0
    move-exception v3

    .line 499
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 501
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 501
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    nop

    .line 504
    const/4 v3, 0x0

    return-object v3
.end method

.method public getAppendSsidWithRandomUuid(Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "context"    # Landroid/content/Context;

    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hw_softap_ssid_extend"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "randomUUID":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 100
    const-string v1, "HwInnerWifiManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new SSID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "randomUUID":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelListFor5G()[I
    .locals 6

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 595
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 596
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 597
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    .line 599
    .local v3, "_result":[I
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 600
    const/16 v4, 0x3f1

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 602
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 603
    :catch_0
    move-exception v4

    .line 604
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    nop

    .line 609
    return-object v3

    .line 606
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getConnectionRawPsk()Ljava/lang/String;
    .locals 6

    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, "_result":Ljava/lang/String;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 781
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 782
    .local v2, "_reply":Landroid/os/Parcel;
    const-string v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 784
    .local v3, "b":Landroid/os/IBinder;
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 785
    const/16 v4, 0x7d2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 786
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 787
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    goto :goto_0

    .line 791
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 788
    :catch_0
    move-exception v4

    .line 789
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 793
    nop

    .line 794
    return-object v0

    .line 791
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getHwMeteredHint(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 461
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 463
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 464
    .local v1, "isPhoneAP":Z
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 465
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    .line 466
    return v4

    .line 469
    :cond_0
    if-nez v2, :cond_1

    return v4

    .line 470
    :cond_1
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SupplicantState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v3, v5, :cond_2

    .line 472
    return v4

    .line 476
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v1

    .line 477
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneAP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v1
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 6

    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 393
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 394
    .local v2, "_result":Landroid/net/wifi/PPPOEInfo;
    const-string v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 396
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 397
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    const/16 v4, 0x3ec

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    sget-object v4, Landroid/net/wifi/PPPOEInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/PPPOEInfo;

    move-object v2, v4

    goto :goto_0

    .line 403
    :cond_0
    const/4 v2, 0x0

    .line 405
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 410
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 407
    :catch_0
    move-exception v4

    .line 408
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_2

    .line 410
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 410
    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    nop

    .line 413
    return-object v2
.end method

.method public getSupportList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 986
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 988
    .local v2, "b":Landroid/os/IBinder;
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 989
    const/16 v3, 0xbd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 991
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 991
    return-object v3

    .line 995
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 992
    :catch_0
    move-exception v3

    .line 993
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwInnerWifiManagerImpl"

    const-string v5, "getSupportList, localRemoteException e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 997
    nop

    .line 998
    const/4 v3, 0x0

    return-object v3

    .line 995
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getVoWifiDetectMode()Landroid/net/wifi/WifiDetectConfInfo;
    .locals 6

    .line 666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 668
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 669
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "getVoWifiDetectMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v3, 0x0

    .line 673
    .local v3, "_result":Landroid/net/wifi/WifiDetectConfInfo;
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 674
    const/16 v4, 0x3f5

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 677
    sget-object v4, Landroid/net/wifi/WifiDetectConfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiDetectConfInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    goto :goto_0

    .line 679
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 681
    :catch_0
    move-exception v4

    .line 682
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    nop

    .line 687
    return-object v3

    .line 684
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getVoWifiDetectPeriod()I
    .locals 6

    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 716
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 717
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "getVoWifiDetectPeriod"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v3, -0x1

    .line 721
    .local v3, "_result":I
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 722
    const/16 v4, 0x3f7

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    goto :goto_0

    .line 728
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 725
    :catch_0
    move-exception v4

    .line 726
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    nop

    .line 731
    return v3

    .line 728
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getWpaSuppConfig()Ljava/lang/String;
    .locals 5

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 328
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 329
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "getWpaSuppConfig"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-eqz v2, :cond_0

    .line 332
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    return-object v3

    .line 340
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 337
    :catch_0
    move-exception v3

    .line 338
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 340
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 340
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    nop

    .line 343
    const/4 v3, 0x0

    return-object v3
.end method

.method public hwSetWifiAnt(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "operation"    # I

    .line 1113
    const-string v0, "com.huawei.wifi.permission.WIFI_ANTSET"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "HwInnerWifiManagerImpl"

    const-string v1, "No com.huawei.wifi.permission.WIFI_ANTSET permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void

    .line 1118
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1120
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1122
    .local v2, "b":Landroid/os/IBinder;
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    const/16 v3, 0xbbf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1131
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1128
    :catch_0
    move-exception v3

    .line 1129
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwInnerWifiManagerImpl"

    const-string v5, "hwSetWifiAnt localRemoteException e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1133
    nop

    .line 1134
    return-void

    .line 1131
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBgLimitAllowed(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 1139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1141
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1142
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    move v4, v3

    .line 1144
    .local v4, "_result":Z
    if-eqz v2, :cond_0

    .line 1145
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    const/16 v5, 0xbc0

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1149
    const/4 v5, 0x1

    new-array v5, v5, [Z

    .line 1150
    .local v5, "resultArray":[Z
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 1151
    aget-boolean v3, v5, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    .end local v4    # "_result":Z
    .end local v5    # "resultArray":[Z
    .local v3, "_result":Z
    move v4, v3

    goto :goto_1

    .end local v3    # "_result":Z
    .restart local v4    # "_result":Z
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v3

    .line 1154
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "HwInnerWifiManagerImpl"

    const-string v6, "isBGAllowed, localRemoteException e"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 1156
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1156
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1158
    nop

    .line 1159
    return v4
.end method

.method public isRSDBSupported()Z
    .locals 7

    .line 1088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1089
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1090
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1091
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    move v4, v3

    .line 1093
    .local v4, "_result":Z
    if-eqz v2, :cond_0

    .line 1094
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1095
    const/16 v5, 0x7d8

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1097
    const/4 v5, 0x1

    new-array v5, v5, [Z

    .line 1098
    .local v5, "resultArray":[Z
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 1099
    aget-boolean v3, v5, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    .end local v4    # "_result":Z
    .end local v5    # "resultArray":[Z
    .local v3, "_result":Z
    move v4, v3

    goto :goto_1

    .end local v3    # "_result":Z
    .restart local v4    # "_result":Z
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v3

    .line 1102
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "HwInnerWifiManagerImpl"

    const-string v6, "isRSDBSupported, localRemoteException e"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 1104
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1104
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1106
    nop

    .line 1108
    return v4
.end method

.method public isSupportVoWifiDetect()Z
    .locals 6

    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 738
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 739
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "isSupportVoWifiDetect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v3, 0x1

    new-array v3, v3, [Z

    .line 743
    .local v3, "_result":[Z
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 744
    const/16 v5, 0x3f8

    invoke-interface {v2, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 746
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 750
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 747
    :catch_0
    move-exception v5

    .line 748
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    nop

    .line 753
    aget-boolean v4, v3, v4

    return v4

    .line 750
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public notifyUIEvent(I)V
    .locals 6
    .param p1, "event"    # I

    .line 1001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1003
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1005
    .local v2, "b":Landroid/os/IBinder;
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    const/16 v3, 0xbd3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1012
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1009
    :catch_0
    move-exception v3

    .line 1010
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwInnerWifiManagerImpl"

    const-string v5, "notifyUIEvent, localRemoteException e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1012
    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1014
    nop

    .line 1015
    return-void

    .line 1012
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public refreshPackageWhitelist(ILjava/util/List;)V
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1069
    .local p2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1070
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1071
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1073
    .local v2, "b":Landroid/os/IBinder;
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1076
    const/16 v3, 0x7d7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1078
    :catch_0
    move-exception v3

    .line 1079
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwInnerWifiManagerImpl"

    const-string v5, "refreshPackageWhitelist, localRemoteException e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1083
    nop

    .line 1084
    return-void

    .line 1081
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public requestWifiEnable(ZLjava/lang/String;)Z
    .locals 7
    .param p1, "flag"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 801
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 802
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 803
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestWifiEnable flag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v3, 0x1

    .line 807
    .local v3, "_result":Z
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 810
    const/16 v4, 0x7d4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 816
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 812
    :catch_0
    move-exception v4

    .line 813
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "HwInnerWifiManagerImpl"

    const-string v6, "requestWifiEnable, localRemoteException e"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    const/4 v3, 0x0

    .line 816
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    nop

    .line 819
    return v3

    .line 816
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public setSoftapDisassociateSta(Ljava/lang/String;)V
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 530
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 531
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSoftapDisassociateSta mac = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz v2, :cond_0

    .line 534
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    const/16 v3, 0x3ef

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 542
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 539
    :catch_0
    move-exception v3

    .line 540
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 542
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 542
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-void
.end method

.method public setSoftapMacFilter(Ljava/lang/String;)V
    .locals 6
    .param p1, "macFilter"    # Ljava/lang/String;

    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 510
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 511
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSoftapMacFilter macFilter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-eqz v2, :cond_0

    .line 514
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    const/16 v3, 0x3ee

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 522
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 519
    :catch_0
    move-exception v3

    .line 520
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 522
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 522
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    nop

    .line 525
    return-void
.end method

.method public setVoWifiDetectMode(Landroid/net/wifi/WifiDetectConfInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiDetectConfInfo;

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 641
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVoWifiDetectMode info :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v3, 0x1

    move v4, v3

    .line 645
    .local v4, "_result":Z
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 646
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 647
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    invoke-virtual {p1, v0, v5}, Landroid/net/wifi/WifiDetectConfInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    :goto_0
    const/16 v3, 0x3f4

    invoke-interface {v2, v3, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 658
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 654
    :catch_0
    move-exception v3

    .line 655
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    const/4 v4, 0x0

    .line 658
    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    nop

    .line 661
    return v4

    .line 658
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setVoWifiDetectPeriod(I)Z
    .locals 6
    .param p1, "period"    # I

    .line 692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 693
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 694
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 695
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVoWifiDetectPeriod period :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v3, 0x1

    .line 699
    .local v3, "_result":Z
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/16 v4, 0x3f6

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 703
    :catch_0
    move-exception v4

    .line 704
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    const/4 v3, 0x0

    .line 707
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 709
    nop

    .line 710
    return v3

    .line 707
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public setWifiApEvaluateEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 573
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 574
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEvaluateEnabled enabled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-eqz v2, :cond_0

    .line 577
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEvaluateEnabled enabled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v3, 0x3f2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 586
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 583
    :catch_0
    move-exception v3

    .line 584
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 586
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 586
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    nop

    .line 589
    return-void
.end method

.method public setWifiEnterpriseConfigEapMethod(ILjava/util/HashMap;)Z
    .locals 1
    .param p1, "eapMethod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 437
    .local p2, "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_0

    .line 454
    const/4 v0, 0x0

    return v0

    .line 452
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setWifiTxPower(I)Z
    .locals 8
    .param p1, "power"    # I

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 829
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 830
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiTxPower power :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v3, -0x1

    .line 833
    .local v3, "_result":I
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/16 v5, 0x7d5

    invoke-interface {v2, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 837
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    .line 841
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 838
    :catch_0
    move-exception v5

    .line 839
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "setWifiTxPower, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 843
    nop

    .line 844
    if-nez v3, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    return v4

    .line 841
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public startHwQoEMonitor(IILandroid/net/wifi/HwQoE/IHwQoECallback;)Z
    .locals 8
    .param p1, "monitorType"    # I
    .param p2, "period"    # I
    .param p3, "callback"    # Landroid/net/wifi/HwQoE/IHwQoECallback;

    .line 849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 851
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 852
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startHwQoEMonitor period :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v3, 0x0

    move v4, v3

    .line 855
    .local v4, "_result":I
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/net/wifi/HwQoE/IHwQoECallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 859
    const/16 v5, 0xbb9

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_1

    .line 865
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 862
    :catch_0
    move-exception v5

    .line 863
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "startHwQoEMonitor, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 867
    nop

    .line 868
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v3, v5

    nop

    :cond_1
    return v3

    .line 865
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 350
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 351
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "startPPPOE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz v2, :cond_1

    .line 354
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 356
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/PPPOEConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    :goto_0
    const/16 v4, 0x3ea

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 367
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 364
    :catch_0
    move-exception v3

    .line 365
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_2

    .line 367
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 367
    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    nop

    .line 370
    return-void
.end method

.method public startPacketKeepalive(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1220
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1221
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "startPacketKeepalive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/4 v3, 0x0

    move v4, v3

    .line 1224
    .local v4, "_result":I
    const/4 v5, 0x1

    :try_start_0
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p1, v0, v5}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1227
    const/16 v6, 0xbcf

    invoke-interface {v2, v6, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    goto :goto_0

    .line 1233
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1230
    :catch_0
    move-exception v6

    .line 1231
    .local v6, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "HwInnerWifiManagerImpl"

    const-string v8, "evaluateNetworkQuality, localRemoteException e"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    .end local v6    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1235
    nop

    .line 1236
    if-ne v4, v5, :cond_0

    move v3, v5

    nop

    :cond_0
    return v3

    .line 1233
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public stopHwQoEMonitor(I)Z
    .locals 8
    .param p1, "monitorType"    # I

    .line 872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 874
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 875
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "stopHwQoEMonitor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v3, 0x0

    move v4, v3

    .line 878
    .local v4, "_result":I
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    const/16 v5, 0xbba

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 883
    :catch_0
    move-exception v5

    .line 884
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "stopHwQoEMonitor, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 888
    nop

    .line 889
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v3, v5

    nop

    :cond_0
    return v3

    .line 886
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public stopPPPOE()V
    .locals 5

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 375
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 377
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 378
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    const/16 v3, 0x3eb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 385
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 382
    :catch_0
    move-exception v3

    .line 383
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 385
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 385
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 387
    nop

    .line 388
    return-void
.end method

.method public stopPacketKeepalive(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1242
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1243
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "stopPacketKeepalive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v3, 0x0

    move v4, v3

    .line 1246
    .local v4, "_result":I
    const/4 v5, 0x1

    :try_start_0
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p1, v0, v5}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1249
    const/16 v6, 0xbd0

    invoke-interface {v2, v6, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    goto :goto_0

    .line 1255
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1252
    :catch_0
    move-exception v6

    .line 1253
    .local v6, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "HwInnerWifiManagerImpl"

    const-string v8, "evaluateNetworkQuality, localRemoteException e"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    .end local v6    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    nop

    .line 1258
    if-ne v4, v5, :cond_0

    move v3, v5

    nop

    :cond_0
    return v3

    .line 1255
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public updateAppExperienceStatus(IIJI)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "experience"    # I
    .param p3, "rtt"    # J
    .param p5, "reserved"    # I

    .line 1019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1021
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1022
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    move v4, v3

    .line 1024
    .local v4, "_result":I
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1028
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    const/16 v5, 0xbbe

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1030
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1032
    :catch_0
    move-exception v5

    .line 1033
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "updateAppExperienceStatus, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1037
    nop

    .line 1038
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v3, v5

    nop

    :cond_0
    return v3

    .line 1035
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public updateAppRunningStatus(IIIII)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "status"    # I
    .param p4, "scene"    # I
    .param p5, "reserved"    # I

    .line 935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 936
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 937
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 938
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    move v4, v3

    .line 940
    .local v4, "_result":I
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    const/16 v5, 0xbbd

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 949
    :catch_0
    move-exception v5

    .line 950
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "updateAppRunningStatus, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 954
    nop

    .line 955
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v3, v5

    nop

    :cond_0
    return v3

    .line 952
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public updateVOWIFIStatus(I)Z
    .locals 8
    .param p1, "state"    # I

    .line 914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 916
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 917
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "updateVOWIFIState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v3, 0x0

    move v4, v3

    .line 920
    .local v4, "_result":I
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    const/16 v5, 0xbbc

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_0

    .line 928
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 925
    :catch_0
    move-exception v5

    .line 926
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "updateVOWIFIStatus, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 930
    nop

    .line 931
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v3, v5

    nop

    :cond_0
    return v3

    .line 928
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public updateWaveMapping(II)Z
    .locals 8
    .param p1, "location"    # I
    .param p2, "action"    # I

    .line 1262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1264
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1265
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    move v4, v3

    .line 1267
    .local v4, "_result":I
    if-eqz v2, :cond_0

    .line 1268
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/16 v5, 0xfa2

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1273
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_1

    .line 1278
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v5

    .line 1276
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "updateWaveMapping, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 1278
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1278
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1280
    nop

    .line 1281
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v3, v5

    nop

    :cond_1
    return v3
.end method

.method public updatelimitSpeedStatus(III)Z
    .locals 8
    .param p1, "mode"    # I
    .param p2, "reserve1"    # I
    .param p3, "reserve2"    # I

    .line 960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 961
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 962
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 963
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, 0x0

    move v4, v3

    .line 965
    .local v4, "_result":I
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    const/16 v5, 0xbd1

    invoke-interface {v2, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_0

    .line 975
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 972
    :catch_0
    move-exception v5

    .line 973
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerWifiManagerImpl"

    const-string v7, "updatelimitSpeedStatus, localRemoteException e"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 977
    nop

    .line 978
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v3, v5

    nop

    :cond_0
    return v3

    .line 975
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public userHandoverWifi()V
    .locals 5

    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 551
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 552
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerWifiManagerImpl"

    const-string v4, "wifipro userHandoverWifi "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    if-eqz v2, :cond_0

    .line 555
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 562
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 559
    :catch_0
    move-exception v3

    .line 560
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 562
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 562
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    nop

    .line 565
    return-void
.end method
