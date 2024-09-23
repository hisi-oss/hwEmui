.class public Lcom/android/internal/telephony/HwSignalStrength;
.super Ljava/lang/Object;
.source "HwSignalStrength.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;,
        Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    }
.end annotation


# static fields
.field private static final CDMA_ECIO_QCOM_MULTIPLE:I = 0xa

.field public static final DEFAULT_NUM_SIGNAL_STRENGTH_BINS:I = 0x4

.field protected static final DEFAULT_SIGNAL_CUST_CDMA:Ljava/lang/String; = "5,false,-112,-106,-99,-92,-85"

.field protected static final DEFAULT_SIGNAL_CUST_CDMALTE:Ljava/lang/String; = "5,false,-120,-115,-110,-105,-97"

.field protected static final DEFAULT_SIGNAL_CUST_EVDO:Ljava/lang/String; = "5,false,-112,-106,-99,-92,-85"

.field protected static final DEFAULT_SIGNAL_CUST_GSM:Ljava/lang/String; = "5,false,-109,-103,-97,-91,-85"

.field protected static final DEFAULT_SIGNAL_CUST_LTE:Ljava/lang/String; = "5,false,-120,-115,-110,-105,-97"

.field protected static final DEFAULT_SIGNAL_CUST_NR:Ljava/lang/String; = "5,false,-120,-115,-110,-105,-97"

.field protected static final DEFAULT_SIGNAL_CUST_UMTS:Ljava/lang/String; = "5,false,-112,-105,-99,-93,-87"

.field private static final ECIO_HISI_MULTIPLE:I = 0x1

.field public static final GSM_STRENGTH_NONE:I = 0x0

.field public static final GSM_STRENGTH_UNKOUWN:I = 0x63

.field public static final INVALID_ECIO:I = 0xff

.field public static final INVALID_PHONEID:I = -0x1

.field public static final INVALID_RSSI:I = -0x1

.field public static final KEY_SIGNAL_STRENGTH_STRING:Ljava/lang/String; = "signal_strength"

.field private static final LOG_TAG:Ljava/lang/String; = "HwSignalStrength"

.field private static final LTE_RSRQ_QCOM_MULTIPLE:I = 0xa

.field public static final LTE_RSSNR_UNKOUWN_STD:I = 0x63

.field public static final LTE_STRENGTH_UNKOUWN_STD:I = -0x14

.field public static final MAX_ASU:I = 0x1f

.field public static final NEW_NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_EXCELLENT:I = 0x5

.field private static final SIM_NUM:I

.field private static final UMTS_ECIO_QCOM_MULTIPLE:I = 0x2

.field public static final WCDMA_ECIO_NONE:I = 0xff

.field public static final WCDMA_STRENGTH_INVALID:I = 0x7fffffff

.field public static final WCDMA_STRENGTH_NONE:I = 0x0

.field public static final WCDMA_STRENGTH_UNKOUWN:I = 0x63

.field private static isQualcomOrMtk:Z

.field private static final mHwSigStrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HwSignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static mHwSignalStrength:Lcom/android/internal/telephony/HwSignalStrength;

.field private static final sLockObject:Ljava/lang/Object;


# instance fields
.field private PROPERTY_SIGNAL_CUST_CDMA:Ljava/lang/String;

.field private PROPERTY_SIGNAL_CUST_CDMALTE:Ljava/lang/String;

.field private PROPERTY_SIGNAL_CUST_CONFIGURED:Ljava/lang/String;

.field private PROPERTY_SIGNAL_CUST_EVDO:Ljava/lang/String;

.field private PROPERTY_SIGNAL_CUST_GSM:Ljava/lang/String;

.field private PROPERTY_SIGNAL_CUST_LTE:Ljava/lang/String;

.field private PROPERTY_SIGNAL_CUST_NR:Ljava/lang/String;

.field private PROPERTY_SIGNAL_CUST_UMTS:Ljava/lang/String;

.field private mCdmaLteSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

.field private mCdmaSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

.field private mContext:Landroid/content/Context;

.field private mEvdoSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

.field private mGsmSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLteSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

.field private mNrSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mSigCustConfigured:Z

.field private mUmtsSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isHisiPlatform()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/HwSignalStrength;->isQualcomOrMtk:Z

    .line 86
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HwSignalStrength;->SIM_NUM:I

    .line 139
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength;->mHwSigStrMap:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength;->sLockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "gsm.sigcust.gsm"

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_GSM:Ljava/lang/String;

    .line 27
    const-string v0, "gsm.sigcust.umts"

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_UMTS:Ljava/lang/String;

    .line 28
    const-string v0, "gsm.sigcust.cdma"

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_CDMA:Ljava/lang/String;

    .line 29
    const-string v0, "gsm.sigcust.evdo"

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_EVDO:Ljava/lang/String;

    .line 30
    const-string v0, "gsm.sigcust.lte"

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_LTE:Ljava/lang/String;

    .line 32
    const-string v0, "gsm.sigcust.cdmalte"

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_CDMALTE:Ljava/lang/String;

    .line 34
    const-string v0, "gsm.sigcust.nr"

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_NR:Ljava/lang/String;

    .line 35
    const-string v0, "gsm.sigcust.configured"

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_CONFIGURED:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mSigCustConfigured:Z

    .line 804
    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HwSignalStrength$1;-><init>(Lcom/android/internal/telephony/HwSignalStrength;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhoneId:I

    .line 111
    iput-object p2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    iget-object v2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->GSM:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mGsmSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 118
    new-instance v1, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    iget-object v2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UMTS:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mUmtsSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 119
    new-instance v1, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    iget-object v2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMA:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mCdmaSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 120
    new-instance v1, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    iget-object v2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->EVDO:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mEvdoSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 121
    new-instance v1, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    iget-object v2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->LTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mLteSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 122
    new-instance v1, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    iget-object v2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMALTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mCdmaLteSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 123
    new-instance v1, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    iget-object v2, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->NR:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mNrSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 124
    iget-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HwSignalStrength;->updateSigCustInfoFromXML(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/android/internal/telephony/HwSignalStrength;->isQualcomOrMtk:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HwSignalStrength;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HwSignalStrength;

    .line 22
    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/HwSignalStrength;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HwSignalStrength;

    .line 22
    invoke-direct {p0}, Lcom/android/internal/telephony/HwSignalStrength;->loadAllCustInfo()V

    return-void
.end method

.method public static getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/HwSignalStrength;
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 142
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 143
    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 146
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/android/internal/telephony/HwSignalStrength;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    return-object v0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/android/internal/telephony/HwSignalStrength;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength;->mHwSigStrMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HwSignalStrength;

    .line 152
    .local v3, "hwSigStr":Lcom/android/internal/telephony/HwSignalStrength;
    if-nez v3, :cond_2

    .line 153
    new-instance v4, Lcom/android/internal/telephony/HwSignalStrength;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    move-object v3, v4

    .line 154
    sget-object v4, Lcom/android/internal/telephony/HwSignalStrength;->mHwSigStrMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v4, "HwSignalStrength"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHwSigStrMap init subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    monitor-exit v2

    return-object v3

    .line 158
    .end local v3    # "hwSigStr":Lcom/android/internal/telephony/HwSignalStrength;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getSigCustString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 263
    const-string v0, ""

    .line 265
    .local v0, "custStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cust_signal_thresholds"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 267
    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 268
    :goto_0
    return-object v0
.end method

.method private isCustConfigValid(Ljava/lang/String;)Z
    .locals 6
    .param p1, "custInfo"    # Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCustInfo start  subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    return v1

    .line 344
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "config":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cust config length Error!!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HwSignalStrength;->loge(Ljava/lang/String;)V

    .line 347
    return v1

    .line 349
    :cond_1
    const-string v2, "4"

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "5"

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num of bins Error!!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HwSignalStrength;->loge(Ljava/lang/String;)V

    .line 351
    return v1

    .line 353
    :cond_2
    const-string v2, "true"

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    const-string v2, "4"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    array-length v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    :cond_3
    const-string v2, "5"

    aget-object v3, v0, v1

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    array-length v2, v0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_8

    .line 356
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length of config Error!!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HwSignalStrength;->loge(Ljava/lang/String;)V

    .line 357
    return v1

    .line 360
    :cond_5
    const-string v2, "4"

    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    array-length v2, v0

    if-ne v2, v3, :cond_7

    :cond_6
    const-string v2, "5"

    aget-object v3, v0, v1

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_8

    .line 362
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length of config Error!!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HwSignalStrength;->loge(Ljava/lang/String;)V

    .line 363
    return v1

    .line 366
    :cond_8
    const-string v1, "Cust config is valid!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 367
    return v4
.end method

.method public static isEcioValid(Lcom/android/internal/telephony/HwSignalStrength$SignalType;I)Z
    .locals 4
    .param p0, "type"    # Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .param p1, "ecio"    # I

    .line 475
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$2;->$SwitchMap$com$android$internal$telephony$HwSignalStrength$SignalType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7fffffff

    const/16 v2, 0xff

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 502
    return v3

    .line 497
    :pswitch_0
    if-eq v1, p1, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_2

    .line 498
    :cond_0
    return v3

    .line 488
    :pswitch_1
    if-ne v2, p1, :cond_2

    .line 489
    return v3

    .line 482
    :pswitch_2
    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    .line 483
    :cond_1
    return v3

    .line 477
    :pswitch_3
    if-ne v2, p1, :cond_2

    .line 478
    return v3

    .line 504
    :cond_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isEcioValidForQCom(Lcom/android/internal/telephony/HwSignalStrength$SignalType;I)Z
    .locals 2
    .param p0, "type"    # Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .param p1, "ecio"    # I

    .line 508
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$2;->$SwitchMap$com$android$internal$telephony$HwSignalStrength$SignalType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 524
    return v1

    .line 519
    :pswitch_0
    const v0, 0x7fffffff

    if-ne v0, p1, :cond_0

    .line 520
    return v1

    .line 513
    :pswitch_1
    const/16 v0, 0xff

    if-ne v0, p1, :cond_0

    .line 514
    return v1

    .line 526
    :cond_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isRssiValid(Lcom/android/internal/telephony/HwSignalStrength$SignalType;I)Z
    .locals 5
    .param p0, "type"    # Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .param p1, "rssi"    # I

    .line 432
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$2;->$SwitchMap$com$android$internal$telephony$HwSignalStrength$SignalType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x63

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 463
    return v4

    .line 458
    :pswitch_0
    if-eq v2, p1, :cond_0

    const/16 v0, -0x14

    if-le p1, v0, :cond_3

    .line 459
    :cond_0
    return v4

    .line 449
    :pswitch_1
    if-gtz p1, :cond_1

    if-ne v3, p1, :cond_3

    .line 450
    :cond_1
    return v4

    .line 441
    :pswitch_2
    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    if-gtz p1, :cond_2

    if-ne v3, p1, :cond_3

    .line 444
    :cond_2
    return v4

    .line 434
    :pswitch_3
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_4

    if-gtz p1, :cond_4

    if-ne v3, p1, :cond_3

    goto :goto_0

    .line 465
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 436
    :cond_4
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 819
    if-ltz p0, :cond_0

    sget v0, Lcom/android/internal/telephony/HwSignalStrength;->SIM_NUM:I

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadAllCustInfo()V
    .locals 1

    .line 128
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->GSM:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->loadCustInfo(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V

    .line 129
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UMTS:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->loadCustInfo(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V

    .line 130
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMA:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->loadCustInfo(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V

    .line 131
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->EVDO:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->loadCustInfo(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V

    .line 132
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->LTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->loadCustInfo(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V

    .line 134
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMALTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->loadCustInfo(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V

    .line 136
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->NR:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->loadCustInfo(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V

    .line 137
    return-void
.end method

.method private loadCustInfo(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V
    .locals 6
    .param p1, "signalType"    # Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    .line 168
    const-string v0, ""

    .line 169
    .local v0, "configItem":Ljava/lang/String;
    const-string v1, ""

    .line 170
    .local v1, "defaultValue":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HwSignalStrength;->getSignalThreshold(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    move-result-object v2

    .line 171
    .local v2, "signalThreshold":Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;
    if-nez v2, :cond_0

    .line 172
    new-instance v3, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    iget-object v4, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, p1, v5}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V

    move-object v2, v3

    .line 175
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/HwSignalStrength$2;->$SwitchMap$com$android$internal$telephony$HwSignalStrength$SignalType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid signalType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HwSignalStrength;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_NR:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "5,false,-120,-115,-110,-105,-97"

    .line 209
    goto/16 :goto_0

    .line 202
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_CDMALTE:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "5,false,-120,-115,-110,-105,-97"

    .line 204
    goto :goto_0

    .line 193
    :pswitch_2
    const-string v3, "signal_strength"

    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhoneId:I

    const-class v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lhuawei/cust/HwCfgFilePolicy;->getValue(Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_LTE:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_1
    const-string v3, "HwSignalStrength"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "5,false,-120,-115,-110,-105,-97"

    .line 199
    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_EVDO:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v1, "5,false,-112,-106,-99,-92,-85"

    .line 191
    goto :goto_0

    .line 185
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_CDMA:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "5,false,-112,-106,-99,-92,-85"

    .line 187
    goto :goto_0

    .line 181
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_UMTS:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "5,false,-112,-105,-99,-93,-87"

    .line 183
    goto :goto_0

    .line 177
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_GSM:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "5,false,-109,-103,-97,-91,-85"

    .line 179
    nop

    .line 217
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->isCustConfigValid(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 218
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->loadConfigItem(Ljava/lang/String;)V

    .line 219
    invoke-static {v2, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->access$102(Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;Z)Z

    .line 220
    const-string v3, "loadCustInfo from hw_defaults"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 223
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->loadConfigItem(Ljava/lang/String;)V

    .line 224
    invoke-static {v2, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->access$102(Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;Z)Z

    goto :goto_1

    .line 227
    :cond_3
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->access$102(Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;Z)Z

    .line 228
    const-string v3, "Error! Didn\'t get any cust config!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HwSignalStrength;->loge(Ljava/lang/String;)V

    .line 231
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 101
    const-string v0, "HwSignalStrength"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 98
    const-string v0, "HwSignalStrength"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method private setCustConfigFromString(Ljava/lang/String;)V
    .locals 6
    .param p1, "configstr"    # Ljava/lang/String;

    .line 272
    if-eqz p1, :cond_2

    .line 273
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "configstr format is wrong,cannot analyze!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 275
    return-void

    .line 277
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "configType":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "configInfo":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HwSignalStrength;->typeString2Enum(Ljava/lang/String;)Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    move-result-object v3

    .line 281
    .local v3, "type":Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    sget-object v4, Lcom/android/internal/telephony/HwSignalStrength$2;->$SwitchMap$com$android$internal$telephony$HwSignalStrength$SignalType:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid sig cust "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "configType":Ljava/lang/String;
    .end local v2    # "configInfo":Ljava/lang/String;
    .end local v3    # "type":Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    goto/16 :goto_0

    .line 299
    .restart local v0    # "pos":I
    .restart local v1    # "configType":Ljava/lang/String;
    .restart local v2    # "configInfo":Ljava/lang/String;
    .restart local v3    # "type":Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_LTE:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set lte sig cust to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 301
    goto/16 :goto_0

    .line 295
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_EVDO:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set evdo sig cust to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 297
    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_CDMA:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set cdma sig cust to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 293
    goto :goto_0

    .line 287
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_UMTS:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set umts sig cust to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 289
    goto :goto_0

    .line 283
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_GSM:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set gsm sig cust to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 285
    goto :goto_0

    .line 303
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_NR:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set nr sig cust to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 305
    nop

    .line 311
    .end local v0    # "pos":I
    .end local v1    # "configType":Ljava/lang/String;
    .end local v2    # "configInfo":Ljava/lang/String;
    .end local v3    # "type":Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private typeString2Enum(Ljava/lang/String;)Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .locals 1
    .param p1, "typeStr"    # Ljava/lang/String;

    .line 313
    if-eqz p1, :cond_7

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    const-string v0, "gsm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->GSM:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0

    .line 317
    :cond_1
    const-string v0, "umts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UMTS:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0

    .line 319
    :cond_2
    const-string v0, "lte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->LTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0

    .line 321
    :cond_3
    const-string v0, "cdma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMA:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0

    .line 323
    :cond_4
    const-string v0, "evdo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->EVDO:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0

    .line 325
    :cond_5
    const-string v0, "nr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->NR:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0

    .line 328
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UNKNOWN:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0

    .line 314
    :cond_7
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UNKNOWN:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0
.end method

.method private updateCustInfo(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCustInfo start  subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "network_type_sig_custs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 245
    .local v1, "sig_cust_strings":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/HwSignalStrength;->getSigCustString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cust_signal_thresholds : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 254
    if-eqz v0, :cond_0

    .line 255
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 256
    aget-object v3, v0, v2

    .line 257
    .local v3, "configstr":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HwSignalStrength;->setCustConfigFromString(Ljava/lang/String;)V

    .line 255
    .end local v3    # "configstr":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 251
    :cond_1
    const-string v2, "no cust_signal_thresholds found"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private updateSigCustInfoFromXML(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HwSignalStrength;->updateCustInfo(Landroid/content/Context;)V

    .line 235
    invoke-direct {p0}, Lcom/android/internal/telephony/HwSignalStrength;->loadAllCustInfo()V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_CONFIGURED:Ljava/lang/String;

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mSigCustConfigured:Z

    .line 238
    const-string v0, "updateSigCustInfoFromXML finish, set gsm.sigcust.configured true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HwSignalStrength;->logi(Ljava/lang/String;)V

    .line 239
    return-void
.end method


# virtual methods
.method public getLevel(Lcom/android/internal/telephony/HwSignalStrength$SignalType;II)I
    .locals 2
    .param p1, "type"    # Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .param p2, "rssi"    # I
    .param p3, "ecio"    # I

    .line 405
    iget-boolean v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mSigCustConfigured:Z

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->PROPERTY_SIGNAL_CUST_CONFIGURED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 407
    .local v0, "isCustConfigured":Z
    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/internal/telephony/HwSignalStrength;->loadAllCustInfo()V

    .line 409
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/HwSignalStrength;->mSigCustConfigured:Z

    .line 415
    .end local v0    # "isCustConfigured":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HwSignalStrength;->getSignalThreshold(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    move-result-object v0

    .line 416
    .local v0, "signalThreshold":Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->getSignalLevel(II)I

    move-result v1

    .local v1, "level":I
    goto :goto_0

    .line 419
    .end local v1    # "level":I
    :cond_1
    const/4 v1, -0x1

    .line 422
    .restart local v1    # "level":I
    :goto_0
    return v1
.end method

.method public getSignalThreshold(Lcom/android/internal/telephony/HwSignalStrength$SignalType;)Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "signalThreshold":Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;
    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$2;->$SwitchMap$com$android$internal$telephony$HwSignalStrength$SignalType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 395
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mNrSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 396
    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mCdmaLteSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 392
    goto :goto_0

    .line 387
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mLteSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 388
    goto :goto_0

    .line 384
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mEvdoSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 385
    goto :goto_0

    .line 381
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mCdmaSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 382
    goto :goto_0

    .line 378
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mUmtsSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 379
    goto :goto_0

    .line 375
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength;->mGsmSignalThreshold:Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;

    .line 376
    nop

    .line 401
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
