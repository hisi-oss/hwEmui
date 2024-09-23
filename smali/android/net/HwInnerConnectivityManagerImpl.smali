.class public Landroid/net/HwInnerConnectivityManagerImpl;
.super Ljava/lang/Object;
.source "HwInnerConnectivityManagerImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/HwConnectivityManagerConstants;
.implements Landroid/net/HwInnerConnectivityManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwInnerConnectivityManagerImpl"

.field private static mInstance:Landroid/net/HwInnerConnectivityManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Landroid/net/HwInnerConnectivityManagerImpl;

    invoke-direct {v0}, Landroid/net/HwInnerConnectivityManagerImpl;-><init>()V

    sput-object v0, Landroid/net/HwInnerConnectivityManagerImpl;->mInstance:Landroid/net/HwInnerConnectivityManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/net/HwInnerConnectivityManagerImpl;
    .locals 1

    .line 25
    sget-object v0, Landroid/net/HwInnerConnectivityManagerImpl;->mInstance:Landroid/net/HwInnerConnectivityManagerImpl;

    return-object v0
.end method

.method private isDualCellDataForHipri(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "subId"    # Ljava/lang/String;

    .line 365
    const-string v0, "ro.hwpp.dual_cell_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 366
    .local v0, "isEnableDualData":Z
    if-eqz v0, :cond_1

    const-string v2, "enableHIPRI"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 368
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    return v3

    .line 372
    :cond_1
    return v1
.end method


# virtual methods
.method public checkHwFeature(Ljava/lang/String;Landroid/net/NetworkCapabilities;I)Z
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "networkType"    # I

    .line 90
    const-string v0, "HwInnerConnectivityManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUsingNetworkFeature: for feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/HwInnerConnectivityManagerImpl;->getFeature(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object p1, v0, v1

    .line 93
    const/4 v2, 0x1

    aget-object v3, v0, v2

    .line 94
    .local v3, "reqSubId":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 95
    const-string v1, "HwInnerConnectivityManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCapabilities setNetworkSpecifier reqSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Landroid/net/StringNetworkSpecifier;

    invoke-direct {v1, v3}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 97
    invoke-direct {p0, p3, p1, v3}, Landroid/net/HwInnerConnectivityManagerImpl;->isDualCellDataForHipri(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "true"

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->setDualCellData(Ljava/lang/String;)V

    .line 100
    :cond_0
    return v2

    .line 103
    :cond_1
    return v1
.end method

.method public getFeature(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 51
    if-eqz p1, :cond_5

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 57
    .local v1, "reqSub":Ljava/lang/String;
    const-string v2, "enableMMS_sub1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 58
    const-string p1, "enableMMS"

    .line 59
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_0
    const-string v2, "enableMMS_sub2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string p1, "enableMMS"

    .line 62
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isChinaTelecom()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "enableSUPL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManagerInner;->getDefault4GSlotId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_2
    const-string v2, "enableHIPRI_sub1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    const-string p1, "enableHIPRI"

    .line 71
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_3
    const-string v2, "enableHIPRI_sub2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    const-string p1, "enableHIPRI"

    .line 74
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_4
    :goto_0
    aput-object p1, v0, v4

    .line 78
    aput-object v1, v0, v3

    .line 79
    return-object v0

    .line 52
    .end local v0    # "result":[Ljava/lang/String;
    .end local v1    # "reqSub":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getFeature() received null string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkTypeNameEx(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "MOBILE_INTERNAL_DEFAULT"

    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "WIFI_XCAP"

    return-object v0

    .line 131
    :pswitch_2
    const-string v0, "WIFI_MMS"

    return-object v0

    .line 127
    :pswitch_3
    const-string v0, "MOBILE_XCAP"

    return-object v0

    .line 123
    :pswitch_4
    const-string v0, "MOBILE_BIP6"

    return-object v0

    .line 121
    :pswitch_5
    const-string v0, "MOBILE_BIP5"

    return-object v0

    .line 119
    :pswitch_6
    const-string v0, "MOBILE_BIP4"

    return-object v0

    .line 117
    :pswitch_7
    const-string v0, "MOBILE_BIP3"

    return-object v0

    .line 115
    :pswitch_8
    const-string v0, "MOBILE_BIP2"

    return-object v0

    .line 113
    :pswitch_9
    const-string v0, "MOBILE_BIP1"

    return-object v0

    .line 111
    :pswitch_a
    const-string v0, "MOBILE_BIP0"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x26
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

.method public inferLegacyTypeForNetworkCapabilitiesEx(Landroid/net/NetworkCapabilities;Landroid/net/HwCustConnectivityManager;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Ljava/util/Map;
    .locals 4
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "mCust"    # Landroid/net/HwCustConnectivityManager;
    .param p3, "sLegacyTypeToTransport"    # Landroid/util/SparseIntArray;
    .param p4, "sLegacyTypeToCapability"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/HwCustConnectivityManager;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 229
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    .line 232
    .local v2, "result":I
    const/16 v3, 0x17

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    const-string v1, "enableBIP0"

    .line 234
    const/16 v2, 0x26

    goto/16 :goto_0

    .line 235
    :cond_0
    const/16 v3, 0x18

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    const-string v1, "enableBIP1"

    .line 237
    const/16 v2, 0x27

    goto/16 :goto_0

    .line 238
    :cond_1
    const/16 v3, 0x19

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    const-string v1, "enableBIP2"

    .line 240
    const/16 v2, 0x28

    goto :goto_0

    .line 241
    :cond_2
    const/16 v3, 0x1a

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    const-string v1, "enableBIP3"

    .line 243
    const/16 v2, 0x29

    goto :goto_0

    .line 244
    :cond_3
    const/16 v3, 0x1b

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 245
    const-string v1, "enableBIP4"

    .line 246
    const/16 v2, 0x2a

    goto :goto_0

    .line 247
    :cond_4
    const/16 v3, 0x1c

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 248
    const-string v1, "enableBIP5"

    .line 249
    const/16 v2, 0x2b

    goto :goto_0

    .line 250
    :cond_5
    const/16 v3, 0x1d

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 251
    const-string v1, "enableBIP6"

    .line 252
    const/16 v2, 0x2c

    goto :goto_0

    .line 254
    :cond_6
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 255
    const-string v1, "enableXCAP"

    .line 256
    const/16 v2, 0x2d

    goto :goto_0

    .line 259
    :cond_7
    const/16 v3, 0x1e

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 260
    const-string v1, "enableInternalDefault"

    .line 261
    const/16 v2, 0x30

    goto :goto_0

    .line 264
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Landroid/net/HwCustConnectivityManager;->canHandleEimsNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 265
    const-string v1, "enableEmergency"

    .line 266
    const/16 v2, 0xf

    .line 267
    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    const/16 v3, 0xa

    invoke-virtual {p4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    :cond_9
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-object v0
.end method

.method public isHwFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 36
    const-string v0, "HwInnerConnectivityManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHwFeature: for feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0, p1}, Landroid/net/HwInnerConnectivityManagerImpl;->getFeature(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 40
    .local v2, "reqSubId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 41
    return v1

    .line 44
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isNetworkTypeMobileEx(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .line 146
    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isNetworkTypeWifiEx(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 175
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public legacyTypeForNetworkCapabilitiesEx(Landroid/net/NetworkCapabilities;Landroid/net/HwCustConnectivityManager;)I
    .locals 1
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "mCust"    # Landroid/net/HwCustConnectivityManager;

    .line 280
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/16 v0, 0x26

    return v0

    .line 283
    :cond_0
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const/16 v0, 0x27

    return v0

    .line 286
    :cond_1
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const/16 v0, 0x28

    return v0

    .line 289
    :cond_2
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    const/16 v0, 0x29

    return v0

    .line 292
    :cond_3
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    const/16 v0, 0x2a

    return v0

    .line 295
    :cond_4
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    const/16 v0, 0x2b

    return v0

    .line 298
    :cond_5
    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    const/16 v0, 0x2c

    return v0

    .line 303
    :cond_6
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    const/16 v0, 0x2f

    return v0

    .line 307
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 308
    const/16 v0, 0x2d

    return v0

    .line 313
    :cond_8
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 314
    const/16 v0, 0x30

    return v0

    .line 319
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Landroid/net/HwCustConnectivityManager;->canHandleEimsNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    const/16 v0, 0xf

    return v0

    .line 323
    :cond_a
    const/4 v0, -0x1

    return v0
.end method

.method public networkCapabilitiesForFeatureEx(Landroid/net/HwCustConnectivityManager;Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "mCust"    # Landroid/net/HwCustConnectivityManager;
    .param p2, "feature"    # Ljava/lang/String;

    .line 183
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7d8c7b3f

    if-eq v0, v1, :cond_2

    const v1, -0x237bbcb2

    if-eq v0, v1, :cond_1

    const v1, 0x70d9b05d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "enableBIP6"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_1
    const-string v0, "enableBIP5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const-string v0, "enableBIP4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_3
    const-string v0, "enableBIP3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_4
    const-string v0, "enableBIP2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_5
    const-string v0, "enableBIP1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_6
    const-string v0, "enableBIP0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v0, "enableXCAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_1
    const-string v0, "enableEmergency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    goto :goto_1

    :cond_2
    const-string v0, "enableInternalDefault"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    .line 217
    return-object v1

    .line 211
    :pswitch_7
    if-eqz p1, :cond_4

    .line 212
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/net/HwCustConnectivityManager;->networkCapabilitiesForEimsType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 219
    :cond_4
    return-object v1

    .line 207
    :pswitch_8
    const/16 v0, 0x30

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 203
    :pswitch_9
    const/16 v0, 0x2d

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 199
    :pswitch_a
    const/16 v0, 0x2c

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 197
    :pswitch_b
    const/16 v0, 0x2b

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 195
    :pswitch_c
    const/16 v0, 0x2a

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_d
    const/16 v0, 0x29

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_e
    const/16 v0, 0x28

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_f
    const/16 v0, 0x27

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_10
    const/16 v0, 0x26

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x70cfc86a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public setLegacyTypeToCapabilityEx(Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "legacyTypeToCapability"    # Landroid/util/SparseIntArray;

    .line 347
    const/16 v0, 0x26

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    const/16 v0, 0x27

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    const/16 v0, 0x28

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 350
    const/16 v0, 0x29

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 351
    const/16 v0, 0x2a

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    const/16 v0, 0x2b

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    const/16 v0, 0x2c

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 354
    const/16 v0, 0x9

    const/16 v1, 0x2d

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 356
    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 357
    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 360
    const/16 v0, 0x30

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 362
    return-void
.end method

.method public setLegacyTypeToTransportEx(Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "legacyTypeToTransport"    # Landroid/util/SparseIntArray;

    .line 328
    const/4 v0, 0x0

    const/16 v1, 0x26

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    const/16 v1, 0x27

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    const/16 v1, 0x28

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    const/16 v1, 0x29

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    const/16 v1, 0x2a

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    const/16 v1, 0x2b

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    const/16 v1, 0x2d

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    const/4 v1, 0x1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 338
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 341
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    return-void
.end method
