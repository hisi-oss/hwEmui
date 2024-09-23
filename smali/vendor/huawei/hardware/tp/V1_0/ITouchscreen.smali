.class public interface abstract Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
.super Ljava/lang/Object;
.source "ITouchscreen.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;,
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Proxy;,
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsRunCommandCallback;,
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCalibrationTestCallback;,
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCapacitanceRunningTestCallback;,
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCapacitanceMmiTestCallback;,
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetEasyWeakupGuestureDataCallback;,
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetChipInfoCallback;,
        Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetRoiDataCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.huawei.hardware.tp@1.0::ITouchscreen"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
    .locals 6
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 11
    :cond_0
    const-string v1, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    .line 12
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    .line 14
    .local v1, "iface":Landroid/os/IHwInterface;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    if-eqz v2, :cond_1

    .line 15
    move-object v0, v1

    check-cast v0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    return-object v0

    .line 18
    :cond_1
    new-instance v2, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Proxy;

    invoke-direct {v2, p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v2, "proxy":Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
    :try_start_0
    invoke-interface {v2}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    .local v4, "descriptor":Ljava/lang/String;
    const-string v5, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 23
    return-object v2

    .line 25
    .end local v4    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 27
    :cond_3
    goto :goto_1

    .line 26
    :catch_0
    move-exception v3

    .line 29
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 33
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "default"

    invoke-static {v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwSetFeatureConfig(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsCalibrationTest(ILvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCalibrationTestCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsCapacitanceMmiTest(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCapacitanceMmiTestCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsCapacitanceRunningTest(ILvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCapacitanceRunningTestCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsGetChipInfo(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetChipInfoCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsGetEasyWeakupGuestureData(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetEasyWeakupGuestureDataCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsGetRoiData(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetRoiDataCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalCloseCalibrationModule()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalGetCountOfCalibration()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalGetLeftTimeOfStartCalibration()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalGetResultOfVerifyPoint(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalGetSizeOfVerifyPoint()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalGetStateOfHandle()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalGetVersionInformation(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalIsSupportCalibration()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalOpenCalibrationModule()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalSetCountOfCalibration(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalSetEndTimeOfAgeing()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalSetSizeOfVerifyPoint(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalSetTypeOfCalibration(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalSet_range_of_spec(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalStartCalibration(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalStartVerify(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalStopCalibration(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalStopVerify(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsPressCalZcalPosChecking(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsRunCommand(Ljava/lang/String;Ljava/lang/String;Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsRunCommandCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetAftAlgoOrientation(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetAftAlgoState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetAftConfig(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetCallback(Lvendor/huawei/hardware/tp/V1_0/ITPCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetCoverMode(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetCoverWindowSize(ZIIII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetDozeMode(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetEasyWeakupGesture(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetEasyWeakupGestureReportEnable(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetGloveMode(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSetRoiEnable(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hwTsSnrTest()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
