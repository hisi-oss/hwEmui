.class public Lcom/android/ims/HwImsManagerInner;
.super Ljava/lang/Object;
.source "HwImsManagerInner.java"


# static fields
.field public static final ACTION_IMS_FACTORY_RESET:Ljava/lang/String; = "com.huawei.ACTION_NETWORK_FACTORY_RESET"

.field private static final DBG:Z = true

.field private static final DEFAULT_WFC_MODE:I = 0x2

.field private static final FEATURE_DUAL_VOWIFI:Z

.field private static final FEATURE_SHOW_VOLTE_SWITCH:Z

.field private static final FEATURE_VOLTE_DYN:Z

.field public static final HW_QCOM_VOLTE_USER_SWITCH:Ljava/lang/String; = "volte_vt_enabled"

.field public static final HW_VOLTE_USER_SWITCH:Ljava/lang/String; = "hw_volte_user_switch"

.field private static final HW_VOLTE_USER_SWITCH_DUALIMS:[Ljava/lang/String;

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field private static final INT_INVALID_VALUE:I = -0x1

.field public static final KEY_CARRIER_DEFAULT_VOLTE_SWITCH_ON_BOOL:Ljava/lang/String; = "carrier_default_volte_switch_on_bool"

.field public static final KEY_CARRIER_DEFAULT_WFC_IMS_ROAMING_MODE_INT:Ljava/lang/String; = "carrier_default_wfc_ims_roaming_mode_int"

.field public static final PROP_VILTE_ENABLE:Ljava/lang/String; = "ro.config.hw_vtlte_on"

.field public static final PROP_VOLTE_ENABLE:Ljava/lang/String; = "ro.config.hw_volte_on"

.field public static final PROP_VOWIFI_ENABLE:Ljava/lang/String; = "ro.vendor.config.hw_vowifi"

.field public static final SUBID:Ljava/lang/String; = "subId"

.field private static final SUBID_0:I = 0x0

.field private static final SUBID_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HwImsManagerInner"

.field private static final VOWIFI_PREFER_INVALID:I = 0x3

.field private static final VT_IMS_ENABLED_DUALIMS:[Ljava/lang/String;

.field private static final isATT:Z

.field private static mConfigUpdated:Z

.field private static userSelectWfcMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    const-string v0, "hw_volte_user_switch_0"

    const-string v1, "hw_volte_user_switch_1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/HwImsManagerInner;->HW_VOLTE_USER_SWITCH_DUALIMS:[Ljava/lang/String;

    .line 71
    const-string v0, "vt_ims_enabled_0"

    const-string v1, "vt_ims_enabled_1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/HwImsManagerInner;->VT_IMS_ENABLED_DUALIMS:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/ims/HwImsManagerInner;->userSelectWfcMode:[I

    .line 77
    const-string v0, "ro.config.hw_volte_dyn"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_VOLTE_DYN:Z

    .line 78
    const-string v0, "ro.config.hw_dual_vowifi"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    .line 79
    const-string v0, "ro.config.hw_volte_show_switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_SHOW_VOLTE_SWITCH:Z

    .line 86
    const-string v0, "07"

    const-string v3, "ro.config.hw_opta"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "840"

    const-string v3, "ro.config.hw_optb"

    .line 87
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/android/ims/HwImsManagerInner;->isATT:Z

    .line 89
    sput-boolean v1, Lcom/android/ims/HwImsManagerInner;->mConfigUpdated:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 43
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static changeMmTelCapability(Landroid/content/Context;IIIZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "radioTech"    # I
    .param p4, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 655
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 656
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    .line 657
    return-void
.end method

.method private static checkAndThrowExceptionIfServiceUnavailable(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V
    .locals 3
    .param p0, "imsManager"    # Lcom/android/ims/ImsManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getImsServiceProxy()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getImsServiceProxy()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/ims/HwImsManagerInner;->createImsService(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V

    .line 788
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getImsServiceProxy()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 793
    :cond_1
    return-void

    .line 789
    :cond_2
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "Service is unavailable"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static checkCarrierConfigKeyExist(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 724
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 725
    .local v0, "ifExist":Ljava/lang/Boolean;
    const-string v1, "carrier_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 727
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x0

    .line 728
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {v1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 731
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCarrierConfigKeyExist, b.getkey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 733
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 735
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrierConfig key["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "exists"

    goto :goto_0

    :cond_2
    const-string v4, "does not exist"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 736
    return-object v0
.end method

.method private static createImsService(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V
    .locals 1
    .param p0, "imsManager"    # Lcom/android/ims/ImsManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 807
    invoke-static {p0, p1, p2}, Lcom/android/ims/HwImsManagerInner;->getServiceProxy(Lcom/android/ims/ImsManager;Landroid/content/Context;I)Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->createImsServiceProxy(Lcom/android/ims/MmTelFeatureConnection;)V

    .line 812
    return-void
.end method

.method public static factoryReset(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 902
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId is wrong or context is null, subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 904
    return-void

    .line 906
    :cond_0
    move v0, p1

    .line 907
    .local v0, "currentsubId":I
    sget-object v1, Lcom/android/ims/HwImsManagerInner;->HW_VOLTE_USER_SWITCH_DUALIMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 909
    .local v1, "volteDB":Ljava/lang/String;
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 910
    const-string v2, "factoryReset :: dual-ims is not support"

    invoke-static {v2}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 911
    const-string v1, "hw_volte_user_switch"

    .line 913
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 915
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    .line 917
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 919
    const-string v6, "carrier_default_volte_switch_on_bool"

    invoke-static {p0, v6, v0}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 921
    nop

    .line 917
    move v6, v5

    goto :goto_0

    .line 921
    :cond_2
    nop

    .line 917
    move v6, v4

    :goto_0
    invoke-static {v2, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 926
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "volte_vt_enabled"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 928
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    .line 930
    const-string v6, "carrier_default_volte_switch_on_bool"

    invoke-static {p0, v6, v0}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 932
    nop

    .line 928
    move v6, v5

    goto :goto_1

    .line 932
    :cond_4
    nop

    .line 928
    move v6, v4

    :goto_1
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 937
    :cond_5
    const-string v2, "wfc_ims_enabled"

    invoke-static {v0, p0, v2}, Lcom/android/ims/HwImsManagerInner;->hasFiledInDBByFiledName(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 938
    const-string v2, "carrier_default_wfc_ims_enabled_bool"

    invoke-static {p0, v2, v0}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 940
    move v2, v5

    goto :goto_2

    :cond_6
    move v2, v4

    .line 941
    .local v2, "wfcenabled":I
    :goto_2
    const-string v3, "wfc_ims_enabled"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 944
    .end local v2    # "wfcenabled":I
    :cond_7
    const-string v2, "wfc_ims_mode"

    invoke-static {v0, p0, v2}, Lcom/android/ims/HwImsManagerInner;->hasFiledInDBByFiledName(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 945
    const-string v2, "carrier_default_wfc_ims_mode_int"

    invoke-static {p0, v2, v0}, Lcom/android/ims/HwImsManagerInner;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 946
    .local v2, "wfcmode":I
    const-string v3, "wfc_ims_mode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 949
    .end local v2    # "wfcmode":I
    :cond_8
    const-string v2, "wfc_ims_roaming_mode"

    invoke-static {v0, p0, v2}, Lcom/android/ims/HwImsManagerInner;->hasFiledInDBByFiledName(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 950
    const-string v2, "carrier_default_wfc_ims_roaming_mode_int"

    invoke-static {p0, v2, v0}, Lcom/android/ims/HwImsManagerInner;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 951
    .local v2, "wfcroamingmode":I
    const-string v3, "wfc_ims_roaming_mode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 954
    .end local v2    # "wfcroamingmode":I
    :cond_9
    const-string v2, "wfc_ims_roaming_enabled"

    invoke-static {v0, p0, v2}, Lcom/android/ims/HwImsManagerInner;->hasFiledInDBByFiledName(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 955
    const-string v2, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-static {p0, v2, v0}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 957
    move v4, v5

    nop

    :cond_a
    move v2, v4

    .line 958
    .local v2, "wfcroaming":I
    const-string v3, "wfc_ims_roaming_enabled"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 963
    .end local v2    # "wfcroaming":I
    :cond_b
    invoke-static {p0, v0, v5}, Lcom/android/ims/HwImsManagerInner;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 965
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.ACTION_NETWORK_FACTORY_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "subId"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 966
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 968
    return-void
.end method

.method private static getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 747
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 749
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 750
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 754
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 755
    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 758
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static getImsConfig(Landroid/content/Context;ILjava/lang/String;)Landroid/os/PersistableBundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "configKey"    # Ljava/lang/String;

    .line 1064
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1065
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_1

    .line 1067
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v1

    .line 1068
    .local v1, "config":Lcom/android/ims/ImsConfig;
    if-eqz v1, :cond_0

    .line 1069
    invoke-virtual {v1, p2}, Lcom/android/ims/ImsConfig;->getImsConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1073
    .end local v1    # "config":Lcom/android/ims/ImsConfig;
    :cond_0
    goto :goto_0

    .line 1071
    :catch_0
    move-exception v1

    .line 1072
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "getImsConfig() got ImsException"

    invoke-static {v2}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 1075
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 770
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 772
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 773
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 776
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 777
    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 780
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getServiceProxy(Lcom/android/ims/ImsManager;Landroid/content/Context;I)Lcom/android/ims/MmTelFeatureConnection;
    .locals 5
    .param p0, "imsManager"    # Lcom/android/ims/ImsManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 831
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;-><init>(Landroid/content/Context;I)V

    .line 832
    .local v0, "serviceProxy":Lcom/android/ims/MmTelFeatureConnection;
    const-string v1, "phone"

    .line 833
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 834
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 835
    const-string v2, "create: TelephonyManager is null!"

    invoke-static {v2}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 838
    return-object v0

    .line 840
    :cond_0
    nop

    .line 841
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getListener()Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v2

    .line 840
    invoke-virtual {v1, p2, v2}, Landroid/telephony/TelephonyManager;->getImsMmTelFeatureAndListen(ILcom/android/ims/internal/IImsServiceFeatureCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    .line 842
    .local v2, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    if-eqz v2, :cond_1

    .line 843
    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/ims/MmTelFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 845
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    goto :goto_0

    .line 847
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create: binder is null! Slot Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 849
    :goto_0
    return-object v0
.end method

.method public static getWfcMode(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 317
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is deault_wfc_mode, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 319
    return v1

    .line 321
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 329
    :cond_1
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 330
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v1

    return v1

    .line 322
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :cond_2
    :goto_0
    const-string v0, "getWfcMode :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 324
    const-string v0, "getWfcMode error, subId should be the mainsubId"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 325
    return v1

    .line 327
    :cond_3
    invoke-static {p0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getWfcMode(Landroid/content/Context;ZI)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # Z
    .param p2, "subId"    # I

    .line 368
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is deault_wfc_mode, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 370
    return v1

    .line 372
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {p0, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 382
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    return v1

    .line 373
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode :: dual-ims is not support, roaming is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p2, :cond_3

    .line 375
    const-string v0, "getWfcMode error, subId should be the mainsubId"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 376
    return v1

    .line 378
    :cond_3
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method private static hasFiledInDBByFiledName(ILandroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "currentsubId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filedName"    # Ljava/lang/String;

    .line 972
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    const/4 v1, -0x1

    invoke-static {p0, p2, v1, p1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 973
    :cond_2
    :goto_0
    return v0
.end method

.method public static isDualImsAvailable()Z
    .locals 1

    .line 980
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    const-string v0, "the device is not support multisim"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x0

    return v0

    .line 984
    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v0

    return v0
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnhanced4gLteModeSettingEnabledByUser :: subId -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 97
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "enabled":I
    move v2, p1

    .line 103
    .local v2, "currentSubId":I
    const-string v3, "hw_volte_user_switch"

    .line 104
    .local v3, "dbName":Ljava/lang/String;
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 106
    const-string v4, "isEnhanced4gLteModeSettingEnabledByUser :: dual-ims is not support, subId is main-subId"

    invoke-static {v4}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    sget-object v4, Lcom/android/ims/HwImsManagerInner;->HW_VOLTE_USER_SWITCH_DUALIMS:[Ljava/lang/String;

    aget-object v3, v4, v2

    .line 110
    :goto_0
    sget-boolean v4, Lcom/android/ims/HwImsManagerInner;->FEATURE_VOLTE_DYN:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 111
    const-string v4, "carrier_volte_available_bool"

    invoke-static {p0, v4, v2}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    const-string v4, "KEY_CARRIER_VOLTE_AVAILABLE_BOOL is false, return false"

    invoke-static {v4}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 114
    return v1

    .line 116
    :cond_2
    const-string v4, "carrier_volte_show_switch_bool"

    invoke-static {p0, v4, v2}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 118
    const-string v1, "KEY_CARRIER_VOLTE_SHOW_SWITCH_BOOL is false, return true"

    invoke-static {v1}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 119
    return v5

    .line 121
    :cond_3
    const-string v4, "carrier_default_volte_switch_on_bool"

    invoke-static {p0, v4, v2}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v1

    .line 124
    .local v4, "defaultValue":I
    :goto_1
    nop

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 124
    invoke-static {v6, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FEATURE_VOLTE_DYN is true, enabled -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", currentSubId ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 127
    .end local v4    # "defaultValue":I
    goto :goto_2

    .line 128
    :cond_5
    sget-boolean v4, Lcom/android/ims/HwImsManagerInner;->FEATURE_SHOW_VOLTE_SWITCH:Z

    if-nez v4, :cond_6

    .line 129
    return v5

    .line 131
    :cond_6
    nop

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 131
    invoke-static {v4, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 135
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnhanced4gLteModeSettingEnabledByUser enabled -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentSubId -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 136
    if-ne v0, v5, :cond_7

    move v1, v5

    nop

    :cond_7
    return v1
.end method

.method private static isGbaValid(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 548
    const-string v0, "carrier_ims_gba_required_bool"

    invoke-static {p0, v0, p1}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 550
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 551
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "efIst":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 553
    const-string v3, "ISF is NULL"

    invoke-static {v3}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 554
    return v1

    .line 556
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    const/4 v3, 0x2

    .line 557
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 558
    .local v1, "capable":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GBA capable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", ISF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 559
    return v1

    .line 561
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "capable":Z
    .end local v2    # "efIst":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public static isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 143
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 145
    return v1

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const-string v0, "isNonTtyOrTtyOnVolteEnabled :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 151
    :cond_1
    const-string v0, "carrier_volte_tty_supported_bool"

    invoke-static {p0, v0, p1}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 153
    return v2

    .line 156
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_tty_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    move v0, v1

    .line 159
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNonTtyOrTtyOnVolteEnabled result -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 161
    return v0
.end method

.method private static isValidParameter(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 988
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    .line 989
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 991
    :cond_2
    return v0
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 168
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 170
    return v1

    .line 172
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const-string v0, "isVolteEnabledByPlatform :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 174
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 176
    :cond_1
    const-string v0, "ro.config.hw_volte_on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    const-string v0, "hw_volte_on is false"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 178
    return v1

    .line 180
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 181
    .local v0, "result1":Z
    const-string v2, "carrier_volte_available_bool"

    invoke-static {p0, v2, p1}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 182
    .local v2, "result2":Z
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isGbaValid(Landroid/content/Context;I)Z

    move-result v3

    .line 183
    .local v3, "result3":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Volte sim adp : Device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", XML_CarrierConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", GbaValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 184
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    nop

    .line 185
    .local v1, "result":Z
    :cond_3
    return v1
.end method

.method public static isVtEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 194
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 196
    return v1

    .line 198
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    const-string v0, "isVtEnabledByPlatform :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 203
    :cond_1
    const-string v0, "ro.config.hw_vtlte_on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    const-string v0, "isVtEnabledByPlatform ro.config.hw_vtlte_on is false"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 205
    return v1

    .line 208
    :cond_2
    nop

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "carrier_vt_available_bool"

    .line 211
    invoke-static {p0, v0, p1}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isGbaValid(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    nop

    .line 208
    :cond_3
    return v1
.end method

.method public static isVtEnabledByUser(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 220
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 222
    return v1

    .line 224
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    const-string v0, "isVtEnabledByUser :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 226
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 228
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/ims/HwImsManagerInner;->VT_IMS_ENABLED_DUALIMS:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, "enabled":I
    if-ne v0, v3, :cond_2

    move v1, v3

    nop

    :cond_2
    return v1
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 514
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 516
    return v1

    .line 519
    :cond_0
    const-string v0, "ro.vendor.config.hw_vowifi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    const-string v0, "hw_vowifi prop is false, return false"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 521
    return v1

    .line 523
    :cond_1
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112003f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 532
    .local v0, "result1":Z
    const-string v2, "carrier_wfc_ims_available_bool"

    invoke-static {p0, v2, p1}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 533
    .local v2, "result2":Z
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isGbaValid(Landroid/content/Context;I)Z

    move-result v3

    .line 534
    .local v3, "result3":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vowifi sim adp : Device ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " XML_CarrierConfig ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " GbaValid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " subId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 536
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    nop

    .line 538
    .local v1, "result":Z
    :cond_3
    return v1

    .line 524
    .end local v0    # "result1":Z
    .end local v1    # "result":Z
    .end local v2    # "result2":Z
    .end local v3    # "result3":Z
    :cond_4
    :goto_0
    const-string v0, "isWfcEnabledByPlatform :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 525
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 526
    const-string v0, "isWfcEnabledByPlatform error, subId should be the mainsubId, return false"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 527
    return v1

    .line 529
    :cond_5
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isWfcEnabledByUser(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 237
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 239
    return v1

    .line 242
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 251
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    return v1

    .line 243
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :cond_2
    :goto_0
    const-string v0, "isWfcEnabledByUser :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 245
    const-string v0, "isWfcEnabledByUser error, subId should be the mainsubId"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 246
    return v1

    .line 248
    :cond_3
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isWfcRoamingEnabledByUser(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 442
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 444
    return v1

    .line 446
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 455
    :cond_1
    const-string v0, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-static {p0, v0, p1}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 457
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 458
    .local v0, "enabledFromXml":I
    :goto_0
    const-string v3, "wfc_ims_roaming_enabled"

    invoke-static {p1, v3, v0, p0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v3

    .line 460
    .local v3, "enabled":I
    if-ne v3, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    .line 447
    .end local v0    # "enabledFromXml":I
    .end local v3    # "enabled":I
    :cond_4
    :goto_1
    const-string v0, "isWfcRoamingEnabledByUser :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 449
    const-string v0, "isWfcRoamingEnabledByUser error, subId should be the mainsubId"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 450
    return v1

    .line 452
    :cond_5
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 854
    const-string v0, "HwImsManagerInner"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 858
    const-string v0, "HwImsManagerInner"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 862
    const-string v0, "HwImsManagerInner"

    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    return-void
.end method

.method public static setImsConfig(Landroid/content/Context;ILjava/lang/String;Landroid/os/PersistableBundle;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "configKey"    # Ljava/lang/String;
    .param p3, "configValue"    # Landroid/os/PersistableBundle;

    .line 1040
    const/4 v0, -0x1

    .line 1041
    .local v0, "ret":I
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1042
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_1

    .line 1044
    :try_start_0
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v2

    .line 1045
    .local v2, "config":Lcom/android/ims/ImsConfig;
    if-eqz v2, :cond_0

    .line 1046
    invoke-virtual {v2, p2, p3}, Lcom/android/ims/ImsConfig;->setImsConfig(Ljava/lang/String;Landroid/os/PersistableBundle;)I

    move-result v3
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 1050
    .end local v2    # "config":Lcom/android/ims/ImsConfig;
    :cond_0
    goto :goto_0

    .line 1048
    :catch_0
    move-exception v2

    .line 1049
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v3, "setImsConfig() got ImsException"

    invoke-static {v3}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 1052
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :cond_1
    :goto_0
    return v0
.end method

.method public static setVolteSwitch(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolteSwitch subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 1090
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolteSwitch subId is wrong or context is null, subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 1092
    return-void

    .line 1096
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    sget-object v0, Lcom/android/ims/HwImsManagerInner;->HW_VOLTE_USER_SWITCH_DUALIMS:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    const-string v0, "hw_volte_user_switch"

    .line 1098
    .local v0, "dbName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_2

    .line 1099
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1098
    :goto_1
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1102
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1103
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_3

    .line 1104
    invoke-virtual {v1, p2}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 1106
    :cond_3
    return-void
.end method

.method public static setWfcMode(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I
    .param p2, "subId"    # I

    .line 337
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId is wrong or context is null, subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 339
    return-void

    .line 341
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    invoke-static {p0, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 350
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode - subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wfcMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 352
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v1

    .line 353
    .local v1, "isVowifiEnable":Z
    if-eqz v1, :cond_4

    .line 354
    sget-object v2, Lcom/android/ims/HwImsManagerInner;->userSelectWfcMode:[I

    aput p1, v2, p2

    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    .end local v1    # "isVowifiEnable":Z
    goto :goto_1

    .line 342
    :cond_2
    :goto_0
    const-string v0, "setWfcMode :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p2, :cond_3

    .line 344
    const-string v0, "setWfcMode error, subId should be the mainsubId"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 345
    return-void

    .line 347
    :cond_3
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;I)V

    .line 357
    :cond_4
    :goto_1
    return-void
.end method

.method public static setWfcMode(Landroid/content/Context;IZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z
    .param p3, "subId"    # I

    .line 394
    invoke-static {p0, p3}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId is wrong or context is null, subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 396
    return-void

    .line 398
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 406
    :cond_1
    invoke-static {p0, p3}, Lcom/android/ims/HwImsManagerInner;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    .line 411
    .local v0, "isVowifiEnable":Z
    if-eqz v0, :cond_4

    .line 412
    invoke-static {p0, p3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 413
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v1, p1, p2}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 414
    sget-object v2, Lcom/android/ims/HwImsManagerInner;->userSelectWfcMode:[I

    aput p1, v2, p3

    .end local v0    # "isVowifiEnable":Z
    .end local v1    # "mgr":Lcom/android/ims/ImsManager;
    goto :goto_1

    .line 399
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWfcMode :: dual-ims is not support, roaming is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p3, :cond_3

    .line 401
    const-string v0, "setWfcMode error, subId should be the mainsubId"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 402
    return-void

    .line 404
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;IZ)V

    .line 417
    :cond_4
    :goto_1
    return-void
.end method

.method private static setWfcModeInternal(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I
    .param p2, "subId"    # I

    .line 420
    invoke-static {p0, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 421
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 422
    move v1, p1

    .line 423
    .local v1, "value":I
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/ims/HwImsManagerInner$1;

    invoke-direct {v3, v0, v1}, Lcom/android/ims/HwImsManagerInner$1;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 434
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 436
    .end local v1    # "value":I
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static setWfcRoamingSetting(Landroid/content/Context;ZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "subId"    # I

    .line 467
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId is wrong or context is null, subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 469
    return-void

    .line 471
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 480
    :cond_1
    move v0, p1

    .line 481
    .local v0, "enabledFromXml":I
    const-string v1, "wfc_ims_roaming_enabled"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {p0, p1, p2}, Lcom/android/ims/HwImsManagerInner;->setWfcRoamingSettingInternal(Landroid/content/Context;ZI)V

    .end local v0    # "enabledFromXml":I
    goto :goto_1

    .line 472
    :cond_2
    :goto_0
    const-string v0, "setWfcRoamingSetting :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p2, :cond_3

    .line 474
    const-string v0, "setWfcRoamingSetting error, subId should be the mainsubId"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 475
    return-void

    .line 477
    :cond_3
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSetting(Landroid/content/Context;Z)V

    .line 485
    :goto_1
    return-void
.end method

.method private static setWfcRoamingSettingInternal(Landroid/content/Context;ZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "subId"    # I

    .line 488
    invoke-static {p0, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 489
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_1

    .line 490
    if-eqz p1, :cond_0

    .line 491
    const/4 v1, 0x1

    goto :goto_0

    .line 492
    :cond_0
    const/4 v1, 0x0

    .line 493
    .local v1, "value":I
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/ims/HwImsManagerInner$2;

    invoke-direct {v3, v0, v1}, Lcom/android/ims/HwImsManagerInner$2;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 504
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 506
    .end local v1    # "value":I
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public static setWfcSetting(Landroid/content/Context;ZI)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "subId"    # I

    .line 258
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId is wrong or context is null, subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 260
    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->FEATURE_DUAL_VOWIFI:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setwfcSetting subId ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 271
    const-string v0, "wfc_ims_enabled"

    .line 272
    if-eqz p1, :cond_2

    const-string v1, "1"

    goto :goto_0

    :cond_2
    const-string v1, "0"

    .line 271
    :goto_0
    invoke-static {p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p0, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 275
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_c

    .line 277
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v1

    .line 278
    .local v1, "config":Lcom/android/ims/ImsConfig;
    const-string v2, "phone"

    .line 279
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 280
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 281
    .local v3, "isRoaming":Ljava/lang/Boolean;
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 283
    .local v4, "isVowifiEnable":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    sget-object v6, Lcom/android/ims/HwImsManagerInner;->userSelectWfcMode:[I

    aget v6, v6, p2

    if-ne v5, v6, :cond_4

    .line 284
    sget-object v5, Lcom/android/ims/HwImsManagerInner;->userSelectWfcMode:[I

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {p0, v6, p2}, Lcom/android/ims/HwImsManagerInner;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v6

    aput v6, v5, p2

    .line 286
    :cond_4
    const/4 v5, 0x1

    invoke-static {p0, p2, v5, v5, p1}, Lcom/android/ims/HwImsManagerInner;->changeMmTelCapability(Landroid/content/Context;IIIZ)V

    .line 288
    if-eqz p1, :cond_6

    .line 289
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVowifiEnable = true, setWfcModeInternal - setting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/ims/HwImsManagerInner;->userSelectWfcMode:[I

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 291
    sget-object v6, Lcom/android/ims/HwImsManagerInner;->userSelectWfcMode:[I

    aget v6, v6, p2

    invoke-static {p0, v6, p2}, Lcom/android/ims/HwImsManagerInner;->setWfcModeInternal(Landroid/content/Context;II)V

    .line 293
    :cond_5
    const-string v6, "setWfcSetting() : turnOnIms"

    invoke-static {v6}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 294
    invoke-static {v0, p0, p2}, Lcom/android/ims/HwImsManagerInner;->turnOnIms(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V

    goto :goto_2

    .line 295
    :cond_6
    const-string v6, "carrier_allow_turnoff_ims_bool"

    invoke-static {p0, v6, p2}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 297
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 298
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 299
    :cond_7
    const-string v6, "setWfcSetting() : imsServiceAllowTurnOff -> turnOffIms"

    invoke-static {v6}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 300
    invoke-static {v0, p0, p2}, Lcom/android/ims/HwImsManagerInner;->turnOffIms(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V

    .line 303
    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    .line 304
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {p0, v5, p2}, Lcom/android/ims/HwImsManagerInner;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v5

    goto :goto_3

    .line 305
    :cond_9
    nop

    .line 303
    :goto_3
    invoke-static {p0, v5, p2}, Lcom/android/ims/HwImsManagerInner;->setWfcModeInternal(Landroid/content/Context;II)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v1    # "config":Lcom/android/ims/ImsConfig;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "isRoaming":Ljava/lang/Boolean;
    .end local v4    # "isVowifiEnable":Ljava/lang/Boolean;
    goto :goto_5

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "setWfcSetting(): "

    invoke-static {v2, v1}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v1    # "e":Lcom/android/ims/ImsException;
    goto :goto_5

    .line 263
    :cond_a
    :goto_4
    const-string v0, "setWfcSetting :: dual-ims is not support"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq v0, p2, :cond_b

    .line 265
    const-string v0, "setWfcSetting error, subId should be the mainsubId"

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 266
    return-void

    .line 268
    :cond_b
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 311
    :cond_c
    :goto_5
    return-void
.end method

.method private static turnOffIms(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V
    .locals 1
    .param p0, "imsManager"    # Lcom/android/ims/ImsManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 886
    invoke-static {p0, p1, p2}, Lcom/android/ims/HwImsManagerInner;->checkAndThrowExceptionIfServiceUnavailable(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V

    .line 888
    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->isATT:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/ims/HwImsManagerInner;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    const-string v0, "turnOffIms: Enhanced LTE Service is on, return."

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 890
    return-void

    .line 893
    :cond_0
    const-string v0, "phone"

    .line 894
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 895
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->disableIms(I)V

    .line 896
    return-void
.end method

.method private static turnOnIms(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V
    .locals 1
    .param p0, "imsManager"    # Lcom/android/ims/ImsManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 869
    invoke-static {p0, p1, p2}, Lcom/android/ims/HwImsManagerInner;->checkAndThrowExceptionIfServiceUnavailable(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V

    .line 871
    sget-boolean v0, Lcom/android/ims/HwImsManagerInner;->isATT:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/ims/HwImsManagerInner;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    const-string v0, "turnOnIms: Enhanced LTE Service is off, return."

    invoke-static {v0}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 873
    return-void

    .line 876
    :cond_0
    const-string v0, "phone"

    .line 877
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 878
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->enableIms(I)V

    .line 879
    return-void
.end method

.method public static updateImsServiceConfig(Landroid/content/Context;IZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputSubId"    # I
    .param p2, "force"    # Z

    .line 572
    move v0, p1

    .line 573
    .local v0, "subId":I
    invoke-static {p0, v0}, Lcom/android/ims/HwImsManagerInner;->isValidParameter(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId is wrong or context is null, the result is false, subId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;)V

    .line 575
    return-void

    .line 578
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isMTKPlatform()Z

    move-result v1

    .line 579
    .local v1, "isMtk":Z
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 580
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 581
    .local v2, "mainSubId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsServiceConfig :: dual-ims is not support and MTK platform, change subId from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to mainSubId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 583
    move v0, v2

    .line 586
    .end local v2    # "mainSubId":I
    :cond_1
    invoke-static {}, Lcom/android/ims/HwImsManagerInner;->isDualImsAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 587
    const-string v2, "updateImsServiceConfig :: dual-ims is not support"

    invoke-static {v2}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 588
    nop

    .line 589
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 588
    invoke-static {p0, v2, p2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    goto/16 :goto_2

    .line 591
    :cond_2
    if-nez p2, :cond_3

    .line 592
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsServiceConfig: SIM not ready, subId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 595
    return-void

    .line 599
    :cond_3
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 600
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_7

    sget-boolean v3, Lcom/android/ims/HwImsManagerInner;->mConfigUpdated:Z

    if-eqz v3, :cond_4

    if-eqz p2, :cond_7

    .line 602
    :cond_4
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/ims/HwImsManagerInner;->updateVolteFeatureValue(Landroid/content/Context;I)Z

    move-result v3

    .line 603
    .local v3, "isImsUsed":Z
    invoke-static {p0, v0}, Lcom/android/ims/HwImsManagerInner;->updateVideoCallFeatureValue(Landroid/content/Context;I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 604
    invoke-static {p0, v0}, Lcom/android/ims/HwImsManagerInner;->updateWfcFeatureAndProvisionedValues(Landroid/content/Context;I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 606
    if-nez v3, :cond_6

    const-string v4, "carrier_allow_turnoff_ims_bool"

    invoke-static {p0, v4, v0}, Lcom/android/ims/HwImsManagerInner;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 616
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsServiceConfig: turnOffIms, subId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 617
    invoke-static {v2, p0, v0}, Lcom/android/ims/HwImsManagerInner;->turnOffIms(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V

    goto :goto_1

    .line 612
    :cond_6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsServiceConfig: turnOnIms, subId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 613
    invoke-static {v2, p0, v0}, Lcom/android/ims/HwImsManagerInner;->turnOnIms(Lcom/android/ims/ImsManager;Landroid/content/Context;I)V

    .line 619
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/ims/HwImsManagerInner;->mConfigUpdated:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v3    # "isImsUsed":Z
    goto :goto_2

    .line 620
    :catch_0
    move-exception v3

    .line 621
    .local v3, "e":Lcom/android/ims/ImsException;
    const-string v4, "updateImsServiceConfig: "

    invoke-static {v4, v3}, Lcom/android/ims/HwImsManagerInner;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/ims/HwImsManagerInner;->mConfigUpdated:Z

    .line 626
    .end local v2    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v3    # "e":Lcom/android/ims/ImsException;
    :cond_7
    :goto_2
    return-void
.end method

.method private static updateVideoCallFeatureValue(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 665
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isVtEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    .line 666
    .local v0, "available":Z
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isVtEnabledByUser(Landroid/content/Context;I)Z

    move-result v1

    .line 667
    .local v1, "enabled":Z
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;I)Z

    move-result v2

    .line 668
    .local v2, "isNonTty":Z
    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 669
    .local v4, "isFeatureOn":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVideoCallFeatureValue: available = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", nonTTY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 674
    const/4 v5, 0x2

    invoke-static {p0, p1, v5, v3, v4}, Lcom/android/ims/HwImsManagerInner;->changeMmTelCapability(Landroid/content/Context;IIIZ)V

    .line 679
    return v4
.end method

.method private static updateVolteFeatureValue(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 634
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    .line 635
    .local v0, "available":Z
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v1

    .line 636
    .local v1, "enabled":Z
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;I)Z

    move-result v2

    .line 637
    .local v2, "isNonTty":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 639
    .local v5, "isFeatureOn":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateVolteFeatureValue: available = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", nonTTY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 644
    invoke-static {p0, p1, v4, v3, v5}, Lcom/android/ims/HwImsManagerInner;->changeMmTelCapability(Landroid/content/Context;IIIZ)V

    .line 649
    return v5
.end method

.method private static updateWfcFeatureAndProvisionedValues(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 688
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    .line 689
    .local v0, "isNetworkRoaming":Z
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v1

    .line 690
    .local v1, "available":Z
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    .line 691
    .local v2, "enabled":Z
    invoke-static {p0, v0, p1}, Lcom/android/ims/HwImsManagerInner;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v3

    .line 692
    .local v3, "mode":I
    invoke-static {p0, p1}, Lcom/android/ims/HwImsManagerInner;->isWfcRoamingEnabledByUser(Landroid/content/Context;I)Z

    move-result v4

    .line 693
    .local v4, "roaming":Z
    const/4 v5, 0x1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 694
    .local v6, "isFeatureOn":Z
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWfcFeatureAndProvisionedValues: available = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", roaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 701
    invoke-static {p0, p1, v5, v5, v6}, Lcom/android/ims/HwImsManagerInner;->changeMmTelCapability(Landroid/content/Context;IIIZ)V

    .line 707
    if-nez v6, :cond_1

    .line 708
    const/4 v3, 0x1

    .line 709
    const/4 v4, 0x0

    .line 711
    :cond_1
    invoke-static {p0, v3, p1}, Lcom/android/ims/HwImsManagerInner;->setWfcModeInternal(Landroid/content/Context;II)V

    .line 712
    invoke-static {p0, v4, p1}, Lcom/android/ims/HwImsManagerInner;->setWfcRoamingSettingInternal(Landroid/content/Context;ZI)V

    .line 714
    return v6
.end method

.method public static updateWfcMode(Landroid/content/Context;ZI)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # Z
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1000
    invoke-static {p0, p2}, Lcom/android/ims/HwImsManagerInner;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    .line 1005
    .local v0, "isVowifiEnable":Z
    invoke-static {p0, p1, p2}, Lcom/android/ims/HwImsManagerInner;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v1

    .line 1006
    .local v1, "mode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWfcMode: isVowifiEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", roaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/HwImsManagerInner;->log(Ljava/lang/String;)V

    .line 1010
    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    .line 1016
    const-string v2, "carrier_default_wfc_ims_roaming_mode_int"

    invoke-static {p0, v2, p2}, Lcom/android/ims/HwImsManagerInner;->checkCarrierConfigKeyExist(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1018
    .local v2, "hasCust":Z
    const-string v3, "phone"

    .line 1019
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1020
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v4

    if-eq p1, v4, :cond_1

    :cond_0
    if-nez v2, :cond_2

    .line 1021
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/android/ims/HwImsManagerInner;->setWfcModeInternal(Landroid/content/Context;II)V

    .line 1024
    .end local v2    # "hasCust":Z
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void
.end method
