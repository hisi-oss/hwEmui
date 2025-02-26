.class public abstract Lhuawei/android/net/IConnectivityExManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityExManager.java"

# interfaces
.implements Lhuawei/android/net/IConnectivityExManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/net/IConnectivityExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/net/IConnectivityExManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.net.IConnectivityExManager"

.field static final TRANSACTION_isApIpv4AddressFixed:I = 0x4

.field static final TRANSACTION_setApIpv4AddressFixed:I = 0x3

.field static final TRANSACTION_setSmartKeyguardLevel:I = 0x1

.field static final TRANSACTION_setUseCtrlSocket:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "huawei.android.net.IConnectivityExManager"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/net/IConnectivityExManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/net/IConnectivityExManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "huawei.android.net.IConnectivityExManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/net/IConnectivityExManager;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lhuawei/android/net/IConnectivityExManager;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lhuawei/android/net/IConnectivityExManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/net/IConnectivityExManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
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

    .line 42
    const-string v0, "huawei.android.net.IConnectivityExManager"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 79
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lhuawei/android/net/IConnectivityExManager$Stub;->isApIpv4AddressFixed()Z

    move-result v1

    .line 81
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v2

    .line 70
    .end local v1    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 73
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lhuawei/android/net/IConnectivityExManager$Stub;->setApIpv4AddressFixed(Z)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v2

    .line 61
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 64
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Lhuawei/android/net/IConnectivityExManager$Stub;->setUseCtrlSocket(Z)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v2

    .line 52
    .end local v1    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/net/IConnectivityExManager$Stub;->setSmartKeyguardLevel(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v2

    .line 47
    .end local v1    # "_arg0":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
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
