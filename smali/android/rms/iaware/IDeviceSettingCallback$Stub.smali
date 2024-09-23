.class public abstract Landroid/rms/iaware/IDeviceSettingCallback$Stub;
.super Landroid/os/Binder;
.source "IDeviceSettingCallback.java"

# interfaces
.implements Landroid/rms/iaware/IDeviceSettingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/IDeviceSettingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/IDeviceSettingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.rms.iaware.IDeviceSettingCallback"

.field static final TRANSACTION_onDevSceneChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.rms.iaware.IDeviceSettingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/rms/iaware/IDeviceSettingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/rms/iaware/IDeviceSettingCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.rms.iaware.IDeviceSettingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/rms/iaware/IDeviceSettingCallback;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/rms/iaware/IDeviceSettingCallback;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/rms/iaware/IDeviceSettingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/rms/iaware/IDeviceSettingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 41
    const-string v0, "android.rms.iaware.IDeviceSettingCallback"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 46
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v1

    .line 51
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg3":Landroid/os/Bundle;
    goto :goto_0

    .line 63
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :cond_2
    const/4 v5, 0x0

    .line 65
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/rms/iaware/IDeviceSettingCallback$Stub;->onDevSceneChanged(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 66
    return v1
.end method
