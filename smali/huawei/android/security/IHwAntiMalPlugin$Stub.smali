.class public abstract Lhuawei/android/security/IHwAntiMalPlugin$Stub;
.super Landroid/os/Binder;
.source "IHwAntiMalPlugin.java"

# interfaces
.implements Lhuawei/android/security/IHwAntiMalPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/IHwAntiMalPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IHwAntiMalPlugin$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.IHwAntiMalPlugin"

.field static final TRANSACTION_isAntiMalProtectionOn:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "huawei.android.security.IHwAntiMalPlugin"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/IHwAntiMalPlugin$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwAntiMalPlugin;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "huawei.android.security.IHwAntiMalPlugin"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/IHwAntiMalPlugin;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/IHwAntiMalPlugin;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lhuawei/android/security/IHwAntiMalPlugin$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/IHwAntiMalPlugin$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
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

    .line 39
    const-string v0, "huawei.android.security.IHwAntiMalPlugin"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 44
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    .line 49
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 55
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .line 57
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v2}, Lhuawei/android/security/IHwAntiMalPlugin$Stub;->isAntiMalProtectionOn(Landroid/os/Bundle;)Z

    move-result v3

    .line 58
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v1
.end method
