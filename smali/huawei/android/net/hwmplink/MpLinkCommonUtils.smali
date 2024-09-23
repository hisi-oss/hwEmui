.class public Lhuawei/android/net/hwmplink/MpLinkCommonUtils;
.super Ljava/lang/Object;
.source "MpLinkCommonUtils.java"


# static fields
.field private static final CERTIFIED_APPS:[I

.field private static final CERTIFIED_SCENCES:[I

.field public static final KEY_MP_LINK_LOG:Ljava/lang/String; = "ro.config.mplink_log"

.field public static final KEY_MP_LINK_PROPERTY:Ljava/lang/String; = "ro.config.mplink_enable"

.field public static final KEY_MP_LINK_TEST:Ljava/lang/String; = "ro.config.mplink_test"

.field public static final KEY_PROP_LOCALE:Ljava/lang/String; = "ro.product.locale.region"

.field public static final KEY_WIFI_PRO_PROPERTY:Ljava/lang/String; = "ro.config.hw_wifipro_enable"

.field public static final KEY_WIFI_PRO_SWITCH:Ljava/lang/String; = "smart_network_switching"

.field public static final SETTING_MPLINK_DB_CONDITION_VALUE:Ljava/lang/String; = "mplink_db_condition_value"

.field public static final SETTING_MPLINK_MOBILE_SWITCH:Ljava/lang/String; = "mobile_data"

.field public static final SETTING_MPLINK_SIMULATE_HIBRAIN_REQUEST_FOR_TEST:Ljava/lang/String; = "mplink_simulate_hibrain_request_for_test"

.field public static final SETTING_SECURE_VPN_WORK_VALUE:Ljava/lang/String; = "wifipro_network_vpn_state"

.field public static final TAG:Ljava/lang/String; = "HiData_HiDATA_MpLinkCommonUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->CERTIFIED_APPS:[I

    .line 40
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->CERTIFIED_SCENCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e9
        0x3ea
        0x3eb
        0x3ec
        0x3ed
        0x3ee
        0x3ef
        0x3f0
    .end array-data

    :array_1
    .array-data 4
        0x186a1
        0x18705
        0x18706
        0x18707
        0x18708
        0x18709
        0x1870a
        0x18769
        0x1876a
        0x187cd
        0x187ce
        0x18831
        0x18895
        0x1895d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;

    .line 136
    const/4 v0, -0x1

    .line 137
    .local v0, "uid":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 141
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2

    .line 143
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 144
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 145
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 149
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "HiData_HiDATA_MpLinkCommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NameNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_0
    return v0

    .line 138
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_1
    return v0
.end method

.method public static getForegroundAppUid(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 105
    return v0

    .line 107
    :cond_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 108
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "lr":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 110
    return v0

    .line 112
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 113
    .local v4, "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_3

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 117
    .end local v4    # "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_0

    .line 115
    .restart local v4    # "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    :goto_1
    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    return v0

    .line 118
    .end local v4    # "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    return v0
.end method

.method public static getNetworkID(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkType"    # I

    .line 178
    const/4 v0, -0x1

    if-eqz p0, :cond_3

    if-gt p1, v0, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 182
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 183
    .local v2, "networks":[Landroid/net/Network;
    if-eqz v2, :cond_2

    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 186
    .local v4, "network":Landroid/net/Network;
    array-length v5, v2

    .line 187
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 188
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 189
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, p1, :cond_1

    .line 190
    aget-object v4, v2, v6

    .line 191
    if-eqz v4, :cond_1

    .line 192
    iget v0, v4, Landroid/net/Network;->netId:I

    return v0

    .line 187
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "length":I
    .end local v6    # "i":I
    :cond_2
    return v0

    .line 179
    .end local v1    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "networks":[Landroid/net/Network;
    :cond_3
    :goto_1
    return v0
.end method

.method public static getNetworkType(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "netId"    # I

    .line 155
    const/4 v0, -0x1

    if-eqz p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 159
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 160
    .local v2, "networks":[Landroid/net/Network;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 163
    .local v4, "network":Landroid/net/Network;
    array-length v5, v2

    .line 164
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 165
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_1

    .line 167
    aget-object v4, v2, v6

    .line 168
    if-eqz v4, :cond_1

    iget v7, v4, Landroid/net/Network;->netId:I

    if-ne v7, p1, :cond_1

    .line 169
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    .line 164
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "length":I
    .end local v6    # "i":I
    :cond_2
    return v0

    .line 156
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "networks":[Landroid/net/Network;
    :cond_3
    :goto_1
    return v0
.end method

.method public static getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 121
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_1
    return-object v1

    .line 132
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string v1, "total"

    return-object v1

    .line 122
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_0
    const-string v0, "total"

    return-object v0
.end method

.method public static getProductLocale()Ljava/lang/String;
    .locals 2

    .line 62
    const-string v0, "ro.product.locale.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 70
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getSettingsSystemBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 66
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isAppCertified(I)Z
    .locals 1
    .param p0, "app"    # I

    .line 82
    sget-object v0, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->CERTIFIED_APPS:[I

    invoke-static {v0, p0}, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->isMpLinkCertified([II)Z

    move-result v0

    return v0
.end method

.method private static isMpLinkCertified([II)Z
    .locals 1
    .param p0, "conditions"    # [I
    .param p1, "request"    # I

    .line 90
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMpLinkEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_network_switching"

    invoke-static {v1, v2, v0}, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->getSettingsSystemBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->isSupportMpLink()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 45
    :cond_0
    return v0
.end method

.method public static isMpLinkEnabledInternal(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mplink_db_condition_value"

    invoke-static {v1, v2, v0}, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->getSettingsSystemBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public static isMpLinkTestMode()Z
    .locals 2

    .line 58
    const-string v0, "ro.config.mplink_test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isScenceCertified(I)Z
    .locals 1
    .param p0, "scence"    # I

    .line 86
    sget-object v0, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->CERTIFIED_SCENCES:[I

    invoke-static {v0, p0}, Lhuawei/android/net/hwmplink/MpLinkCommonUtils;->isMpLinkCertified([II)Z

    move-result v0

    return v0
.end method

.method public static isSupportMpLink()Z
    .locals 2

    .line 54
    const-string v0, "ro.config.mplink_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 74
    invoke-static {p0, p1}, Lhuawei/android/net/hwmplink/HwHiDataCommonUtils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 78
    invoke-static {p0, p1}, Lhuawei/android/net/hwmplink/HwHiDataCommonUtils;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
