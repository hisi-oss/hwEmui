.class public abstract Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceAuthCallback.java"

# interfaces
.implements Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.voicerecognition.IVoiceAuthCallback"

.field static final TRANSACTION_onHeadsetStatusChange:I = 0x3

.field static final TRANSACTION_onReceiveAuthVoice:I = 0x1

.field static final TRANSACTION_onReceiveUnAuthVoice:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "huawei.android.security.voicerecognition.IVoiceAuthCallback"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "huawei.android.security.voicerecognition.IVoiceAuthCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const-string v0, "huawei.android.security.voicerecognition.IVoiceAuthCallback"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

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

    move-result v1

    .line 76
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;->onHeadsetStatusChange(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v2

    .line 62
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;->onReceiveUnAuthVoice(II)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v2

    .line 51
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;->onReceiveAuthVoice(II)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v2

    .line 46
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
