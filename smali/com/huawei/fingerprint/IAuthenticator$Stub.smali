.class public abstract Lcom/huawei/fingerprint/IAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IAuthenticator.java"

# interfaces
.implements Lcom/huawei/fingerprint/IAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/fingerprint/IAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/fingerprint/IAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.fingerprint.IAuthenticator"

.field static final TRANSACTION_cancelVerifyUser:I = 0x2

.field static final TRANSACTION_verifyUser:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.huawei.fingerprint.IAuthenticator"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/fingerprint/IAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/fingerprint/IAuthenticator;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.huawei.fingerprint.IAuthenticator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/fingerprint/IAuthenticator;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/huawei/fingerprint/IAuthenticator;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/huawei/fingerprint/IAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/fingerprint/IAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 39
    const-string v3, "com.huawei.fingerprint.IAuthenticator"

    .line 40
    .local v3, "descriptor":Ljava/lang/String;
    const v4, 0x5f4e5446

    const/4 v5, 0x1

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 67
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 71
    .local v4, "_arg0":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 72
    .local v6, "_arg1":I
    move-object/from16 v13, p0

    invoke-virtual {v13, v4, v6}, Lcom/huawei/fingerprint/IAuthenticator$Stub;->cancelVerifyUser(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)I

    move-result v7

    .line 73
    .local v7, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return v5

    .line 49
    .end local v4    # "_arg0":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v6    # "_arg1":I
    .end local v7    # "_result":I
    :pswitch_1
    move-object/from16 v13, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 53
    .restart local v4    # "_arg0":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/fingerprint/IAuthenticatorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/fingerprint/IAuthenticatorListener;

    move-result-object v6

    .line 55
    .local v6, "_arg1":Lcom/huawei/fingerprint/IAuthenticatorListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 57
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 59
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 60
    .local v16, "_arg4":Ljava/lang/String;
    move-object v7, v13

    move-object v8, v4

    move-object v9, v6

    move v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Lcom/huawei/fingerprint/IAuthenticator$Stub;->verifyUser(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Lcom/huawei/fingerprint/IAuthenticatorListener;I[BLjava/lang/String;)I

    move-result v7

    .line 61
    .restart local v7    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return v5

    .line 44
    .end local v4    # "_arg0":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v6    # "_arg1":Lcom/huawei/fingerprint/IAuthenticatorListener;
    .end local v7    # "_result":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":Ljava/lang/String;
    :cond_0
    move-object/from16 v13, p0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
