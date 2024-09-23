.class public Lcom/huawei/forcerotation/HwForceRotationManager;
.super Ljava/lang/Object;
.source "HwForceRotationManager.java"

# interfaces
.implements Lcom/huawei/forcerotation/IForceRotationManager;


# static fields
.field private static final FORCE_ROTATION_FEATURE_PROP_KEY:Ljava/lang/String; = "ro.config.hw_force_rotation"

.field private static final TAG:Ljava/lang/String; = "HwForceRotationManager"

.field private static sInstance:Lcom/huawei/forcerotation/HwForceRotationManager;


# instance fields
.field private mForceRotationFeatureSupported:Z

.field private mService:Lcom/huawei/forcerotation/IHwForceRotationManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "ro.config.hw_force_rotation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mForceRotationFeatureSupported:Z

    .line 24
    return-void
.end method

.method private checkForceRotationService()Z
    .locals 2

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "forceRotationService"

    .line 30
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/huawei/forcerotation/IHwForceRotationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/forcerotation/IHwForceRotationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    .line 32
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v0, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    if-nez v0, :cond_1

    .line 35
    const-string v0, "HwForceRotationManager"

    const-string v1, "checkForceRotationService->service is not started yet"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getDefault()Lcom/huawei/forcerotation/HwForceRotationManager;
    .locals 2

    const-class v0, Lcom/huawei/forcerotation/HwForceRotationManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/huawei/forcerotation/HwForceRotationManager;->sInstance:Lcom/huawei/forcerotation/HwForceRotationManager;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/huawei/forcerotation/HwForceRotationManager;

    invoke-direct {v1}, Lcom/huawei/forcerotation/HwForceRotationManager;-><init>()V

    sput-object v1, Lcom/huawei/forcerotation/HwForceRotationManager;->sInstance:Lcom/huawei/forcerotation/HwForceRotationManager;

    .line 52
    :cond_0
    sget-object v1, Lcom/huawei/forcerotation/HwForceRotationManager;->sInstance:Lcom/huawei/forcerotation/HwForceRotationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public applyForceRotationLayout(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "aToken"    # Landroid/os/IBinder;
    .param p2, "vf"    # Landroid/graphics/Rect;

    .line 156
    invoke-direct {p0}, Lcom/huawei/forcerotation/HwForceRotationManager;->checkForceRotationService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    invoke-interface {v0, p1, p2}, Lcom/huawei/forcerotation/IHwForceRotationManager;->applyForceRotationLayout(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwForceRotationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyForceRotationLayout,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public isAppForceLandRotatable(Ljava/lang/String;Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "aToken"    # Landroid/os/IBinder;

    .line 111
    invoke-direct {p0}, Lcom/huawei/forcerotation/HwForceRotationManager;->checkForceRotationService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 115
    :cond_0
    move v0, v1

    .line 117
    .local v0, "rotatable":Z
    :try_start_0
    iget-object v1, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    invoke-interface {v1, p1, p2}, Lcom/huawei/forcerotation/IHwForceRotationManager;->isAppForceLandRotatable(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwForceRotationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppForceLandRotatable,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public isAppInForceRotationWhiteList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/huawei/forcerotation/HwForceRotationManager;->checkForceRotationService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    return v1

    .line 99
    :cond_0
    move v0, v1

    .line 101
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    invoke-interface {v1, p1}, Lcom/huawei/forcerotation/IHwForceRotationManager;->isAppInForceRotationWhiteList(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwForceRotationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppInForceRotationWhiteList,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public isForceRotationSupported()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mForceRotationFeatureSupported:Z

    return v0
.end method

.method public isForceRotationSwitchOpen()Z
    .locals 5

    .line 57
    invoke-direct {p0}, Lcom/huawei/forcerotation/HwForceRotationManager;->checkForceRotationService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 61
    :cond_0
    move v0, v1

    .line 63
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    invoke-interface {v1}, Lcom/huawei/forcerotation/IHwForceRotationManager;->isForceRotationSwitchOpen()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwForceRotationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForceRotationSwitchOpen,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public isForceRotationSwitchOpen(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 74
    return v0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_1

    .line 78
    return v0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_rotation_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, "mode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 85
    invoke-static {}, Landroid/util/HwPCUtils;->enabledInPad()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/util/HwPCUtils;->isPcCastModeInServer()Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    :cond_2
    return v2

    .line 88
    :cond_3
    return v0
.end method

.method public recalculateWidthForForceRotation(III)I
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "logicalHeight"    # I

    .line 168
    invoke-direct {p0}, Lcom/huawei/forcerotation/HwForceRotationManager;->checkForceRotationService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return p1

    .line 171
    :cond_0
    move v0, p1

    .line 172
    .local v0, "appwidth":I
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/huawei/forcerotation/IHwForceRotationManager;->recalculateWidthForForceRotation(IIILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "HwForceRotationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyForceRotationLayout,ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public saveOrUpdateForceRotationAppInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "aToken"    # Landroid/os/IBinder;
    .param p4, "reqOrientation"    # I

    .line 127
    invoke-direct {p0}, Lcom/huawei/forcerotation/HwForceRotationManager;->checkForceRotationService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    return v1

    .line 131
    :cond_0
    move v0, v1

    .line 133
    .local v0, "saved":Z
    :try_start_0
    iget-object v1, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/huawei/forcerotation/IHwForceRotationManager;->saveOrUpdateForceRotationAppInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwForceRotationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveOrUpdateForceRotationAppInfo,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public showToastIfNeeded(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "aToken"    # Landroid/os/IBinder;

    .line 143
    invoke-direct {p0}, Lcom/huawei/forcerotation/HwForceRotationManager;->checkForceRotationService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    return-void

    .line 148
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/forcerotation/HwForceRotationManager;->mService:Lcom/huawei/forcerotation/IHwForceRotationManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/huawei/forcerotation/IHwForceRotationManager;->showToastIfNeeded(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwForceRotationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showToastIfNeeded,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
