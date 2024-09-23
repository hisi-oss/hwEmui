.class public Landroid/telephony/HwVSimManager;
.super Ljava/lang/Object;
.source "HwVSimManager.java"


# static fields
.field private static final IS_DUAL_CMCC_UNICOM_DEVICE:Z

.field public static final MAX_VSIM_MODEM_COUNT_DUAL_SIM:I = 0x2

.field public static final MAX_VSIM_MODEM_COUNT_TRI_SIM:I = 0x3

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TDS:I = 0x11

.field public static final NETWORK_TYPE_TDS_HSDPA:I = 0x12

.field public static final NETWORK_TYPE_TDS_HSUPA:I = 0x13

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field private static final PROPERTY_VSIM_DSDS_VERSION:Ljava/lang/String; = "ro.radio.vsim_dsds_version"

.field private static final PROP_OVERSEAS_MODE:Ljava/lang/String; = "persist.radio.overseas_mode"

.field private static final TAG:Ljava/lang/String; = "HwVSimManager"

.field private static final VSIM_CAPABILITY_DUAL_CARDS:I = 0x2

.field private static final VSIM_CMCC_DEVICE:I = 0x2

.field private static final VSIM_DBG:Z = false

.field private static final VSIM_DSDS_VERSION_DEFAULT:I = 0x0

.field private static final VSIM_DSDS_VERSION_ONE:I = 0x1

.field private static final VSIM_DSDS_VERSION_PROP:I

.field private static final VSIM_DUAL_CMCC_UNICOM_DEVICE:I = 0x4

.field private static final VSIM_ENABLE_RESULT_FAIL:I = 0x3

.field private static final VSIM_FULLNETWORK_DEVICE:I = 0x5

.field private static final VSIM_MODEM_COUNT:I

.field private static final VSIM_MODEM_COUNT_DEFAULT:I = 0x3

.field private static final VSIM_MODEM_COUNT_DUAL_NEW:I = 0x5

.field public static final VSIM_OP_ENABLEVSIM:I = 0x1

.field public static final VSIM_OP_ENABLEVSIM_FORHASH:I = 0x3

.field public static final VSIM_OP_SETAPN:I = 0x2

.field public static final VSIM_OP_SETAPN_FORHASH:I = 0x4

.field private static final VSIM_TELECOM_DEVICE:I = 0x1

.field private static final VSIM_UNICOM_DEVICE:I = 0x3

.field private static final VSIM_UNKNOWN_DEVICE:I = -0x1

.field private static final VSIM_VDBG:Z = false

.field public static final VSIM_WORKMODE_HIGH_SPEED:I = 0x2

.field public static final VSIM_WORKMODE_RESERVE_SUB1:I = 0x0

.field public static final VSIM_WORKMODE_RESERVE_SUB2:I = 0x1

.field private static sInstance:Landroid/telephony/HwVSimManager;

.field private static final sIsPlatformSupportVSim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Landroid/telephony/HwVSimManager;

    invoke-direct {v0}, Landroid/telephony/HwVSimManager;-><init>()V

    sput-object v0, Landroid/telephony/HwVSimManager;->sInstance:Landroid/telephony/HwVSimManager;

    .line 27
    const-string v0, "ro.radio.vsim_support"

    .line 28
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/HwVSimManager;->sIsPlatformSupportVSim:Z

    .line 36
    const-string v0, "ro.hwpp.dualcu"

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/HwVSimManager;->IS_DUAL_CMCC_UNICOM_DEVICE:Z

    .line 48
    const-string v0, "ro.radio.vsim_modem_count"

    .line 49
    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/HwVSimManager;->VSIM_MODEM_COUNT:I

    .line 54
    const-string v0, "ro.radio.vsim_dsds_version"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/HwVSimManager;->VSIM_DSDS_VERSION_PROP:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static getDefault()Landroid/telephony/HwVSimManager;
    .locals 1

    .line 71
    sget-object v0, Landroid/telephony/HwVSimManager;->sInstance:Landroid/telephony/HwVSimManager;

    return-object v0
.end method

.method private getIHwVSim()Lcom/android/internal/telephony/IHwVSim;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-string v0, "ihwvsim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    .line 76
    .local v0, "iHwVSim":Lcom/android/internal/telephony/IHwVSim;
    if-eqz v0, :cond_0

    .line 79
    return-object v0

    .line 77
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "getIHwVSim null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isFullNetworkSupported()Z
    .locals 2

    .line 690
    const-string v0, "ro.config.full_network_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVSimDsdsVersionOne()Z
    .locals 2

    .line 1022
    sget v0, Landroid/telephony/HwVSimManager;->VSIM_DSDS_VERSION_PROP:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private printExLogIfSupportVSim(Landroid/os/RemoteException;)V
    .locals 3
    .param p1, "ex"    # Landroid/os/RemoteException;

    .line 1026
    sget-boolean v0, Landroid/telephony/HwVSimManager;->sIsPlatformSupportVSim:Z

    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "HwVSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    return-void
.end method


# virtual methods
.method public clearTrafficData()Ljava/lang/Boolean;
    .locals 1

    .line 462
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->clearTrafficData()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 467
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public dialupForVSim()I
    .locals 4

    .line 1009
    const-string v0, "HwVSimManager"

    const-string v1, "dialupForVSim"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v0, -0x1

    .line 1012
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHwVSim;->dialupForVSim()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1015
    goto :goto_0

    .line 1013
    :catch_0
    move-exception v1

    .line 1014
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 1016
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "HwVSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialupForVSim finish, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return v0
.end method

.method public disableVSim()Z
    .locals 4

    .line 358
    const-string v0, "HwVSimManager"

    const-string v1, "disableVSim"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHwVSim;->disableVSim()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 367
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "HwVSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableVSim finish, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v0
.end method

.method public dsFlowCfg(IIII)Z
    .locals 3
    .param p1, "repFlag"    # I
    .param p2, "threshold"    # I
    .param p3, "totalThreshold"    # I
    .param p4, "oper"    # I

    .line 474
    const-string v0, "HwVSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsFlowCfg, repFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", threshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalThreshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHwVSim;->dsFlowCfg(IIII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 483
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public enableVSim(ILandroid/os/Bundle;)I
    .locals 4
    .param p1, "operation"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 977
    const-string v0, "HwVSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVSim, operation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v0, 0x3

    .line 981
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHwVSim;->enableVSimV3(ILandroid/os/Bundle;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 984
    goto :goto_0

    .line 982
    :catch_0
    move-exception v1

    .line 983
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 986
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "HwVSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableVSim finish, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return v0
.end method

.method public enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "operation"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "cardtype"    # I
    .param p4, "apntype"    # I
    .param p5, "acqorder"    # Ljava/lang/String;
    .param p6, "challenge"    # Ljava/lang/String;

    .line 334
    const-string v0, "HwVSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVSim, operation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cardtype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", apntype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", acqorder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x3

    .line 339
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IHwVSim;->enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 343
    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 345
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "HwVSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableVSim finish, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v0
.end method

.method public enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 16
    .param p1, "operation"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "cardtype"    # I
    .param p4, "apntype"    # I
    .param p5, "acqorder"    # Ljava/lang/String;
    .param p6, "tapath"    # Ljava/lang/String;
    .param p7, "vsimloc"    # I
    .param p8, "challenge"    # Ljava/lang/String;

    .line 960
    const-string v0, "HwVSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVSim, operation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cardtype = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", apntype = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", acqorder = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", vsimloc = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p7

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",challenge = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p8

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x3

    move v1, v0

    .line 966
    .local v1, "result":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v3

    move v4, v2

    move-object/from16 v5, p2

    move v6, v12

    move v7, v13

    move-object v8, v14

    move-object/from16 v9, p6

    move v10, v15

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/IHwVSim;->enableVSimV2(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 970
    nop

    .line 972
    move-object/from16 v3, p0

    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "ex":Landroid/os/RemoteException;
    move-object/from16 v3, p0

    invoke-direct {v3, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 972
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const-string v0, "HwVSimManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableVSim finish, result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return v1
.end method

.method public enableVSim(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "cardtype"    # I
    .param p3, "apntype"    # I
    .param p4, "acqorder"    # Ljava/lang/String;
    .param p5, "challenge"    # Ljava/lang/String;

    .line 935
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/HwVSimManager;->enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableVSim(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "cardtype"    # I
    .param p3, "apntype"    # I
    .param p4, "acqorder"    # Ljava/lang/String;
    .param p5, "tapath"    # Ljava/lang/String;
    .param p6, "vsimloc"    # I
    .param p7, "challenge"    # Ljava/lang/String;

    .line 947
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/HwVSimManager;->enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCpserr(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 510
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->getCpserr(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 515
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public getDevSubMode()Ljava/lang/String;
    .locals 2

    .line 594
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 596
    .local v0, "mDefSubscription":I
    invoke-virtual {p0, v0}, Landroid/telephony/HwVSimManager;->getDevSubMode(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 599
    .end local v0    # "mDefSubscription":I
    :cond_0
    const-string v0, "HwVSimManager"

    const-string v1, "getDevSubMode not support"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevSubMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .line 579
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->getDevSubMode(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 584
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceNetworkCountryIso()I
    .locals 2

    .line 701
    const-string v0, "persist.radio.overseas_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 702
    .local v0, "result":I
    :goto_0
    return v0
.end method

.method public getOperatorWithDeviceCustomed()I
    .locals 1

    .line 674
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->isFullNetworkSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x5

    return v0

    .line 676
    :cond_0
    sget-boolean v0, Landroid/telephony/HwVSimManager;->IS_DUAL_CMCC_UNICOM_DEVICE:Z

    if-eqz v0, :cond_1

    .line 677
    const/4 v0, 0x4

    return v0

    .line 678
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isChinaMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    const/4 v0, 0x2

    return v0

    .line 680
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isChinaTelecom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    const/4 v0, 0x1

    return v0

    .line 682
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isChinaUnicom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    const/4 v0, 0x3

    return v0

    .line 685
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public getPlatformSupportVSimVer(I)I
    .locals 2
    .param p1, "key"    # I

    .line 899
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->getPlatformSupportVSimVer(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 902
    const/4 v1, -0x1

    return v1
.end method

.method public getPreferredNetworkTypeForVSim()Ljava/lang/String;
    .locals 4

    .line 624
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/telephony/HwVSimManager;->getVSimSubId()I

    move-result v0

    .line 627
    .local v0, "subId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 628
    const-string v2, "HwVSimManager"

    const-string v3, "getPreferredNetworkTypeForVSim vsim not enabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-object v1

    .line 632
    :cond_0
    invoke-virtual {p0, v0}, Landroid/telephony/HwVSimManager;->getPreferredNetworkTypeForVSim(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 635
    .end local v0    # "subId":I
    :cond_1
    const-string v0, "HwVSimManager"

    const-string v2, "getPreferredNetworkTypeForVSim not support"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-object v1
.end method

.method public getPreferredNetworkTypeForVSim(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .line 608
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->getPreferredNetworkTypeForVSim(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 613
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegPlmn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 430
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->getRegPlmn(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 435
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimMode(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 400
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->getSimMode(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 405
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getSimStateForVSim(I)I
    .locals 8
    .param p1, "slotIdx"    # I

    .line 176
    invoke-virtual {p0}, Landroid/telephony/HwVSimManager;->maxVSimModemCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    if-ne p1, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/telephony/HwVSimManager;->getVSimState()I

    move-result v0

    return v0

    .line 181
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 182
    .local v0, "subId":[I
    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 183
    return v3

    .line 188
    :cond_1
    const/4 v4, 0x0

    aget v5, v0, v4

    const-string v6, "gsm.sim.state"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "prop":Ljava/lang/String;
    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    return v3

    .line 192
    :cond_2
    const-string v3, "PIN_REQUIRED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    return v1

    .line 195
    :cond_3
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    return v2

    .line 198
    :cond_4
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    const/4 v1, 0x4

    return v1

    .line 201
    :cond_5
    const-string v1, "READY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    const/4 v1, 0x5

    return v1

    .line 204
    :cond_6
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    const/16 v1, 0x8

    return v1

    .line 208
    :cond_7
    return v4
.end method

.method public getSimStateViaSysinfoEx(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 494
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->getSimStateViaSysinfoEx(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 499
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getTrafficData()Ljava/lang/String;
    .locals 1

    .line 446
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->getTrafficData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 451
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserReservedSubId()I
    .locals 1

    .line 566
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->getUserReservedSubId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 571
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getVSimCurCardType()I
    .locals 1

    .line 653
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->getVSimCurCardType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 658
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getVSimNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .line 710
    const-string v0, "gsm.operator.iso-country.vsim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVSimNetworkOperator()Ljava/lang/String;
    .locals 1

    .line 707
    const-string v0, "gsm.operator.numeric.vsim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVSimNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .line 714
    const-string v0, "gsm.operator.alpha.vsim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVSimNetworkType()I
    .locals 2

    .line 760
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->getVSimNetworkType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 763
    const/4 v1, 0x0

    return v1
.end method

.method public getVSimNetworkTypeName()Ljava/lang/String;
    .locals 1

    .line 768
    invoke-virtual {p0}, Landroid/telephony/HwVSimManager;->getVSimNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 808
    const-string v0, "UNKNOWN"

    return-object v0

    .line 806
    :pswitch_0
    const-string v0, "TDS_HSUPA"

    return-object v0

    .line 804
    :pswitch_1
    const-string v0, "TDS_HSDPA"

    return-object v0

    .line 802
    :pswitch_2
    const-string v0, "TD-SCDMA"

    return-object v0

    .line 800
    :pswitch_3
    const-string v0, "GSM"

    return-object v0

    .line 798
    :pswitch_4
    const-string v0, "HSPA+"

    return-object v0

    .line 794
    :pswitch_5
    const-string v0, "CDMA - eHRPD"

    return-object v0

    .line 792
    :pswitch_6
    const-string v0, "LTE"

    return-object v0

    .line 788
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. B"

    return-object v0

    .line 796
    :pswitch_8
    const-string v0, "iDEN"

    return-object v0

    .line 780
    :pswitch_9
    const-string v0, "HSPA"

    return-object v0

    .line 778
    :pswitch_a
    const-string v0, "HSUPA"

    return-object v0

    .line 776
    :pswitch_b
    const-string v0, "HSDPA"

    return-object v0

    .line 790
    :pswitch_c
    const-string v0, "CDMA - 1xRTT"

    return-object v0

    .line 786
    :pswitch_d
    const-string v0, "CDMA - EvDo rev. A"

    return-object v0

    .line 784
    :pswitch_e
    const-string v0, "CDMA - EvDo rev. 0"

    return-object v0

    .line 782
    :pswitch_f
    const-string v0, "CDMA"

    return-object v0

    .line 774
    :pswitch_10
    const-string v0, "UMTS"

    return-object v0

    .line 772
    :pswitch_11
    const-string v0, "EDGE"

    return-object v0

    .line 770
    :pswitch_12
    const-string v0, "GPRS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getVSimOccupiedSubId()I
    .locals 2

    .line 879
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->getVSimOccupiedSubId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 882
    const/4 v1, -0x1

    return v1
.end method

.method public getVSimPlatformCapability()I
    .locals 2

    .line 851
    invoke-virtual {p0}, Landroid/telephony/HwVSimManager;->isPlatformSupportVsim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    invoke-static {}, Landroid/telephony/HwVSimManager;->isVSimDsdsVersionOne()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 853
    return v1

    .line 857
    :cond_0
    sget v0, Landroid/telephony/HwVSimManager;->VSIM_MODEM_COUNT:I

    if-ne v0, v1, :cond_1

    .line 858
    const/4 v0, 0x5

    goto :goto_0

    .line 859
    :cond_1
    sget v0, Landroid/telephony/HwVSimManager;->VSIM_MODEM_COUNT:I

    .line 857
    :goto_0
    return v0

    .line 864
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getVSimState()I
    .locals 2

    .line 216
    const-string v0, "gsm.vsim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const/4 v1, 0x2

    return v1

    .line 228
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    const/4 v1, 0x3

    return v1

    .line 231
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    const/4 v1, 0x4

    return v1

    .line 234
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    const/4 v1, 0x5

    return v1

    .line 237
    :cond_4
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 238
    const/16 v1, 0x8

    return v1

    .line 241
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public getVSimSubId()I
    .locals 1

    .line 259
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->getVSimSubId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 264
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getVSimSubscriberId()Ljava/lang/String;
    .locals 2

    .line 814
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->getVSimSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 817
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVSimULOnlyMode()Z
    .locals 2

    .line 834
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->getVSimULOnlyMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 837
    const/4 v1, 0x0

    return v1
.end method

.method public getVsimAvailableNetworks(II)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "type"    # I

    .line 541
    invoke-virtual {p0, p1, p2}, Landroid/telephony/HwVSimManager;->scanVsimAvailableNetworks(II)I

    move-result v0

    return v0
.end method

.method public hasHardIccCardForVSim(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 381
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->hasHardIccCardForVSim(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 386
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCardForVSim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 121
    invoke-virtual {p0}, Landroid/telephony/HwVSimManager;->maxVSimModemCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/telephony/HwVSimManager;->hasVSimIccCard()Z

    move-result v0

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    return v0

    .line 128
    :cond_2
    :goto_0
    return v0
.end method

.method public hasVSimIccCard()Z
    .locals 1

    .line 146
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->hasVSimIccCard()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 151
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isPlatformSupportVsim()Z
    .locals 1

    .line 96
    sget-boolean v0, Landroid/telephony/HwVSimManager;->sIsPlatformSupportVSim:Z

    return v0
.end method

.method public isSupportVSimByOperation(I)Z
    .locals 2
    .param p1, "operation"    # I

    .line 991
    const/4 v0, 0x0

    .line 994
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHwVSim;->isSupportVSimByOperation(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 997
    goto :goto_0

    .line 995
    :catch_0
    move-exception v1

    .line 996
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 999
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public isVSimEnabled()Z
    .locals 1

    .line 275
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->isVSimEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 280
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isVSimInProcess()Z
    .locals 1

    .line 292
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->isVSimInProcess()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 297
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isVSimOn()Z
    .locals 1

    .line 308
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->isVSimOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 313
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public maxVSimModemCount()I
    .locals 1

    .line 107
    const/4 v0, 0x3

    return v0
.end method

.method public recoverSimMode()V
    .locals 1

    .line 416
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHwVSim;->recoverSimMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 420
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public scanVsimAvailableNetworks(II)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "type"    # I

    .line 526
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IHwVSim;->scanVsimAvailableNetworks(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 531
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public setApn(IILjava/lang/String;)I
    .locals 7
    .param p1, "cardtype"    # I
    .param p2, "apntype"    # I
    .param p3, "challenge"    # Ljava/lang/String;

    .line 940
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/HwVSimManager;->enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setApn(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "cardtype"    # I
    .param p3, "apntype"    # I
    .param p4, "tapath"    # Ljava/lang/String;
    .param p5, "challenge"    # Ljava/lang/String;

    .line 953
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/HwVSimManager;->enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setUserReservedSubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 548
    const-string v0, "HwVSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserReservedSubId subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->setUserReservedSubId(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 555
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setVSimULOnlyMode(Z)Z
    .locals 2
    .param p1, "isULOnly"    # Z

    .line 825
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->setVSimULOnlyMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 828
    const/4 v1, 0x0

    return v1
.end method

.method public switchVSimWorkMode(I)Z
    .locals 1
    .param p1, "workMode"    # I

    .line 923
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/HwVSimManager;->getIHwVSim()Lcom/android/internal/telephony/IHwVSim;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHwVSim;->switchVSimWorkMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/telephony/HwVSimManager;->printExLogIfSupportVSim(Landroid/os/RemoteException;)V

    .line 928
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
