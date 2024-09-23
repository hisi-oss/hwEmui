.class public Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;
.super Ljava/lang/Object;
.source "HwInnerWifiP2pManagerImpl.java"

# interfaces
.implements Landroid/net/wifi/p2p/HwInnerWifiP2pManager;


# static fields
.field private static final CODE_GET_GROUP_CONFIG_INFO:I = 0x3ed

.field private static final CODE_GET_WIFI_REPEATER_CONFIG:I = 0x3e9

.field private static final CODE_SET_WIFI_REPEATER_CONFIG:I = 0x3ea

.field private static final CODE_WIFI_MAGICLINK_CONFIG_IP:I = 0x3eb

.field private static final CODE_WIFI_MAGICLINK_RELEAGE_IP:I = 0x3ec

.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.p2p.IWifiP2pManager"

.field private static mInstance:Landroid/net/wifi/p2p/HwInnerWifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;

    invoke-direct {v0}, Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;->mInstance:Landroid/net/wifi/p2p/HwInnerWifiP2pManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/net/wifi/p2p/HwInnerWifiP2pManager;
    .locals 1

    .line 32
    sget-object v0, Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;->mInstance:Landroid/net/wifi/p2p/HwInnerWifiP2pManager;

    return-object v0
.end method


# virtual methods
.method public configIPAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;
    .param p3, "server"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x1

    .line 165
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 166
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 167
    .local v2, "_reply":Landroid/os/Parcel;
    const-string v3, "wifip2p"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 169
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 170
    :try_start_0
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 172
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    :goto_0
    const/16 v5, 0x3eb

    invoke-interface {v3, v5, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 180
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 184
    :catch_0
    move-exception v4

    .line 185
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 186
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v0    # "result":Z
    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    .end local p0    # "this":Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "ipAddr":Ljava/lang/String;
    .end local p3    # "server":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    return v0

    .line 182
    .restart local v0    # "result":Z
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local v3    # "b":Landroid/os/IBinder;
    .restart local p0    # "this":Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "ipAddr":Ljava/lang/String;
    .restart local p3    # "server":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getGroupConfigInfo()Ljava/lang/String;
    .locals 6

    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 75
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 76
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, ""

    .line 77
    .local v2, "_result":Ljava/lang/String;
    const-string v3, "wifip2p"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 79
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 80
    :try_start_0
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    const/16 v4, 0x3ed

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 83
    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 86
    :cond_0
    const-string v4, ""

    move-object v2, v4

    .line 88
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 93
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 90
    :catch_0
    move-exception v4

    .line 91
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_2

    .line 93
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 93
    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    nop

    .line 96
    return-object v2
.end method

.method public getWifiRepeaterConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 49
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 50
    .local v2, "_result":Landroid/net/wifi/WifiConfiguration;
    const-string v3, "wifip2p"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 52
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 53
    :try_start_0
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 54
    const/16 v4, 0x3e9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 55
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    move-object v2, v4

    goto :goto_0

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 61
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 66
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 63
    :catch_0
    move-exception v4

    .line 64
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_2

    .line 66
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 67
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 66
    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 67
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 68
    nop

    .line 69
    return-object v2
.end method

.method public releaseIPAddr(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifName"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 133
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 134
    .local v2, "_reply":Landroid/os/Parcel;
    const-string v3, "wifip2p"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 136
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 137
    :try_start_0
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 139
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    :goto_0
    const/16 v5, 0x3ec

    invoke-interface {v3, v5, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 149
    :catch_0
    move-exception v4

    .line 150
    .local v4, "remoteException":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 151
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v0    # "result":Z
    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "remoteException":Landroid/os/RemoteException;
    .end local p0    # "this":Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;
    .end local p1    # "ifName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    return v0

    .line 147
    .restart local v0    # "result":Z
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local v3    # "b":Landroid/os/IBinder;
    .restart local p0    # "this":Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;
    .restart local p1    # "ifName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setWifiRepeaterConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 104
    .local v2, "_reply":Landroid/os/Parcel;
    const-string v3, "wifip2p"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 106
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 107
    :try_start_0
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 109
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {p1, v1, v4}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    :goto_0
    const/16 v5, 0x3ea

    invoke-interface {v3, v5, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 115
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 119
    :catch_0
    move-exception v4

    .line 120
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 121
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v0    # "result":Z
    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    .end local p0    # "this":Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 125
    return v0

    .line 117
    .restart local v0    # "result":Z
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local v3    # "b":Landroid/os/IBinder;
    .restart local p0    # "this":Landroid/net/wifi/p2p/HwInnerWifiP2pManagerImpl;
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
