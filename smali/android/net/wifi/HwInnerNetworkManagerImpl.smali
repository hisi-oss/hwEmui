.class public Landroid/net/wifi/HwInnerNetworkManagerImpl;
.super Ljava/lang/Object;
.source "HwInnerNetworkManagerImpl.java"

# interfaces
.implements Landroid/net/wifi/HwInnerNetworkManager;


# static fields
.field private static final CODE_CLOSE_SOCKETS_FOR_UID:I = 0x453

.field private static final CODE_GET_APLINKED_STA_LIST:I = 0x3ed

.field private static final CODE_GET_WIFI_DNS_STAT:I = 0x3f3

.field private static final CODE_SET_AP_CONFIGRATION_HW:I = 0x3f0

.field private static final CODE_SET_SOFTAP_DISASSOCIATESTA:I = 0x3ef

.field private static final CODE_SET_SOFTAP_MACFILTER:I = 0x3ee

.field private static final CODE_SET_SOFTAP_TX_POWER:I = 0x3f1

.field private static final CODE_SET_WIFIPRO_FIREWALL_DROP:I = 0x3f6

.field private static final CODE_SET_WIFIPRO_FIREWALL_ENABLE:I = 0x3f4

.field private static final CODE_SET_WIFIPRO_FIREWALL_WHITELIST:I = 0x3f5

.field private static final DBG:Z = false

.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.INetworkManager"

.field private static final DESCRIPTOR_NETWORKMANAGEMENT_SERVICE:Ljava/lang/String; = "android.os.INetworkManagementService"

.field private static final TAG:Ljava/lang/String; = "HwInnerNetworkManagerImpl"

.field private static mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/HwInnerNetworkManagerImpl;->mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/net/wifi/HwInnerNetworkManager;
    .locals 1

    .line 52
    sget-object v0, Landroid/net/wifi/HwInnerNetworkManagerImpl;->mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/net/wifi/HwInnerNetworkManagerImpl;

    invoke-direct {v0}, Landroid/net/wifi/HwInnerNetworkManagerImpl;-><init>()V

    sput-object v0, Landroid/net/wifi/HwInnerNetworkManagerImpl;->mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;

    .line 55
    :cond_0
    sget-object v0, Landroid/net/wifi/HwInnerNetworkManagerImpl;->mHwInnerNetworkManager:Landroid/net/wifi/HwInnerNetworkManager;

    return-object v0
.end method


# virtual methods
.method public closeSocketsForUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 190
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 191
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 193
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 194
    :try_start_0
    const-string v3, "android.os.INetworkManagementService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/16 v3, 0x453

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 199
    :catch_0
    move-exception v3

    .line 200
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 202
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 202
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    nop

    .line 205
    return-void
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

    .line 59
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 60
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 61
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 62
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerNetworkManagerImpl"

    const-string v4, "HwInnerNetworkManagerImpl getApLinkedStaList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz v2, :cond_0

    .line 65
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 66
    const/16 v3, 0x3ed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 67
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 68
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .local v3, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 74
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 75
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 69
    return-object v3

    .line 74
    .end local v3    # "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 71
    :catch_0
    move-exception v3

    .line 72
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 74
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 75
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 74
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 75
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 76
    nop

    .line 77
    const/4 v3, 0x0

    return-object v3
.end method

.method public getWiFiDnsStats(I)Ljava/lang/String;
    .locals 5
    .param p1, "netid"    # I

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 168
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 170
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 171
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/16 v3, 0x3f3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .local v3, "stats":Ljava/lang/String;
    nop

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return-object v3

    .line 181
    .end local v3    # "stats":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 181
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 181
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    nop

    .line 184
    const-string v3, ""

    return-object v3
.end method

.method public setAccessPointHw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "softapIface"    # Ljava/lang/String;

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 125
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerNetworkManagerImpl"

    const-string v4, "setWifiApConfigurationHw"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz v2, :cond_0

    .line 128
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 137
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 137
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    nop

    .line 140
    return-void
.end method

.method public setSoftapDisassociateSta(Ljava/lang/String;)V
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, "_reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, "_data":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 104
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerNetworkManagerImpl"

    const-string v4, "setSoftapDisassociateSta"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v2, :cond_0

    .line 107
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    const-string v3, "HwInnerNetworkManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSoftapDisassociateSta, mac ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v3, 0x3ef

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 116
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 116
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 118
    nop

    .line 119
    return-void
.end method

.method public setSoftapMacFilter(Ljava/lang/String;)V
    .locals 6
    .param p1, "macFilter"    # Ljava/lang/String;

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 83
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 84
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerNetworkManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HwInnerNetworkManagerImpl setSoftapMacFilter macFilter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz v2, :cond_0

    .line 87
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    const/16 v3, 0x3ee

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 92
    :catch_0
    move-exception v3

    .line 93
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 95
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 95
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    nop

    .line 98
    return-void
.end method

.method public setWifiTxPower(Ljava/lang/String;)V
    .locals 6
    .param p1, "reduceCmd"    # Ljava/lang/String;

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 146
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 147
    .local v2, "b":Landroid/os/IBinder;
    const-string v3, "HwInnerNetworkManagerImpl"

    const-string v4, "setSoftapDisassociateSta"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz v2, :cond_0

    .line 150
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    const-string v3, "HwInnerNetworkManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiTxPower, reduceCmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v3, 0x3f1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 159
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 156
    :catch_0
    move-exception v3

    .line 157
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 159
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 159
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    nop

    .line 162
    return-void
.end method

.method public setWifiproFirewallDrop()V
    .locals 5

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 248
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 252
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    const/16 v3, 0x3f6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 259
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 256
    :catch_0
    move-exception v3

    .line 257
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 259
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 259
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    nop

    .line 262
    return-void
.end method

.method public setWifiproFirewallEnable(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 212
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 214
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 215
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/16 v3, 0x3f4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 223
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 220
    :catch_0
    move-exception v3

    .line 221
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 223
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 223
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    nop

    .line 226
    return-void
.end method

.method public setWifiproFirewallWhitelist(I)V
    .locals 5
    .param p1, "appUid"    # I

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 230
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 232
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 233
    :try_start_0
    const-string v3, "android.net.wifi.INetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/16 v3, 0x3f5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 241
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 241
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 241
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    nop

    .line 244
    return-void
.end method
