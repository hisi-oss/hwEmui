.class public Landroid/telephony/HwTelephonyManagerInner;
.super Ljava/lang/Object;
.source "HwTelephonyManagerInner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;
    }
.end annotation


# static fields
.field public static final CARD_TYPE_SIM1:Ljava/lang/String; = "gsm.sim1.type"

.field public static final CARD_TYPE_SIM2:Ljava/lang/String; = "gsm.sim2.type"

.field private static final CDMA_CPLMNS:[Ljava/lang/String;

.field public static final CDMA_MODE:I = 0x0

.field private static final CHR_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.android.permission.GET_CHR_DATA"

.field public static final CT_NATIONAL_ROAMING_CARD:I = 0x29

.field public static final CU_DUAL_MODE_CARD:I = 0x2a

.field private static final DISABLE_PUSH:Ljava/lang/String; = "disable-push"

.field public static final DUAL_MODE_CG_CARD:I = 0x28

.field public static final DUAL_MODE_TELECOM_LTE_CARD:I = 0x2b

.field public static final DUAL_MODE_UG_CARD:I = 0x32

.field private static final ERROR:I = -0x1

.field public static final EXTRA_VALUE_NEW_SIM:I = 0x1

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final EXTRA_VALUE_REMOVE_SIM:I = 0x2

.field public static final EXTRA_VALUE_REPOSITION_SIM:I = 0x3

.field public static final EXTR_VALUE_INSERT_SAME_SIM:I = 0x5

.field private static final GC_ICCID:Ljava/lang/String; = "8985231"

.field public static final GSM_MODE:I = 0x1

.field private static final HW_CUST_SW_SIMLOCK:Ljava/lang/String; = "hw.cust.sw.simlock"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final INVALID_MCCMNC:Ljava/lang/String; = "00000"

.field private static IS_USE_RSRQ:Z = false

.field private static final NETWORK_MODE_UNKNOWN:I = -0x1

.field public static final NOTIFY_CMODEM_STATUS_FAIL:I = -0x1

.field public static final NOTIFY_CMODEM_STATUS_SUCCESS:I = 0x1

.field public static final PHONE_EVENT_IMSA_TO_MAPCON:I = 0x4

.field public static final PHONE_EVENT_RADIO_AVAILABLE:I = 0x1

.field public static final PHONE_EVENT_RADIO_UNAVAILABLE:I = 0x2

.field private static final PROP_LTETDD_ENABLED:Ljava/lang/String; = "persist.radio.ltetdd_enabled"

.field private static final PROP_LTE_ENABLED:Ljava/lang/String; = "persist.radio.lte_enabled"

.field private static final PROP_VALUE_C_CARD0_PLMN:Ljava/lang/String; = "gsm.sim0.c_card.plmn"

.field private static final PROP_VALUE_C_CARD1_PLMN:Ljava/lang/String; = "gsm.sim1.c_card.plmn"

.field private static final PROP_VALUE_C_CARD_PLMN:Ljava/lang/String; = "gsm.sim.c_card.plmn"

.field public static final ROAM_MODE:I = 0x2

.field private static final SERVICE_2G_OFF:I = 0x0

.field public static final SERVICE_ABILITY_OFF:I = 0x0

.field public static final SERVICE_ABILITY_ON:I = 0x1

.field public static final SERVICE_TYPE_LTE:I = 0x0

.field public static final SERVICE_TYPE_NR:I = 0x1

.field public static final SINGLE_MODE_RUIM_CARD:I = 0x1e

.field public static final SINGLE_MODE_SIM_CARD:I = 0xa

.field public static final SINGLE_MODE_USIM_CARD:I = 0x14

.field private static final SUB_0:I = 0x0

.field private static final SUB_1:I = 0x1

.field public static final SUPPORT_SYSTEMAPP_GET_DEVICEID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HwTelephonyManagerInner"

.field public static final UNKNOWN_CARD:I = -0x1

.field private static callingAppName:Ljava/lang/String;

.field private static haveCheckedAppName:Z

.field private static mDeviceIdAll:Ljava/lang/String;

.field private static mDeviceIdIMEI:Ljava/lang/String;

.field private static sInstance:Landroid/telephony/HwTelephonyManagerInner;


# instance fields
.field private final SIGNAL_TYPE_CDMA:I

.field private final SIGNAL_TYPE_CDMALTE:I

.field private final SIGNAL_TYPE_EVDO:I

.field private final SIGNAL_TYPE_GSM:I

.field private final SIGNAL_TYPE_LTE:I

.field private final SIGNAL_TYPE_NR:I

.field private final SIGNAL_TYPE_UMTS:I

.field private mDpm:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 125
    const-string v0, ""

    sput-object v0, Landroid/telephony/HwTelephonyManagerInner;->callingAppName:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/HwTelephonyManagerInner;->haveCheckedAppName:Z

    .line 131
    const-string v1, "46003"

    const-string v2, "45502"

    const-string v3, "46012"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/HwTelephonyManagerInner;->CDMA_CPLMNS:[Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    sput-object v1, Landroid/telephony/HwTelephonyManagerInner;->mDeviceIdAll:Ljava/lang/String;

    .line 154
    sput-object v1, Landroid/telephony/HwTelephonyManagerInner;->mDeviceIdIMEI:Ljava/lang/String;

    .line 175
    const-string v1, "ro.config.lte_use_rsrq"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/HwTelephonyManagerInner;->IS_USE_RSRQ:Z

    .line 193
    new-instance v0, Landroid/telephony/HwTelephonyManagerInner;

    invoke-direct {v0}, Landroid/telephony/HwTelephonyManagerInner;-><init>()V

    sput-object v0, Landroid/telephony/HwTelephonyManagerInner;->sInstance:Landroid/telephony/HwTelephonyManagerInner;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    invoke-direct {v0}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;-><init>()V

    iput-object v0, p0, Landroid/telephony/HwTelephonyManagerInner;->mDpm:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    .line 176
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/HwTelephonyManagerInner;->SIGNAL_TYPE_GSM:I

    .line 177
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/HwTelephonyManagerInner;->SIGNAL_TYPE_UMTS:I

    .line 178
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/HwTelephonyManagerInner;->SIGNAL_TYPE_CDMA:I

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Landroid/telephony/HwTelephonyManagerInner;->SIGNAL_TYPE_EVDO:I

    .line 180
    const/4 v0, 0x5

    iput v0, p0, Landroid/telephony/HwTelephonyManagerInner;->SIGNAL_TYPE_LTE:I

    .line 181
    const/4 v0, 0x6

    iput v0, p0, Landroid/telephony/HwTelephonyManagerInner;->SIGNAL_TYPE_CDMALTE:I

    .line 182
    const/4 v0, 0x7

    iput v0, p0, Landroid/telephony/HwTelephonyManagerInner;->SIGNAL_TYPE_NR:I

    .line 191
    return-void
.end method

.method private doSetDataSettingModeFromLteAndAuto(Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;)V
    .locals 3
    .param p1, "dataMode"    # Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    .line 953
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner$1;->$SwitchMap$android$telephony$HwTelephonyManagerInner$DataSettingModeType:[I

    invoke-virtual {p1}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 958
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetDataSettingModeFromLteAndAuto failed! param err mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    :cond_0
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/telephony/HwTelephonyManagerInner;->doSetPreferredNetworkType(I)V

    .line 956
    nop

    .line 961
    :goto_0
    return-void
.end method

.method private doSetDataSettingModeFromLteTddOnly(Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;)V
    .locals 3
    .param p1, "dataMode"    # Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    .line 964
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner$1;->$SwitchMap$android$telephony$HwTelephonyManagerInner$DataSettingModeType:[I

    invoke-virtual {p1}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 969
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetDataSettingModeLteTddOnly failed! param err mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 966
    :cond_0
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Landroid/telephony/HwTelephonyManagerInner;->doSetPreferredNetworkType(I)V

    .line 967
    nop

    .line 972
    :goto_0
    return-void
.end method

.method private doSetPreferredNetworkType(I)V
    .locals 3
    .param p1, "nwMode"    # I

    .line 942
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enter]doSetPreferredNetworkType nwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    .line 945
    .local v0, "sHuaweiTelephony":Lcom/android/internal/telephony/IHwTelephony;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "sHuaweiTelephony":Lcom/android/internal/telephony/IHwTelephony;
    goto :goto_0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "doSetPreferredNetworkType failed!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 946
    :catch_1
    move-exception v0

    .line 949
    :goto_0
    nop

    .line 950
    :goto_1
    return-void
.end method

.method private getCplmn(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .line 480
    const-string v0, ""

    .line 481
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    .line 483
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 484
    const-string v3, "gsm.sim0.c_card.plmn"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_0
    if-ne p1, v2, :cond_1

    .line 486
    const-string v3, "gsm.sim1.c_card.plmn"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    const-string v3, "gsm.sim.c_card.plmn"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 492
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "substr":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 494
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 495
    .local v2, "slotInProp":I
    if-ne v2, p1, :cond_2

    .line 496
    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 502
    .end local v2    # "slotInProp":I
    .end local v3    # "substr":[Ljava/lang/String;
    :cond_2
    const-string v2, "HwTelephonyManagerInner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCplmn for Slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " result is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-object v0
.end method

.method public static getDefault()Landroid/telephony/HwTelephonyManagerInner;
    .locals 1

    .line 197
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner;->sInstance:Landroid/telephony/HwTelephonyManagerInner;

    return-object v0
.end method

.method private getDefaultSim()I
    .locals 1

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method private getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    const-string v0, "phone_huawei"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHwTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    .line 204
    .local v0, "iHwTelephony":Lcom/android/internal/telephony/IHwTelephony;
    if-eqz v0, :cond_0

    .line 207
    return-object v0

    .line 205
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "getIHwTelephony return null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLevel(IIII)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "rssi"    # I
    .param p3, "ecio"    # I
    .param p4, "phoneId"    # I

    .line 2381
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHwTelephony;->getLevel(IIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2382
    :catch_0
    move-exception v0

    .line 2383
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getLevel RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private static setCallingAppName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .line 1507
    sput-object p0, Landroid/telephony/HwTelephonyManagerInner;->callingAppName:Ljava/lang/String;

    .line 1508
    return-void
.end method

.method private static setHaveCheckedAppName(Z)V
    .locals 0
    .param p0, "value"    # Z

    .line 1510
    sput-boolean p0, Landroid/telephony/HwTelephonyManagerInner;->haveCheckedAppName:Z

    .line 1511
    return-void
.end method


# virtual methods
.method public bindSimToProfile(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .line 2140
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSimToProfile slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->bindSimToProfile(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2142
    :catch_0
    move-exception v0

    .line 2143
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "bindSimToProfile RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public changeSimPinCode(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPinCode"    # Ljava/lang/String;
    .param p2, "newPinCode"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 1959
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSimPinCode, subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->changeSimPinCode(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1961
    :catch_0
    move-exception v0

    .line 1962
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "notifyDeviceState RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public checkCdmaSlaveCardMode(I)Z
    .locals 5
    .param p1, "mode"    # I

    .line 360
    const-string v0, "persist.radio.commril_mode"

    const-string v1, "NON_MODE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "commrilMode":Ljava/lang/String;
    const-string v1, "persist.radio.cg_standby_mode"

    const-string v2, "home"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "cg_standby_mode":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/HwTelephonyManagerInner;->isFullNetworkSupported()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "CG_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 377
    :pswitch_0
    const-string v4, "home"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    return v2

    .line 372
    :pswitch_1
    const-string v4, "roam_gsm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    return v2

    .line 367
    :pswitch_2
    const-string v4, "roam_gsm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 368
    return v2

    .line 385
    :cond_1
    :goto_0
    return v3

    .line 363
    :cond_2
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearTrafficData()Ljava/lang/Boolean;
    .locals 1

    .line 1364
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->clearTrafficData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public closeRrc()V
    .locals 2

    .line 305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v1, v0, :cond_0

    .line 306
    return-void

    .line 309
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->closeRrc()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    goto :goto_1

    .line 310
    :catch_1
    move-exception v0

    .line 312
    :goto_0
    nop

    .line 313
    :goto_1
    return-void
.end method

.method public cmdForECInfo(II[B)Z
    .locals 3
    .param p1, "event"    # I
    .param p2, "action"    # I
    .param p3, "buf"    # [B

    .line 1864
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->cmdForECInfo(II[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "cmdForECInfo NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1865
    :catch_1
    move-exception v0

    .line 1866
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "cmdForECInfo RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1870
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableVSim()Z
    .locals 1

    .line 1313
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->disableVSim()Z

    move-result v0

    return v0
.end method

.method public enableVSim(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "cardtype"    # I
    .param p3, "apntype"    # I
    .param p4, "acqorder"    # Ljava/lang/String;
    .param p5, "challenge"    # Ljava/lang/String;

    .line 1299
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    const/4 v1, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/HwVSimManager;->enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public get2GServiceAbility()I
    .locals 2

    .line 790
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->get2GServiceAbility()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getAntiFakeBaseStation(Landroid/os/Message;)Z
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2229
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "getAntiFakeBaseStation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getAntiFakeBaseStation(Landroid/os/Message;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2231
    :catch_0
    move-exception v0

    .line 2232
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAntiFakeBaseStation RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2075
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardingOption subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", commandInterfaceCFReason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->getCallForwardingOption(IILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2081
    goto :goto_0

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getCallForwardingOption RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getCallingAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1478
    if-nez p1, :cond_0

    .line 1479
    const-string v0, ""

    return-object v0

    .line 1481
    :cond_0
    sget-boolean v0, Landroid/telephony/HwTelephonyManagerInner;->haveCheckedAppName:Z

    if-nez v0, :cond_5

    .line 1482
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1484
    .local v0, "callingPid":I
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1485
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 1486
    .local v2, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_1

    .line 1487
    const-string v3, ""

    return-object v3

    .line 1490
    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1491
    if-nez v2, :cond_2

    .line 1492
    const-string v3, ""

    return-object v3

    .line 1495
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1496
    .local v4, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_3

    .line 1497
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/HwTelephonyManagerInner;->setCallingAppName(Ljava/lang/String;)V

    .line 1498
    const-string v3, "HwTelephonyManagerInner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallingAppName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    goto :goto_1

    .line 1501
    .end local v4    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    goto :goto_0

    .line 1502
    :cond_4
    :goto_1
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/HwTelephonyManagerInner;->setHaveCheckedAppName(Z)V

    .line 1504
    .end local v0    # "callingPid":I
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_5
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner;->callingAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTrayInfo()[B
    .locals 3

    .line 2245
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getCardTrayInfo()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getCardTrayInfo RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getCardType(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 539
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 540
    const-string v1, "gsm.sim1.type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 541
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 542
    const-string v1, "gsm.sim2.type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 544
    :cond_1
    return v0
.end method

.method public getCdmaGsmImsi()Ljava/lang/String;
    .locals 1

    .line 1023
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getCdmaGsmImsi()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1024
    :catch_0
    move-exception v0

    .line 1026
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaGsmImsiForSubId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .line 1032
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getCdmaGsmImsiForSubId(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getCdmaGsmImsiForSubId RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 4
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 2344
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 2345
    .local v0, "cdmaDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 2346
    .local v1, "cdmaEcio":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v2

    const/4 v3, 0x3

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v2

    .line 2347
    .local v2, "custLevel":I
    return v2
.end method

.method public getCdmaMlplVersion()Ljava/lang/String;
    .locals 1

    .line 1075
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getCdmaMlplVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1076
    :catch_0
    move-exception v0

    .line 1079
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaMsplVersion()Ljava/lang/String;
    .locals 1

    .line 1086
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getCdmaMsplVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1087
    :catch_0
    move-exception v0

    .line 1090
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 4
    .param p1, "slotId"    # I

    .line 1052
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwTelephony;->getCellLocation(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1053
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1058
    :cond_0
    invoke-static {v1, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v2

    .line 1060
    .local v2, "cl":Landroid/telephony/CellLocation;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1063
    :cond_1
    return-object v2

    .line 1061
    :cond_2
    :goto_0
    return-object v0

    .line 1054
    .end local v2    # "cl":Landroid/telephony/CellLocation;
    :cond_3
    :goto_1
    return-object v0

    .line 1066
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1067
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 1064
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1065
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getCpserr(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 1378
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->getCpserr(I)I

    move-result v0

    return v0
.end method

.method public getCsconEnabled()[I
    .locals 4

    .line 2304
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 2306
    .local v0, "response":[I
    :try_start_0
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getCsconEnabled"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHwTelephony;->getCsconEnabled()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2308
    :catch_0
    move-exception v1

    .line 2309
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwTelephonyManagerInner"

    const-string v3, "getCsconEnabled RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public getDataRegisteredState(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 2402
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getDataRegisteredState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2403
    :catch_0
    move-exception v0

    .line 2404
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getDataRegisteredState RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public getDataSettingMode()Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;
    .locals 5

    .line 927
    const-string v0, "persist.radio.lte_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 928
    .local v0, "isLteEnabled":Z
    const-string v1, "persist.radio.ltetdd_enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 929
    .local v1, "isLteTddEnabled":Z
    const-string v2, "HwTelephonyManagerInner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getDataSettingMode isLteEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isLteTddEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    if-nez v0, :cond_0

    .line 931
    sget-object v2, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTE_OFF:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    return-object v2

    .line 933
    :cond_0
    if-eqz v1, :cond_1

    .line 934
    sget-object v2, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTETDD_ONLY:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    return-object v2

    .line 936
    :cond_1
    sget-object v2, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTE_AND_AUTO:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    return-object v2
.end method

.method public getDataState(J)I
    .locals 4
    .param p1, "subId"    # J

    .line 619
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    long-to-int v2, p1

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IHwTelephony;->getDataStateForSubscriber(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 623
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 625
    .local v0, "ex":Landroid/os/RemoteException;
    return v1

    .line 620
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v1
.end method

.method public getDefault4GSlotId()I
    .locals 1

    .line 860
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getDefault4GSlotId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 861
    :catch_0
    move-exception v0

    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public getDemoString()Ljava/lang/String;
    .locals 3

    .line 214
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getDemoString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getDemoString RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "ex":Landroid/os/RemoteException;
    const-string v0, "ERROR"

    return-object v0
.end method

.method public getDevSubMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .line 1409
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->getDevSubMode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvdoLevel(Landroid/telephony/SignalStrength;)I
    .locals 4
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 2351
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 2352
    .local v0, "evdoDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 2353
    .local v1, "evdoSnr":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v2

    .line 2354
    .local v2, "custLevel":I
    return v2
.end method

.method public getGsmLevel(Landroid/telephony/SignalStrength;)I
    .locals 5
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 2358
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getWcdmaRscp()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getWcdmaEcio()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v0

    .line 2359
    .local v0, "wcdmaLevel":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xff

    invoke-direct {p0, v3, v1, v4, v2}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v1

    .line 2361
    .local v1, "gsmLevel":I
    if-nez v0, :cond_0

    .line 2362
    move v2, v1

    .local v2, "custLevel":I
    goto :goto_0

    .line 2364
    .end local v2    # "custLevel":I
    :cond_0
    move v2, v0

    .line 2366
    .restart local v2    # "custLevel":I
    :goto_0
    return v2
.end method

.method public getIccATR()Ljava/lang/String;
    .locals 5

    .line 908
    const-string v0, "gsm.sim.hw_atr"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "strATR":Ljava/lang/String;
    const-string v1, "gsm.sim.hw_atr1"

    const-string v2, "null"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "strATR1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    const-string v2, "HwTelephonyManagerInner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccATR: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-object v0
.end method

.method public getImsDomain()I
    .locals 3

    .line 1709
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "getImsDomain"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getImsDomain()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsDomain NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1711
    :catch_1
    move-exception v0

    .line 1712
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsDomain RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1717
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getImsDomain(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 1837
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsDomain, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getImsDomainByPhoneId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1841
    :catch_0
    move-exception v0

    .line 1842
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsDomain NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1839
    :catch_1
    move-exception v0

    .line 1840
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsDomain RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1845
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getImsImpu(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .line 2095
    const/4 v0, 0x0

    .line 2097
    .local v0, "impu":Ljava/lang/String;
    :try_start_0
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsImpu"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwTelephony;->getImsImpu(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2101
    goto :goto_0

    .line 2099
    :catch_0
    move-exception v1

    .line 2100
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwTelephonyManagerInner"

    const-string v3, "getImsImpu RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public getImsSwitch()Z
    .locals 3

    .line 1655
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "getImsSwitch"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getImsSwitch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsSwitch NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1657
    :catch_1
    move-exception v0

    .line 1658
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsSwitch RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1663
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getImsSwitch(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1785
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsSwitch, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getImsSwitchByPhoneId(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsSwitch NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1787
    :catch_1
    move-exception v0

    .line 1788
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getImsSwitch RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1793
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLaaDetailedState(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .param p1, "reserved"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1991
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaaDetailedState: reserved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->getLaaDetailedState(Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1993
    :catch_0
    move-exception v0

    .line 1994
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getLaaDetailedState RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public getLine1NumberFromImpu(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .line 2113
    const/4 v0, 0x0

    .line 2115
    .local v0, "number":Ljava/lang/String;
    :try_start_0
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getLine1NumberFromImpu"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwTelephony;->getLine1NumberFromImpu(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2119
    goto :goto_0

    .line 2117
    :catch_0
    move-exception v1

    .line 2118
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwTelephonyManagerInner"

    const-string v3, "getLine1NumberFromImpu RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public getLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 5
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 2317
    const/4 v0, 0x0

    .line 2319
    .local v0, "level":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2321
    sget-boolean v1, Landroid/telephony/HwTelephonyManagerInner;->IS_USE_RSRQ:Z

    const/4 v2, 0x6

    if-eqz v1, :cond_0

    .line 2322
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v0

    goto :goto_0

    .line 2324
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v0

    goto :goto_0

    .line 2327
    :cond_1
    sget-boolean v1, Landroid/telephony/HwTelephonyManagerInner;->IS_USE_RSRQ:Z

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    .line 2328
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v0

    goto :goto_0

    .line 2330
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v0

    .line 2335
    :goto_0
    return v0
.end method

.method public getLteServiceAbility()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 655
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getLteServiceAbility()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getLteServiceAbility(I)I
    .locals 3
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getLteServiceAbilityForSubId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getLteServiceAbility RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v1, 0x0

    return v1
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/HwTelephonyManagerInner;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .line 249
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwTelephony;->getMeidForSubscriber(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 250
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 251
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getNVESN()Ljava/lang/String;
    .locals 2

    .line 289
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHwTelephony;->getNVESN()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 290
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getNetworkModeFromDB(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 712
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getNetworkModeFromDB(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getNetworkModeFromDB RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getNrLevel(Landroid/telephony/SignalStrength;)I
    .locals 5
    .param p1, "strength"    # Landroid/telephony/SignalStrength;

    .line 2370
    const/4 v0, 0x0

    .line 2371
    .local v0, "level":I
    sget-boolean v1, Landroid/telephony/HwTelephonyManagerInner;->IS_USE_RSRQ:Z

    const/4 v2, 0x7

    if-eqz v1, :cond_0

    .line 2372
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getNrRsrp()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getNrRsrq()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v0

    goto :goto_0

    .line 2374
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getNrRsrp()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getNrRssnr()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/telephony/HwTelephonyManagerInner;->getLevel(IIII)I

    move-result v0

    .line 2376
    :goto_0
    return v0
.end method

.method public getOnDemandDataSubId()I
    .locals 2

    .line 1012
    const/4 v0, -0x1

    .line 1014
    .local v0, "subId":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHwTelephony;->getOnDemandDataSubId()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1016
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v1

    .line 1017
    :goto_0
    return v0
.end method

.method public getPesn()Ljava/lang/String;
    .locals 1

    .line 265
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/HwTelephonyManagerInner;->getPesn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPesn(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .line 279
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwTelephony;->getPesnForSubscriber(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 280
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 281
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getPreferredDataSubscription()I
    .locals 2

    .line 1000
    const/4 v0, -0x1

    .line 1002
    .local v0, "subId":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHwTelephony;->getPreferredDataSubscription()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1004
    goto :goto_0

    .line 1003
    :catch_0
    move-exception v1

    .line 1005
    :goto_0
    return v0
.end method

.method public getPreferredNetworkTypeForVSim(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .line 1416
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->getPreferredNetworkTypeForVSim(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegPlmn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 1350
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->getRegPlmn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAbility(II)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "type"    # I

    .line 703
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->getServiceAbilityForSubId(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getXGServiceAbilityForSubId RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v1, 0x0

    return v1
.end method

.method public getSimMode(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 1336
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->getSimMode(I)I

    move-result v0

    return v0
.end method

.method public getSimStateForVSim(I)I
    .locals 1
    .param p1, "slotIdx"    # I

    .line 1268
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->getSimStateForVSim(I)I

    move-result v0

    return v0
.end method

.method public getSimStateViaSysinfoEx(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 1371
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->getSimStateViaSysinfoEx(I)I

    move-result v0

    return v0
.end method

.method public getSpecCardType(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 1206
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getSpecCardType(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1207
    :catch_0
    move-exception v0

    .line 1209
    const/4 v0, -0x1

    return v0
.end method

.method public getSubState(J)I
    .locals 2
    .param p1, "subId"    # J

    .line 325
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IHwTelephony;->getSubState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getTrafficData()Ljava/lang/String;
    .locals 1

    .line 1357
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->getTrafficData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiccAppType()I
    .locals 3

    .line 1695
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "getUiccAppType"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getUiccAppType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1699
    :catch_0
    move-exception v0

    .line 1700
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getUiccAppType NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1697
    :catch_1
    move-exception v0

    .line 1698
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getUiccAppType RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1703
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUiccAppType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 1825
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiccAppType, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getUiccAppTypeByPhoneId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getUiccAppType RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public getUiccCardType(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 1042
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getUiccCardType(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1043
    :catch_0
    move-exception v0

    .line 1047
    const/4 v0, -0x1

    return v0
.end method

.method public getUniqueDeviceId(I)Ljava/lang/String;
    .locals 4
    .param p1, "scope"    # I

    .line 1165
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1166
    :try_start_0
    sget-object v1, Landroid/telephony/HwTelephonyManagerInner;->mDeviceIdAll:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1167
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IHwTelephony;->getUniqueDeviceId(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/HwTelephonyManagerInner;->mDeviceIdAll:Ljava/lang/String;

    .line 1169
    :cond_0
    sget-object v1, Landroid/telephony/HwTelephonyManagerInner;->mDeviceIdAll:Ljava/lang/String;

    return-object v1

    .line 1182
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1179
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1170
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1171
    sget-object v2, Landroid/telephony/HwTelephonyManagerInner;->mDeviceIdIMEI:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1172
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/IHwTelephony;->getUniqueDeviceId(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/HwTelephonyManagerInner;->mDeviceIdIMEI:Ljava/lang/String;

    .line 1174
    :cond_2
    sget-object v1, Landroid/telephony/HwTelephonyManagerInner;->mDeviceIdIMEI:Ljava/lang/String;

    return-object v1

    .line 1176
    :cond_3
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwTelephony;->getUniqueDeviceId(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1182
    :goto_0
    nop

    .line 1183
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "HwTelephonyManagerInner"

    const-string v3, "getUniqueDeviceId NullPointerException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    return-object v0

    .line 1179
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :goto_1
    nop

    .line 1180
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwTelephonyManagerInner"

    const-string v3, "getUniqueDeviceId RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    return-object v0
.end method

.method public getUserReservedSubId()I
    .locals 1

    .line 1402
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->getUserReservedSubId()I

    move-result v0

    return v0
.end method

.method public getVSimCachedSubId()I
    .locals 1

    .line 1463
    const/4 v0, -0x1

    return v0
.end method

.method public getVSimCurCardType()I
    .locals 1

    .line 1428
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->getVSimCurCardType()I

    move-result v0

    return v0
.end method

.method public getVSimFineState()I
    .locals 1

    .line 1454
    const/4 v0, 0x0

    return v0
.end method

.method public getVSimSubId()I
    .locals 1

    .line 1281
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->getVSimSubId()I

    move-result v0

    return v0
.end method

.method public getVoiceRegisteredState(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 2423
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->getVoiceRegisteredState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2424
    :catch_0
    move-exception v0

    .line 2425
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "getVoiceRegisteredState RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public getWaitingSwitchBalongSlot()Z
    .locals 1

    .line 1470
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->getWaitingSwitchBalongSlot()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1471
    :catch_0
    move-exception v0

    .line 1473
    const/4 v0, 0x0

    return v0
.end method

.method public handleMapconImsaReq(I[B)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "Msg"    # [B

    .line 1811
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMapconImsaReq, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->handleMapconImsaReqByPhoneId(I[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "handleMapconImsaReq NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1813
    :catch_1
    move-exception v0

    .line 1814
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "handleMapconImsaReq RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1819
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleMapconImsaReq([B)Z
    .locals 3
    .param p1, "Msg"    # [B

    .line 1681
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "handleMapconImsaReq"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->handleMapconImsaReq([B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "handleMapconImsaReq NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1683
    :catch_1
    move-exception v0

    .line 1684
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "handleMapconImsaReq RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1689
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleUiccAuth(II[B[B)Landroid/telephony/UiccAuthResponse;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "auth_type"    # I
    .param p3, "rand"    # [B
    .param p4, "auth"    # [B

    .line 1851
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUiccAuth, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHwTelephony;->handleUiccAuthByPhoneId(II[B[B)Landroid/telephony/UiccAuthResponse;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1853
    :catch_0
    move-exception v0

    .line 1854
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "handleUiccAuth RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleUiccAuth(I[B[B)Landroid/telephony/UiccAuthResponse;
    .locals 3
    .param p1, "auth_type"    # I
    .param p2, "rand"    # [B
    .param p3, "auth"    # [B

    .line 1723
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "handleUiccAuth"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->handleUiccAuth(I[B[B)Landroid/telephony/UiccAuthResponse;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "handleUiccAuth NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1725
    :catch_1
    move-exception v0

    .line 1726
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "handleUiccAuth RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1731
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasIccCardForVSim(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 1247
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->hasIccCardForVSim(I)Z

    move-result v0

    return v0
.end method

.method public informModemTetherStatusToChangeGRO(ILjava/lang/String;)V
    .locals 3
    .param p1, "enable"    # I
    .param p2, "faceName"    # Ljava/lang/String;

    .line 2184
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->informModemTetherStatusToChangeGRO(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    goto :goto_0

    .line 2185
    :catch_0
    move-exception v0

    .line 2186
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "sendUSBinformationToRIL RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public invokeOemRilRequestRaw(I[B[B)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B

    .line 2032
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->invokeOemRilRequestRaw(I[B[B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2034
    :catch_0
    move-exception v0

    .line 2035
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "invokeOemRilRequestRaw RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public is4RMimoEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .line 2217
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->is4RMimoEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2218
    :catch_0
    move-exception v0

    .line 2219
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is4RMimoEnabled RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isAISCard(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 2457
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isAISCard(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2458
    :catch_0
    move-exception v0

    .line 2459
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isAISCard RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public isAisCustomDisable()Z
    .locals 2

    .line 2470
    const-string v0, "hw.cust.sw.simlock"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2471
    .local v0, "swlock":Ljava/lang/String;
    const-string v1, "00000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2472
    const/4 v1, 0x1

    return v1

    .line 2474
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isAppInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .line 1129
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system"

    .line 1130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    .line 1131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    .line 1132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.huawei.systemmanager"

    .line 1133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.huawei.vassistant"

    .line 1134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.huawei.systemmanager:service"

    .line 1135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1138
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCDMASimCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .line 514
    invoke-virtual {p0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getCardType(I)I

    move-result v0

    .line 515
    .local v0, "cardType":I
    const-string v1, "HwTelephonyManagerInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isCDMASimCard]: cardType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 525
    const/4 v1, 0x0

    return v1

    .line 523
    :cond_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isCTCdmaCardInGsmMode()Z
    .locals 2

    .line 578
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHwTelephony;->isCTCdmaCardInGsmMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 579
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 580
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public isCTSimCard(I)Z
    .locals 10
    .param p1, "slotId"    # I

    .line 424
    invoke-virtual {p0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getCardType(I)I

    move-result v0

    .line 425
    .local v0, "cardType":I
    const/4 v1, 0x0

    .line 426
    .local v1, "isCTCardType":Z
    const/4 v2, 0x0

    .line 427
    .local v2, "result":Z
    const-string v3, "HwTelephonyManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isCTSimCard]: cardType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v3, 0x1e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    .line 435
    const/4 v1, 0x0

    goto :goto_0

    .line 432
    :cond_0
    const/4 v1, 0x1

    .line 433
    nop

    .line 440
    :goto_0
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isHisiPlatform()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, "isCdmaCplmn":Z
    invoke-direct {p0, p1}, Landroid/telephony/HwTelephonyManagerInner;->getCplmn(I)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "cplmn":Ljava/lang/String;
    sget-object v5, Landroid/telephony/HwTelephonyManagerInner;->CDMA_CPLMNS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 445
    .local v8, "mccmnc":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 446
    const/4 v3, 0x1

    .line 447
    goto :goto_2

    .line 444
    .end local v8    # "mccmnc":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 450
    :cond_2
    :goto_2
    const-string v5, "HwTelephonyManagerInner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isCTSimCard]: hisi cdma  isCdmaCplmn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move v2, v3

    .line 454
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 456
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IHwTelephony;->isCtSimCard(I)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 459
    goto :goto_3

    .line 457
    :catch_0
    move-exception v5

    .line 458
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v6, "HwTelephonyManagerInner"

    const-string v7, "isCTSimCard RemoteException"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    const-string v5, "HwTelephonyManagerInner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isCTSimCard]: hisi cdma  isCdmaCplmn according iccid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v3    # "isCdmaCplmn":Z
    .end local v4    # "cplmn":Ljava/lang/String;
    goto :goto_4

    .line 464
    :cond_4
    move v2, v1

    .line 467
    :goto_4
    if-eqz v2, :cond_5

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "odm.gsm.sim.preiccid_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "preIccid":Ljava/lang/String;
    const-string v4, "8985231"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 470
    const/4 v2, 0x0

    .line 471
    const-string v4, "HwTelephonyManagerInner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hongkong GC card is not CT card:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v3    # "preIccid":Ljava/lang/String;
    :cond_5
    const-string v3, "HwTelephonyManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isCTSimCard]: result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return v2
.end method

.method public isCardPresent(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 838
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCardUimLocked(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 1214
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isCardUimLocked(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1215
    :catch_0
    move-exception v0

    .line 1217
    const/4 v0, 0x0

    return v0
.end method

.method public isChinaTelecom(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 411
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isChinaTelecom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/telephony/HwTelephonyManagerInner;->isCTSimCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCspPlmnEnabled(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 2045
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCspPlmnEnabled for subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isCspPlmnEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2047
    :catch_0
    move-exception v0

    .line 2048
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isCspPlmnEnabled RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomAis()Z
    .locals 3

    .line 2483
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->isCustomAis()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2484
    :catch_0
    move-exception v0

    .line 2485
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isCustomAis RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomSmart()Z
    .locals 3

    .line 2527
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->isCustomSmart()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2528
    :catch_0
    move-exception v0

    .line 2529
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isCustomSmart RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityDisabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 1912
    iget-object v0, p0, Landroid/telephony/HwTelephonyManagerInner;->mDpm:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getPolicy(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1913
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1914
    .local v1, "allow":Z
    if-eqz v0, :cond_0

    .line 1915
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1917
    :cond_0
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isDomesticCard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 560
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwTelephony;->isDomesticCard(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 561
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 562
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public isDualImsSupported()Z
    .locals 1

    .line 663
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 664
    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v0

    return v0
.end method

.method public isFullNetworkSupported()Z
    .locals 2

    .line 399
    const-string v0, "ro.config.full_network_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isImeiBindSlotSupported()Z
    .locals 1

    .line 669
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 670
    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v0

    return v0
.end method

.method public isImsRegistered(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 737
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isImsRegisteredForSubId(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isLTESupported()Z
    .locals 2

    .line 1195
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHwTelephony;->isLTESupported()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1198
    :catch_0
    move-exception v1

    .line 1199
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 1196
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1197
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public isNeedToRadioPowerOn(J)Z
    .locals 3
    .param p1, "sub"    # J

    .line 823
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "In isNeedToRadioPowerOn"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->isNeedToRadioPowerOn(J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isNeedToRadioPowerOn RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public isNrSupported()Z
    .locals 1

    .line 2433
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v0

    return v0
.end method

.method public isPlatformSupportVsim()Z
    .locals 1

    .line 1237
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->isPlatformSupportVsim()Z

    move-result v0

    return v0
.end method

.method public isRadioAvailable()Z
    .locals 3

    .line 1631
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "isRadioAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->isRadioAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isRadioAvailable NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1633
    :catch_1
    move-exception v0

    .line 1634
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isRadioAvailable RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1639
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioAvailable(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1763
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioAvailable, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isRadioAvailableByPhoneId(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1765
    :catch_0
    move-exception v0

    .line 1766
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isRadioAvailable RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioOn(I)Z
    .locals 1
    .param p1, "slot"    # I

    .line 1221
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isRadioOn(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1222
    :catch_0
    move-exception v0

    .line 1224
    const/4 v0, 0x0

    return v0
.end method

.method public isRoamingPushDisabled()Z
    .locals 5

    .line 1933
    iget-object v0, p0, Landroid/telephony/HwTelephonyManagerInner;->mDpm:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v1, "disable-push"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getPolicy(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1934
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1935
    .local v1, "allow":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 1936
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1941
    const-string v2, "HwTelephonyManagerInner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoamingPushDisabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 1938
    :cond_0
    const-string v2, "HwTelephonyManagerInner"

    const-string v3, "has not set the allow, return default false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public isSecondaryCardGsmOnly()Z
    .locals 3

    .line 2128
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->isSecondaryCardGsmOnly()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isSecondaryCardGsmOnly RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isSetDefault4GSlotIdEnabled()Z
    .locals 3

    .line 881
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "In isSetDefault4GSlotIdEnabled"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->isSetDefault4GSlotIdEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isSetDefault4GSlotIdEnabled RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isSmartCard(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 2501
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isSmartCard(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2502
    :catch_0
    move-exception v0

    .line 2503
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isSmartCard RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public isSmartCustomDisable()Z
    .locals 2

    .line 2514
    const-string v0, "hw.cust.sw.simlock"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2515
    .local v0, "swlock":Ljava/lang/String;
    const-string v1, "00000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2516
    const/4 v1, 0x1

    return v1

    .line 2518
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSubDeactived(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public isSubDeactivedByPowerOff(J)Z
    .locals 3
    .param p1, "sub"    # J

    .line 805
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "In isSubDeactivedByPowerOff"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->isSubDeactivedByPowerOff(J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "isSubDeactivedByPowerOff RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isVSimEnabled()Z
    .locals 1

    .line 2135
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->isVSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoTelephonyAvailable(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 755
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isVideoTelephonyAvailableForSubId(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isVolteAvailable(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 745
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwTelephony;->isVolteAvailableForSubId(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 746
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 747
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public isWifiCallingAvailable(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 763
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->isWifiCallingAvailableForSubId(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public notifyCModemStatus(ILandroid/telephony/PhoneCallback;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "callback"    # Landroid/telephony/PhoneCallback;

    .line 1886
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "notifyCModemStatus"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    iget-object v1, p2, Landroid/telephony/PhoneCallback;->mCallbackStub:Landroid/telephony/PhoneCallback$IPhoneCallbackStub;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/IHwTelephony;->notifyCModemStatus(ILcom/android/internal/telephony/IPhoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "notifyCModemStatus NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 1888
    :catch_1
    move-exception v0

    .line 1889
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "notifyCModemStatus RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1893
    :goto_1
    return-void
.end method

.method public notifyCellularCommParaReady(IILandroid/os/Message;)V
    .locals 3
    .param p1, "paratype"    # I
    .param p2, "pathtype"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1923
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCellularCommParaReady: paratype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pathtype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->notifyCellularCommParaReady(IILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    goto :goto_0

    .line 1925
    :catch_0
    move-exception v0

    .line 1926
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "notifyCellularCommParaReady RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyDeviceState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "extras"    # Ljava/lang/String;

    .line 1899
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDeviceState, device ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->notifyDeviceState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "notifyDeviceState NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1902
    :catch_1
    move-exception v0

    .line 1903
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "notifyDeviceState RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1907
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public printCallingAppNameInfo(ZLandroid/content/Context;)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 1096
    if-nez p2, :cond_0

    .line 1097
    return-void

    .line 1100
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1101
    .local v0, "callingPid":I
    const-string v1, ""

    .line 1102
    .local v1, "appName":Ljava/lang/String;
    const-string v2, "activity"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1103
    .local v2, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 1104
    .local v3, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 1105
    return-void

    .line 1108
    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1109
    if-nez v3, :cond_2

    .line 1110
    return-void

    .line 1113
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1114
    .local v5, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v0, :cond_3

    .line 1115
    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1117
    .end local v5    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    goto :goto_0

    .line 1118
    :cond_4
    const-string v4, "HwTelephonyManagerInner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataEnabled: calling app is( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ) setEanble( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0, v1, p1, p2}, Landroid/telephony/HwTelephonyManagerInner;->triggerChrAppCloseDataSwitch(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1125
    return-void
.end method

.method public queryServiceCellBand()[Ljava/lang/String;
    .locals 3

    .line 1536
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "queryServiceCellBand."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->queryServiceCellBand()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "queryServiceCellBand NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1539
    :catch_1
    move-exception v0

    .line 1540
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "queryServiceCellBand RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1544
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public recoverSimMode()V
    .locals 1

    .line 1343
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwVSimManager;->recoverSimMode()V

    .line 1344
    return-void
.end method

.method public registerCommonImsaToMapconInfo(Lcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 1604
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "registerCommonImsaToMapconInfo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->registerCommonImsaToMapconInfo(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerCommonImsaToMapconInfo NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1606
    :catch_1
    move-exception v0

    .line 1607
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerCommonImsaToMapconInfo RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1612
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerForAntiFakeBaseStation(Lcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 2258
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "registerForAntiFakeBaseStation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->registerForAntiFakeBaseStation(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2260
    :catch_0
    move-exception v0

    .line 2261
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerForAntiFakeBaseStation RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public registerForCallAltSrv(ILcom/android/internal/telephony/IPhoneCallback;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 2001
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "registerForCallAltSrv"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->registerForCallAltSrv(ILcom/android/internal/telephony/IPhoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    goto :goto_0

    .line 2003
    :catch_0
    move-exception v0

    .line 2004
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerForCallAltSrv RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerForPhoneEvent(ILcom/android/internal/telephony/IPhoneCallback;I)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;
    .param p3, "events"    # I

    .line 1738
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForPhoneEvent, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->registerForPhoneEvent(ILcom/android/internal/telephony/IPhoneCallback;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1741
    :catch_0
    move-exception v0

    .line 1742
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerForPhoneEvent RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public registerForRadioAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 1552
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "registerForRadioAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->registerForRadioAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerForRadioAvailable NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1554
    :catch_1
    move-exception v0

    .line 1555
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerForRadioAvailable RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1560
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerForRadioNotAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 1578
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "registerForRadioNotAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->registerForRadioNotAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerForRadioNotAvailable NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1580
    :catch_1
    move-exception v0

    .line 1581
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "registerForRadioNotAvailable RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1586
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public saveNetworkModeToDB(II)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "mode"    # I

    .line 721
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->saveNetworkModeToDB(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "saveNetworkModeToDB RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public scanVsimAvailableNetworks(II)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "type"    # I

    .line 1388
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/HwVSimManager;->scanVsimAvailableNetworks(II)I

    move-result v0

    return v0
.end method

.method public sendLaaCmd(ILjava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "reserved"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1981
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLaaCmd: cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reserved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->sendLaaCmd(ILjava/lang/String;Landroid/os/Message;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "sendLaaCmd RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public sendPseudocellCellInfo(IIIILjava/lang/String;I)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "lac"    # I
    .param p3, "cid"    # I
    .param p4, "radioTech"    # I
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .line 1970
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPseudocellCellInfo, type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", radioTech = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", plmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IHwTelephony;->sendPseudocellCellInfo(IIIILjava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1972
    :catch_0
    move-exception v0

    .line 1973
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPseudocellCellInfo RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public sendSimMatchedOperatorInfo(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "opKey"    # Ljava/lang/String;
    .param p3, "opName"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "reserveField"    # Ljava/lang/String;

    .line 2202
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSimMatchedOperatorInfo slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", opKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", opName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reserveField = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/IHwTelephony;->sendSimMatchedOperatorInfo(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2205
    :catch_0
    move-exception v0

    .line 2206
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "sendSimMatchedOperatorInfo RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public set2GServiceAbility(I)V
    .locals 3
    .param p1, "ability"    # I

    .line 777
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->set2GServiceAbility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "set2GServiceAbility failed ,RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setApn(IILjava/lang/String;)I
    .locals 7
    .param p1, "cardtype"    # I
    .param p2, "apntype"    # I
    .param p3, "challenge"    # Ljava/lang/String;

    .line 1323
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/HwVSimManager;->enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "commandInterfaceCFReason"    # I
    .param p4, "dialingNumber"    # Ljava/lang/String;
    .param p5, "timerSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2060
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardingOption subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", commandInterfaceCFAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", commandInterfaceCFReason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timerSeconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IHwTelephony;->setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2068
    goto :goto_0

    .line 2066
    :catch_0
    move-exception v0

    .line 2067
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setCallForwardingOption RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setCsconEnabled(Z)Z
    .locals 3
    .param p1, "isEnabled"    # Z

    .line 2289
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCsconEnabled isEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setCsconEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2291
    :catch_0
    move-exception v0

    .line 2292
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setCsconEnabled RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setDataEnabledWithoutPromp(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 599
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setDataEnabledWithoutPromp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    goto :goto_1

    .line 600
    :catch_1
    move-exception v0

    .line 602
    :goto_0
    nop

    .line 603
    :goto_1
    return-void
.end method

.method public setDataRoamingEnabledWithoutPromp(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 609
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setDataRoamingEnabledWithoutPromp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setDataRoamingEnabledWithoutPromp RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setDataSettingMode(Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;)V
    .locals 3
    .param p1, "dataMode"    # Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    .line 975
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTETDD_ONLY:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTE_AND_AUTO:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    if-eq p1, v0, :cond_0

    .line 976
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSettingMode failed! param err mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void

    .line 979
    :cond_0
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner$1;->$SwitchMap$android$telephony$HwTelephonyManagerInner$DataSettingModeType:[I

    invoke-virtual {p1}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 981
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/telephony/HwTelephonyManagerInner;->doSetDataSettingModeFromLteTddOnly(Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;)V

    .line 982
    goto :goto_0

    .line 984
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/telephony/HwTelephonyManagerInner;->doSetDataSettingModeFromLteAndAuto(Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;)V

    .line 985
    nop

    .line 989
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDeepNoDisturbState(II)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 2159
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeepNoDisturbState slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->setDeepNoDisturbState(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2161
    :catch_0
    move-exception v0

    .line 2162
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeepNoDisturbState RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setDefault4GSlotId(ILandroid/os/Message;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .line 871
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "In setDefault4GSlotId"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->setDefault4GSlotId(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setDefault4GSlotId RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setDefaultDataSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 851
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setDefaultDataSlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    goto :goto_1

    .line 852
    :catch_1
    move-exception v0

    .line 854
    :goto_0
    nop

    .line 855
    :goto_1
    return-void
.end method

.method public setDefaultMobileEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 589
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultMobileEnable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setDefaultMobileEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    goto :goto_1

    .line 591
    :catch_1
    move-exception v0

    .line 593
    :goto_0
    nop

    .line 594
    :goto_1
    return-void
.end method

.method public setISMCOEX(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ATCommand"    # Ljava/lang/String;

    .line 1517
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setISMCOEX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setISMCOEX(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1521
    :catch_0
    move-exception v0

    .line 1522
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setISMCOEX NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1519
    :catch_1
    move-exception v0

    .line 1520
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setISMCOEX RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1525
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setImsDomainConfig(I)V
    .locals 3
    .param p1, "domainType"    # I

    .line 1669
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "setImsDomainConfig"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setImsDomainConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1673
    :catch_0
    move-exception v0

    .line 1674
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setImsDomainConfig NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 1671
    :catch_1
    move-exception v0

    .line 1672
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setImsDomainConfig RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1676
    :goto_1
    return-void
.end method

.method public setImsDomainConfig(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "domainType"    # I

    .line 1799
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsDomainConfig, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->setImsDomainConfigByPhoneId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setImsDomainConfig NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 1801
    :catch_1
    move-exception v0

    .line 1802
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setImsDomainConfig RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1806
    :goto_1
    return-void
.end method

.method public setImsRegistrationState(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "registered"    # Z

    .line 729
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->setImsRegistrationStateForSubId(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setImsRegistrationState RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setImsSwitch(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "value"    # Z

    .line 1774
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsSwitch, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->setImsSwitchByPhoneId(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    goto :goto_0

    .line 1776
    :catch_0
    move-exception v0

    .line 1777
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setImsSwitch RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setImsSwitch(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 1644
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsSwitch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setImsSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setImsSwitch RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setLine1Number(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 2150
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHwTelephony;->setLine1Number(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2151
    :catch_0
    move-exception v0

    .line 2152
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setLine1Number RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setLteServiceAbility(I)V
    .locals 3
    .param p1, "ability"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 639
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setLteServiceAbility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setLteServiceAbility RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setLteServiceAbility(II)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "ability"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwTelephony;->setLteServiceAbilityForSubId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setLteServiceAbility RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPinLockEnabled(ZLjava/lang/String;I)Z
    .locals 3
    .param p1, "enablePinLock"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 1949
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPinLockEnabled, enablePinLock ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->setPinLockEnabled(ZLjava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "notifyDeviceState RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setServiceAbility(III)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "type"    # I
    .param p3, "ability"    # I

    .line 695
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->setServiceAbilityForSubId(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setXGServiceAbilityForSubId RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setSubscription(IZLandroid/os/Message;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "activate"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 2086
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubscription subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", activate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->setSubscription(IZLandroid/os/Message;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setSubscription RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setTemperatureControlToModem(IIILandroid/os/Message;)Z
    .locals 4
    .param p1, "level"    # I
    .param p2, "type"    # I
    .param p3, "subId"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 2438
    const/4 v0, 0x0

    .line 2440
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHwTelephony;->setTemperatureControlToModem(IIILandroid/os/Message;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2443
    goto :goto_0

    .line 2441
    :catch_0
    move-exception v1

    .line 2442
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwTelephonyManagerInner"

    const-string v3, "setTemperatureControlToModem RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public setUplinkFreqBandwidthReportState(IILcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 2169
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUplinkFreqBandwidthReportState slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IHwTelephony;->setUplinkFreqBandwidthReportState(IILcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2171
    :catch_0
    move-exception v0

    .line 2172
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "setUplinkFreqBandwidthReportState RemoteExceptio"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setUserPrefDataSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 343
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->setUserPrefDataSlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    goto :goto_1

    .line 344
    :catch_1
    move-exception v0

    .line 346
    :goto_0
    nop

    .line 347
    :goto_1
    return-void
.end method

.method public setUserReservedSubId(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 1395
    invoke-static {}, Landroid/telephony/HwVSimManager;->getDefault()Landroid/telephony/HwVSimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/HwVSimManager;->setUserReservedSubId(I)Z

    move-result v0

    return v0
.end method

.method public triggerChrAppCloseDataSwitch(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 1144
    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/HwTelephonyManagerInner;->isAppInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " operate data switch! trigger Chr!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.app_close_data_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, "apkIntent":Landroid/content/Intent;
    const-string v1, "appname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    const-string v1, "com.huawei.android.permission.GET_CHR_DATA"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1155
    .end local v0    # "apkIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledProperties(Ljava/lang/String;Z)V

    .line 1156
    return-void

    .line 1145
    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterCommonImsaToMapconInfo(Lcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 1617
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "unregisterCommonImsaToMapconInfo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->unregisterCommonImsaToMapconInfo(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterCommonImsaToMapconInfo NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1619
    :catch_1
    move-exception v0

    .line 1620
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterCommonImsaToMapconInfo RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1625
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForAntiFakeBaseStation()Z
    .locals 3

    .line 2271
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "unregisterForAntiFakeBaseStation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwTelephony;->unregisterForAntiFakeBaseStation()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2273
    :catch_0
    move-exception v0

    .line 2274
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterForAntiFakeBaseStation RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForCallAltSrv(I)V
    .locals 3
    .param p1, "subId"    # I

    .line 2010
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "unregisterForCallAltSrv"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->unregisterForCallAltSrv(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    goto :goto_0

    .line 2012
    :catch_0
    move-exception v0

    .line 2013
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterForCallAltSrv RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterForPhoneEvent(Lcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 1750
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterForPhoneEvent, callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->unregisterForPhoneEvent(Lcom/android/internal/telephony/IPhoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    const/4 v0, 0x1

    return v0

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterForPhoneEvent RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForRadioAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 1565
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "unregisterForRadioAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->unregisterForRadioAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterForRadioAvailable NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1567
    :catch_1
    move-exception v0

    .line 1568
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterForRadioAvailable RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1573
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForRadioNotAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telephony/IPhoneCallback;

    .line 1591
    :try_start_0
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "unregisterForRadioNotAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->unregisterForRadioNotAvailable(Lcom/android/internal/telephony/IPhoneCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterForRadioNotAvailable NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1593
    :catch_1
    move-exception v0

    .line 1594
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    const-string v2, "unregisterForRadioNotAvailable RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 1599
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateCrurrentPhone(I)V
    .locals 1
    .param p1, "lteSlot"    # I

    .line 844
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->updateCrurrentPhone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    goto :goto_1

    .line 845
    :catch_1
    move-exception v0

    .line 847
    :goto_0
    nop

    .line 848
    :goto_1
    return-void
.end method

.method public waitingSetDefault4GSlotDone(Z)V
    .locals 4
    .param p1, "waiting"    # Z

    .line 897
    const-string v0, "HwTelephonyManagerInner"

    const-string v1, "In waitingSetDefault4GSlotDone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwTelephonyManagerInner;->getIHwTelephony()Lcom/android/internal/telephony/IHwTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwTelephony;->waitingSetDefault4GSlotDone(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwTelephonyManagerInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
