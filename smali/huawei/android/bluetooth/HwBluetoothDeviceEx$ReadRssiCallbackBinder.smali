.class Lhuawei/android/bluetooth/HwBluetoothDeviceEx$ReadRssiCallbackBinder;
.super Landroid/os/Binder;
.source "HwBluetoothDeviceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/bluetooth/HwBluetoothDeviceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadRssiCallbackBinder"
.end annotation


# instance fields
.field private mCallback:Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;


# direct methods
.method public constructor <init>(Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;

    .line 178
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 179
    iput-object p1, p0, Lhuawei/android/bluetooth/HwBluetoothDeviceEx$ReadRssiCallbackBinder;->mCallback:Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;

    .line 180
    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 190
    .local v0, "status":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .local v1, "rssi":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 195
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const/4 v2, 0x0

    .line 198
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    const-string v3, "HwBluetoothDeviceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadRssiCallback: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rssi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mCallback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lhuawei/android/bluetooth/HwBluetoothDeviceEx$ReadRssiCallbackBinder;->mCallback:Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lhuawei/android/bluetooth/HwBluetoothDeviceEx$ReadRssiCallbackBinder;->mCallback:Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;

    if-eqz v3, :cond_2

    .line 202
    iget-object v3, p0, Lhuawei/android/bluetooth/HwBluetoothDeviceEx$ReadRssiCallbackBinder;->mCallback:Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;

    invoke-interface {v3, v0, v1, v2}, Lhuawei/android/bluetooth/HwBluetoothDeviceEx$IReadRssiCallback;->onReadRssi(IILandroid/bluetooth/BluetoothDevice;)V

    .line 205
    :cond_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/4 v3, 0x1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    return v3
.end method
