.class public abstract Landroid/emcom/IEmcomManager$Stub;
.super Landroid/os/Binder;
.source "IEmcomManager.java"

# interfaces
.implements Landroid/emcom/IEmcomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/IEmcomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emcom/IEmcomManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.emcom.IEmcomManager"

.field static final TRANSACTION_accelerate:I = 0x6

.field static final TRANSACTION_accelerateWithMainCardServiceStatus:I = 0x8

.field static final TRANSACTION_activeSlice:I = 0xd

.field static final TRANSACTION_deactiveSlice:I = 0xe

.field static final TRANSACTION_disableMultipath:I = 0x1a

.field static final TRANSACTION_enableMultipathFlow:I = 0x19

.field static final TRANSACTION_enableMultipathSocket:I = 0x18

.field static final TRANSACTION_getAppInfo:I = 0x5

.field static final TRANSACTION_getDisableMpList:I = 0x21

.field static final TRANSACTION_getMultipathEnabled:I = 0x1c

.field static final TRANSACTION_getMultipathSupported:I = 0x1b

.field static final TRANSACTION_getMultipathTcpInfo:I = 0x1d

.field static final TRANSACTION_getRuntimeInfo:I = 0x10

.field static final TRANSACTION_getSmartcareData:I = 0xb

.field static final TRANSACTION_getSupportedMpMap:I = 0x20

.field static final TRANSACTION_isSmartMpEnable:I = 0x16

.field static final TRANSACTION_listenHiCom:I = 0x1f

.field static final TRANSACTION_notifyAppData:I = 0x4

.field static final TRANSACTION_notifyAppDisableMobileNet:I = 0x23

.field static final TRANSACTION_notifyEmailData:I = 0x2

.field static final TRANSACTION_notifyHandoffDataEvent:I = 0x14

.field static final TRANSACTION_notifyHandoffServiceStart:I = 0x12

.field static final TRANSACTION_notifyHandoffServiceStop:I = 0x17

.field static final TRANSACTION_notifyHandoffStateChg:I = 0x13

.field static final TRANSACTION_notifyHwAppData:I = 0x3

.field static final TRANSACTION_notifyRunningStatus:I = 0xa

.field static final TRANSACTION_notifySmartMp:I = 0x15

.field static final TRANSACTION_notifyUIEvent:I = 0x22

.field static final TRANSACTION_notifyVideoData:I = 0x1

.field static final TRANSACTION_registerAppCallback:I = 0xc

.field static final TRANSACTION_registerHandoff:I = 0x11

.field static final TRANSACTION_responseForParaUpgrade:I = 0x7

.field static final TRANSACTION_updateAppExperienceStatus:I = 0x9

.field static final TRANSACTION_updateAppInfo:I = 0xf

.field static final TRANSACTION_updateMultipathAppInfo:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.emcom.IEmcomManager"

    invoke-virtual {p0, p0, v0}, Landroid/emcom/IEmcomManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/emcom/IEmcomManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.emcom.IEmcomManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/emcom/IEmcomManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/emcom/IEmcomManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/emcom/IEmcomManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/emcom/IEmcomManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 39
    const-string v10, "android.emcom.IEmcomManager"

    .line 40
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_6

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 482
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 471
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/emcom/IEmcomManager$Stub;->notifyAppDisableMobileNet(ILjava/lang/String;)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    return v11

    .line 462
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 465
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->notifyUIEvent(I)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    return v11

    .line 454
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/emcom/IEmcomManager$Stub;->getDisableMpList()Ljava/util/List;

    move-result-object v0

    .line 456
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 458
    return v11

    .line 446
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/emcom/IEmcomManager$Stub;->getSupportedMpMap()Ljava/util/Map;

    move-result-object v0

    .line 448
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 450
    return v11

    .line 435
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/emcom/IListenDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/emcom/IListenDataCallback;

    move-result-object v0

    .line 439
    .local v0, "_arg0":Landroid/emcom/IListenDataCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 440
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/emcom/IEmcomManager$Stub;->listenHiCom(Landroid/emcom/IListenDataCallback;Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    return v11

    .line 424
    .end local v0    # "_arg0":Landroid/emcom/IListenDataCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/emcom/IEmcomManager$Stub;->updateMultipathAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    return v11

    .line 405
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 411
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    sget-object v0, Landroid/emcom/SocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/emcom/SocketInfo;

    .local v0, "_arg2":Landroid/emcom/SocketInfo;
    goto :goto_0

    .line 415
    .end local v0    # "_arg2":Landroid/emcom/SocketInfo;
    :cond_0
    nop

    .line 417
    .restart local v0    # "_arg2":Landroid/emcom/SocketInfo;
    :goto_0
    invoke-virtual {v6, v1, v2, v0}, Landroid/emcom/IEmcomManager$Stub;->getMultipathTcpInfo(Ljava/lang/String;ILandroid/emcom/SocketInfo;)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    return v11

    .line 388
    .end local v0    # "_arg2":Landroid/emcom/SocketInfo;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    sget-object v0, Landroid/emcom/SocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/emcom/SocketInfo;

    .local v0, "_arg1":Landroid/emcom/SocketInfo;
    goto :goto_1

    .line 396
    .end local v0    # "_arg1":Landroid/emcom/SocketInfo;
    :cond_1
    nop

    .line 398
    .restart local v0    # "_arg1":Landroid/emcom/SocketInfo;
    :goto_1
    invoke-virtual {v6, v1, v0}, Landroid/emcom/IEmcomManager$Stub;->getMultipathEnabled(Ljava/lang/String;Landroid/emcom/SocketInfo;)Z

    move-result v2

    .line 399
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    return v11

    .line 378
    .end local v0    # "_arg1":Landroid/emcom/SocketInfo;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->getMultipathSupported(Ljava/lang/String;)I

    move-result v1

    .line 382
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    return v11

    .line 366
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/emcom/IEmcomManager$Stub;->disableMultipath(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 372
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    return v11

    .line 350
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/emcom/IMultipathCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/emcom/IMultipathCallback;

    move-result-object v3

    .line 359
    .local v3, "_arg3":Landroid/emcom/IMultipathCallback;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/emcom/IEmcomManager$Stub;->enableMultipathFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/emcom/IMultipathCallback;)I

    move-result v4

    .line 360
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    return v11

    .line 329
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/emcom/IMultipathCallback;
    .end local v4    # "_result":I
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    sget-object v0, Landroid/emcom/SocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/emcom/SocketInfo;

    .local v0, "_arg1":Landroid/emcom/SocketInfo;
    goto :goto_2

    .line 337
    .end local v0    # "_arg1":Landroid/emcom/SocketInfo;
    :cond_2
    nop

    .line 340
    .restart local v0    # "_arg1":Landroid/emcom/SocketInfo;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/emcom/IMultipathCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/emcom/IMultipathCallback;

    move-result-object v3

    .line 343
    .restart local v3    # "_arg3":Landroid/emcom/IMultipathCallback;
    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/emcom/IEmcomManager$Stub;->enableMultipathSocket(Ljava/lang/String;Landroid/emcom/SocketInfo;Ljava/lang/String;Landroid/emcom/IMultipathCallback;)I

    move-result v4

    .line 344
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    return v11

    .line 321
    .end local v0    # "_arg1":Landroid/emcom/SocketInfo;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/emcom/IMultipathCallback;
    .end local v4    # "_result":I
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/emcom/IEmcomManager$Stub;->notifyHandoffServiceStop()I

    move-result v0

    .line 323
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    return v11

    .line 313
    .end local v0    # "_result":I
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/emcom/IEmcomManager$Stub;->isSmartMpEnable()Z

    move-result v0

    .line 315
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    return v11

    .line 304
    .end local v0    # "_result":Z
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->notifySmartMp(I)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    return v11

    .line 292
    .end local v0    # "_arg0":I
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/emcom/IEmcomManager$Stub;->notifyHandoffDataEvent(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 298
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    return v11

    .line 283
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->notifyHandoffStateChg(I)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    return v11

    .line 273
    .end local v0    # "_arg0":I
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/emcom/IHandoffServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/emcom/IHandoffServiceCallback;

    move-result-object v0

    .line 276
    .local v0, "_arg0":Landroid/emcom/IHandoffServiceCallback;
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->notifyHandoffServiceStart(Landroid/emcom/IHandoffServiceCallback;)I

    move-result v1

    .line 277
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    return v11

    .line 259
    .end local v0    # "_arg0":Landroid/emcom/IHandoffServiceCallback;
    .end local v1    # "_result":I
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 265
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/emcom/IHandoffSdkCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/emcom/IHandoffSdkCallback;

    move-result-object v2

    .line 266
    .local v2, "_arg2":Landroid/emcom/IHandoffSdkCallback;
    invoke-virtual {v6, v0, v1, v2}, Landroid/emcom/IEmcomManager$Stub;->registerHandoff(Ljava/lang/String;ILandroid/emcom/IHandoffSdkCallback;)I

    move-result v3

    .line 267
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    return v11

    .line 249
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/emcom/IHandoffSdkCallback;
    .end local v3    # "_result":I
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->getRuntimeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    return v11

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 236
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 238
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 240
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 242
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 243
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/emcom/IEmcomManager$Stub;->updateAppInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    return v11

    .line 217
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/emcom/IEmcomManager$Stub;->deactiveSlice(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    return v11

    .line 202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/emcom/IEmcomManager$Stub;->activeSlice(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    return v11

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/emcom/ISliceSdkCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/emcom/ISliceSdkCallback;

    move-result-object v1

    .line 195
    .local v1, "_arg1":Landroid/emcom/ISliceSdkCallback;
    invoke-virtual {v6, v0, v1}, Landroid/emcom/IEmcomManager$Stub;->registerAppCallback(Ljava/lang/String;Landroid/emcom/ISliceSdkCallback;)I

    move-result v2

    .line 196
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    return v11

    .line 176
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/emcom/ISliceSdkCallback;
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Landroid/emcom/IEmcomManager$Stub;->getSmartcareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v11

    .line 165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/emcom/IEmcomManager$Stub;->notifyRunningStatus(ILjava/lang/String;)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    return v11

    .line 152
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/emcom/IEmcomManager$Stub;->updateAppExperienceStatus(III)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v11

    .line 139
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/emcom/IEmcomManager$Stub;->accelerateWithMainCardServiceStatus(Ljava/lang/String;II)V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v11

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/emcom/IEmcomManager$Stub;->responseForParaUpgrade(III)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v11

    .line 115
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/emcom/IEmcomManager$Stub;->accelerate(Ljava/lang/String;I)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v11

    .line 99
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->getAppInfo(Ljava/lang/String;)Landroid/emcom/XEngineAppInfo;

    move-result-object v1

    .line 103
    .local v1, "_result":Landroid/emcom/XEngineAppInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v1, v9, v11}, Landroid/emcom/XEngineAppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 109
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    :goto_3
    return v11

    .line 90
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/emcom/XEngineAppInfo;
    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->notifyAppData(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v11

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Landroid/emcom/IEmcomManager$Stub;->notifyHwAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v11

    .line 63
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    sget-object v0, Landroid/emcom/EmailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/emcom/EmailInfo;

    .local v0, "_arg0":Landroid/emcom/EmailInfo;
    goto :goto_4

    .line 69
    .end local v0    # "_arg0":Landroid/emcom/EmailInfo;
    :cond_4
    nop

    .line 71
    .restart local v0    # "_arg0":Landroid/emcom/EmailInfo;
    :goto_4
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->notifyEmailData(Landroid/emcom/EmailInfo;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v11

    .line 49
    .end local v0    # "_arg0":Landroid/emcom/EmailInfo;
    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    sget-object v0, Landroid/emcom/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/emcom/VideoInfo;

    .local v0, "_arg0":Landroid/emcom/VideoInfo;
    goto :goto_5

    .line 55
    .end local v0    # "_arg0":Landroid/emcom/VideoInfo;
    :cond_5
    nop

    .line 57
    .restart local v0    # "_arg0":Landroid/emcom/VideoInfo;
    :goto_5
    invoke-virtual {v6, v0}, Landroid/emcom/IEmcomManager$Stub;->notifyVideoData(Landroid/emcom/VideoInfo;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v11

    .line 44
    .end local v0    # "_arg0":Landroid/emcom/VideoInfo;
    :cond_6
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
