.class public abstract Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;
.super Landroid/os/Binder;
.source "IHwSecurityDiagnosePlugin.java"

# interfaces
.implements Lhuawei/android/security/IHwSecurityDiagnosePlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/IHwSecurityDiagnosePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.IHwSecurityDiagnosePlugin"

.field static final TRANSACTION_componentValid:I = 0x4

.field static final TRANSACTION_getRootStatus:I = 0x5

.field static final TRANSACTION_getRootStatusSync:I = 0x6

.field static final TRANSACTION_getSystemStatus:I = 0x2

.field static final TRANSACTION_getSystemStatusSync:I = 0x7

.field static final TRANSACTION_report:I = 0x1

.field static final TRANSACTION_sendComponentInfo:I = 0x3

.field static final TRANSACTION_sendThreatenInfo:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.android.security.IHwSecurityDiagnosePlugin"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwSecurityDiagnosePlugin;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.android.security.IHwSecurityDiagnosePlugin"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/IHwSecurityDiagnosePlugin;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/IHwSecurityDiagnosePlugin;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 38
    const-string v11, "huawei.android.security.IHwSecurityDiagnosePlugin"

    .line 39
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_2

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    .line 142
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 122
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 126
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v14

    .line 128
    .local v14, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v15

    .line 130
    .local v15, "_arg2":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v16

    .line 132
    .local v16, "_arg3":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 134
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 135
    .local v18, "_arg5":Ljava/lang/String;
    move-object v0, v7

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->sendThreatenInfo(IBBBLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v12

    .line 114
    .end local v0    # "_result":I
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":B
    .end local v15    # "_arg2":B
    .end local v16    # "_arg3":B
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->getSystemStatusSync()I

    move-result v0

    .line 116
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v12

    .line 106
    .end local v0    # "_result":I
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->getRootStatusSync()I

    move-result v0

    .line 108
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v12

    .line 97
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/IHwSecurityDiagnoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwSecurityDiagnoseCallback;

    move-result-object v0

    .line 100
    .local v0, "_arg0":Lhuawei/android/security/IHwSecurityDiagnoseCallback;
    invoke-virtual {v7, v0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->getRootStatus(Lhuawei/android/security/IHwSecurityDiagnoseCallback;)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v12

    .line 87
    .end local v0    # "_arg0":Lhuawei/android/security/IHwSecurityDiagnoseCallback;
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->componentValid(Ljava/lang/String;)Z

    move-result v1

    .line 91
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v12

    .line 73
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_0
    nop

    .line 81
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v7, v0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->sendComponentInfo(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v12

    .line 65
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->getSystemStatus()I

    move-result v0

    .line 67
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v12

    .line 48
    .end local v0    # "_result":I
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 56
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_1
    nop

    .line 58
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v7, v1, v0}, Lhuawei/android/security/IHwSecurityDiagnosePlugin$Stub;->report(ILandroid/os/Bundle;)I

    move-result v2

    .line 59
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v12

    .line 43
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :cond_2
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
