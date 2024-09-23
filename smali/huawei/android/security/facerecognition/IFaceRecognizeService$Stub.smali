.class public abstract Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;
.super Landroid/os/Binder;
.source "IFaceRecognizeService.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/IFaceRecognizeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/IFaceRecognizeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.facerecognition.IFaceRecognizeService"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_getAngleDim:I = 0x12

.field static final TRANSACTION_getEnrolledFaceRecognizes:I = 0x7

.field static final TRANSACTION_getHardwareSupportType:I = 0x8

.field static final TRANSACTION_getPayResult:I = 0x14

.field static final TRANSACTION_getRemainingNum:I = 0xc

.field static final TRANSACTION_getRemainingTime:I = 0xe

.field static final TRANSACTION_getTotalAuthFailedTimes:I = 0xd

.field static final TRANSACTION_hasAlternateAppearance:I = 0x15

.field static final TRANSACTION_init:I = 0xf

.field static final TRANSACTION_postEnroll:I = 0xa

.field static final TRANSACTION_preEnroll:I = 0x9

.field static final TRANSACTION_preparePayInfo:I = 0x13

.field static final TRANSACTION_release:I = 0x10

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_rename:I = 0x6

.field static final TRANSACTION_resetTimeout:I = 0xb

.field static final TRANSACTION_setSecureFaceMode:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "huawei.android.security.facerecognition.IFaceRecognizeService"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "huawei.android.security.facerecognition.IFaceRecognizeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 40
    const-string v12, "huawei.android.security.facerecognition.IFaceRecognizeService"

    .line 41
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_3

    packed-switch v9, :pswitch_data_0

    .line 324
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 312
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 316
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->hasAlternateAppearance(Landroid/os/IBinder;I)I

    move-result v2

    .line 318
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    return v13

    .line 272
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 276
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 277
    .local v7, "_arg1_length":I
    if-gez v7, :cond_0

    .line 278
    const/4 v0, 0x0

    .local v0, "_arg1":[I
    goto :goto_0

    .line 281
    .end local v0    # "_arg1":[I
    :cond_0
    new-array v0, v7, [I

    .restart local v0    # "_arg1":[I
    :goto_0
    move-object v14, v0

    .line 284
    .end local v0    # "_arg1":[I
    .local v14, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 285
    .local v15, "_arg2_length":I
    if-gez v15, :cond_1

    .line 286
    const/4 v0, 0x0

    .local v0, "_arg2":[B
    goto :goto_1

    .line 289
    .end local v0    # "_arg2":[B
    :cond_1
    new-array v0, v15, [B

    .restart local v0    # "_arg2":[B
    :goto_1
    move-object v5, v0

    .line 292
    .end local v0    # "_arg2":[B
    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    .local v4, "_arg3_length":I
    if-gez v4, :cond_2

    .line 294
    const/4 v0, 0x0

    .local v0, "_arg3":[I
    goto :goto_2

    .line 297
    .end local v0    # "_arg3":[I
    :cond_2
    new-array v0, v4, [I

    .restart local v0    # "_arg3":[I
    :goto_2
    move-object v3, v0

    .line 300
    .end local v0    # "_arg3":[I
    .local v3, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 301
    .local v2, "_arg4":[B
    move-object v0, v8

    move-object v1, v6

    move-object/from16 v16, v2

    move-object v2, v14

    .end local v2    # "_arg4":[B
    .local v16, "_arg4":[B
    move-object/from16 v17, v3

    move-object v3, v5

    .end local v3    # "_arg3":[I
    .local v17, "_arg3":[I
    move/from16 v18, v4

    move-object/from16 v4, v17

    .end local v4    # "_arg3_length":I
    .local v18, "_arg3_length":I
    move-object v13, v5

    move-object/from16 v5, v16

    .end local v5    # "_arg2":[B
    .local v13, "_arg2":[B
    invoke-virtual/range {v0 .. v5}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->getPayResult(Landroid/os/IBinder;[I[B[I[B)I

    move-result v0

    .line 302
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 305
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 306
    move-object/from16 v1, v17

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 307
    .end local v17    # "_arg3":[I
    .local v1, "_arg3":[I
    move-object/from16 v2, v16

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 308
    .end local v16    # "_arg4":[B
    .restart local v2    # "_arg4":[B
    const/4 v3, 0x1

    return v3

    .line 255
    .end local v0    # "_result":I
    .end local v1    # "_arg3":[I
    .end local v2    # "_arg4":[B
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1_length":I
    .end local v13    # "_arg2":[B
    .end local v14    # "_arg1":[I
    .end local v15    # "_arg2_length":I
    .end local v18    # "_arg3_length":I
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 259
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 261
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 263
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 264
    .local v3, "_arg3":[B
    invoke-virtual {v8, v0, v1, v2, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->preparePayInfo(Landroid/os/IBinder;[B[B[B)I

    move-result v4

    .line 265
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 268
    const/4 v5, 0x1

    return v5

    .line 245
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 248
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8, v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->getAngleDim(Landroid/os/IBinder;)I

    move-result v1

    .line 249
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v2, 0x1

    return v2

    .line 233
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 237
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->setSecureFaceMode(Landroid/os/IBinder;I)I

    move-result v2

    .line 239
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v3, 0x1

    return v3

    .line 221
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->release(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v2

    .line 227
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v3, 0x1

    return v3

    .line 209
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 213
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->init(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v2

    .line 215
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v3, 0x1

    return v3

    .line 201
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_7
    move v3, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->getRemainingTime()J

    move-result-wide v0

    .line 203
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    return v3

    .line 193
    .end local v0    # "_result":J
    :pswitch_8
    move v3, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->getTotalAuthFailedTimes()I

    move-result v0

    .line 195
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return v3

    .line 185
    .end local v0    # "_result":I
    :pswitch_9
    move v3, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->getRemainingNum()I

    move-result v0

    .line 187
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return v3

    .line 176
    .end local v0    # "_result":I
    :pswitch_a
    move v3, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 179
    .local v0, "_arg0":[B
    invoke-virtual {v8, v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->resetTimeout([B)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    return v3

    .line 166
    .end local v0    # "_arg0":[B
    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 169
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8, v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->postEnroll(Landroid/os/IBinder;)I

    move-result v1

    .line 170
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v2, 0x1

    return v2

    .line 156
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 159
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8, v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v1

    .line 160
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {v11, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    const/4 v3, 0x1

    return v3

    .line 148
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":J
    :pswitch_d
    move v3, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->getHardwareSupportType()I

    move-result v0

    .line 150
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return v3

    .line 136
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->getEnrolledFaceRecognizes(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/security/facerecognition/FaceRecognition;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    const/4 v3, 0x1

    return v3

    .line 123
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/security/facerecognition/FaceRecognition;>;"
    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v8, v0, v1, v2}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->rename(IILjava/lang/String;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v3, 0x1

    return v3

    .line 108
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    move-result-object v3

    .line 117
    .local v3, "_arg3":Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;
    invoke-virtual {v8, v0, v1, v2, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->remove(Landroid/os/IBinder;IILhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    const/4 v4, 0x1

    return v4

    .line 99
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;
    :pswitch_11
    move v4, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8, v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v4

    .line 80
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 84
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 86
    .local v13, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 88
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 90
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    move-result-object v16

    .line 92
    .local v16, "_arg4":Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 93
    .local v17, "_arg5":Ljava/lang/String;
    move-object v0, v8

    move-object v1, v7

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->enroll(Landroid/os/IBinder;[BIILhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v0, 0x1

    return v0

    .line 69
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;
    .end local v17    # "_arg5":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v2, 0x1

    return v2

    .line 50
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 54
    .local v13, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 56
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 58
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 60
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    move-result-object v18

    .line 62
    .local v18, "_arg4":Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 63
    .local v19, "_arg5":Ljava/lang/String;
    move-object v0, v8

    move-object v1, v13

    move-wide v2, v14

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->authenticate(Landroid/os/IBinder;JIILhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v0, 0x1

    return v0

    .line 45
    .end local v13    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;
    .end local v19    # "_arg5":Ljava/lang/String;
    :cond_3
    move v0, v13

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
