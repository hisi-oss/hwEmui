.class public abstract Lhuawei/android/security/IHwEidPlugin$Stub;
.super Landroid/os/Binder;
.source "IHwEidPlugin.java"

# interfaces
.implements Lhuawei/android/security/IHwEidPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/IHwEidPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.IHwEidPlugin"

.field static final TRANSACTION_ctid_get_sec_image:I = 0xb

.field static final TRANSACTION_ctid_get_service_verion_info:I = 0xc

.field static final TRANSACTION_ctid_set_sec_mode:I = 0xa

.field static final TRANSACTION_eidGetSecImageZip:I = 0xd

.field static final TRANSACTION_eidGetUnsecImageZip:I = 0xe

.field static final TRANSACTION_eid_finish:I = 0x2

.field static final TRANSACTION_eid_get_certificate_request_message:I = 0x5

.field static final TRANSACTION_eid_get_face_is_changed:I = 0x8

.field static final TRANSACTION_eid_get_identity_information:I = 0x7

.field static final TRANSACTION_eid_get_image:I = 0x3

.field static final TRANSACTION_eid_get_unsec_image:I = 0x4

.field static final TRANSACTION_eid_get_version:I = 0x9

.field static final TRANSACTION_eid_init:I = 0x1

.field static final TRANSACTION_eid_sign_info:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/IHwEidPlugin$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwEidPlugin;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.android.security.IHwEidPlugin"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/IHwEidPlugin;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/IHwEidPlugin;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 48
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

    move-object/from16 v12, p3

    .line 38
    const-string v11, "huawei.android.security.IHwEidPlugin"

    .line 39
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v14, v0, :cond_16

    packed-switch v14, :pswitch_data_0

    .line 446
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 388
    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 392
    .local v17, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 394
    .local v18, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 396
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 398
    .local v20, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 400
    .local v21, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 402
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 404
    .local v23, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 405
    .local v10, "_arg7_length":I
    if-gez v10, :cond_0

    .line 406
    const/4 v0, 0x0

    .local v0, "_arg7":[I
    goto :goto_0

    .line 409
    .end local v0    # "_arg7":[I
    :cond_0
    new-array v0, v10, [I

    .restart local v0    # "_arg7":[I
    :goto_0
    move-object v9, v0

    .line 412
    .end local v0    # "_arg7":[I
    .local v9, "_arg7":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 413
    .local v8, "_arg8_length":I
    if-gez v8, :cond_1

    .line 414
    const/4 v0, 0x0

    .local v0, "_arg8":[B
    goto :goto_1

    .line 417
    .end local v0    # "_arg8":[B
    :cond_1
    new-array v0, v8, [B

    .restart local v0    # "_arg8":[B
    :goto_1
    move-object v7, v0

    .line 420
    .end local v0    # "_arg8":[B
    .local v7, "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 421
    .local v6, "_arg9_length":I
    if-gez v6, :cond_2

    .line 422
    const/4 v0, 0x0

    .local v0, "_arg9":[I
    goto :goto_2

    .line 425
    .end local v0    # "_arg9":[I
    :cond_2
    new-array v0, v6, [I

    .restart local v0    # "_arg9":[I
    :goto_2
    move-object v5, v0

    .line 428
    .end local v0    # "_arg9":[I
    .local v5, "_arg9":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 429
    .local v4, "_arg10_length":I
    if-gez v4, :cond_3

    .line 430
    const/4 v0, 0x0

    .local v0, "_arg10":[B
    goto :goto_3

    .line 433
    .end local v0    # "_arg10":[B
    :cond_3
    new-array v0, v4, [B

    .restart local v0    # "_arg10":[B
    :goto_3
    move-object v3, v0

    .line 435
    .end local v0    # "_arg10":[B
    .local v3, "_arg10":[B
    move-object v0, v15

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v24, v3

    move/from16 v3, v19

    .end local v3    # "_arg10":[B
    .local v24, "_arg10":[B
    move/from16 v25, v4

    move-object/from16 v4, v20

    .end local v4    # "_arg10_length":I
    .local v25, "_arg10_length":I
    move-object/from16 v26, v5

    move/from16 v5, v21

    .end local v5    # "_arg9":[I
    .local v26, "_arg9":[I
    move/from16 v27, v6

    move/from16 v6, v22

    .end local v6    # "_arg9_length":I
    .local v27, "_arg9_length":I
    move-object/from16 v28, v7

    move-object/from16 v7, v23

    .end local v7    # "_arg8":[B
    .local v28, "_arg8":[B
    move/from16 v29, v8

    move-object v8, v9

    .end local v8    # "_arg8_length":I
    .local v29, "_arg8_length":I
    move-object v14, v9

    move-object/from16 v9, v28

    .end local v9    # "_arg7":[I
    .local v14, "_arg7":[I
    move/from16 v31, v10

    move-object/from16 v10, v26

    .end local v10    # "_arg7_length":I
    .local v31, "_arg7_length":I
    move-object v15, v11

    move-object/from16 v11, v24

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v11}, Lhuawei/android/security/IHwEidPlugin$Stub;->eidGetUnsecImageZip(I[BI[BII[B[I[B[I[B)I

    move-result v0

    .line 436
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 439
    move-object/from16 v1, v28

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 440
    .end local v28    # "_arg8":[B
    .local v1, "_arg8":[B
    move-object/from16 v2, v26

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 441
    .end local v26    # "_arg9":[I
    .local v2, "_arg9":[I
    move-object/from16 v3, v24

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 442
    .end local v24    # "_arg10":[B
    .restart local v3    # "_arg10":[B
    return v16

    .line 322
    .end local v0    # "_result":I
    .end local v1    # "_arg8":[B
    .end local v2    # "_arg9":[I
    .end local v3    # "_arg10":[B
    .end local v14    # "_arg7":[I
    .end local v15    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":[B
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":[B
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":[B
    .end local v25    # "_arg10_length":I
    .end local v27    # "_arg9_length":I
    .end local v29    # "_arg8_length":I
    .end local v31    # "_arg7_length":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1
    move-object v15, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 326
    .restart local v17    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 328
    .restart local v18    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 330
    .restart local v19    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 332
    .restart local v20    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 334
    .restart local v21    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 336
    .restart local v22    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 338
    .local v23, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 340
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 342
    .local v25, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 344
    .local v26, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v27

    .line 346
    .local v27, "_arg10":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 347
    .local v14, "_arg11_length":I
    if-gez v14, :cond_4

    .line 348
    const/4 v0, 0x0

    .local v0, "_arg11":[I
    goto :goto_4

    .line 351
    .end local v0    # "_arg11":[I
    :cond_4
    new-array v0, v14, [I

    .restart local v0    # "_arg11":[I
    :goto_4
    move-object v11, v0

    .line 354
    .end local v0    # "_arg11":[I
    .local v11, "_arg11":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 355
    .local v10, "_arg12_length":I
    if-gez v10, :cond_5

    .line 356
    const/4 v0, 0x0

    .local v0, "_arg12":[B
    goto :goto_5

    .line 359
    .end local v0    # "_arg12":[B
    :cond_5
    new-array v0, v10, [B

    .restart local v0    # "_arg12":[B
    :goto_5
    move-object v9, v0

    .line 362
    .end local v0    # "_arg12":[B
    .local v9, "_arg12":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 363
    .local v8, "_arg13_length":I
    if-gez v8, :cond_6

    .line 364
    const/4 v0, 0x0

    .local v0, "_arg13":[I
    goto :goto_6

    .line 367
    .end local v0    # "_arg13":[I
    :cond_6
    new-array v0, v8, [I

    .restart local v0    # "_arg13":[I
    :goto_6
    move-object v7, v0

    .line 370
    .end local v0    # "_arg13":[I
    .local v7, "_arg13":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 371
    .local v6, "_arg14_length":I
    if-gez v6, :cond_7

    .line 372
    const/4 v0, 0x0

    .local v0, "_arg14":[B
    goto :goto_7

    .line 375
    .end local v0    # "_arg14":[B
    :cond_7
    new-array v0, v6, [B

    .restart local v0    # "_arg14":[B
    :goto_7
    move-object v5, v0

    .line 377
    .end local v0    # "_arg14":[B
    .local v5, "_arg14":[B
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v32, v5

    move/from16 v5, v21

    .end local v5    # "_arg14":[B
    .local v32, "_arg14":[B
    move/from16 v28, v6

    move/from16 v6, v22

    .end local v6    # "_arg14_length":I
    .local v28, "_arg14_length":I
    move-object/from16 v33, v7

    move/from16 v7, v23

    .end local v7    # "_arg13":[I
    .local v33, "_arg13":[I
    move/from16 v29, v8

    move/from16 v8, v24

    .end local v8    # "_arg13_length":I
    .local v29, "_arg13_length":I
    move-object/from16 v34, v9

    move/from16 v9, v25

    .end local v9    # "_arg12":[B
    .local v34, "_arg12":[B
    move/from16 v31, v10

    move/from16 v10, v26

    .end local v10    # "_arg12_length":I
    .local v31, "_arg12_length":I
    move-object/from16 v35, v11

    move-object/from16 v11, v27

    .end local v11    # "_arg11":[I
    .local v35, "_arg11":[I
    move-object/from16 v12, v35

    move-object/from16 v13, v34

    move/from16 v30, v14

    move-object/from16 v14, v33

    .end local v14    # "_arg11_length":I
    .local v30, "_arg11_length":I
    move-object/from16 v36, v15

    move-object/from16 v15, v32

    .end local v15    # "descriptor":Ljava/lang/String;
    .local v36, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v15}, Lhuawei/android/security/IHwEidPlugin$Stub;->eidGetSecImageZip(I[BI[BIIIIII[B[I[B[I[B)I

    move-result v0

    .line 378
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v11, p3

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    move-object/from16 v1, v35

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 381
    .end local v35    # "_arg11":[I
    .local v1, "_arg11":[I
    move-object/from16 v2, v34

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 382
    .end local v34    # "_arg12":[B
    .local v2, "_arg12":[B
    move-object/from16 v3, v33

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 383
    .end local v33    # "_arg13":[I
    .local v3, "_arg13":[I
    move-object/from16 v4, v32

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 384
    .end local v32    # "_arg14":[B
    .local v4, "_arg14":[B
    return v16

    .line 304
    .end local v0    # "_result":I
    .end local v1    # "_arg11":[I
    .end local v2    # "_arg12":[B
    .end local v3    # "_arg13":[I
    .end local v4    # "_arg14":[B
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":[B
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":[B
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":I
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":[B
    .end local v28    # "_arg14_length":I
    .end local v29    # "_arg13_length":I
    .end local v30    # "_arg11_length":I
    .end local v31    # "_arg12_length":I
    .end local v36    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v36, v11

    move-object v11, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v36    # "descriptor":Ljava/lang/String;
    move-object/from16 v13, v36

    move-object/from16 v12, p2

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    .end local v36    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 308
    .local v6, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 310
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 314
    .local v9, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 315
    .local v10, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/security/IHwEidPlugin$Stub;->ctid_get_service_verion_info([BILjava/lang/String;[II)I

    move-result v0

    .line 316
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    return v16

    .line 296
    .end local v0    # "_result":I
    .end local v6    # "_arg0":[B
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":[I
    .end local v10    # "_arg4":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IHwEidPlugin$Stub;->ctid_get_sec_image()I

    move-result v0

    .line 298
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    return v16

    .line 288
    .end local v0    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IHwEidPlugin$Stub;->ctid_set_sec_mode()I

    move-result v0

    .line 290
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    return v16

    .line 280
    .end local v0    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_get_version()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    return v16

    .line 270
    .end local v0    # "_result":Ljava/lang/String;
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .local v0, "_arg0":I
    move-object/from16 v14, p0

    invoke-virtual {v14, v0}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_get_face_is_changed(I)I

    move-result v1

    .line 274
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return v16

    .line 244
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7
    move-object v14, v15

    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "_arg0_length":I
    if-gez v0, :cond_8

    .line 248
    const/4 v1, 0x0

    .local v1, "_arg0":[B
    goto :goto_8

    .line 251
    .end local v1    # "_arg0":[B
    :cond_8
    new-array v1, v0, [B

    .line 254
    .restart local v1    # "_arg0":[B
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .local v2, "_arg1_length":I
    if-gez v2, :cond_9

    .line 256
    const/4 v3, 0x0

    .local v3, "_arg1":[I
    goto :goto_9

    .line 259
    .end local v3    # "_arg1":[I
    :cond_9
    new-array v3, v2, [I

    .line 261
    .restart local v3    # "_arg1":[I
    :goto_9
    invoke-virtual {v14, v1, v3}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_get_identity_information([B[I)I

    move-result v4

    .line 262
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 265
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 266
    return v16

    .line 210
    .end local v0    # "_arg0_length":I
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1_length":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8
    move-object v14, v15

    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 214
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 216
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 218
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 220
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 221
    .local v15, "_arg4_length":I
    if-gez v15, :cond_a

    .line 222
    const/4 v0, 0x0

    .local v0, "_arg4":[B
    goto :goto_a

    .line 225
    .end local v0    # "_arg4":[B
    :cond_a
    new-array v0, v15, [B

    .restart local v0    # "_arg4":[B
    :goto_a
    move-object v6, v0

    .line 228
    .end local v0    # "_arg4":[B
    .local v6, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 229
    .local v5, "_arg5_length":I
    if-gez v5, :cond_b

    .line 230
    const/4 v0, 0x0

    .local v0, "_arg5":[I
    goto :goto_b

    .line 233
    .end local v0    # "_arg5":[I
    :cond_b
    new-array v0, v5, [I

    .restart local v0    # "_arg5":[I
    :goto_b
    move-object v4, v0

    .line 235
    .end local v0    # "_arg5":[I
    .local v4, "_arg5":[I
    move-object v0, v14

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v37, v4

    move v4, v10

    .end local v4    # "_arg5":[I
    .local v37, "_arg5":[I
    move/from16 v17, v5

    move-object v5, v6

    .end local v5    # "_arg5_length":I
    .local v17, "_arg5_length":I
    move/from16 v38, v7

    move-object v7, v6

    move-object/from16 v6, v37

    .end local v6    # "_arg4":[B
    .local v7, "_arg4":[B
    .local v38, "_arg0":I
    invoke-virtual/range {v0 .. v6}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_sign_info(II[BI[B[I)I

    move-result v0

    .line 236
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 239
    move-object/from16 v1, v37

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    .end local v37    # "_arg5":[I
    .local v1, "_arg5":[I
    return v16

    .line 184
    .end local v0    # "_result":I
    .end local v1    # "_arg5":[I
    .end local v7    # "_arg4":[B
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v15    # "_arg4_length":I
    .end local v17    # "_arg5_length":I
    .end local v38    # "_arg0":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9
    move-object v14, v15

    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .local v0, "_arg0_length":I
    if-gez v0, :cond_c

    .line 188
    const/4 v1, 0x0

    .local v1, "_arg0":[B
    goto :goto_c

    .line 191
    .end local v1    # "_arg0":[B
    :cond_c
    new-array v1, v0, [B

    .line 194
    .restart local v1    # "_arg0":[B
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2    # "_arg1_length":I
    if-gez v2, :cond_d

    .line 196
    const/4 v3, 0x0

    .restart local v3    # "_arg1":[I
    goto :goto_d

    .line 199
    .end local v3    # "_arg1":[I
    :cond_d
    new-array v3, v2, [I

    .line 201
    .restart local v3    # "_arg1":[I
    :goto_d
    invoke-virtual {v14, v1, v3}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_get_certificate_request_message([B[I)I

    move-result v4

    .line 202
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 205
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 206
    return v16

    .line 128
    .end local v0    # "_arg0_length":I
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1_length":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a
    move-object v14, v15

    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 132
    .local v15, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 134
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 136
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 138
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 140
    .local v20, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 142
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 143
    .local v10, "_arg6_length":I
    if-gez v10, :cond_e

    .line 144
    const/4 v0, 0x0

    .local v0, "_arg6":[B
    goto :goto_e

    .line 147
    .end local v0    # "_arg6":[B
    :cond_e
    new-array v0, v10, [B

    .restart local v0    # "_arg6":[B
    :goto_e
    move-object v9, v0

    .line 150
    .end local v0    # "_arg6":[B
    .local v9, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 151
    .local v8, "_arg7_length":I
    if-gez v8, :cond_f

    .line 152
    const/4 v0, 0x0

    .local v0, "_arg7":[I
    goto :goto_f

    .line 155
    .end local v0    # "_arg7":[I
    :cond_f
    new-array v0, v8, [I

    .restart local v0    # "_arg7":[I
    :goto_f
    move-object v7, v0

    .line 158
    .end local v0    # "_arg7":[I
    .local v7, "_arg7":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 159
    .local v6, "_arg8_length":I
    if-gez v6, :cond_10

    .line 160
    const/4 v0, 0x0

    .local v0, "_arg8":[B
    goto :goto_10

    .line 163
    .end local v0    # "_arg8":[B
    :cond_10
    new-array v0, v6, [B

    .restart local v0    # "_arg8":[B
    :goto_10
    move-object v5, v0

    .line 166
    .end local v0    # "_arg8":[B
    .local v5, "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 167
    .local v4, "_arg9_length":I
    if-gez v4, :cond_11

    .line 168
    const/4 v0, 0x0

    .local v0, "_arg9":[I
    goto :goto_11

    .line 171
    .end local v0    # "_arg9":[I
    :cond_11
    new-array v0, v4, [I

    .restart local v0    # "_arg9":[I
    :goto_11
    move-object v3, v0

    .line 173
    .end local v0    # "_arg9":[I
    .local v3, "_arg9":[I
    move-object v0, v14

    move-object v1, v15

    move/from16 v2, v17

    move-object/from16 v39, v3

    move/from16 v3, v18

    .end local v3    # "_arg9":[I
    .local v39, "_arg9":[I
    move/from16 v22, v4

    move/from16 v4, v19

    .end local v4    # "_arg9_length":I
    .local v22, "_arg9_length":I
    move-object/from16 v40, v5

    move-object/from16 v5, v20

    .end local v5    # "_arg8":[B
    .local v40, "_arg8":[B
    move/from16 v23, v6

    move/from16 v6, v21

    .end local v6    # "_arg8_length":I
    .local v23, "_arg8_length":I
    move-object/from16 v41, v7

    move-object v7, v9

    .end local v7    # "_arg7":[I
    .local v41, "_arg7":[I
    move/from16 v24, v8

    move-object/from16 v8, v41

    .end local v8    # "_arg7_length":I
    .local v24, "_arg7_length":I
    move-object/from16 v42, v15

    move-object v15, v9

    move-object/from16 v9, v40

    .end local v9    # "_arg6":[B
    .local v15, "_arg6":[B
    .local v42, "_arg0":[B
    move/from16 v25, v10

    move-object/from16 v10, v39

    .end local v10    # "_arg6_length":I
    .local v25, "_arg6_length":I
    invoke-virtual/range {v0 .. v10}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_get_unsec_image([BIII[BI[B[I[B[I)I

    move-result v0

    .line 174
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 177
    move-object/from16 v1, v41

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 178
    .end local v41    # "_arg7":[I
    .local v1, "_arg7":[I
    move-object/from16 v2, v40

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 179
    .end local v40    # "_arg8":[B
    .local v2, "_arg8":[B
    move-object/from16 v3, v39

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 180
    .end local v39    # "_arg9":[I
    .restart local v3    # "_arg9":[I
    return v16

    .line 76
    .end local v0    # "_result":I
    .end local v1    # "_arg7":[I
    .end local v2    # "_arg8":[B
    .end local v3    # "_arg9":[I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v15    # "_arg6":[B
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":[B
    .end local v21    # "_arg5":I
    .end local v22    # "_arg9_length":I
    .end local v23    # "_arg8_length":I
    .end local v24    # "_arg7_length":I
    .end local v25    # "_arg6_length":I
    .end local v42    # "_arg0":[B
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b
    move-object v14, v15

    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 80
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 82
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 84
    .local v15, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 86
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 87
    .local v8, "_arg4_length":I
    if-gez v8, :cond_12

    .line 88
    const/4 v0, 0x0

    .local v0, "_arg4":[B
    goto :goto_12

    .line 91
    .end local v0    # "_arg4":[B
    :cond_12
    new-array v0, v8, [B

    .restart local v0    # "_arg4":[B
    :goto_12
    move-object v7, v0

    .line 94
    .end local v0    # "_arg4":[B
    .local v7, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 95
    .local v6, "_arg5_length":I
    if-gez v6, :cond_13

    .line 96
    const/4 v0, 0x0

    .local v0, "_arg5":[I
    goto :goto_13

    .line 99
    .end local v0    # "_arg5":[I
    :cond_13
    new-array v0, v6, [I

    .restart local v0    # "_arg5":[I
    :goto_13
    move-object v5, v0

    .line 102
    .end local v0    # "_arg5":[I
    .local v5, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 103
    .local v4, "_arg6_length":I
    if-gez v4, :cond_14

    .line 104
    const/4 v0, 0x0

    .local v0, "_arg6":[B
    goto :goto_14

    .line 107
    .end local v0    # "_arg6":[B
    :cond_14
    new-array v0, v4, [B

    .restart local v0    # "_arg6":[B
    :goto_14
    move-object v3, v0

    .line 110
    .end local v0    # "_arg6":[B
    .local v3, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, "_arg7_length":I
    if-gez v2, :cond_15

    .line 112
    const/4 v0, 0x0

    .local v0, "_arg7":[I
    goto :goto_15

    .line 115
    .end local v0    # "_arg7":[I
    :cond_15
    new-array v0, v2, [I

    .restart local v0    # "_arg7":[I
    :goto_15
    move-object v1, v0

    .line 117
    .end local v0    # "_arg7":[I
    .restart local v1    # "_arg7":[I
    move-object v0, v14

    move-object/from16 v43, v1

    move v1, v9

    .end local v1    # "_arg7":[I
    .local v43, "_arg7":[I
    move/from16 v18, v2

    move v2, v10

    .end local v2    # "_arg7_length":I
    .local v18, "_arg7_length":I
    move-object/from16 v44, v3

    move-object v3, v15

    .end local v3    # "_arg6":[B
    .local v44, "_arg6":[B
    move/from16 v19, v4

    move/from16 v4, v17

    .end local v4    # "_arg6_length":I
    .local v19, "_arg6_length":I
    move-object/from16 v45, v5

    move-object v5, v7

    .end local v5    # "_arg5":[I
    .local v45, "_arg5":[I
    move/from16 v20, v6

    move-object/from16 v6, v45

    .end local v6    # "_arg5_length":I
    .local v20, "_arg5_length":I
    move/from16 v46, v9

    move-object v9, v7

    move-object/from16 v7, v44

    .end local v7    # "_arg4":[B
    .local v9, "_arg4":[B
    .local v46, "_arg0":I
    move/from16 v21, v8

    move-object/from16 v8, v43

    .end local v8    # "_arg4_length":I
    .local v21, "_arg4_length":I
    invoke-virtual/range {v0 .. v8}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_get_image(II[BI[B[I[B[I)I

    move-result v0

    .line 118
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 121
    move-object/from16 v1, v45

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 122
    .end local v45    # "_arg5":[I
    .local v1, "_arg5":[I
    move-object/from16 v2, v44

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 123
    .end local v44    # "_arg6":[B
    .local v2, "_arg6":[B
    move-object/from16 v3, v43

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 124
    .end local v43    # "_arg7":[I
    .local v3, "_arg7":[I
    return v16

    .line 68
    .end local v0    # "_result":I
    .end local v1    # "_arg5":[I
    .end local v2    # "_arg6":[B
    .end local v3    # "_arg7":[I
    .end local v9    # "_arg4":[B
    .end local v10    # "_arg1":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v15    # "_arg2":[B
    .end local v17    # "_arg3":I
    .end local v18    # "_arg7_length":I
    .end local v19    # "_arg6_length":I
    .end local v20    # "_arg5_length":I
    .end local v21    # "_arg4_length":I
    .end local v46    # "_arg0":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c
    move-object v14, v15

    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_finish()I

    move-result v0

    .line 70
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return v16

    .line 48
    .end local v0    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d
    move-object v14, v15

    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 52
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 54
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 56
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 58
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 60
    .local v15, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 61
    .local v17, "_arg5":I
    move-object v0, v14

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v15

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/security/IHwEidPlugin$Stub;->eid_init([BI[BI[BI)I

    move-result v0

    .line 62
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v16

    .line 43
    .end local v0    # "_result":I
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v15    # "_arg4":[B
    .end local v17    # "_arg5":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :cond_16
    move-object v14, v15

    move-object/from16 v47, v13

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v12, v47

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
