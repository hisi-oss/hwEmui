.class public abstract Lhuawei/android/security/ITrustCircleManager$Stub;
.super Landroid/os/Binder;
.source "ITrustCircleManager.java"

# interfaces
.implements Lhuawei/android/security/ITrustCircleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/ITrustCircleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/ITrustCircleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.ITrustCircleManager"

.field static final TRANSACTION_cancelAuthentication:I = 0x11

.field static final TRANSACTION_cancelRegOrLogin:I = 0x8

.field static final TRANSACTION_finalLogin:I = 0x7

.field static final TRANSACTION_finalRegister:I = 0x6

.field static final TRANSACTION_getCurrentState:I = 0x3

.field static final TRANSACTION_getTcisInfo:I = 0x1

.field static final TRANSACTION_initAuthenticate:I = 0xb

.field static final TRANSACTION_initKeyAgreement:I = 0x2

.field static final TRANSACTION_loginServerRequest:I = 0x4

.field static final TRANSACTION_logout:I = 0x9

.field static final TRANSACTION_receiveAck:I = 0xe

.field static final TRANSACTION_receiveAuthSync:I = 0xc

.field static final TRANSACTION_receiveAuthSyncAck:I = 0xd

.field static final TRANSACTION_receivePK:I = 0x10

.field static final TRANSACTION_requestPK:I = 0xf

.field static final TRANSACTION_unregister:I = 0xa

.field static final TRANSACTION_updateServerRequest:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.android.security.ITrustCircleManager"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/ITrustCircleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ITrustCircleManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.android.security.ITrustCircleManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/ITrustCircleManager;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/ITrustCircleManager;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/android/security/ITrustCircleManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/ITrustCircleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 33
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v11, p3

    .line 38
    const-string v12, "huawei.android.security.ITrustCircleManager"

    .line 39
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_1

    packed-switch v14, :pswitch_data_0

    .line 306
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 297
    :pswitch_0
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 300
    .local v0, "_arg0":J
    invoke-virtual {v15, v0, v1}, Lhuawei/android/security/ITrustCircleManager$Stub;->cancelAuthentication(J)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    return v10

    .line 281
    .end local v0    # "_arg0":J
    :pswitch_1
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 285
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 287
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 289
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 290
    .local v16, "_arg3":[B
    move-object v0, v15

    move-wide v1, v6

    move v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/security/ITrustCircleManager$Stub;->receivePK(JI[B[B)Z

    move-result v0

    .line 291
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return v10

    .line 269
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v16    # "_arg3":[B
    :pswitch_2
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 273
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 274
    .local v2, "_arg1":J
    invoke-virtual {v15, v0, v1, v2, v3}, Lhuawei/android/security/ITrustCircleManager$Stub;->requestPK(JJ)Z

    move-result v4

    .line 275
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    return v10

    .line 257
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 261
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 262
    .local v2, "_arg1":[B
    invoke-virtual {v15, v0, v1, v2}, Lhuawei/android/security/ITrustCircleManager$Stub;->receiveAck(J[B)Z

    move-result v3

    .line 263
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return v10

    .line 233
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 237
    .local v16, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 239
    .local v18, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 241
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 243
    .local v20, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 245
    .local v22, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 247
    .local v23, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 249
    .local v24, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v25

    .line 250
    .local v25, "_arg7":[B
    move-object v0, v15

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-wide/from16 v5, v20

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lhuawei/android/security/ITrustCircleManager$Stub;->receiveAuthSyncAck(J[BIJ[BI[B[B)Z

    move-result v0

    .line 251
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return v14

    .line 199
    .end local v0    # "_result":Z
    .end local v16    # "_arg0":J
    .end local v18    # "_arg1":[B
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":J
    .end local v22    # "_arg4":[B
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":[B
    .end local v25    # "_arg7":[B
    :pswitch_5
    move v14, v10

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/IAuthCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IAuthCallback;

    move-result-object v16

    .line 203
    .local v16, "_arg0":Lhuawei/android/security/IAuthCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 205
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 207
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 209
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 211
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 213
    .local v21, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 215
    .local v23, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 217
    .local v24, "_arg7":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 219
    .local v25, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 221
    .local v26, "_arg9":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 223
    .local v28, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v29

    .line 225
    .local v29, "_arg11":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v30

    .line 226
    .local v30, "_arg12":[B
    move-object v0, v15

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v6, v21

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    move-object/from16 v31, v12

    move-wide/from16 v11, v26

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v31, "descriptor":Ljava/lang/String;
    move/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    invoke-virtual/range {v0 .. v15}, Lhuawei/android/security/ITrustCircleManager$Stub;->receiveAuthSync(Lhuawei/android/security/IAuthCallback;IIIIJ[B[BIJI[B[B)J

    move-result-wide v0

    .line 227
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v8, p3

    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    const/4 v9, 0x1

    return v9

    .line 179
    .end local v0    # "_result":J
    .end local v16    # "_arg0":Lhuawei/android/security/IAuthCallback;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":J
    .end local v23    # "_arg6":[B
    .end local v24    # "_arg7":[B
    .end local v25    # "_arg8":I
    .end local v26    # "_arg9":J
    .end local v28    # "_arg10":I
    .end local v29    # "_arg11":[B
    .end local v30    # "_arg12":[B
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6
    move v9, v10

    move-object v8, v11

    move-object/from16 v31, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    move-object/from16 v11, v31

    move-object/from16 v10, p2

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    .end local v31    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/IAuthCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IAuthCallback;

    move-result-object v12

    .line 183
    .local v12, "_arg0":Lhuawei/android/security/IAuthCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 185
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 187
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 189
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 191
    .local v16, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 192
    .local v18, "_arg5":[B
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-wide/from16 v5, v16

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/security/ITrustCircleManager$Stub;->initAuthenticate(Lhuawei/android/security/IAuthCallback;IIIJ[B)J

    move-result-wide v0

    .line 193
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    return v9

    .line 168
    .end local v0    # "_result":J
    .end local v11    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":J
    .end local v18    # "_arg5":[B
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_7
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/ILifeCycleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ILifeCycleCallback;

    move-result-object v0

    .line 172
    .local v0, "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 173
    .local v1, "_arg1":J
    move-object/from16 v7, p0

    invoke-virtual {v7, v0, v1, v2}, Lhuawei/android/security/ITrustCircleManager$Stub;->unregister(Lhuawei/android/security/ILifeCycleCallback;J)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    return v9

    .line 157
    .end local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    .end local v1    # "_arg1":J
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_8
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/ILifeCycleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ILifeCycleCallback;

    move-result-object v0

    .line 161
    .restart local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 162
    .restart local v1    # "_arg1":J
    invoke-virtual {v7, v0, v1, v2}, Lhuawei/android/security/ITrustCircleManager$Stub;->logout(Lhuawei/android/security/ILifeCycleCallback;J)V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    return v9

    .line 146
    .end local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    .end local v1    # "_arg1":J
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_9
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/ILifeCycleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ILifeCycleCallback;

    move-result-object v0

    .line 150
    .restart local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 151
    .restart local v1    # "_arg1":J
    invoke-virtual {v7, v0, v1, v2}, Lhuawei/android/security/ITrustCircleManager$Stub;->cancelRegOrLogin(Lhuawei/android/security/ILifeCycleCallback;J)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    return v9

    .line 131
    .end local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    .end local v1    # "_arg1":J
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_a
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/ILifeCycleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ILifeCycleCallback;

    move-result-object v0

    .line 135
    .restart local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Lhuawei/android/security/ITrustCircleManager$Stub;->finalLogin(Lhuawei/android/security/ILifeCycleCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    return v9

    .line 114
    .end local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_b
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/ILifeCycleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ILifeCycleCallback;

    move-result-object v6

    .line 118
    .local v6, "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 122
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "_arg4":Ljava/lang/String;
    move-object v0, v7

    move-object v1, v6

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/security/ITrustCircleManager$Stub;->finalRegister(Lhuawei/android/security/ILifeCycleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v9

    .line 103
    .end local v6    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    .end local v11    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg4":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_c
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/ILifeCycleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ILifeCycleCallback;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 108
    .local v1, "_arg1":J
    invoke-virtual {v7, v0, v1, v2}, Lhuawei/android/security/ITrustCircleManager$Stub;->updateServerRequest(Lhuawei/android/security/ILifeCycleCallback;J)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v9

    .line 88
    .end local v0    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    .end local v1    # "_arg1":J
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_d
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/ILifeCycleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ILifeCycleCallback;

    move-result-object v6

    .line 92
    .restart local v6    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 94
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 96
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, "_arg3":Ljava/lang/String;
    move-object v0, v7

    move-object v1, v6

    move-wide v2, v12

    move v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/security/ITrustCircleManager$Stub;->loginServerRequest(Lhuawei/android/security/ILifeCycleCallback;JILjava/lang/String;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v9

    .line 80
    .end local v6    # "_arg0":Lhuawei/android/security/ILifeCycleCallback;
    .end local v11    # "descriptor":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_e
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/ITrustCircleManager$Stub;->getCurrentState()I

    move-result v0

    .line 82
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v9

    .line 62
    .end local v0    # "_result":I
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_f
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/IKaCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IKaCallback;

    move-result-object v12

    .line 66
    .local v12, "_arg0":Lhuawei/android/security/IKaCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 68
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 70
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 72
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 73
    .local v17, "_arg4":Ljava/lang/String;
    move-object v0, v7

    move-object v1, v12

    move v2, v13

    move-wide v3, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/security/ITrustCircleManager$Stub;->initKeyAgreement(Lhuawei/android/security/IKaCallback;IJ[BLjava/lang/String;)J

    move-result-wide v0

    .line 74
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    return v9

    .line 48
    .end local v0    # "_result":J
    .end local v11    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_10
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/ITrustCircleManager$Stub;->getTcisInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    :goto_0
    return v9

    .line 43
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :cond_1
    move v9, v10

    move-object v8, v11

    move-object v11, v12

    move-object v10, v13

    move-object v7, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
