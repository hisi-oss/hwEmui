.class public abstract Lcom/huawei/android/bastet/IBastetManager$Stub;
.super Landroid/os/Binder;
.source "IBastetManager.java"

# interfaces
.implements Lcom/huawei/android/bastet/IBastetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/bastet/IBastetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/bastet/IBastetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.android.bastet.IBastetManager"

.field static final TRANSACTION_broadcastReceived:I = 0x1b

.field static final TRANSACTION_clearProxyById:I = 0x7

.field static final TRANSACTION_configAppUidList:I = 0x20

.field static final TRANSACTION_configDataAccelerate:I = 0x22

.field static final TRANSACTION_hrtAppActivity:I = 0x1d

.field static final TRANSACTION_indicateAction:I = 0x1e

.field static final TRANSACTION_initEmailProxy:I = 0x4

.field static final TRANSACTION_initHeartbeatProxy:I = 0x3

.field static final TRANSACTION_initHwBastetService:I = 0x1a

.field static final TRANSACTION_inquireNetworkQuality:I = 0x18

.field static final TRANSACTION_isProxyProtocolSupport:I = 0x2

.field static final TRANSACTION_isProxyServiceAvailable:I = 0x1

.field static final TRANSACTION_notifyAlarmTimeout:I = 0x21

.field static final TRANSACTION_notifyNrtTimeout:I = 0x17

.field static final TRANSACTION_packageChangedReceived:I = 0x1c

.field static final TRANSACTION_prepareHeartbeatProxy:I = 0x19

.field static final TRANSACTION_setDeviceId:I = 0xf

.field static final TRANSACTION_setExchangeHttpHeader:I = 0xe

.field static final TRANSACTION_setFilterInfo:I = 0x1f

.field static final TRANSACTION_setHeartbeatCheckType:I = 0xb

.field static final TRANSACTION_setHeartbeatFixedContent:I = 0x8

.field static final TRANSACTION_setHeartbeatSequence:I = 0xa

.field static final TRANSACTION_setHeartbeatSocketHoldTime:I = 0x9

.field static final TRANSACTION_setHeartbeatTimeout:I = 0xc

.field static final TRANSACTION_setImapIdCmd:I = 0xd

.field static final TRANSACTION_setNrtTime:I = 0x16

.field static final TRANSACTION_setReconnEnable:I = 0x15

.field static final TRANSACTION_startBastetProxy:I = 0x5

.field static final TRANSACTION_stopBastetProxy:I = 0x6

.field static final TRANSACTION_updateEmailBoxInfo:I = 0x11

.field static final TRANSACTION_updateExchangeWebXmlInfo:I = 0x12

.field static final TRANSACTION_updateHeartbeatFileDescriptor:I = 0x10

.field static final TRANSACTION_updateRepeatInterval:I = 0x13

.field static final TRANSACTION_updateServerInfo:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.huawei.android.bastet.IBastetManager"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/android/bastet/IBastetManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.huawei.android.bastet.IBastetManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/huawei/android/bastet/IBastetManager;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/huawei/android/bastet/IBastetManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/android/bastet/IBastetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 43
    const-string v13, "com.huawei.android.bastet.IBastetManager"

    .line 44
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_1

    packed-switch v10, :pswitch_data_0

    .line 471
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 459
    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 463
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->configDataAccelerate(II)I

    move-result v2

    .line 465
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    return v14

    .line 449
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 452
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->notifyAlarmTimeout(I)I

    move-result v1

    .line 453
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    return v14

    .line 439
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 442
    .local v0, "_arg0":[I
    invoke-virtual {v9, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->configAppUidList([I)I

    move-result v1

    .line 443
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    return v14

    .line 427
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setFilterInfo(II)I

    move-result v2

    .line 433
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    return v14

    .line 413
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .local v2, "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager$Stub;->indicateAction(III)I

    move-result v3

    .line 421
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    return v14

    .line 403
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    .restart local v1    # "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->hrtAppActivity(II)V

    .line 409
    return v14

    .line 393
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->packageChangedReceived(ILjava/lang/String;)V

    .line 399
    return v14

    .line 385
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 388
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->broadcastReceived(I)V

    .line 389
    return v14

    .line 375
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/bastet/IBastetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/bastet/IBastetListener;

    move-result-object v0

    .line 378
    .local v0, "_arg0":Lcom/huawei/android/bastet/IBastetListener;
    invoke-virtual {v9, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->initHwBastetService(Lcom/huawei/android/bastet/IBastetListener;)I

    move-result v1

    .line 379
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    return v14

    .line 363
    .end local v0    # "_arg0":Lcom/huawei/android/bastet/IBastetListener;
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/bastet/IBastetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/bastet/IBastetListener;

    move-result-object v1

    .line 368
    .local v1, "_arg1":Lcom/huawei/android/bastet/IBastetListener;
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->prepareHeartbeatProxy(ILcom/huawei/android/bastet/IBastetListener;)I

    move-result v2

    .line 369
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    return v14

    .line 355
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/huawei/android/bastet/IBastetListener;
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->inquireNetworkQuality()I

    move-result v0

    .line 357
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    return v14

    .line 347
    .end local v0    # "_result":I
    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->notifyNrtTimeout()I

    move-result v0

    .line 349
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    return v14

    .line 335
    .end local v0    # "_result":I
    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 340
    .local v1, "_arg1":J
    invoke-virtual {v9, v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setNrtTime(IJ)I

    move-result v3

    .line 341
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    return v14

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 328
    .local v1, "_arg1":Z
    :goto_0
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setReconnEnable(IZ)I

    move-result v2

    .line 329
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    return v14

    .line 307
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 316
    .local v3, "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/huawei/android/bastet/IBastetManager$Stub;->updateServerInfo(ILjava/lang/String;II)I

    move-result v4

    .line 317
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return v14

    .line 295
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->updateRepeatInterval(II)I

    move-result v2

    .line 301
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return v14

    .line 279
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .restart local v3    # "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/huawei/android/bastet/IBastetManager$Stub;->updateExchangeWebXmlInfo(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 289
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return v14

    .line 265
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager$Stub;->updateEmailBoxInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 273
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    return v14

    .line 253
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->updateHeartbeatFileDescriptor(II)I

    move-result v2

    .line 259
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return v14

    .line 241
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setDeviceId(ILjava/lang/String;)I

    move-result v2

    .line 247
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return v14

    .line 221
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 225
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 229
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 231
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 233
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 234
    .local v18, "_arg5":Ljava/lang/String;
    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setExchangeHttpHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    return v14

    .line 209
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setImapIdCmd(ILjava/lang/String;)I

    move-result v2

    .line 215
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    return v14

    .line 195
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 201
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .local v3, "_arg2":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setHeartbeatTimeout(IJI)I

    move-result v4

    .line 203
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    return v14

    .line 183
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setHeartbeatCheckType(II)I

    move-result v2

    .line 189
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return v14

    .line 165
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 169
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 171
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 173
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 175
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 176
    .local v16, "_arg4":I
    move-object v0, v9

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setHeartbeatSequence(IIIII)I

    move-result v0

    .line 177
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return v14

    .line 153
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 158
    .local v1, "_arg1":J
    invoke-virtual {v9, v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setHeartbeatSocketHoldTime(IJ)I

    move-result v3

    .line 159
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return v14

    .line 139
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 145
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 146
    .local v2, "_arg2":[B
    invoke-virtual {v9, v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager$Stub;->setHeartbeatFixedContent(I[B[B)I

    move-result v3

    .line 147
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v14

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":I
    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->clearProxyById(I)I

    move-result v1

    .line 133
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return v14

    .line 119
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->stopBastetProxy(I)I

    move-result v1

    .line 123
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return v14

    .line 109
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->startBastetProxy(I)I

    move-result v1

    .line 113
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return v14

    .line 85
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 89
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 91
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 93
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 95
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 97
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 99
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 101
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/bastet/IBastetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/bastet/IBastetListener;

    move-result-object v22

    .line 102
    .local v22, "_arg7":Lcom/huawei/android/bastet/IBastetListener;
    move-object v0, v9

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/huawei/android/bastet/IBastetManager$Stub;->initEmailProxy(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/huawei/android/bastet/IBastetListener;)I

    move-result v0

    .line 103
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v14

    .line 71
    .end local v0    # "_result":I
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":Lcom/huawei/android/bastet/IBastetListener;
    :pswitch_1f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/android/bastet/IBastetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/bastet/IBastetListener;

    move-result-object v2

    .line 78
    .local v2, "_arg2":Lcom/huawei/android/bastet/IBastetListener;
    invoke-virtual {v9, v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager$Stub;->initHeartbeatProxy(IILcom/huawei/android/bastet/IBastetListener;)I

    move-result v3

    .line 79
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v14

    .line 61
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/huawei/android/bastet/IBastetListener;
    .end local v3    # "_result":I
    :pswitch_20
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->isProxyProtocolSupport(I)Z

    move-result v1

    .line 65
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return v14

    .line 53
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->isProxyServiceAvailable()Z

    move-result v0

    .line 55
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v14

    .line 48
    .end local v0    # "_result":Z
    :cond_1
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
