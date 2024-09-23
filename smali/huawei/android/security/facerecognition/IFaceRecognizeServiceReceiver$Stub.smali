.class public abstract Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFaceRecognizeServiceReceiver.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.facerecognition.IFaceRecognizeServiceReceiver"

.field static final TRANSACTION_onAuthenticationAcquired:I = 0x6

.field static final TRANSACTION_onAuthenticationCancel:I = 0x5

.field static final TRANSACTION_onAuthenticationResult:I = 0x4

.field static final TRANSACTION_onEnrollAcquired:I = 0x3

.field static final TRANSACTION_onEnrollCancel:I = 0x2

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onRemovedResult:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "huawei.android.security.facerecognition.IFaceRecognizeServiceReceiver"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "huawei.android.security.facerecognition.IFaceRecognizeServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "huawei.android.security.facerecognition.IFaceRecognizeServiceReceiver"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->onRemovedResult(II)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v2

    .line 101
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->onAuthenticationAcquired(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    return v2

    .line 94
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->onAuthenticationCancel()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v2

    .line 83
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->onAuthenticationResult(II)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v2

    .line 72
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->onEnrollAcquired(II)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v2

    .line 65
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->onEnrollCancel()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 52
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->onEnrollResult(III)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v2

    .line 47
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
