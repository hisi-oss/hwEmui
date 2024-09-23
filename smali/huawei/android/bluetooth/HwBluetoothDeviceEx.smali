.class public Lhuawei/android/bluetooth/HwBluetoothDeviceEx;
.super Ljava/lang/Object;
.source "HwBluetoothDeviceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;,
        Lhuawei/android/bluetooth/HwBluetoothDeviceEx$ReadRssiCallbackBinder;
    }
.end annotation


# static fields
.field private static final CODE_ADD_NFC_PAIRING_WHITE_LIST:I = 0x3e9

.field private static final CODE_CLEAR_NFC_PAIRING_WHITE_LIST:I = 0x3eb

.field private static final CODE_READ_RSSI:I = 0x7d1

.field private static final CODE_READ_RSSI_CALLBACK:I = 0x7d2

.field private static final CODE_REMOVE_NFC_PAIRING_WHITE_LIST:I = 0x3ea

.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field private static final TAG:Ljava/lang/String; = "HwBluetoothDeviceEx"

.field private static mInstance:Lhuawei/android/bluetooth/HwBluetoothDeviceEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lhuawei/android/bluetooth/HwBluetoothDeviceEx;

    invoke-direct {v0}, Lhuawei/android/bluetooth/HwBluetoothDeviceEx;-><init>()V

    sput-object v0, Lhuawei/android/bluetooth/HwBluetoothDeviceEx;->mInstance:Lhuawei/android/bluetooth/HwBluetoothDeviceEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lhuawei/android/bluetooth/HwBluetoothDeviceEx;
    .locals 1

    .line 34
    sget-object v0, Lhuawei/android/bluetooth/HwBluetoothDeviceEx;->mInstance:Lhuawei/android/bluetooth/HwBluetoothDeviceEx;

    return-object v0
.end method


# virtual methods
.method public addNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "address"    # Ljava/lang/String;

    .line 46
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 47
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 49
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    move v3, v2

    .line 51
    .local v3, "success":Z
    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceUtils;->getService(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    .line 52
    .local v4, "sService":Landroid/bluetooth/IBluetooth;
    if-eqz v4, :cond_0

    .line 53
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 54
    .local v5, "binder":Landroid/os/IBinder;
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/16 v6, 0x3e9

    invoke-interface {v5, v6, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 58
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 59
    .end local v5    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 60
    :cond_0
    const-string v2, "HwBluetoothDeviceEx"

    const-string v5, "BT not enabled. Cannot addNfcPairingWhiteList to Remote Device"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "sService":Landroid/bluetooth/IBluetooth;
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v2    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 67
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 68
    nop

    .line 69
    return-void

    .line 66
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 67
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 110
    const-string v0, "HwBluetoothDeviceEx"

    const-string v1, "clearNfcPairingWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 114
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    move v3, v2

    .line 116
    .local v3, "success":Z
    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceUtils;->getService(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    .line 117
    .local v4, "sService":Landroid/bluetooth/IBluetooth;
    if-eqz v4, :cond_0

    .line 118
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 119
    .local v5, "binder":Landroid/os/IBinder;
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    const/16 v6, 0x3eb

    invoke-interface {v5, v6, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 123
    .end local v5    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 124
    :cond_0
    const-string v2, "HwBluetoothDeviceEx"

    const-string v5, "BT not enabled. Cannot clearNfcPairingWhiteList to Remote Device"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "sService":Landroid/bluetooth/IBluetooth;
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v2    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public readRssi(Landroid/bluetooth/BluetoothDevice;Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;)Z
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callback"    # Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;

    .line 138
    const-string v0, "HwBluetoothDeviceEx"

    const-string v1, "readRssi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 146
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 148
    .local v2, "reply":Landroid/os/Parcel;
    move v3, v0

    .line 150
    .local v3, "result":Z
    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceUtils;->getService(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    .line 151
    .local v4, "sService":Landroid/bluetooth/IBluetooth;
    if-eqz v4, :cond_2

    .line 152
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {p1, v1, v0}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    new-instance v6, Lhuawei/android/bluetooth/HwBluetoothDeviceEx$ReadRssiCallbackBinder;

    invoke-direct {v6, p2}, Lhuawei/android/bluetooth/HwBluetoothDeviceEx$ReadRssiCallbackBinder;-><init>(Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;)V

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 157
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 158
    .local v6, "binder":Landroid/os/IBinder;
    const/16 v7, 0x7d1

    invoke-interface {v6, v7, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 160
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 161
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    nop

    .line 162
    .end local v3    # "result":Z
    .end local v6    # "binder":Landroid/os/IBinder;
    .local v0, "result":Z
    :cond_1
    nop

    .line 168
    move v3, v0

    goto :goto_0

    .line 163
    .end local v0    # "result":Z
    .restart local v3    # "result":Z
    :cond_2
    const-string v0, "HwBluetoothDeviceEx"

    const-string v5, "Cannot readRssi!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "sService":Landroid/bluetooth/IBluetooth;
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    nop

    .line 172
    return v3

    .line 168
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 141
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "result":Z
    :cond_3
    :goto_2
    const-string v1, "HwBluetoothDeviceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid args in readRssi(): device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v0
.end method

.method public removeNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 82
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    move v3, v2

    .line 84
    .local v3, "success":Z
    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceUtils;->getService(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    .line 85
    .local v4, "sService":Landroid/bluetooth/IBluetooth;
    if-eqz v4, :cond_0

    .line 86
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 87
    .local v5, "binder":Landroid/os/IBinder;
    const-string v6, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    const/16 v6, 0x3ea

    invoke-interface {v5, v6, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 92
    .end local v5    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 93
    :cond_0
    const-string v2, "HwBluetoothDeviceEx"

    const-string v5, "BT not enabled. Cannot removeNfcPairingWhiteList to Remote Device"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "sService":Landroid/bluetooth/IBluetooth;
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v2    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    nop

    .line 102
    return-void

    .line 99
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
