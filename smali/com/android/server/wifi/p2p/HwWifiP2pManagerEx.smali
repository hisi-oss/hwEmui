.class public Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;
.super Ljava/lang/Object;
.source "HwWifiP2pManagerEx.java"


# static fields
.field public static final ADD_P2P_VALID_DEVICE:I = 0x227d0

.field private static final BASE:I = 0x22000

.field public static final BEAM_CONNECT:I = 0x227d3

.field public static final CLEAR_P2P_VALID_DEVICE:I = 0x227d2

.field public static final CREATE_GROUP_PSK:I = 0x227d4

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_FREQUENCY:Ljava/lang/String; = "freq"

.field public static final EXTRA_INTERFACE_NAME:Ljava/lang/String; = "p2pInterfaceName"

.field public static final EXTRA_LINKSPEED:Ljava/lang/String; = "linkSpeed"

.field public static final EXTRA_P2P_CONFIG_INFO:Ljava/lang/String; = "p2pconfigInfo"

.field public static final EXTRA_WFD_INFO:Ljava/lang/String; = "exinfo"

.field public static final EXTRA_WIFI_P2P_CONNECT_STATE:Ljava/lang/String; = "extraState"

.field public static final GROUP_CREATED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.GROUP_CREATED"

.field public static final MACICLINK_INTERFACE_CREATED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.INTERFACE_CREATED"

.field public static final MAGICLINK_CONNECT:I = 0x227d5

.field public static final MAGICLINK_CREATE_GROUP:I = 0x227d6

.field public static final MAGICLINK_P2P_CONFIG_INFO:Ljava/lang/String; = "android.net.wifi.p2p.CONFIG_INFO"

.field public static final MAGICLINK_PERMISSION:Ljava/lang/String; = "com.huawei.instantshare.permission.ACCESS_INSTANTSHARE"

.field public static final MAGICLINK_REMOVE_GC_GROUP:I = 0x227d7

.field public static final NETWORK_CONNECTED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.NETWORK_CONNECTED_ACTION"

.field public static final NETWORK_DISCONNECTED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.NETWORK_DISCONNECTED_ACTION"

.field public static final REMOVE_P2P_VALID_DEVICE:I = 0x227d1

.field public static final STA_FREQUENCY_CREATED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STA_FREQUENCY_CREATED"

.field private static final TAG:Ljava/lang/String; = "HwWifiP2pManagerEx"

.field public static final WFD_HW_DEVICE_EX_INFO:Ljava/lang/String; = "com.huawei.net.wifi.p2p.peers.hw.extend.info"

.field public static final WFD_LINKSPEED_INFO:Ljava/lang/String; = "com.huawei.net.wifi.p2p.LINK_SPEED"

.field public static final WFD_PERMISSION:Ljava/lang/String; = "com.huawei.wfd.permission.ACCESS_HW_P2P_WFD"

.field public static final WIFI_P2P_CONNECT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

.field public static final WIFI_P2P_STATE_CONNECTED:I = 0x2

.field public static final WIFI_P2P_STATE_CONNECTIING:I = 0x1

.field public static final WIFI_P2P_STATE_CONNECTION_FAIL:I = 0x3

.field public static final WIFI_P2P_VALID_DEVICE:Ljava/lang/String; = "avlidDevice"

.field private static mInstance:Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;

.field private static wifiP2pManagerUtils:Landroid/net/wifi/p2p/WifiP2pManagerUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;

    invoke-direct {v0}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->mInstance:Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;

    .line 43
    const-class v0, Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    .line 44
    invoke-static {v0}, Lcom/huawei/utils/reflect/EasyInvokeFactory;->getInvokeUtils(Ljava/lang/Class;)Lcom/huawei/utils/reflect/EasyInvokeUtils;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    sput-object v0, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->wifiP2pManagerUtils:Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 157
    if-eqz p1, :cond_0

    .line 159
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefault()Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;
    .locals 1

    .line 40
    sget-object v0, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->mInstance:Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;

    return-object v0
.end method


# virtual methods
.method public addP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 147
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "avlidDevice"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const v2, 0x227d0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method public beam_connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 183
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getAsyncChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->wifiP2pManagerUtils:Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    invoke-virtual {v1, p1, p3}, Landroid/net/wifi/p2p/WifiP2pManagerUtils;->putListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x227d3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 185
    return-void
.end method

.method public clearP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 173
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 174
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x227d2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    return-void
.end method

.method public createGroupWifiRepeater(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 192
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getAsyncChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->wifiP2pManagerUtils:Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    invoke-virtual {v1, p1, p3}, Landroid/net/wifi/p2p/WifiP2pManagerUtils;->putListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x227d4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "channelId"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 229
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 231
    const-string v0, "HwWifiP2pManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers, pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channelId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getAsyncChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->wifiP2pManagerUtils:Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    invoke-virtual {v1, p1, p3}, Landroid/net/wifi/p2p/WifiP2pManagerUtils;->putListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22001

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 234
    return-void
.end method

.method public magiclinkConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 198
    const-string v0, "HwWifiP2pManagerEx"

    const-string v1, "enter magiclinkConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "bd":Landroid/os/Bundle;
    const-string v1, "cfg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getAsyncChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->wifiP2pManagerUtils:Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    invoke-virtual {v2, p1, p3}, Landroid/net/wifi/p2p/WifiP2pManagerUtils;->putListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x227d5

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 203
    return-void
.end method

.method public magiclinkCreateGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "frequency"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 205
    const-string v0, "HwWifiP2pManagerEx"

    const-string v1, "enter magiclinkCreateGroup temporary."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "freq"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getAsyncChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->wifiP2pManagerUtils:Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    .line 211
    invoke-virtual {v2, p1, p3}, Landroid/net/wifi/p2p/WifiP2pManagerUtils;->putListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 209
    const v3, 0x227d6

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 213
    return-void
.end method

.method public magiclinkRemoveGcGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 216
    const-string v0, "HwWifiP2pManagerEx"

    const-string v1, "enter magiclinkRemoveGcGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "iface"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getAsyncChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->wifiP2pManagerUtils:Landroid/net/wifi/p2p/WifiP2pManagerUtils;

    invoke-virtual {v2, p1, p3}, Landroid/net/wifi/p2p/WifiP2pManagerUtils;->putListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x227d7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 221
    return-void
.end method

.method public removeP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/HwWifiP2pManagerEx;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 163
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 164
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "avlidDevice"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const v2, 0x227d1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 167
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method
