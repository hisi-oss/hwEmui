.class public final Landroid/emcom/EmcomManager;
.super Ljava/lang/Object;
.source "EmcomManager.java"


# static fields
.field private static final DEF_MAINCARD_PS_STATUS:I = 0x0

.field public static final EMCOMMANAGER_ERR:I = -0x1

.field public static final EMCOMMANAGER_OK:I = 0x0

.field private static final HANDOFF_DATA_TYPE:Ljava/lang/String; = "handoff_data_type"

.field private static final HANDOFF_DATA_TYPE_AIRSHARING:I = 0x4

.field private static final HANDOFF_DATA_TYPE_DEFAULT:I = 0x0

.field private static final HANDOFF_RELATION_MAP_MAX:I = 0x5

.field private static final SLICE_OPERATION_FAILED:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "EmcomManager"

.field private static mEmcomManager:Landroid/emcom/EmcomManager;


# instance fields
.field private mHandoffService:Landroid/emcom/IHandoffSdkInterface;

.field private mService:Landroid/emcom/IEmcomManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private getHandoffSdkService()Landroid/emcom/IHandoffSdkInterface;
    .locals 3

    .line 98
    const-string v0, "com.huawei.pcassistant.handoffsdk.HandoffSdkService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/emcom/IHandoffSdkInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/emcom/IHandoffSdkInterface;

    move-result-object v1

    iput-object v1, p0, Landroid/emcom/EmcomManager;->mHandoffService:Landroid/emcom/IHandoffSdkInterface;

    .line 100
    iget-object v1, p0, Landroid/emcom/EmcomManager;->mHandoffService:Landroid/emcom/IHandoffSdkInterface;

    if-nez v1, :cond_0

    .line 101
    const-string v1, "EmcomManager"

    const-string v2, "IHandoffSdkInterface getService() is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v1, p0, Landroid/emcom/EmcomManager;->mHandoffService:Landroid/emcom/IHandoffSdkInterface;

    return-object v1
.end method

.method public static declared-synchronized getInstance()Landroid/emcom/EmcomManager;
    .locals 2

    const-class v0, Landroid/emcom/EmcomManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Landroid/emcom/EmcomManager;->mEmcomManager:Landroid/emcom/EmcomManager;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Landroid/emcom/EmcomManager;

    invoke-direct {v1}, Landroid/emcom/EmcomManager;-><init>()V

    sput-object v1, Landroid/emcom/EmcomManager;->mEmcomManager:Landroid/emcom/EmcomManager;

    .line 74
    :cond_0
    sget-object v1, Landroid/emcom/EmcomManager;->mEmcomManager:Landroid/emcom/EmcomManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Landroid/emcom/IEmcomManager;
    .locals 3

    .line 83
    const-string v0, "EmcomManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/emcom/IEmcomManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/emcom/IEmcomManager;

    move-result-object v1

    iput-object v1, p0, Landroid/emcom/EmcomManager;->mService:Landroid/emcom/IEmcomManager;

    .line 85
    iget-object v1, p0, Landroid/emcom/EmcomManager;->mService:Landroid/emcom/IEmcomManager;

    if-nez v1, :cond_0

    .line 86
    const-string v1, "EmcomManager"

    const-string v2, "IEmcomManager getService() is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-object v1, p0, Landroid/emcom/EmcomManager;->mService:Landroid/emcom/IEmcomManager;

    return-object v1
.end method


# virtual methods
.method public accelerate(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grade"    # I

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/emcom/EmcomManager;->accelerateWithMainCardPsStatus(Landroid/content/Context;II)V

    .line 140
    return-void
.end method

.method public accelerateWithMainCardPsStatus(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grade"    # I
    .param p3, "mainCardPsStatus"    # I

    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string v0, "EmcomManager"

    const-string v1, "context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 147
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_1

    .line 148
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 153
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/emcom/IEmcomManager;->accelerateWithMainCardServiceStatus(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    const-string v3, "accelerate RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public activeSlice(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "sessionNumber"    # I
    .param p4, "serverList"    # Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 303
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 304
    const-string v1, "SliceSdkLogger"

    const-string v2, "EmcomManager: getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 308
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/emcom/IEmcomManager;->activeSlice(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceSdkLogger"

    const-string v3, "EmcomManager: activeSlice: RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public deactiveSlice(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "sessionNumber"    # I
    .param p4, "saId"    # Ljava/lang/String;

    .line 317
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 318
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 319
    const-string v1, "SliceSdkLogger"

    const-string v2, "EmcomManager: getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 323
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/emcom/IEmcomManager;->deactiveSlice(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceSdkLogger"

    const-string v3, "EmcomManager: deactiveSlice: RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getAppInfo(Landroid/content/Context;)Landroid/emcom/XEngineAppInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 115
    const-string v1, "EmcomManager"

    const-string v2, "context is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v0

    .line 118
    :cond_0
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v1

    .line 119
    .local v1, "service":Landroid/emcom/IEmcomManager;
    if-nez v1, :cond_1

    .line 120
    const-string v2, "EmcomManager"

    const-string v3, "getEmcomservice is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v0

    .line 124
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/emcom/IEmcomManager;->getAppInfo(Ljava/lang/String;)Landroid/emcom/XEngineAppInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 125
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "EmcomManager"

    const-string v4, "getAppInfo RemoteException "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getHandoffBindRelationMap(Ljava/lang/String;I)Ljava/util/Map;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 593
    const-string v0, "EmcomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandoffBindRelationMap packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getHandoffSdkService()Landroid/emcom/IHandoffSdkInterface;

    move-result-object v0

    .line 595
    .local v0, "service":Landroid/emcom/IHandoffSdkInterface;
    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 596
    const-string v2, "EmcomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v2

    .line 600
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/emcom/IHandoffSdkInterface;->getHandoffBindRelationMap(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 601
    :catch_0
    move-exception v2

    .line 602
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "EmcomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v3
.end method

.method public getRuntimeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 347
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 348
    .local v0, "service":Landroid/emcom/IEmcomManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 349
    const-string v2, "SliceSdkLogger"

    const-string v3, "EmcomManager: getEmcomservice is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-object v1

    .line 353
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/emcom/IEmcomManager;->getRuntimeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 354
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SliceSdkLogger"

    const-string v4, "EmcomManager: getPhoneInfo: RemoteException "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getSmartcareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "jsonStr"    # Ljava/lang/String;

    .line 270
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 271
    .local v0, "service":Landroid/emcom/IEmcomManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    const-string v2, "EmcomManager"

    const-string v3, "getEmcomservice is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v1

    .line 276
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/emcom/IEmcomManager;->getSmartcareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 277
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "EmcomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmartcareData RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v1
.end method

.method public isEnableHandoff()Z
    .locals 5

    .line 632
    const/4 v0, 0x0

    .line 634
    .local v0, "bEnable":Z
    const-string v1, "EmcomManager"

    const-string v2, "isEnableHandoff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getHandoffSdkService()Landroid/emcom/IHandoffSdkInterface;

    move-result-object v1

    .line 636
    .local v1, "service":Landroid/emcom/IHandoffSdkInterface;
    if-nez v1, :cond_0

    .line 637
    const-string v2, "EmcomManager"

    const-string v3, "isEnableHandoff getHandoffSdkService is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v2, 0x0

    return v2

    .line 641
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/emcom/IHandoffSdkInterface;->isEnableHandoff()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 645
    goto :goto_0

    .line 642
    :catch_0
    move-exception v2

    .line 643
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "EmcomManager"

    const-string v4, "isEnableHandoff RemoteException  "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 647
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public isHandoffServiceSupported(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceType"    # I

    .line 570
    const-string v0, "EmcomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHandoffServiceSupported packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "isSupported":Z
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getHandoffSdkService()Landroid/emcom/IHandoffSdkInterface;

    move-result-object v1

    .line 573
    .local v1, "service":Landroid/emcom/IHandoffSdkInterface;
    if-nez v1, :cond_0

    .line 574
    const-string v2, "EmcomManager"

    const-string v3, "isHandoffServiceSupported getHandoffSdkService is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return v0

    .line 578
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/emcom/IHandoffSdkInterface;->isHandoffServiceSupported(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 582
    nop

    .line 583
    return v0

    .line 579
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "EmcomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v3, 0x0

    return v3
.end method

.method public isSmartMpEnable()Z
    .locals 5

    .line 665
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 666
    .local v0, "service":Landroid/emcom/IEmcomManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 667
    const-string v2, "EmcomManager"

    const-string v3, "getEmcomservice is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v1

    .line 671
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/emcom/IEmcomManager;->isSmartMpEnable()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 672
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "EmcomManager"

    const-string v4, "isSmartMpEnable(): RemoteException "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public listenHiCom(Landroid/emcom/IListenDataCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/emcom/IListenDataCallback;
    .param p2, "listenInfo"    # Ljava/lang/String;

    .line 681
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 682
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 683
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void

    .line 687
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/emcom/IEmcomManager;->listenHiCom(Landroid/emcom/IListenDataCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    nop

    .line 693
    return-void

    .line 688
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listenHiCom: RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void
.end method

.method public notifyAppData(Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 206
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 207
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 211
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/emcom/IEmcomManager;->notifyAppData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAppData RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyEmailData(Landroid/emcom/EmailInfo;)V
    .locals 4
    .param p1, "eci"    # Landroid/emcom/EmailInfo;

    .line 162
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 163
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 164
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 168
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/emcom/IEmcomManager;->notifyEmailData(Landroid/emcom/EmailInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    const-string v3, "notifyEmailData RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyHandoffDataEvent(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "para"    # Ljava/lang/String;

    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, "retCode":I
    const-string v1, "EmcomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyHandoffDataEvent packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " para: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v1

    .line 451
    .local v1, "service":Landroid/emcom/IEmcomManager;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 452
    const-string v3, "EmcomManager"

    const-string v4, "notifyHandoffDataEvent getEmcomservice is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v2

    .line 456
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/emcom/IEmcomManager;->notifyHandoffDataEvent(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 461
    nop

    .line 463
    if-eqz v0, :cond_1

    .line 464
    return v0

    .line 467
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 457
    :catch_0
    move-exception v3

    .line 458
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "EmcomManager"

    const-string v5, "notifyHandoffDataEvent RemoteException "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 460
    return v2
.end method

.method public notifyHandoffServiceStart(Landroid/emcom/IHandoffServiceCallback;)I
    .locals 6
    .param p1, "callback"    # Landroid/emcom/IHandoffServiceCallback;

    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, "retCode":I
    const-string v1, "EmcomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyHandoffServiceStart callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v1

    .line 393
    .local v1, "service":Landroid/emcom/IEmcomManager;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 394
    const-string v3, "EmcomManager"

    const-string v4, "notifyHandoffServiceStart getEmcomservice is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v2

    .line 398
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/emcom/IEmcomManager;->notifyHandoffServiceStart(Landroid/emcom/IHandoffServiceCallback;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 403
    nop

    .line 405
    if-eqz v0, :cond_1

    .line 406
    return v0

    .line 409
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 399
    :catch_0
    move-exception v3

    .line 400
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "EmcomManager"

    const-string v5, "notifyHandoffServiceStart RemoteException "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 402
    return v2
.end method

.method public notifyHandoffServiceStop()I
    .locals 6

    .line 413
    const/4 v0, 0x0

    .line 415
    .local v0, "retCode":I
    const-string v1, "EmcomManager"

    const-string v2, "notifyHandoffServiceStop "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v1

    .line 417
    .local v1, "service":Landroid/emcom/IEmcomManager;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 418
    const-string v3, "EmcomManager"

    const-string v4, "notifyHandoffServiceStop getEmcomservice is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v2

    .line 422
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/emcom/IEmcomManager;->notifyHandoffServiceStop()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 426
    nop

    .line 427
    return v0

    .line 423
    :catch_0
    move-exception v3

    .line 424
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "EmcomManager"

    const-string v5, "notifyHandoffServiceStop RemoteException "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return v2
.end method

.method public notifyHandoffStateChg(I)V
    .locals 4
    .param p1, "state"    # I

    .line 431
    const-string v0, "EmcomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyHandoffStateChg state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 433
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 434
    const-string v1, "EmcomManager"

    const-string v2, "notifyHandoffStateChg getEmcomservice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 438
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/emcom/IEmcomManager;->notifyHandoffStateChg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    const-string v3, "notifyHandoffStateChg RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 443
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyHwAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 192
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 193
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 197
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/emcom/IEmcomManager;->notifyHwAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyHwAppData RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyRunningStatus(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 254
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 255
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 259
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/emcom/IEmcomManager;->notifyRunningStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    const-string v3, "notifyRunningStatus: RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifySmartMp(I)V
    .locals 4
    .param p1, "status"    # I

    .line 651
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 652
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 653
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 657
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/emcom/IEmcomManager;->notifySmartMp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    goto :goto_0

    .line 658
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    const-string v3, "notifySmartMp: RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyVideoData(Landroid/emcom/VideoInfo;)V
    .locals 4
    .param p1, "eci"    # Landroid/emcom/VideoInfo;

    .line 176
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 177
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 178
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/emcom/IEmcomManager;->notifyVideoData(Landroid/emcom/VideoInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    const-string v3, "notifyVideoData RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerAppCallback(Ljava/lang/String;Landroid/emcom/ISliceSdkCallback;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/emcom/ISliceSdkCallback;

    .line 287
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 288
    .local v0, "service":Landroid/emcom/IEmcomManager;
    const/16 v1, 0x3e9

    if-nez v0, :cond_0

    .line 289
    const-string v2, "SliceSdkLogger"

    const-string v3, "EmcomManager: getEmcomservice is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1

    .line 293
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/emcom/IEmcomManager;->registerAppCallback(Ljava/lang/String;Landroid/emcom/ISliceSdkCallback;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 294
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SliceSdkLogger"

    const-string v4, "EmcomManager: registerAppCallback: RemoteException "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public registerHandoff(Ljava/lang/String;ILandroid/emcom/IHandoffSdkCallback;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "callback"    # Landroid/emcom/IHandoffSdkCallback;

    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, "retCode":I
    const-string v1, "EmcomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerHandoff packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " DataType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v1

    .line 368
    .local v1, "service":Landroid/emcom/IEmcomManager;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 369
    const-string v3, "EmcomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerHandoff getEmcomservice is null package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v2

    .line 373
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/emcom/IEmcomManager;->registerHandoff(Ljava/lang/String;ILandroid/emcom/IHandoffSdkCallback;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 378
    nop

    .line 380
    if-eqz v0, :cond_1

    .line 381
    return v0

    .line 384
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 374
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "EmcomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerHandoff RemoteException package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 377
    return v2
.end method

.method public responseForParaUpgrade(III)V
    .locals 4
    .param p1, "paratype"    # I
    .param p2, "pathtype"    # I
    .param p3, "result"    # I

    .line 221
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 222
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 223
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 227
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/emcom/IEmcomManager;->responseForParaUpgrade(III)V

    .line 228
    const-string v1, "EmcomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseForParaUpgrade: paratype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pathtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    const-string v3, "responseForParaUpgrade RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public startHandoffService(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "para"    # Lorg/json/JSONObject;

    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, "retCode":I
    const-string v1, "EmcomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHandoffService packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getHandoffSdkService()Landroid/emcom/IHandoffSdkInterface;

    move-result-object v1

    .line 475
    .local v1, "service":Landroid/emcom/IHandoffSdkInterface;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 476
    const-string v3, "EmcomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startHandoffService getHandoffSdkService is null package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v2

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroid/emcom/EmcomManager;->isEnableHandoff()Z

    move-result v3

    .line 481
    .local v3, "handoffEnable":Z
    if-nez v3, :cond_1

    .line 482
    const-string v4, "EmcomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startHandoffService but handoff disconnect packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v2

    .line 487
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/emcom/IHandoffSdkInterface;->startHandoffService(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 492
    nop

    .line 494
    if-eqz v0, :cond_2

    .line 495
    return v0

    .line 498
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 488
    :catch_0
    move-exception v4

    .line 489
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "EmcomManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startHandoffService RemoteException package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 491
    return v2
.end method

.method public stopHandoffService(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "para"    # Lorg/json/JSONObject;

    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, "retCode":I
    const-string v1, "EmcomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopHandoffService packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getHandoffSdkService()Landroid/emcom/IHandoffSdkInterface;

    move-result-object v1

    .line 506
    .local v1, "service":Landroid/emcom/IHandoffSdkInterface;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 507
    const-string v3, "EmcomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopHandoffService getHandoffSdkService is null package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return v2

    .line 511
    :cond_0
    invoke-virtual {p0}, Landroid/emcom/EmcomManager;->isEnableHandoff()Z

    move-result v3

    .line 512
    .local v3, "handoffEnable":Z
    if-nez v3, :cond_1

    .line 513
    const-string v4, "EmcomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopHandoffService but handoff disconnect packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v2

    .line 517
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/emcom/IHandoffSdkInterface;->stopHandoffService(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 522
    nop

    .line 524
    if-eqz v0, :cond_2

    .line 525
    return v0

    .line 528
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 518
    :catch_0
    move-exception v4

    .line 519
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "EmcomManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopHandoffService RemoteException package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 521
    return v2
.end method

.method public syncHandoffData(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "para"    # Lorg/json/JSONObject;

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, "retCode":I
    const-string v1, "EmcomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncHandoffData packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getHandoffSdkService()Landroid/emcom/IHandoffSdkInterface;

    move-result-object v1

    .line 536
    .local v1, "service":Landroid/emcom/IHandoffSdkInterface;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 537
    const-string v3, "EmcomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncHandoffData getHandoffSdkService is null package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return v2

    .line 541
    :cond_0
    const-string v3, "handoff_data_type"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    .line 542
    invoke-virtual {p0}, Landroid/emcom/EmcomManager;->isEnableHandoff()Z

    move-result v3

    .line 543
    .local v3, "handoffEnable":Z
    if-nez v3, :cond_1

    .line 544
    const-string v4, "EmcomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncHandoffData but handoff disconnect packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return v2

    .line 549
    .end local v3    # "handoffEnable":Z
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/emcom/IHandoffSdkInterface;->syncHandoffData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 554
    nop

    .line 556
    if-eqz v0, :cond_2

    .line 557
    return v0

    .line 560
    :cond_2
    return v4

    .line 550
    :catch_0
    move-exception v3

    .line 551
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "EmcomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncHandoffData RemoteException package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 553
    return v2
.end method

.method public unbindHandoffRelation(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceType"    # I
    .param p3, "para"    # Ljava/lang/String;

    .line 615
    const-string v0, "EmcomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindHandoffRelation packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v0, -0x1

    .line 617
    .local v0, "retCode":I
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getHandoffSdkService()Landroid/emcom/IHandoffSdkInterface;

    move-result-object v1

    .line 618
    .local v1, "service":Landroid/emcom/IHandoffSdkInterface;
    if-nez v1, :cond_0

    .line 619
    const-string v2, "EmcomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return v0

    .line 623
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/emcom/IHandoffSdkInterface;->unbindHandoffRelation(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 627
    nop

    .line 628
    return v0

    .line 624
    :catch_0
    move-exception v2

    .line 625
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "EmcomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v3, -0x1

    return v3
.end method

.method public updateAppExperienceStatus(III)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "experience"    # I
    .param p3, "rrt"    # I

    .line 239
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v0

    .line 240
    .local v0, "service":Landroid/emcom/IEmcomManager;
    if-nez v0, :cond_0

    .line 241
    const-string v1, "EmcomManager"

    const-string v2, "getEmcomservice is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 245
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/emcom/IEmcomManager;->updateAppExperienceStatus(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EmcomManager"

    const-string v3, "updateAppExperienceStatus RemoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public updateAppInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "sessionNumber"    # I
    .param p4, "saId"    # Ljava/lang/String;
    .param p5, "appInfoJson"    # Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Landroid/emcom/EmcomManager;->getService()Landroid/emcom/IEmcomManager;

    move-result-object v6

    .line 333
    .local v6, "service":Landroid/emcom/IEmcomManager;
    if-nez v6, :cond_0

    .line 334
    const-string v0, "SliceSdkLogger"

    const-string v1, "EmcomManager: getEmcomservice is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 338
    :cond_0
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/emcom/IEmcomManager;->updateAppInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SliceSdkLogger"

    const-string v2, "EmcomManager: updateAppInfo: RemoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
