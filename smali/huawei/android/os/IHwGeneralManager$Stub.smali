.class public abstract Lhuawei/android/os/IHwGeneralManager$Stub;
.super Landroid/os/Binder;
.source "IHwGeneralManager.java"

# interfaces
.implements Lhuawei/android/os/IHwGeneralManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/os/IHwGeneralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/os/IHwGeneralManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.os.IHwGeneralManager"

.field static final TRANSACTION_addSdCardUserKeyAuth:I = 0x1c

.field static final TRANSACTION_backupSecretkey:I = 0x1d

.field static final TRANSACTION_clearSDLockPassword:I = 0x2

.field static final TRANSACTION_doSdcardCheckRW:I = 0x25

.field static final TRANSACTION_eraseSDLock:I = 0x4

.field static final TRANSACTION_forceIdle:I = 0x8

.field static final TRANSACTION_getDeviceId:I = 0x24

.field static final TRANSACTION_getLocalDevStat:I = 0x23

.field static final TRANSACTION_getPartitionInfo:I = 0x1f

.field static final TRANSACTION_getPressureLimit:I = 0xa

.field static final TRANSACTION_getSDCardId:I = 0x6

.field static final TRANSACTION_getSDLockState:I = 0x5

.field static final TRANSACTION_getTestService:I = 0x17

.field static final TRANSACTION_getTouchWeightValue:I = 0x15

.field static final TRANSACTION_hasHaptic:I = 0x12

.field static final TRANSACTION_isCurveScreen:I = 0xb

.field static final TRANSACTION_isPlaying:I = 0x10

.field static final TRANSACTION_isSupportForce:I = 0x9

.field static final TRANSACTION_isSupportedCifs:I = 0x22

.field static final TRANSACTION_mkDataDir:I = 0x16

.field static final TRANSACTION_mountCifs:I = 0x20

.field static final TRANSACTION_pausePlayEffect:I = 0xe

.field static final TRANSACTION_playIvtEffect:I = 0xc

.field static final TRANSACTION_readProtectArea:I = 0x18

.field static final TRANSACTION_resetTouchWeight:I = 0x14

.field static final TRANSACTION_resumePausedEffect:I = 0xf

.field static final TRANSACTION_setSDLockPassword:I = 0x1

.field static final TRANSACTION_setSdCardCryptdEnable:I = 0x1a

.field static final TRANSACTION_startFileBackup:I = 0x7

.field static final TRANSACTION_startHaptic:I = 0x11

.field static final TRANSACTION_stopHaptic:I = 0x13

.field static final TRANSACTION_stopPlayEffect:I = 0xd

.field static final TRANSACTION_supportHwPush:I = 0x1e

.field static final TRANSACTION_unlockSDCard:I = 0x3

.field static final TRANSACTION_unlockSdCardKey:I = 0x1b

.field static final TRANSACTION_unmountCifs:I = 0x21

.field static final TRANSACTION_writeProtectArea:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "huawei.android.os.IHwGeneralManager"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/os/IHwGeneralManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/os/IHwGeneralManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "huawei.android.os.IHwGeneralManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/os/IHwGeneralManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lhuawei/android/os/IHwGeneralManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lhuawei/android/os/IHwGeneralManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/os/IHwGeneralManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const-string v0, "huawei.android.os.IHwGeneralManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 447
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 439
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->doSdcardCheckRW()I

    move-result v1

    .line 441
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    return v2

    .line 429
    .end local v1    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->getDeviceId(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    return v2

    .line 419
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->getLocalDevStat(I)I

    move-result v3

    .line 423
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    return v2

    .line 411
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->isSupportedCifs()I

    move-result v1

    .line 413
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    return v2

    .line 402
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->unmountCifs(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    return v2

    .line 388
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 395
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3, v4}, Lhuawei/android/os/IHwGeneralManager$Stub;->mountCifs(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    return v2

    .line 376
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 380
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/os/IHwGeneralManager$Stub;->getPartitionInfo(Ljava/lang/String;I)J

    move-result-wide v4

    .line 382
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 384
    return v2

    .line 368
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->supportHwPush()Z

    move-result v1

    .line 370
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    return v2

    .line 360
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->backupSecretkey()I

    move-result v1

    .line 362
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    return v2

    .line 344
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 348
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 352
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 353
    .local v5, "_arg3":[B
    invoke-virtual {p0, v1, v3, v4, v5}, Lhuawei/android/os/IHwGeneralManager$Stub;->addSdCardUserKeyAuth(II[B[B)I

    move-result v6

    .line 354
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    return v2

    .line 328
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 336
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 337
    .restart local v5    # "_arg3":[B
    invoke-virtual {p0, v1, v3, v4, v5}, Lhuawei/android/os/IHwGeneralManager$Stub;->unlockSdCardKey(II[B[B)I

    move-result v6

    .line 338
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    return v2

    .line 316
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    nop

    :cond_0
    move v1, v3

    .line 320
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lhuawei/android/os/IHwGeneralManager$Stub;->setSdCardCryptdEnable(ZLjava/lang/String;)I

    move-result v4

    .line 322
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    return v2

    .line 293
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 299
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 302
    .local v5, "_arg3_length":I
    if-gez v5, :cond_1

    .line 303
    const/4 v6, 0x0

    .local v6, "_arg3":[I
    goto :goto_0

    .line 306
    .end local v6    # "_arg3":[I
    :cond_1
    new-array v6, v5, [I

    .line 308
    .restart local v6    # "_arg3":[I
    :goto_0
    invoke-virtual {p0, v1, v3, v4, v6}, Lhuawei/android/os/IHwGeneralManager$Stub;->writeProtectArea(Ljava/lang/String;ILjava/lang/String;[I)I

    move-result v7

    .line 309
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 312
    return v2

    .line 263
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3_length":I
    .end local v6    # "_arg3":[I
    .end local v7    # "_result":I
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 270
    .local v4, "_arg2_length":I
    if-gez v4, :cond_2

    .line 271
    const/4 v5, 0x0

    .local v5, "_arg2":[Ljava/lang/String;
    goto :goto_1

    .line 274
    .end local v5    # "_arg2":[Ljava/lang/String;
    :cond_2
    new-array v5, v4, [Ljava/lang/String;

    .line 277
    .restart local v5    # "_arg2":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 278
    .local v6, "_arg3_length":I
    if-gez v6, :cond_3

    .line 279
    const/4 v7, 0x0

    .local v7, "_arg3":[I
    goto :goto_2

    .line 282
    .end local v7    # "_arg3":[I
    :cond_3
    new-array v7, v6, [I

    .line 284
    .restart local v7    # "_arg3":[I
    :goto_2
    invoke-virtual {p0, v1, v3, v5, v7}, Lhuawei/android/os/IHwGeneralManager$Stub;->readProtectArea(Ljava/lang/String;I[Ljava/lang/String;[I)I

    move-result v8

    .line 285
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 288
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 289
    return v2

    .line 249
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2_length":I
    .end local v5    # "_arg2":[Ljava/lang/String;
    .end local v6    # "_arg3_length":I
    .end local v7    # "_arg3":[I
    .end local v8    # "_result":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->getTestService()Landroid/os/Messenger;

    move-result-object v1

    .line 251
    .local v1, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    invoke-virtual {v1, p3, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 257
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    :goto_3
    return v2

    .line 239
    .end local v1    # "_result":Landroid/os/Messenger;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->mkDataDir(Ljava/lang/String;)Z

    move-result v3

    .line 243
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return v2

    .line 231
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->getTouchWeightValue()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    return v2

    .line 224
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->resetTouchWeight()V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    return v2

    .line 217
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->stopHaptic()V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    return v2

    .line 202
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_4

    .line 208
    .end local v1    # "_arg0":Landroid/net/Uri;
    :cond_5
    nop

    .line 210
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_4
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->hasHaptic(Landroid/net/Uri;)Z

    move-result v3

    .line 211
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    return v2

    .line 183
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_result":Z
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 190
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg2":Landroid/net/Uri;
    goto :goto_5

    .line 193
    .end local v1    # "_arg2":Landroid/net/Uri;
    :cond_6
    nop

    .line 195
    .restart local v1    # "_arg2":Landroid/net/Uri;
    :goto_5
    invoke-virtual {p0, v3, v4, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->startHaptic(IILandroid/net/Uri;)Z

    move-result v5

    .line 196
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    return v2

    .line 173
    .end local v1    # "_arg2":Landroid/net/Uri;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->isPlaying(Ljava/lang/String;)Z

    move-result v3

    .line 177
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return v2

    .line 164
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->resumePausedEffect(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v2

    .line 155
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->pausePlayEffect(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    return v2

    .line 148
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->stopPlayEffect()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    return v2

    .line 139
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->playIvtEffect(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v2

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->isCurveScreen()Z

    move-result v1

    .line 133
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return v2

    .line 123
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->getPressureLimit()F

    move-result v1

    .line 125
    .local v1, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 127
    return v2

    .line 115
    .end local v1    # "_result":F
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->isSupportForce()Z

    move-result v1

    .line 117
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v2

    .line 107
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->forceIdle()I

    move-result v1

    .line 109
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return v2

    .line 100
    .end local v1    # "_result":I
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->startFileBackup()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v2

    .line 92
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->getSDCardId()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v2

    .line 84
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->getSDLockState()I

    move-result v1

    .line 86
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v2

    .line 77
    .end local v1    # "_result":I
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->eraseSDLock()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v2

    .line 67
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->unlockSDCard(Ljava/lang/String;)I

    move-result v3

    .line 71
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return v2

    .line 59
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lhuawei/android/os/IHwGeneralManager$Stub;->clearSDLockPassword()I

    move-result v1

    .line 61
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return v2

    .line 49
    .end local v1    # "_result":I
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwGeneralManager$Stub;->setSDLockPassword(Ljava/lang/String;)I

    move-result v3

    .line 53
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return v2

    .line 44
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
