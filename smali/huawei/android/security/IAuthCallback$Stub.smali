.class public abstract Lhuawei/android/security/IAuthCallback$Stub;
.super Landroid/os/Binder;
.source "IAuthCallback.java"

# interfaces
.implements Lhuawei/android/security/IAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/IAuthCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IAuthCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.IAuthCallback"

.field static final TRANSACTION_onAuthAck:I = 0x5

.field static final TRANSACTION_onAuthAckError:I = 0x6

.field static final TRANSACTION_onAuthError:I = 0x2

.field static final TRANSACTION_onAuthExited:I = 0x9

.field static final TRANSACTION_onAuthSync:I = 0x1

.field static final TRANSACTION_onAuthSyncAck:I = 0x3

.field static final TRANSACTION_onAuthSyncAckError:I = 0x4

.field static final TRANSACTION_requestPK:I = 0x7

.field static final TRANSACTION_responsePK:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.android.security.IAuthCallback"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/IAuthCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IAuthCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.android.security.IAuthCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/IAuthCallback;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/IAuthCallback;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/android/security/IAuthCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/IAuthCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    .line 38
    const-string v14, "huawei.android.security.IAuthCallback"

    .line 39
    .local v14, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v12, v0, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 177
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 166
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 170
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .local v2, "_arg1":I
    invoke-virtual {v11, v0, v1, v2}, Lhuawei/android/security/IAuthCallback$Stub;->onAuthExited(JI)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    return v15

    .line 151
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_1
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 155
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 157
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 159
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 160
    .local v10, "_arg3":[B
    move-object v0, v11

    move-wide v1, v6

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/security/IAuthCallback$Stub;->responsePK(JI[B[B)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    return v15

    .line 144
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    :pswitch_2
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IAuthCallback$Stub;->requestPK()V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v15

    .line 133
    :pswitch_3
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 137
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2    # "_arg1":I
    invoke-virtual {v11, v0, v1, v2}, Lhuawei/android/security/IAuthCallback$Stub;->onAuthAckError(JI)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v15

    .line 116
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_4
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 120
    .local v7, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 122
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 124
    .local v10, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 126
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 127
    .local v17, "_arg4":[B
    move-object v0, v11

    move-wide v1, v7

    move v3, v9

    move-object v4, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/security/IAuthCallback$Stub;->onAuthAck(JI[B[B[B)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    return v15

    .line 105
    .end local v7    # "_arg0":J
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":[B
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":[B
    :pswitch_5
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 109
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2    # "_arg1":I
    invoke-virtual {v11, v0, v1, v2}, Lhuawei/android/security/IAuthCallback$Stub;->onAuthSyncAckError(JI)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v15

    .line 82
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_6
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 86
    .local v16, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 88
    .local v18, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 90
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 92
    .local v20, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 94
    .local v22, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 96
    .local v23, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 98
    .local v24, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v25

    .line 99
    .local v25, "_arg7":[B
    move-object v0, v11

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-wide/from16 v5, v20

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lhuawei/android/security/IAuthCallback$Stub;->onAuthSyncAck(J[BIJ[BI[B[B)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    return v15

    .line 71
    .end local v16    # "_arg0":J
    .end local v18    # "_arg1":[B
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":J
    .end local v22    # "_arg4":[B
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":[B
    .end local v25    # "_arg7":[B
    :pswitch_7
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 75
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2    # "_arg1":I
    invoke-virtual {v11, v0, v1, v2}, Lhuawei/android/security/IAuthCallback$Stub;->onAuthError(JI)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v15

    .line 48
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_8
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 52
    .restart local v16    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 54
    .restart local v18    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 56
    .restart local v19    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 58
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 60
    .local v21, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 62
    .restart local v23    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 64
    .restart local v24    # "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v25

    .line 65
    .restart local v25    # "_arg7":[B
    move-object v0, v11

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v6, v21

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lhuawei/android/security/IAuthCallback$Stub;->onAuthSync(J[BIIJI[B[B)V

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v15

    .line 43
    .end local v16    # "_arg0":J
    .end local v18    # "_arg1":[B
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":J
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":[B
    .end local v25    # "_arg7":[B
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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
