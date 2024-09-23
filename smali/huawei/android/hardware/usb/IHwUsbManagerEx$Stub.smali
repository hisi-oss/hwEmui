.class public abstract Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub;
.super Landroid/os/Binder;
.source "IHwUsbManagerEx.java"

# interfaces
.implements Lhuawei/android/hardware/usb/IHwUsbManagerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hardware/usb/IHwUsbManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.hardware.usb.IHwUsbManagerEx"

.field static final TRANSACTION_allowUsbHDB:I = 0x1

.field static final TRANSACTION_clearUsbHDBKeys:I = 0x3

.field static final TRANSACTION_denyUsbHDB:I = 0x2

.field static final TRANSACTION_setHdbEnabled:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.android.hardware.usb.IHwUsbManagerEx"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.android.hardware.usb.IHwUsbManagerEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/hardware/usb/IHwUsbManagerEx;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/android/hardware/usb/IHwUsbManagerEx;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "huawei.android.hardware.usb.IHwUsbManagerEx"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 76
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub;->setHdbEnabled(Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v2

    .line 66
    .end local v1    # "_arg0":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub;->clearUsbHDBKeys()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v2

    .line 59
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub;->denyUsbHDB()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v2

    .line 48
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 52
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub;->allowUsbHDB(ZLjava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v2

    .line 43
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
