.class public abstract Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub;
.super Landroid/os/Binder;
.source "IHeadsetStatusCallback.java"

# interfaces
.implements Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.voicerecognition.IHeadsetStatusCallback"

.field static final TRANSACTION_onHeadsetStatusChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "huawei.android.security.voicerecognition.IHeadsetStatusCallback"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "huawei.android.security.voicerecognition.IHeadsetStatusCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "huawei.android.security.voicerecognition.IHeadsetStatusCallback"

    .line 41
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 45
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    .line 50
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub;->onHeadsetStatusChange(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v1
.end method
