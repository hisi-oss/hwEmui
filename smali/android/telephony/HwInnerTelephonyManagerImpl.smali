.class public Landroid/telephony/HwInnerTelephonyManagerImpl;
.super Ljava/lang/Object;
.source "HwInnerTelephonyManagerImpl.java"

# interfaces
.implements Landroid/telephony/HwInnerTelephonyManager;


# static fields
.field public static final INVALID_ECIO:I = 0xff

.field public static final INVALID_RSSI:I = -0x1

.field private static IS_USE_RSRQ:Z = false

.field public static final PREFERRED_NETWORK_MODE_CFG_NUM:I = 0x1

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HwInnerTelephonyManagerImpl"

.field private static mInstance:Landroid/telephony/HwInnerTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/telephony/HwInnerTelephonyManagerImpl;

    invoke-direct {v0}, Landroid/telephony/HwInnerTelephonyManagerImpl;-><init>()V

    sput-object v0, Landroid/telephony/HwInnerTelephonyManagerImpl;->mInstance:Landroid/telephony/HwInnerTelephonyManager;

    .line 63
    const-string v0, "ro.config.lte_use_rsrq"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/HwInnerTelephonyManagerImpl;->IS_USE_RSRQ:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/telephony/HwInnerTelephonyManager;
    .locals 1

    .line 60
    sget-object v0, Landroid/telephony/HwInnerTelephonyManagerImpl;->mInstance:Landroid/telephony/HwInnerTelephonyManager;

    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .line 66
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private isConfigValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "networkMode"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 461
    const-string v0, "preferred_network_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 462
    return v1

    .line 466
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    return v1

    .line 471
    :cond_1
    if-nez p1, :cond_2

    .line 472
    return v1

    .line 475
    :cond_2
    const-string v0, "HwInnerTelephonyManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreferNetworkModeValArray: networkMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public convertPlusByMcc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "mcc"    # I

    .line 408
    invoke-static {p1, p2}, Landroid/telephony/HwPhoneNumberUtils;->convertPlusByMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public custExtraEmergencyNumbers(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # J
    .param p3, "numbers"    # Ljava/lang/String;

    .line 123
    invoke-static {p1, p2, p3}, Landroid/telephony/HwPhoneNumberUtils;->custExtraNumbers(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "compNum"    # Ljava/lang/String;

    .line 145
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/HwCallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCallingAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 327
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getCallingAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardType(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 292
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getCardType(I)I

    move-result v0

    return v0
.end method

.method public getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 223
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method public getDefault4GSlotId()I
    .locals 1

    .line 288
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManagerInner;->getDefault4GSlotId()I

    move-result v0

    return v0
.end method

.method public getDualCardMode()I
    .locals 2

    .line 85
    const-string v0, "persist.radio.hw.ctmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEvdoLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 233
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getEvdoLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method public getGsmAsuLevel(Landroid/telephony/SignalStrength;)I
    .locals 3
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 245
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 246
    .local v0, "dbm":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1

    .line 247
    const/16 v1, 0x71

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 248
    .local v1, "asu":I
    if-gez v1, :cond_0

    .line 249
    const/4 v1, 0x0

    goto :goto_0

    .line 250
    :cond_0
    const/16 v2, 0x1f

    if-le v1, v2, :cond_2

    .line 251
    const/16 v1, 0x1f

    goto :goto_0

    .line 254
    .end local v1    # "asu":I
    :cond_1
    nop

    .line 257
    .restart local v1    # "asu":I
    :cond_2
    :goto_0
    return v1
.end method

.method public getGsmLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 241
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getGsmLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method public getLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 236
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method public getLteServiceAbility()I
    .locals 1

    .line 304
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManagerInner;->getLteServiceAbility()I

    move-result v0

    return v0
.end method

.method public getNewRememberedPos(ILjava/lang/String;)I
    .locals 1
    .param p1, "rememberedPos"    # I
    .param p2, "formatted"    # Ljava/lang/String;

    .line 276
    invoke-static {p1, p2}, Landroid/telephony/HwPhoneNumberUtils;->getNewRememberedPos(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNrLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 261
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getNrLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "operator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 193
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    goto :goto_0

    .line 195
    :pswitch_1
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    nop

    .line 206
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPesn()Ljava/lang/String;
    .locals 3

    .line 92
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwInnerTelephonyManagerImpl;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 93
    .local v1, "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getPesn()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 96
    :cond_0
    const-string v2, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 99
    .end local v1    # "iPhoneSubInfo":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 97
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getSingleShiftTable(Landroid/content/res/Resources;)[I
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 170
    .local v0, "temp":[I
    const-string v1, "ro.config.smsCoding_National"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "ro.config.smsCoding_National"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 172
    :cond_0
    const-string v1, "gsm.sms.coding.national"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    const-string v1, "gsm.sms.coding.national"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v2

    .line 178
    :goto_0
    return-object v0

    .line 176
    :cond_1
    const v1, 0x1070044

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    return-object v1
.end method

.method public getUniqueDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "scope"    # I

    .line 322
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getUniqueDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCallerInfofixedIndexValid(Ljava/lang/String;Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 117
    invoke-static {p1, p2}, Lhuawei/android/telephony/CallerInfoHW;->isfixedIndexValid(Ljava/lang/String;Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public isCustRemoveSep()Z
    .locals 1

    .line 282
    invoke-static {}, Landroid/telephony/HwPhoneNumberUtils;->isCustRemoveSep()Z

    move-result v0

    return v0
.end method

.method public isCustomProcess()Z
    .locals 1

    .line 158
    invoke-static {}, Landroid/telephony/HwPhoneNumberUtils;->isCustomProcess()Z

    move-result v0

    return v0
.end method

.method public isFullNetworkSupported()Z
    .locals 1

    .line 312
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManagerInner;->isFullNetworkSupported()Z

    move-result v0

    return v0
.end method

.method public isHwCustNotEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .line 184
    invoke-static {p1, p2}, Landroid/telephony/HwPhoneNumberUtils;->isHwCustNotEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLongVoiceMailNumber(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 332
    invoke-static {p1, p2}, Landroid/telephony/HwPhoneNumberUtils;->isLongVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .line 151
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isRemoveSeparateOnSK()Z
    .locals 1

    .line 270
    invoke-static {}, Landroid/telephony/HwPhoneNumberUtils;->isRemoveSeparateOnSK()Z

    move-result v0

    return v0
.end method

.method public isSms7BitEnabled()Z
    .locals 3

    .line 111
    const-string v0, "gsm.sms.7bit.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public isVSimEnabled()Z
    .locals 1

    .line 343
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->isVSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 134
    invoke-static {p1}, Landroid/telephony/HwPhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public printCallingAppNameInfo(ZLandroid/content/Context;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 317
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/HwTelephonyManagerInner;->printCallingAppNameInfo(ZLandroid/content/Context;)V

    .line 318
    return-void
.end method

.method public removeAllSeparate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 273
    invoke-static {p1}, Landroid/telephony/HwPhoneNumberUtils;->removeAllSeparate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultDataSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 300
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->setDefaultDataSlotId(I)V

    .line 301
    return-void
.end method

.method public setDualCardMode(I)Z
    .locals 2
    .param p1, "nMode"    # I

    .line 77
    const-string v0, "persist.radio.hw.ctmode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public setLteServiceAbility(I)V
    .locals 1
    .param p1, "ability"    # I

    .line 307
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->setLteServiceAbility(I)V

    .line 308
    return-void
.end method

.method public skipHardcodeEmergencyNumbers()Z
    .locals 1

    .line 129
    invoke-static {}, Landroid/telephony/HwPhoneNumberUtils;->skipHardcodeNumbers()Z

    move-result v0

    return v0
.end method

.method public stripBrackets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 163
    invoke-static {p1}, Landroid/telephony/HwPhoneNumberUtils;->stripBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCrurrentPhone(I)V
    .locals 1
    .param p1, "lteSlot"    # I

    .line 296
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwTelephonyManagerInner;->updateCrurrentPhone(I)V

    .line 297
    return-void
.end method

.method public updatePreferNetworkModeValArray(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "networkMode"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 434
    move-object v0, p1

    .line 436
    .local v0, "vNew":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Landroid/telephony/HwInnerTelephonyManagerImpl;->isConfigValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    return-object v0

    .line 439
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "valArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    .line 442
    return-object v0

    .line 445
    :cond_1
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 447
    .local v2, "subId":I
    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 450
    :cond_2
    if-ne v3, v2, :cond_3

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_3
    :goto_0
    const-string v3, "HwInnerTelephonyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreferNetworkModeValArray: vNew = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-object v0
.end method

.method public updateSigCustInfoFromXML(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 265
    return-void
.end method

.method public useHwSignalStrength()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public useVoiceMailNumberFeature()Z
    .locals 1

    .line 139
    invoke-static {}, Landroid/telephony/HwPhoneNumberUtils;->useVoiceMailNumberFeature()Z

    move-result v0

    return v0
.end method

.method public validateInput(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "newSignalStrength"    # Landroid/telephony/SignalStrength;

    .line 362
    const-string v0, "HwInnerTelephonyManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signal before HW validate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0

    .line 366
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setGsmSignalStrength(I)V

    .line 370
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getWcdmaRscp()I

    move-result v0

    if-lez v0, :cond_1

    .line 371
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getWcdmaRscp()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_1

    .line 370
    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setWcdmaRscp(I)V

    .line 372
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getWcdmaEcio()I

    move-result v0

    const/16 v2, 0xff

    if-ltz v0, :cond_2

    .line 373
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getWcdmaEcio()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_2

    .line 372
    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setWcdmaEcio(I)V

    .line 376
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    if-lez v0, :cond_3

    .line 377
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_3

    .line 376
    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setCdmaDbm(I)V

    .line 379
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    if-lez v0, :cond_4

    .line 380
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_4

    .line 379
    :cond_4
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setCdmaEcio(I)V

    .line 383
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    const/16 v3, 0x7d

    if-ge v0, v3, :cond_5

    .line 384
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_5

    .line 383
    :cond_5
    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setEvdoDbm(I)V

    .line 386
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v0

    if-ltz v0, :cond_6

    .line 387
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_6

    .line 386
    :cond_6
    move v0, v2

    :goto_6
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setEvdoEcio(I)V

    .line 389
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v3, :cond_7

    .line 390
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v2

    nop

    .line 389
    :cond_7
    invoke-virtual {p1, v2}, Landroid/telephony/SignalStrength;->setEvdoSnr(I)V

    .line 393
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    if-ltz v0, :cond_8

    .line 394
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    goto :goto_7

    :cond_8
    const/16 v0, 0x63

    .line 393
    :goto_7
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setLteSignalStrength(I)V

    .line 395
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    const/16 v2, 0x2c

    const v3, 0x7fffffff

    if-lt v0, v2, :cond_9

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    const/16 v2, 0x8c

    if-gt v0, v2, :cond_9

    .line 396
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_8

    .line 395
    :cond_9
    move v0, v3

    :goto_8
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setLteRsrp(I)V

    .line 397
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_a

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v0

    const/16 v2, 0x14

    if-gt v0, v2, :cond_a

    .line 398
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_9

    .line 397
    :cond_a
    move v0, v3

    :goto_9
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->setLteRsrq(I)V

    .line 399
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v0

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v0

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_b

    .line 400
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v3

    nop

    .line 399
    :cond_b
    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setLteRssnr(I)V

    .line 402
    const-string v0, "HwInnerTelephonyManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signal after HW validate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method
