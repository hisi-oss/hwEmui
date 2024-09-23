.class public abstract Lcom/android/internal/telephony/IHwTelephony$Stub;
.super Landroid/os/Binder;
.source "IHwTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/IHwTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHwTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHwTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IHwTelephony"

.field static final TRANSACTION_bindSimToProfile:I = 0x64

.field static final TRANSACTION_changeSimPinCode:I = 0x56

.field static final TRANSACTION_closeRrc:I = 0x6

.field static final TRANSACTION_cmdForECInfo:I = 0x50

.field static final TRANSACTION_get2GServiceAbility:I = 0x19

.field static final TRANSACTION_getAntiFakeBaseStation:I = 0x6c

.field static final TRANSACTION_getCallForwardingOption:I = 0x5f

.field static final TRANSACTION_getCardTrayInfo:I = 0x6f

.field static final TRANSACTION_getCdmaGsmImsi:I = 0x29

.field static final TRANSACTION_getCdmaGsmImsiForSubId:I = 0x65

.field static final TRANSACTION_getCdmaMlplVersion:I = 0x2c

.field static final TRANSACTION_getCdmaMsplVersion:I = 0x2d

.field static final TRANSACTION_getCellLocation:I = 0x2b

.field static final TRANSACTION_getCsconEnabled:I = 0x71

.field static final TRANSACTION_getDataRegisteredState:I = 0x73

.field static final TRANSACTION_getDataStateForSubscriber:I = 0xc

.field static final TRANSACTION_getDefault4GSlotId:I = 0x1c

.field static final TRANSACTION_getDemoString:I = 0x1

.field static final TRANSACTION_getImsDomain:I = 0x41

.field static final TRANSACTION_getImsDomainByPhoneId:I = 0x4b

.field static final TRANSACTION_getImsImpu:I = 0x61

.field static final TRANSACTION_getImsSwitch:I = 0x3d

.field static final TRANSACTION_getImsSwitchByPhoneId:I = 0x47

.field static final TRANSACTION_getLaaDetailedState:I = 0x59

.field static final TRANSACTION_getLevel:I = 0x72

.field static final TRANSACTION_getLine1NumberFromImpu:I = 0x62

.field static final TRANSACTION_getLteServiceAbility:I = 0xe

.field static final TRANSACTION_getLteServiceAbilityForSubId:I = 0x11

.field static final TRANSACTION_getMeidForSubscriber:I = 0x2

.field static final TRANSACTION_getNVESN:I = 0xb

.field static final TRANSACTION_getNetworkModeFromDB:I = 0x75

.field static final TRANSACTION_getOnDemandDataSubId:I = 0x27

.field static final TRANSACTION_getPesnForSubscriber:I = 0x3

.field static final TRANSACTION_getPreferredDataSubscription:I = 0x28

.field static final TRANSACTION_getServiceAbilityForSubId:I = 0x10

.field static final TRANSACTION_getSpecCardType:I = 0x1f

.field static final TRANSACTION_getSubState:I = 0x4

.field static final TRANSACTION_getUiccAppType:I = 0x40

.field static final TRANSACTION_getUiccAppTypeByPhoneId:I = 0x4a

.field static final TRANSACTION_getUiccCardType:I = 0x2a

.field static final TRANSACTION_getUniqueDeviceId:I = 0x2e

.field static final TRANSACTION_getVoiceRegisteredState:I = 0x74

.field static final TRANSACTION_getWaitingSwitchBalongSlot:I = 0x26

.field static final TRANSACTION_handleMapconImsaReq:I = 0x3f

.field static final TRANSACTION_handleMapconImsaReqByPhoneId:I = 0x49

.field static final TRANSACTION_handleUiccAuth:I = 0x42

.field static final TRANSACTION_handleUiccAuthByPhoneId:I = 0x4c

.field static final TRANSACTION_informModemTetherStatusToChangeGRO:I = 0x69

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x5c

.field static final TRANSACTION_is4RMimoEnabled:I = 0x6b

.field static final TRANSACTION_isAISCard:I = 0x78

.field static final TRANSACTION_isCTCdmaCardInGsmMode:I = 0x7

.field static final TRANSACTION_isCardUimLocked:I = 0x20

.field static final TRANSACTION_isCspPlmnEnabled:I = 0x5d

.field static final TRANSACTION_isCtSimCard:I = 0x51

.field static final TRANSACTION_isCustomAis:I = 0x79

.field static final TRANSACTION_isCustomSmart:I = 0x7b

.field static final TRANSACTION_isDomesticCard:I = 0x31

.field static final TRANSACTION_isImsRegisteredForSubId:I = 0x13

.field static final TRANSACTION_isLTESupported:I = 0x2f

.field static final TRANSACTION_isNeedToRadioPowerOn:I = 0x1b

.field static final TRANSACTION_isRadioAvailable:I = 0x3b

.field static final TRANSACTION_isRadioAvailableByPhoneId:I = 0x45

.field static final TRANSACTION_isRadioOn:I = 0x21

.field static final TRANSACTION_isSecondaryCardGsmOnly:I = 0x63

.field static final TRANSACTION_isSetDefault4GSlotIdEnabled:I = 0x24

.field static final TRANSACTION_isSmartCard:I = 0x7a

.field static final TRANSACTION_isSubDeactivedByPowerOff:I = 0x1a

.field static final TRANSACTION_isVideoTelephonyAvailableForSubId:I = 0x16

.field static final TRANSACTION_isVolteAvailableForSubId:I = 0x15

.field static final TRANSACTION_isWifiCallingAvailableForSubId:I = 0x14

.field static final TRANSACTION_notifyCModemStatus:I = 0x52

.field static final TRANSACTION_notifyCellularCommParaReady:I = 0x54

.field static final TRANSACTION_notifyDeviceState:I = 0x53

.field static final TRANSACTION_queryServiceCellBand:I = 0x34

.field static final TRANSACTION_registerCommonImsaToMapconInfo:I = 0x39

.field static final TRANSACTION_registerForAntiFakeBaseStation:I = 0x6d

.field static final TRANSACTION_registerForCallAltSrv:I = 0x5a

.field static final TRANSACTION_registerForPhoneEvent:I = 0x43

.field static final TRANSACTION_registerForRadioAvailable:I = 0x35

.field static final TRANSACTION_registerForRadioNotAvailable:I = 0x37

.field static final TRANSACTION_registerForWirelessState:I = 0x4d

.field static final TRANSACTION_saveNetworkModeToDB:I = 0x76

.field static final TRANSACTION_sendLaaCmd:I = 0x58

.field static final TRANSACTION_sendPseudocellCellInfo:I = 0x57

.field static final TRANSACTION_sendSimMatchedOperatorInfo:I = 0x6a

.field static final TRANSACTION_set2GServiceAbility:I = 0x18

.field static final TRANSACTION_setCallForwardingOption:I = 0x5e

.field static final TRANSACTION_setCellTxPower:I = 0x33

.field static final TRANSACTION_setCsconEnabled:I = 0x70

.field static final TRANSACTION_setDataEnabledWithoutPromp:I = 0x9

.field static final TRANSACTION_setDataRoamingEnabledWithoutPromp:I = 0xa

.field static final TRANSACTION_setDeepNoDisturbState:I = 0x67

.field static final TRANSACTION_setDefault4GSlotId:I = 0x23

.field static final TRANSACTION_setDefaultDataSlotId:I = 0x1d

.field static final TRANSACTION_setDefaultMobileEnable:I = 0x8

.field static final TRANSACTION_setISMCOEX:I = 0x30

.field static final TRANSACTION_setImsDomainConfig:I = 0x3e

.field static final TRANSACTION_setImsDomainConfigByPhoneId:I = 0x48

.field static final TRANSACTION_setImsRegistrationStateForSubId:I = 0x17

.field static final TRANSACTION_setImsSwitch:I = 0x3c

.field static final TRANSACTION_setImsSwitchByPhoneId:I = 0x46

.field static final TRANSACTION_setLine1Number:I = 0x66

.field static final TRANSACTION_setLteServiceAbility:I = 0xd

.field static final TRANSACTION_setLteServiceAbilityForSubId:I = 0x12

.field static final TRANSACTION_setMaxTxPower:I = 0x4f

.field static final TRANSACTION_setPinLockEnabled:I = 0x55

.field static final TRANSACTION_setPreferredNetworkType:I = 0x22

.field static final TRANSACTION_setServiceAbilityForSubId:I = 0xf

.field static final TRANSACTION_setSubscription:I = 0x60

.field static final TRANSACTION_setTemperatureControlToModem:I = 0x77

.field static final TRANSACTION_setUplinkFreqBandwidthReportState:I = 0x68

.field static final TRANSACTION_setUserPrefDataSlotId:I = 0x5

.field static final TRANSACTION_setWifiTxPower:I = 0x32

.field static final TRANSACTION_unregisterCommonImsaToMapconInfo:I = 0x3a

.field static final TRANSACTION_unregisterForAntiFakeBaseStation:I = 0x6e

.field static final TRANSACTION_unregisterForCallAltSrv:I = 0x5b

.field static final TRANSACTION_unregisterForPhoneEvent:I = 0x44

.field static final TRANSACTION_unregisterForRadioAvailable:I = 0x36

.field static final TRANSACTION_unregisterForRadioNotAvailable:I = 0x38

.field static final TRANSACTION_unregisterForWirelessState:I = 0x4e

.field static final TRANSACTION_updateCrurrentPhone:I = 0x1e

.field static final TRANSACTION_waitingSetDefault4GSlotDone:I = 0x25


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.IHwTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHwTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "com.android.internal.telephony.IHwTelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IHwTelephony;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IHwTelephony;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IHwTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IHwTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
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

    .line 45
    const-string v11, "com.android.internal.telephony.IHwTelephony"

    .line 46
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_17

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v8, :pswitch_data_0

    .line 1415
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1407
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isCustomSmart()Z

    move-result v0

    .line 1409
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    return v12

    .line 1397
    .end local v0    # "_result":Z
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1400
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isSmartCard(I)Z

    move-result v1

    .line 1401
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    return v12

    .line 1389
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isCustomAis()Z

    move-result v0

    .line 1391
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    return v12

    .line 1379
    .end local v0    # "_result":Z
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1382
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isAISCard(I)Z

    move-result v1

    .line 1383
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    return v12

    .line 1358
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1362
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1364
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1366
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1367
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg3":Landroid/os/Message;
    goto :goto_0

    .line 1370
    .end local v0    # "_arg3":Landroid/os/Message;
    :cond_0
    nop

    .line 1372
    .restart local v0    # "_arg3":Landroid/os/Message;
    :goto_0
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setTemperatureControlToModem(IIILandroid/os/Message;)Z

    move-result v4

    .line 1373
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    return v12

    .line 1347
    .end local v0    # "_arg3":Landroid/os/Message;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1351
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1352
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->saveNetworkModeToDB(II)V

    .line 1353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    return v12

    .line 1337
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1340
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getNetworkModeFromDB(I)I

    move-result v1

    .line 1341
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    return v12

    .line 1327
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1330
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getVoiceRegisteredState(I)I

    move-result v1

    .line 1331
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    return v12

    .line 1317
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1320
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getDataRegisteredState(I)I

    move-result v1

    .line 1321
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    return v12

    .line 1301
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1305
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1307
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1309
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1310
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getLevel(IIII)I

    move-result v4

    .line 1311
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    return v12

    .line 1293
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getCsconEnabled()[I

    move-result-object v0

    .line 1295
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1297
    return v12

    .line 1283
    .end local v0    # "_result":[I
    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v12

    nop

    :cond_1
    move v0, v1

    .line 1286
    .local v0, "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setCsconEnabled(Z)Z

    move-result v1

    .line 1287
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    return v12

    .line 1275
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getCardTrayInfo()[B

    move-result-object v0

    .line 1277
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1279
    return v12

    .line 1267
    .end local v0    # "_result":[B
    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->unregisterForAntiFakeBaseStation()Z

    move-result v0

    .line 1269
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    return v12

    .line 1257
    .end local v0    # "_result":Z
    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v0

    .line 1260
    .local v0, "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->registerForAntiFakeBaseStation(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v1

    .line 1261
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    return v12

    .line 1242
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1245
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg0":Landroid/os/Message;
    goto :goto_1

    .line 1248
    .end local v0    # "_arg0":Landroid/os/Message;
    :cond_2
    nop

    .line 1250
    .restart local v0    # "_arg0":Landroid/os/Message;
    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getAntiFakeBaseStation(Landroid/os/Message;)Z

    move-result v1

    .line 1251
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    return v12

    .line 1232
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1235
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->is4RMimoEnabled(I)Z

    move-result v1

    .line 1236
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    return v12

    .line 1214
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1218
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1220
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1222
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1224
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1225
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v7

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IHwTelephony$Stub;->sendSimMatchedOperatorInfo(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 1226
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    return v12

    .line 1203
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1207
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1208
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->informModemTetherStatusToChangeGRO(ILjava/lang/String;)V

    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    return v12

    .line 1189
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1193
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1195
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v2

    .line 1196
    .local v2, "_arg2":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setUplinkFreqBandwidthReportState(IILcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v3

    .line 1197
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    return v12

    .line 1177
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v3    # "_result":Z
    :pswitch_14
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1181
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1182
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setDeepNoDisturbState(II)Z

    move-result v2

    .line 1183
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    return v12

    .line 1156
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1160
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1164
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1165
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg3":Landroid/os/Message;
    goto :goto_2

    .line 1168
    .end local v0    # "_arg3":Landroid/os/Message;
    :cond_3
    nop

    .line 1170
    .restart local v0    # "_arg3":Landroid/os/Message;
    :goto_2
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setLine1Number(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v4

    .line 1171
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    return v12

    .line 1146
    .end local v0    # "_arg3":Landroid/os/Message;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1149
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getCdmaGsmImsiForSubId(I)Ljava/lang/String;

    move-result-object v1

    .line 1150
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1152
    return v12

    .line 1136
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1139
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->bindSimToProfile(I)Z

    move-result v1

    .line 1140
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    return v12

    .line 1128
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isSecondaryCardGsmOnly()Z

    move-result v0

    .line 1130
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    return v12

    .line 1118
    .end local v0    # "_result":Z
    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1121
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getLine1NumberFromImpu(I)Ljava/lang/String;

    move-result-object v1

    .line 1122
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1124
    return v12

    .line 1108
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1111
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getImsImpu(I)Ljava/lang/String;

    move-result-object v1

    .line 1112
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1114
    return v12

    .line 1089
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1093
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v12

    nop

    .line 1095
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1096
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg2":Landroid/os/Message;
    goto :goto_3

    .line 1099
    .end local v0    # "_arg2":Landroid/os/Message;
    :cond_5
    nop

    .line 1101
    .restart local v0    # "_arg2":Landroid/os/Message;
    :goto_3
    invoke-virtual {v7, v2, v1, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setSubscription(IZLandroid/os/Message;)Z

    move-result v3

    .line 1102
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    return v12

    .line 1071
    .end local v0    # "_arg2":Landroid/os/Message;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1075
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1077
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 1078
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .restart local v0    # "_arg2":Landroid/os/Message;
    goto :goto_4

    .line 1081
    .end local v0    # "_arg2":Landroid/os/Message;
    :cond_6
    nop

    .line 1083
    .restart local v0    # "_arg2":Landroid/os/Message;
    :goto_4
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    return v12

    .line 1047
    .end local v0    # "_arg2":Landroid/os/Message;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1051
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1053
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1055
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1057
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1059
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1060
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1063
    .local v6, "_arg5":Landroid/os/Message;
    :goto_5
    move-object v6, v0

    goto :goto_6

    .end local v6    # "_arg5":Landroid/os/Message;
    :cond_7
    goto :goto_5

    .line 1065
    .restart local v6    # "_arg5":Landroid/os/Message;
    :goto_6
    move-object v0, v7

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    return v12

    .line 1037
    .end local v6    # "_arg5":Landroid/os/Message;
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    :pswitch_1e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1040
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isCspPlmnEnabled(I)Z

    move-result v1

    .line 1041
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    return v12

    .line 1022
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1026
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1028
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1029
    .local v2, "_arg2":[B
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->invokeOemRilRequestRaw(I[B[B)I

    move-result v3

    .line 1030
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1033
    return v12

    .line 1013
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":I
    :pswitch_20
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1016
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->unregisterForCallAltSrv(I)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    return v12

    .line 1002
    .end local v0    # "_arg0":I
    :pswitch_21
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1006
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v1

    .line 1007
    .local v1, "_arg1":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->registerForCallAltSrv(ILcom/android/internal/telephony/IPhoneCallback;)V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    return v12

    .line 985
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IPhoneCallback;
    :pswitch_22
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 990
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg1":Landroid/os/Message;
    goto :goto_7

    .line 993
    .end local v0    # "_arg1":Landroid/os/Message;
    :cond_8
    nop

    .line 995
    .restart local v0    # "_arg1":Landroid/os/Message;
    :goto_7
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getLaaDetailedState(Ljava/lang/String;Landroid/os/Message;)Z

    move-result v2

    .line 996
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    return v12

    .line 966
    .end local v0    # "_arg1":Landroid/os/Message;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_23
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 970
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 973
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg2":Landroid/os/Message;
    goto :goto_8

    .line 976
    .end local v0    # "_arg2":Landroid/os/Message;
    :cond_9
    nop

    .line 978
    .restart local v0    # "_arg2":Landroid/os/Message;
    :goto_8
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->sendLaaCmd(ILjava/lang/String;Landroid/os/Message;)Z

    move-result v3

    .line 979
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    return v12

    .line 946
    .end local v0    # "_arg2":Landroid/os/Message;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_24
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 950
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 952
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 954
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 956
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 958
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 959
    .local v18, "_arg5":I
    move-object v0, v7

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHwTelephony$Stub;->sendPseudocellCellInfo(IIIILjava/lang/String;I)Z

    move-result v0

    .line 960
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    return v12

    .line 932
    .end local v0    # "_result":Z
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_25
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 939
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->changeSimPinCode(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 940
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    return v12

    .line 918
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_26
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v1, v12

    nop

    :cond_a
    move v0, v1

    .line 922
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 924
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 925
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setPinLockEnabled(ZLjava/lang/String;I)Z

    move-result v3

    .line 926
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    return v12

    .line 900
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_27
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 904
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 906
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 907
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg2":Landroid/os/Message;
    goto :goto_9

    .line 910
    .end local v0    # "_arg2":Landroid/os/Message;
    :cond_b
    nop

    .line 912
    .restart local v0    # "_arg2":Landroid/os/Message;
    :goto_9
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->notifyCellularCommParaReady(IILandroid/os/Message;)V

    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    return v12

    .line 886
    .end local v0    # "_arg2":Landroid/os/Message;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_28
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->notifyDeviceState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 894
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    return v12

    .line 875
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_29
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 879
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v1

    .line 880
    .local v1, "_arg1":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->notifyCModemStatus(ILcom/android/internal/telephony/IPhoneCallback;)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    return v12

    .line 865
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IPhoneCallback;
    :pswitch_2a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 868
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isCtSimCard(I)Z

    move-result v1

    .line 869
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    return v12

    .line 850
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 857
    .local v2, "_arg2":[B
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->cmdForECInfo(II[B)Z

    move-result v3

    .line 858
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 861
    return v12

    .line 838
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Z
    :pswitch_2c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 842
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 843
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setMaxTxPower(II)Z

    move-result v2

    .line 844
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    return v12

    .line 824
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 828
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 830
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v2

    .line 831
    .local v2, "_arg2":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->unregisterForWirelessState(IILcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v3

    .line 832
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    return v12

    .line 810
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v3    # "_result":Z
    :pswitch_2e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 814
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 816
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v2

    .line 817
    .restart local v2    # "_arg2":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->registerForWirelessState(IILcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v3

    .line 818
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    return v12

    .line 788
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 792
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 796
    .local v3, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 797
    .local v4, "_arg3":[B
    invoke-virtual {v7, v0, v2, v3, v4}, Lcom/android/internal/telephony/IHwTelephony$Stub;->handleUiccAuthByPhoneId(II[B[B)Landroid/telephony/UiccAuthResponse;

    move-result-object v5

    .line 798
    .local v5, "_result":Landroid/telephony/UiccAuthResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    if-eqz v5, :cond_c

    .line 800
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v5, v10, v12}, Landroid/telephony/UiccAuthResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 804
    :cond_c
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    :goto_a
    return v12

    .line 778
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":Landroid/telephony/UiccAuthResponse;
    :pswitch_30
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 781
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getImsDomainByPhoneId(I)I

    move-result v1

    .line 782
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    return v12

    .line 768
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_31
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 771
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getUiccAppTypeByPhoneId(I)I

    move-result v1

    .line 772
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    return v12

    .line 756
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_32
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 760
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 761
    .local v1, "_arg1":[B
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->handleMapconImsaReqByPhoneId(I[B)Z

    move-result v2

    .line 762
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    return v12

    .line 745
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Z
    :pswitch_33
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 749
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 750
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setImsDomainConfigByPhoneId(II)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    return v12

    .line 735
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_34
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 738
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getImsSwitchByPhoneId(I)Z

    move-result v1

    .line 739
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    return v12

    .line 724
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_35
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 728
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v1, v12

    nop

    .line 729
    .local v1, "_arg1":Z
    :cond_d
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setImsSwitchByPhoneId(IZ)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    return v12

    .line 714
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_36
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 717
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isRadioAvailableByPhoneId(I)Z

    move-result v1

    .line 718
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    return v12

    .line 705
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v0

    .line 708
    .local v0, "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->unregisterForPhoneEvent(Lcom/android/internal/telephony/IPhoneCallback;)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    return v12

    .line 691
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    :pswitch_38
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 695
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v1

    .line 697
    .local v1, "_arg1":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 698
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->registerForPhoneEvent(ILcom/android/internal/telephony/IPhoneCallback;I)Z

    move-result v3

    .line 699
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    return v12

    .line 671
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_39
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 675
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 677
    .local v2, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 678
    .local v3, "_arg2":[B
    invoke-virtual {v7, v0, v2, v3}, Lcom/android/internal/telephony/IHwTelephony$Stub;->handleUiccAuth(I[B[B)Landroid/telephony/UiccAuthResponse;

    move-result-object v4

    .line 679
    .local v4, "_result":Landroid/telephony/UiccAuthResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    if-eqz v4, :cond_e

    .line 681
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-virtual {v4, v10, v12}, Landroid/telephony/UiccAuthResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 685
    :cond_e
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    :goto_b
    return v12

    .line 663
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":Landroid/telephony/UiccAuthResponse;
    :pswitch_3a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getImsDomain()I

    move-result v0

    .line 665
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    return v12

    .line 655
    .end local v0    # "_result":I
    :pswitch_3b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getUiccAppType()I

    move-result v0

    .line 657
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    return v12

    .line 645
    .end local v0    # "_result":I
    :pswitch_3c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 648
    .local v0, "_arg0":[B
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->handleMapconImsaReq([B)Z

    move-result v1

    .line 649
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    return v12

    .line 636
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Z
    :pswitch_3d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 639
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setImsDomainConfig(I)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    return v12

    .line 628
    .end local v0    # "_arg0":I
    :pswitch_3e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getImsSwitch()Z

    move-result v0

    .line 630
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    return v12

    .line 619
    .end local v0    # "_result":Z
    :pswitch_3f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v1, v12

    nop

    :cond_f
    move v0, v1

    .line 622
    .local v0, "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setImsSwitch(Z)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    return v12

    .line 611
    .end local v0    # "_arg0":Z
    :pswitch_40
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isRadioAvailable()Z

    move-result v0

    .line 613
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    return v12

    .line 601
    .end local v0    # "_result":Z
    :pswitch_41
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v0

    .line 604
    .local v0, "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->unregisterCommonImsaToMapconInfo(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v1

    .line 605
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    return v12

    .line 591
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v1    # "_result":Z
    :pswitch_42
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v0

    .line 594
    .restart local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->registerCommonImsaToMapconInfo(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v1

    .line 595
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    return v12

    .line 581
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v1    # "_result":Z
    :pswitch_43
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v0

    .line 584
    .restart local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->unregisterForRadioNotAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v1

    .line 585
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    return v12

    .line 571
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v1    # "_result":Z
    :pswitch_44
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v0

    .line 574
    .restart local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->registerForRadioNotAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v1

    .line 575
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    return v12

    .line 561
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v1    # "_result":Z
    :pswitch_45
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v0

    .line 564
    .restart local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->unregisterForRadioAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v1

    .line 565
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    return v12

    .line 551
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v1    # "_result":Z
    :pswitch_46
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneCallback;

    move-result-object v0

    .line 554
    .restart local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->registerForRadioAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v1

    .line 555
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    return v12

    .line 543
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IPhoneCallback;
    .end local v1    # "_result":Z
    :pswitch_47
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->queryServiceCellBand()[Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 547
    return v12

    .line 533
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_48
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 536
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setCellTxPower(I)Z

    move-result v1

    .line 537
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    return v12

    .line 523
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_49
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 526
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setWifiTxPower(I)Z

    move-result v1

    .line 527
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    return v12

    .line 513
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isDomesticCard(I)Z

    move-result v1

    .line 517
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    return v12

    .line 503
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setISMCOEX(Ljava/lang/String;)Z

    move-result v1

    .line 507
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    return v12

    .line 495
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isLTESupported()Z

    move-result v0

    .line 497
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    return v12

    .line 485
    .end local v0    # "_result":Z
    :pswitch_4d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 488
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getUniqueDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    return v12

    .line 477
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getCdmaMsplVersion()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    return v12

    .line 469
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_4f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getCdmaMlplVersion()Ljava/lang/String;

    move-result-object v0

    .line 471
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    return v12

    .line 453
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_50
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getCellLocation(I)Landroid/os/Bundle;

    move-result-object v2

    .line 457
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v2, :cond_10

    .line 459
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    invoke-virtual {v2, v10, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 463
    :cond_10
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    :goto_c
    return v12

    .line 443
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_51
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getUiccCardType(I)I

    move-result v1

    .line 447
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    return v12

    .line 435
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_52
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getCdmaGsmImsi()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    return v12

    .line 427
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_53
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getPreferredDataSubscription()I

    move-result v0

    .line 429
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    return v12

    .line 419
    .end local v0    # "_result":I
    :pswitch_54
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getOnDemandDataSubId()I

    move-result v0

    .line 421
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    return v12

    .line 411
    .end local v0    # "_result":I
    :pswitch_55
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getWaitingSwitchBalongSlot()Z

    move-result v0

    .line 413
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    return v12

    .line 402
    .end local v0    # "_result":Z
    :pswitch_56
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v1, v12

    nop

    :cond_11
    move v0, v1

    .line 405
    .local v0, "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->waitingSetDefault4GSlotDone(Z)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    return v12

    .line 394
    .end local v0    # "_arg0":Z
    :pswitch_57
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isSetDefault4GSlotIdEnabled()Z

    move-result v0

    .line 396
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    return v12

    .line 378
    .end local v0    # "_result":Z
    :pswitch_58
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 382
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 383
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg1":Landroid/os/Message;
    goto :goto_d

    .line 386
    .end local v0    # "_arg1":Landroid/os/Message;
    :cond_12
    nop

    .line 388
    .restart local v0    # "_arg1":Landroid/os/Message;
    :goto_d
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setDefault4GSlotId(ILandroid/os/Message;)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    return v12

    .line 369
    .end local v0    # "_arg1":Landroid/os/Message;
    .end local v1    # "_arg0":I
    :pswitch_59
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 372
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setPreferredNetworkType(I)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    return v12

    .line 359
    .end local v0    # "_arg0":I
    :pswitch_5a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isRadioOn(I)Z

    move-result v1

    .line 363
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    return v12

    .line 349
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isCardUimLocked(I)Z

    move-result v1

    .line 353
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    return v12

    .line 339
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 342
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getSpecCardType(I)I

    move-result v1

    .line 343
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    return v12

    .line 330
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 333
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->updateCrurrentPhone(I)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    return v12

    .line 321
    .end local v0    # "_arg0":I
    :pswitch_5e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 324
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setDefaultDataSlotId(I)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    return v12

    .line 313
    .end local v0    # "_arg0":I
    :pswitch_5f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getDefault4GSlotId()I

    move-result v0

    .line 315
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    return v12

    .line 303
    .end local v0    # "_result":I
    :pswitch_60
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 306
    .local v0, "_arg0":J
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isNeedToRadioPowerOn(J)Z

    move-result v2

    .line 307
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    return v12

    .line 293
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Z
    :pswitch_61
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 296
    .restart local v0    # "_arg0":J
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isSubDeactivedByPowerOff(J)Z

    move-result v2

    .line 297
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return v12

    .line 285
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Z
    :pswitch_62
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->get2GServiceAbility()I

    move-result v0

    .line 287
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    return v12

    .line 276
    .end local v0    # "_result":I
    :pswitch_63
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->set2GServiceAbility(I)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    return v12

    .line 265
    .end local v0    # "_arg0":I
    :pswitch_64
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    move v1, v12

    nop

    .line 270
    .local v1, "_arg1":Z
    :cond_13
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setImsRegistrationStateForSubId(IZ)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    return v12

    .line 255
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_65
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isVideoTelephonyAvailableForSubId(I)Z

    move-result v1

    .line 259
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return v12

    .line 245
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_66
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isVolteAvailableForSubId(I)Z

    move-result v1

    .line 249
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    return v12

    .line 235
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_67
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isWifiCallingAvailableForSubId(I)Z

    move-result v1

    .line 239
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    return v12

    .line 225
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_68
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isImsRegisteredForSubId(I)Z

    move-result v1

    .line 229
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return v12

    .line 214
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_69
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setLteServiceAbilityForSubId(II)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    return v12

    .line 204
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_6a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getLteServiceAbilityForSubId(I)I

    move-result v1

    .line 208
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return v12

    .line 192
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_6b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getServiceAbilityForSubId(II)I

    move-result v2

    .line 198
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    return v12

    .line 179
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_6c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setServiceAbilityForSubId(III)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    return v12

    .line 171
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_6d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getLteServiceAbility()I

    move-result v0

    .line 173
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return v12

    .line 162
    .end local v0    # "_result":I
    :pswitch_6e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setLteServiceAbility(I)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v12

    .line 152
    .end local v0    # "_arg0":I
    :pswitch_6f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getDataStateForSubscriber(I)I

    move-result v1

    .line 156
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return v12

    .line 144
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_70
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getNVESN()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v12

    .line 135
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_71
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v1, v12

    nop

    :cond_14
    move v0, v1

    .line 138
    .local v0, "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setDataRoamingEnabledWithoutPromp(Z)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v12

    .line 126
    .end local v0    # "_arg0":Z
    :pswitch_72
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v1, v12

    nop

    :cond_15
    move v0, v1

    .line 129
    .restart local v0    # "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setDataEnabledWithoutPromp(Z)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    return v12

    .line 117
    .end local v0    # "_arg0":Z
    :pswitch_73
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v1, v12

    nop

    :cond_16
    move v0, v1

    .line 120
    .restart local v0    # "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setDefaultMobileEnable(Z)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v12

    .line 109
    .end local v0    # "_arg0":Z
    :pswitch_74
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->isCTCdmaCardInGsmMode()Z

    move-result v0

    .line 111
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return v12

    .line 102
    .end local v0    # "_result":Z
    :pswitch_75
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->closeRrc()V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v12

    .line 93
    :pswitch_76
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->setUserPrefDataSlotId(I)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v12

    .line 83
    .end local v0    # "_arg0":I
    :pswitch_77
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getSubState(I)I

    move-result v1

    .line 87
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return v12

    .line 73
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_78
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getPesnForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v12

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_79
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getMeidForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v12

    .line 55
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_7a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->getDemoString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v12

    .line 50
    .end local v0    # "_result":Ljava/lang/String;
    :cond_17
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
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
