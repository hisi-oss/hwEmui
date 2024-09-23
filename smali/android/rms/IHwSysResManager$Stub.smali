.class public abstract Landroid/rms/IHwSysResManager$Stub;
.super Landroid/os/Binder;
.source "IHwSysResManager.java"

# interfaces
.implements Landroid/rms/IHwSysResManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/IHwSysResManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/IHwSysResManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.rms.IHwSysResManager"

.field static final TRANSACTION_acquireSysRes:I = 0x4

.field static final TRANSACTION_clearResourceStatus:I = 0x3

.field static final TRANSACTION_configUpdate:I = 0xb

.field static final TRANSACTION_custConfigUpdate:I = 0x29

.field static final TRANSACTION_disableFeature:I = 0xa

.field static final TRANSACTION_dispatch:I = 0x6

.field static final TRANSACTION_dispatchRPolicy:I = 0xe

.field static final TRANSACTION_enableFeature:I = 0x9

.field static final TRANSACTION_fetchBigDataByVersion:I = 0x12

.field static final TRANSACTION_fetchDFTDataByVersion:I = 0x13

.field static final TRANSACTION_getDumpData:I = 0xf

.field static final TRANSACTION_getFrequentIM:I = 0x26

.field static final TRANSACTION_getHabitTopN:I = 0x2e

.field static final TRANSACTION_getIAwareProtectList:I = 0x1c

.field static final TRANSACTION_getLongTimeRunningApps:I = 0x1d

.field static final TRANSACTION_getMemAvaliable:I = 0x22

.field static final TRANSACTION_getMemRepairProcGroup:I = 0x25

.field static final TRANSACTION_getMostFrequentUsedApps:I = 0x1e

.field static final TRANSACTION_getNetLocationStrategy:I = 0x2b

.field static final TRANSACTION_getPid:I = 0x19

.field static final TRANSACTION_getPss:I = 0x1a

.field static final TRANSACTION_getResourceConfig:I = 0x1

.field static final TRANSACTION_getStatisticsData:I = 0x10

.field static final TRANSACTION_getTypeTopN:I = 0x2f

.field static final TRANSACTION_getWhiteList:I = 0x17

.field static final TRANSACTION_init:I = 0xc

.field static final TRANSACTION_isEnableFakeForegroundControl:I = 0x16

.field static final TRANSACTION_isFakeForegroundProcess:I = 0x15

.field static final TRANSACTION_isResourceNeeded:I = 0xd

.field static final TRANSACTION_isScene:I = 0x2d

.field static final TRANSACTION_isVisibleWindow:I = 0x27

.field static final TRANSACTION_noteProcessStart:I = 0x21

.field static final TRANSACTION_notifyResourceStatus:I = 0x5

.field static final TRANSACTION_recordResourceOverloadStatus:I = 0x2

.field static final TRANSACTION_registerDevModeMethod:I = 0x30

.field static final TRANSACTION_registerProcessStateChangeObserver:I = 0x1f

.field static final TRANSACTION_registerResourceUpdateCallback:I = 0x18

.field static final TRANSACTION_registerSceneCallback:I = 0x2c

.field static final TRANSACTION_reportAppType:I = 0x23

.field static final TRANSACTION_reportData:I = 0x7

.field static final TRANSACTION_reportDataWithCallback:I = 0x8

.field static final TRANSACTION_reportHabitData:I = 0x24

.field static final TRANSACTION_reportSysWakeUp:I = 0x28

.field static final TRANSACTION_requestAppClean:I = 0x2a

.field static final TRANSACTION_saveBigData:I = 0x11

.field static final TRANSACTION_triggerUpdateWhiteList:I = 0x1b

.field static final TRANSACTION_unRegisterProcessStateChangeObserver:I = 0x20

.field static final TRANSACTION_unregisterDevModeMethod:I = 0x31

.field static final TRANSACTION_updateFakeForegroundList:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.rms.IHwSysResManager"

    invoke-virtual {p0, p0, v0}, Landroid/rms/IHwSysResManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/rms/IHwSysResManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.rms.IHwSysResManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/rms/IHwSysResManager;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/rms/IHwSysResManager;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/rms/IHwSysResManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/rms/IHwSysResManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const-string v12, "android.rms.IHwSysResManager"

    .line 42
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_16

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v9, :pswitch_data_0

    .line 680
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 662
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/rms/iaware/IDeviceSettingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/rms/iaware/IDeviceSettingCallback;

    move-result-object v2

    .line 668
    .local v2, "_arg1":Landroid/rms/iaware/IDeviceSettingCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg2":Landroid/os/Bundle;
    goto :goto_0

    .line 672
    .end local v1    # "_arg2":Landroid/os/Bundle;
    :cond_0
    nop

    .line 674
    .restart local v1    # "_arg2":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v8, v0, v2, v1}, Landroid/rms/IHwSysResManager$Stub;->unregisterDevModeMethod(ILandroid/rms/iaware/IDeviceSettingCallback;Landroid/os/Bundle;)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    return v13

    .line 644
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v2    # "_arg1":Landroid/rms/iaware/IDeviceSettingCallback;
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 648
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/rms/iaware/IDeviceSettingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/rms/iaware/IDeviceSettingCallback;

    move-result-object v2

    .line 650
    .restart local v2    # "_arg1":Landroid/rms/iaware/IDeviceSettingCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .restart local v1    # "_arg2":Landroid/os/Bundle;
    goto :goto_1

    .line 654
    .end local v1    # "_arg2":Landroid/os/Bundle;
    :cond_1
    nop

    .line 656
    .restart local v1    # "_arg2":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v8, v0, v2, v1}, Landroid/rms/IHwSysResManager$Stub;->registerDevModeMethod(ILandroid/rms/iaware/IDeviceSettingCallback;Landroid/os/Bundle;)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    return v13

    .line 628
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v2    # "_arg1":Landroid/rms/iaware/IDeviceSettingCallback;
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 631
    .local v1, "_arg0":[I
    invoke-virtual {v8, v1}, Landroid/rms/IHwSysResManager$Stub;->getTypeTopN([I)Landroid/os/Bundle;

    move-result-object v2

    .line 632
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v2, :cond_2

    .line 634
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 638
    :cond_2
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    :goto_2
    return v13

    .line 618
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 621
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->getHabitTopN(I)Ljava/util/List;

    move-result-object v1

    .line 622
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 624
    return v13

    .line 608
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 611
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->isScene(I)Z

    move-result v1

    .line 612
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    return v13

    .line 596
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 600
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 601
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/rms/IHwSysResManager$Stub;->registerSceneCallback(Landroid/os/IBinder;I)Z

    move-result v2

    .line 602
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    return v13

    .line 576
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 582
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 583
    .local v3, "_arg2":I
    invoke-virtual {v8, v1, v2, v3}, Landroid/rms/IHwSysResManager$Stub;->getNetLocationStrategy(Ljava/lang/String;II)Landroid/rms/iaware/NetLocationStrategy;

    move-result-object v4

    .line 584
    .local v4, "_result":Landroid/rms/iaware/NetLocationStrategy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v4, :cond_3

    .line 586
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v4, v11, v13}, Landroid/rms/iaware/NetLocationStrategy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 590
    :cond_3
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    :goto_3
    return v13

    .line 559
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/rms/iaware/NetLocationStrategy;
    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 563
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 565
    .local v7, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 567
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 569
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 570
    .local v16, "_arg4":I
    move-object v0, v8

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/rms/IHwSysResManager$Stub;->requestAppClean(Ljava/util/List;[IILjava/lang/String;I)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    return v13

    .line 551
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg1":[I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Landroid/rms/IHwSysResManager$Stub;->custConfigUpdate()Z

    move-result v0

    .line 553
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    return v13

    .line 542
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->reportSysWakeUp(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    return v13

    .line 528
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 532
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .local v2, "_arg2":I
    invoke-virtual {v8, v0, v1, v2}, Landroid/rms/IHwSysResManager$Stub;->isVisibleWindow(ILjava/lang/String;I)Z

    move-result v3

    .line 536
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    return v13

    .line 518
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 521
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->getFrequentIM(I)Ljava/util/List;

    move-result-object v1

    .line 522
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 524
    return v13

    .line 508
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 511
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->getMemRepairProcGroup(I)Ljava/util/List;

    move-result-object v1

    .line 512
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/memrepair/MemRepairPkgInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 514
    return v13

    .line 494
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/memrepair/MemRepairPkgInfo;>;"
    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 497
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 500
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_4
    nop

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    :goto_4
    move-object v0, v1

    .line 502
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->reportHabitData(Landroid/os/Bundle;)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    return v13

    .line 479
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 485
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v0, v13

    nop

    .line 487
    .local v0, "_arg2":Z
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    .local v3, "_arg3":I
    invoke-virtual {v8, v1, v2, v0, v3}, Landroid/rms/IHwSysResManager$Stub;->reportAppType(Ljava/lang/String;IZI)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    return v13

    .line 471
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":I
    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/rms/IHwSysResManager$Stub;->getMemAvaliable()J

    move-result-wide v0

    .line 473
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 475
    return v13

    .line 450
    .end local v0    # "_result":J
    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 454
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 456
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 458
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 460
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v5, v13

    goto :goto_5

    :cond_6
    move v5, v0

    .line 462
    .local v5, "_arg4":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 464
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 465
    .local v19, "_arg6":Ljava/lang/String;
    move-object v0, v8

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/rms/IHwSysResManager$Stub;->noteProcessStart(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    return v13

    .line 440
    .end local v5    # "_arg4":Z
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/rms/IProcessStateChangeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/rms/IProcessStateChangeObserver;

    move-result-object v0

    .line 443
    .local v0, "_arg0":Landroid/rms/IProcessStateChangeObserver;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->unRegisterProcessStateChangeObserver(Landroid/rms/IProcessStateChangeObserver;)Z

    move-result v1

    .line 444
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    return v13

    .line 430
    .end local v0    # "_arg0":Landroid/rms/IProcessStateChangeObserver;
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/rms/IProcessStateChangeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/rms/IProcessStateChangeObserver;

    move-result-object v0

    .line 433
    .restart local v0    # "_arg0":Landroid/rms/IProcessStateChangeObserver;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->registerProcessStateChangeObserver(Landroid/rms/IProcessStateChangeObserver;)Z

    move-result v1

    .line 434
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    return v13

    .line 418
    .end local v0    # "_arg0":Landroid/rms/IProcessStateChangeObserver;
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/rms/IHwSysResManager$Stub;->getMostFrequentUsedApps(II)Ljava/util/List;

    move-result-object v2

    .line 424
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 426
    return v13

    .line 410
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Landroid/rms/IHwSysResManager$Stub;->getLongTimeRunningApps()Ljava/util/List;

    move-result-object v0

    .line 412
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 414
    return v13

    .line 400
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->getIAwareProtectList(I)Ljava/util/List;

    move-result-object v1

    .line 404
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 406
    return v13

    .line 393
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/rms/IHwSysResManager$Stub;->triggerUpdateWhiteList()V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    return v13

    .line 383
    :pswitch_17
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->getPss(I)J

    move-result-wide v1

    .line 387
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v11, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 389
    return v13

    .line 373
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_18
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->getPid(Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    return v13

    .line 363
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_19
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/rms/IUpdateWhiteListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/rms/IUpdateWhiteListCallback;

    move-result-object v0

    .line 366
    .local v0, "_arg0":Landroid/rms/IUpdateWhiteListCallback;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->registerResourceUpdateCallback(Landroid/rms/IUpdateWhiteListCallback;)Z

    move-result v1

    .line 367
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    return v13

    .line 351
    .end local v0    # "_arg0":Landroid/rms/IUpdateWhiteListCallback;
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 355
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 356
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/rms/IHwSysResManager$Stub;->getWhiteList(II)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    return v13

    .line 343
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/rms/IHwSysResManager$Stub;->isEnableFakeForegroundControl()Z

    move-result v0

    .line 345
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    return v13

    .line 333
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->isFakeForegroundProcess(Ljava/lang/String;)Z

    move-result v1

    .line 337
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    return v13

    .line 324
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->updateFakeForegroundList(Ljava/util/List;)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    return v13

    .line 306
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 310
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 312
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v3, v13

    goto :goto_6

    :cond_7
    move v3, v0

    .line 314
    .local v3, "_arg2":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v4, v13

    goto :goto_7

    :cond_8
    move v4, v0

    .line 316
    .local v4, "_arg3":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    move v5, v13

    goto :goto_8

    :cond_9
    move v5, v0

    .line 317
    .restart local v5    # "_arg4":Z
    :goto_8
    move-object v0, v8

    move v1, v6

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/rms/IHwSysResManager$Stub;->fetchDFTDataByVersion(IIZZZ)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    return v13

    .line 290
    .end local v0    # "_result":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :pswitch_1f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v13

    goto :goto_9

    :cond_a
    move v3, v0

    .line 298
    .restart local v3    # "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    move v0, v13

    nop

    .line 299
    .local v0, "_arg3":Z
    :cond_b
    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/rms/IHwSysResManager$Stub;->fetchBigDataByVersion(IIZZ)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    return v13

    .line 278
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 282
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v13

    nop

    .line 283
    .local v0, "_arg1":Z
    :cond_c
    invoke-virtual {v8, v1, v0}, Landroid/rms/IHwSysResManager$Stub;->saveBigData(IZ)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    return v13

    .line 267
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/StatisticsData;>;"
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->getStatisticsData(Ljava/util/List;)I

    move-result v1

    .line 271
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 274
    return v13

    .line 254
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/StatisticsData;>;"
    .end local v1    # "_result":I
    :pswitch_22
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .local v0, "_arg0":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/DumpData;>;"
    invoke-virtual {v8, v0, v1}, Landroid/rms/IHwSysResManager$Stub;->getDumpData(ILjava/util/List;)I

    move-result v2

    .line 260
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 263
    return v13

    .line 240
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/DumpData;>;"
    .end local v2    # "_result":I
    :pswitch_23
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 243
    sget-object v0, Landroid/rms/iaware/RPolicyData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/rms/iaware/RPolicyData;

    .local v1, "_arg0":Landroid/rms/iaware/RPolicyData;
    goto :goto_a

    .line 246
    .end local v1    # "_arg0":Landroid/rms/iaware/RPolicyData;
    :cond_d
    nop

    .restart local v1    # "_arg0":Landroid/rms/iaware/RPolicyData;
    :goto_a
    move-object v0, v1

    .line 248
    .end local v1    # "_arg0":Landroid/rms/iaware/RPolicyData;
    .local v0, "_arg0":Landroid/rms/iaware/RPolicyData;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->dispatchRPolicy(Landroid/rms/iaware/RPolicyData;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    return v13

    .line 230
    .end local v0    # "_arg0":Landroid/rms/iaware/RPolicyData;
    :pswitch_24
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->isResourceNeeded(I)Z

    move-result v1

    .line 234
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return v13

    .line 216
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 219
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_b

    .line 222
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_e
    nop

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    :goto_b
    move-object v0, v1

    .line 224
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->init(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v13

    .line 208
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_26
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/rms/IHwSysResManager$Stub;->configUpdate()Z

    move-result v0

    .line 210
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    return v13

    .line 199
    .end local v0    # "_result":Z
    :pswitch_27
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->disableFeature(I)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    return v13

    .line 190
    .end local v0    # "_arg0":I
    :pswitch_28
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->enableFeature(I)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    return v13

    .line 174
    .end local v0    # "_arg0":I
    :pswitch_29
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 177
    sget-object v0, Landroid/rms/iaware/CollectData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/rms/iaware/CollectData;

    .local v1, "_arg0":Landroid/rms/iaware/CollectData;
    goto :goto_c

    .line 180
    .end local v1    # "_arg0":Landroid/rms/iaware/CollectData;
    :cond_f
    nop

    .restart local v1    # "_arg0":Landroid/rms/iaware/CollectData;
    :goto_c
    move-object v0, v1

    .line 183
    .end local v1    # "_arg0":Landroid/rms/iaware/CollectData;
    .local v0, "_arg0":Landroid/rms/iaware/CollectData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/rms/iaware/IReportDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/rms/iaware/IReportDataCallback;

    move-result-object v1

    .line 184
    .local v1, "_arg1":Landroid/rms/iaware/IReportDataCallback;
    invoke-virtual {v8, v0, v1}, Landroid/rms/IHwSysResManager$Stub;->reportDataWithCallback(Landroid/rms/iaware/CollectData;Landroid/rms/iaware/IReportDataCallback;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    return v13

    .line 160
    .end local v0    # "_arg0":Landroid/rms/iaware/CollectData;
    .end local v1    # "_arg1":Landroid/rms/iaware/IReportDataCallback;
    :pswitch_2a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 163
    sget-object v0, Landroid/rms/iaware/CollectData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/rms/iaware/CollectData;

    .local v1, "_arg0":Landroid/rms/iaware/CollectData;
    goto :goto_d

    .line 166
    .end local v1    # "_arg0":Landroid/rms/iaware/CollectData;
    :cond_10
    nop

    .restart local v1    # "_arg0":Landroid/rms/iaware/CollectData;
    :goto_d
    move-object v0, v1

    .line 168
    .end local v1    # "_arg0":Landroid/rms/iaware/CollectData;
    .restart local v0    # "_arg0":Landroid/rms/iaware/CollectData;
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->reportData(Landroid/rms/iaware/CollectData;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    return v13

    .line 144
    .end local v0    # "_arg0":Landroid/rms/iaware/CollectData;
    :pswitch_2b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 149
    sget-object v1, Landroid/app/mtm/MultiTaskPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/mtm/MultiTaskPolicy;

    .local v1, "_arg1":Landroid/app/mtm/MultiTaskPolicy;
    goto :goto_e

    .line 152
    .end local v1    # "_arg1":Landroid/app/mtm/MultiTaskPolicy;
    :cond_11
    nop

    .line 154
    .restart local v1    # "_arg1":Landroid/app/mtm/MultiTaskPolicy;
    :goto_e
    invoke-virtual {v8, v0, v1}, Landroid/rms/IHwSysResManager$Stub;->dispatch(ILandroid/app/mtm/MultiTaskPolicy;)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    return v13

    .line 124
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/mtm/MultiTaskPolicy;
    :pswitch_2c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 133
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg3":Landroid/os/Bundle;
    goto :goto_f

    .line 136
    .end local v1    # "_arg3":Landroid/os/Bundle;
    :cond_12
    nop

    .line 138
    .restart local v1    # "_arg3":Landroid/os/Bundle;
    :goto_f
    invoke-virtual {v8, v0, v2, v3, v1}, Landroid/rms/IHwSysResManager$Stub;->notifyResourceStatus(ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v13

    .line 98
    .end local v0    # "_arg0":I
    .end local v1    # "_arg3":Landroid/os/Bundle;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_2d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 103
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .local v2, "_arg1":Landroid/net/Uri;
    goto :goto_10

    .line 106
    .end local v2    # "_arg1":Landroid/net/Uri;
    :cond_13
    move-object v2, v1

    .line 109
    .restart local v2    # "_arg1":Landroid/net/Uri;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 111
    .local v3, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 112
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .restart local v1    # "_arg3":Landroid/os/Bundle;
    goto :goto_11

    .line 115
    .end local v1    # "_arg3":Landroid/os/Bundle;
    :cond_14
    nop

    .line 117
    .restart local v1    # "_arg3":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {v8, v0, v2, v3, v1}, Landroid/rms/IHwSysResManager$Stub;->acquireSysRes(ILandroid/net/Uri;Landroid/database/IContentObserver;Landroid/os/Bundle;)I

    move-result v4

    .line 118
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v13

    .line 87
    .end local v0    # "_arg0":I
    .end local v1    # "_arg3":Landroid/os/Bundle;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/database/IContentObserver;
    .end local v4    # "_result":I
    :pswitch_2e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/rms/IHwSysResManager$Stub;->clearResourceStatus(II)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v13

    .line 61
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 65
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 67
    .restart local v15    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 69
    .restart local v16    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 71
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 73
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 75
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 76
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 79
    .local v0, "_arg6":Landroid/os/Bundle;
    move-object v7, v0

    goto :goto_12

    .end local v0    # "_arg6":Landroid/os/Bundle;
    :cond_15
    move-object v7, v1

    .line 81
    .local v7, "_arg6":Landroid/os/Bundle;
    :goto_12
    move-object v0, v8

    move v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Landroid/rms/IHwSysResManager$Stub;->recordResourceOverloadStatus(ILjava/lang/String;IIIILandroid/os/Bundle;)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v13

    .line 51
    .end local v7    # "_arg6":Landroid/os/Bundle;
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    :pswitch_30
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/rms/IHwSysResManager$Stub;->getResourceConfig(I)[Landroid/rms/config/ResourceConfig;

    move-result-object v1

    .line 55
    .local v1, "_result":[Landroid/rms/config/ResourceConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 57
    return v13

    .line 46
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/rms/config/ResourceConfig;
    :cond_16
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
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
