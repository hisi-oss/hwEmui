.class public Lhuawei/cust/HwCarrierConfigPolicy;
.super Ljava/lang/Object;
.source "HwCarrierConfigPolicy.java"

# interfaces
.implements Lhuawei/cust/IHwCarrierConfigPolicy;


# static fields
.field private static final HW_CARRIER_CONFIG_SERVICE:Ljava/lang/String; = "hwCarrierConfig"

.field private static final LOG_TAG:Ljava/lang/String; = "HwCarrierConfigPolicy"

.field private static final OPKEY_PROP:Ljava/lang/String; = "persist.sys.opkey"

.field private static final SIM_NUM:I

.field private static final SLOT_0:I = 0x0

.field private static final SLOT_1:I = 0x1

.field private static final isMultiSimEnabled:Z

.field private static sInstance:Lhuawei/cust/HwCarrierConfigPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lhuawei/cust/HwCarrierConfigPolicy;->SIM_NUM:I

    .line 35
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lhuawei/cust/HwCarrierConfigPolicy;->isMultiSimEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getDefault()Lhuawei/cust/HwCarrierConfigPolicy;
    .locals 2

    .line 43
    const-class v0, Lhuawei/cust/HwCarrierConfigPolicy;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lhuawei/cust/HwCarrierConfigPolicy;->sInstance:Lhuawei/cust/HwCarrierConfigPolicy;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lhuawei/cust/HwCarrierConfigPolicy;

    invoke-direct {v1}, Lhuawei/cust/HwCarrierConfigPolicy;-><init>()V

    sput-object v1, Lhuawei/cust/HwCarrierConfigPolicy;->sInstance:Lhuawei/cust/HwCarrierConfigPolicy;

    .line 47
    :cond_0
    sget-object v1, Lhuawei/cust/HwCarrierConfigPolicy;->sInstance:Lhuawei/cust/HwCarrierConfigPolicy;

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDefaultSlotId()I
    .locals 5

    .line 289
    sget-boolean v0, Lhuawei/cust/HwCarrierConfigPolicy;->isMultiSimEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0, v1}, Lhuawei/cust/HwCarrierConfigPolicy;->getOpKey(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "opKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    return v1

    .line 295
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lhuawei/cust/HwCarrierConfigPolicy;->getOpKey(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    return v2

    .line 301
    .end local v0    # "opKey":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private getHwCarrierConfigService(I)Lhuawei/cust/aidl/IHwCarrierConfigService;
    .locals 4
    .param p1, "slotId"    # I

    .line 250
    invoke-direct {p0, p1}, Lhuawei/cust/HwCarrierConfigPolicy;->isValidSlot(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 252
    return-object v1

    .line 256
    :cond_0
    :try_start_0
    const-string v0, "hwCarrierConfig"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 257
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 258
    const-string v2, "checkService hwCarrierConfig is Error"

    invoke-static {v2}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 259
    return-object v1

    .line 261
    :cond_1
    invoke-static {v0}, Lhuawei/cust/aidl/IHwCarrierConfigService$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/cust/aidl/IHwCarrierConfigService;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 262
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHwCarrierConfigService hwCarrierConfig is Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private isValidSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 276
    if-ltz p1, :cond_0

    sget v0, Lhuawei/cust/HwCarrierConfigPolicy;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 304
    const-string v0, "HwCarrierConfigPolicy"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 308
    const-string v0, "HwCarrierConfigPolicy"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method


# virtual methods
.method public getFileConfig(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lhuawei/cust/HwCarrierConfigPolicy;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lhuawei/cust/HwCarrierConfigPolicy;->getFileConfig(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFileConfig(Ljava/lang/String;I)Ljava/util/Map;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 169
    invoke-direct {p0, p2}, Lhuawei/cust/HwCarrierConfigPolicy;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    invoke-static {p1, p2}, Lhuawei/cust/HwCarrierConfigXmlParse;->parse(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOpKey()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-direct {p0}, Lhuawei/cust/HwCarrierConfigPolicy;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lhuawei/cust/HwCarrierConfigPolicy;->getOpKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpKey(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I

    .line 76
    invoke-direct {p0, p1}, Lhuawei/cust/HwCarrierConfigPolicy;->isValidSlot(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 78
    return-object v1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.opkey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "opKey":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    return-object v0

    .line 82
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getValue(Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 114
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lhuawei/cust/HwCarrierConfigPolicy;->getHwCarrierConfigService(I)Lhuawei/cust/aidl/IHwCarrierConfigService;

    move-result-object v1

    .line 121
    .local v1, "mHwCarrierConfigService":Lhuawei/cust/aidl/IHwCarrierConfigService;
    if-nez v1, :cond_1

    .line 122
    const-string v2, "getConfigForSlotId Error mHwCarrierConfigService is null "

    invoke-static {v2}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 123
    return-object v0

    .line 125
    :cond_1
    invoke-interface {v1, p1, p2}, Lhuawei/cust/aidl/IHwCarrierConfigService;->getConfigForSlotId(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    .line 126
    .local v2, "data":Ljava/util/Map;
    if-nez v2, :cond_2

    .line 127
    return-object v0

    .line 129
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 131
    return-object v0

    .line 134
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    return-object v3

    .line 137
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValue type error :key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " clazz ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-object v0

    .line 139
    .end local v1    # "mHwCarrierConfigService":Lhuawei/cust/aidl/IHwCarrierConfigService;
    .end local v2    # "data":Ljava/util/Map;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getValue for slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v2}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 144
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0

    .line 115
    :cond_5
    :goto_0
    const-string v1, "getValue param invalid"

    invoke-static {v1}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 116
    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lhuawei/cust/HwCarrierConfigPolicy;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lhuawei/cust/HwCarrierConfigPolicy;->getValue(Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public querySimMatchRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhuawei/cust/aidl/SimMatchRule;
    .locals 1
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lhuawei/cust/HwCarrierConfigPolicy;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lhuawei/cust/HwCarrierConfigPolicy;->querySimMatchRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lhuawei/cust/aidl/SimMatchRule;

    move-result-object v0

    return-object v0
.end method

.method public querySimMatchRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lhuawei/cust/aidl/SimMatchRule;
    .locals 4
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "slotId"    # I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querySimMatchRule mccmnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/cust/HwCarrierConfigPolicy;->log(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p4}, Lhuawei/cust/HwCarrierConfigPolicy;->getHwCarrierConfigService(I)Lhuawei/cust/aidl/IHwCarrierConfigService;

    move-result-object v1

    .line 203
    .local v1, "mHwCarrierConfigService":Lhuawei/cust/aidl/IHwCarrierConfigService;
    if-nez v1, :cond_0

    .line 204
    const-string v2, "Error HwCarrierConfigService is null"

    invoke-static {v2}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 205
    return-object v0

    .line 207
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lhuawei/cust/aidl/IHwCarrierConfigService;->querySimMatchRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lhuawei/cust/aidl/SimMatchRule;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 208
    .end local v1    # "mHwCarrierConfigService":Lhuawei/cust/aidl/IHwCarrierConfigService;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error querySimRule for slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 212
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public updateSimFileInfo(Lhuawei/cust/aidl/SimFileInfo;)V
    .locals 1
    .param p1, "simFileInfo"    # Lhuawei/cust/aidl/SimFileInfo;

    .line 221
    invoke-direct {p0}, Lhuawei/cust/HwCarrierConfigPolicy;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lhuawei/cust/HwCarrierConfigPolicy;->updateSimFileInfo(Lhuawei/cust/aidl/SimFileInfo;I)V

    .line 222
    return-void
.end method

.method public updateSimFileInfo(Lhuawei/cust/aidl/SimFileInfo;I)V
    .locals 3
    .param p1, "simFileInfo"    # Lhuawei/cust/aidl/SimFileInfo;
    .param p2, "slotId"    # I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimFileInfo slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/cust/HwCarrierConfigPolicy;->log(Ljava/lang/String;)V

    .line 233
    :try_start_0
    invoke-direct {p0, p2}, Lhuawei/cust/HwCarrierConfigPolicy;->getHwCarrierConfigService(I)Lhuawei/cust/aidl/IHwCarrierConfigService;

    move-result-object v0

    .line 234
    .local v0, "mHwCarrierConfigService":Lhuawei/cust/aidl/IHwCarrierConfigService;
    if-nez v0, :cond_0

    .line 235
    const-string v1, "Error HwCarrierConfigService is null"

    invoke-static {v1}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 236
    return-void

    .line 238
    :cond_0
    invoke-interface {v0, p1, p2}, Lhuawei/cust/aidl/IHwCarrierConfigService;->updateSimFileInfo(Lhuawei/cust/aidl/SimFileInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "mHwCarrierConfigService":Lhuawei/cust/aidl/IHwCarrierConfigService;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error updateSimFileInfo for slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1}, Lhuawei/cust/HwCarrierConfigPolicy;->loge(Ljava/lang/String;)V

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
