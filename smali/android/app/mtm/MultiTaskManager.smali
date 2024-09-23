.class public Landroid/app/mtm/MultiTaskManager;
.super Ljava/lang/Object;
.source "MultiTaskManager.java"


# static fields
.field static final DEBUG:Z = false

.field private static final ENABLE_IAWARE:Z

.field static final TAG:Ljava/lang/String; = "MultiTaskManager"

.field private static instance:Landroid/app/mtm/MultiTaskManager;

.field static final mLock:Ljava/lang/Object;


# instance fields
.field private mService:Landroid/app/mtm/IMultiTaskManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Landroid/app/mtm/MultiTaskManager;->mLock:Ljava/lang/Object;

    .line 44
    const-string v1, "ro.config.enable_iaware"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/mtm/MultiTaskManager;->ENABLE_IAWARE:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroid/app/mtm/MultiTaskManager;->instance:Landroid/app/mtm/MultiTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    .line 52
    .local v0, "service":Landroid/app/mtm/IMultiTaskManagerService;
    if-nez v0, :cond_0

    .line 53
    const-string v1, "MultiTaskManager"

    const-string v2, "multi task service is null in constructor"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 56
    return-void
.end method

.method public static getInstance()Landroid/app/mtm/MultiTaskManager;
    .locals 4

    .line 64
    sget-object v0, Landroid/app/mtm/MultiTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-boolean v1, Landroid/app/mtm/MultiTaskManager;->ENABLE_IAWARE:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 71
    const-string v1, "MultiTaskManager"

    const-string v3, "multitask service is not running because prop is false, so getInstance return null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    monitor-exit v0

    return-object v2

    .line 75
    :cond_0
    sget-object v1, Landroid/app/mtm/MultiTaskManager;->instance:Landroid/app/mtm/MultiTaskManager;

    if-nez v1, :cond_2

    .line 76
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_1

    .line 77
    const-string v1, "MultiTaskManager"

    const-string v3, "first time to initialize MultiTaskManager, this log should not appear again!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    new-instance v1, Landroid/app/mtm/MultiTaskManager;

    invoke-direct {v1}, Landroid/app/mtm/MultiTaskManager;-><init>()V

    sput-object v1, Landroid/app/mtm/MultiTaskManager;->instance:Landroid/app/mtm/MultiTaskManager;

    .line 81
    sget-object v1, Landroid/app/mtm/MultiTaskManager;->instance:Landroid/app/mtm/MultiTaskManager;

    iget-object v1, v1, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v1, :cond_2

    .line 82
    sput-object v2, Landroid/app/mtm/MultiTaskManager;->instance:Landroid/app/mtm/MultiTaskManager;

    .line 86
    :cond_2
    sget-object v1, Landroid/app/mtm/MultiTaskManager;->instance:Landroid/app/mtm/MultiTaskManager;

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getService()Landroid/app/mtm/IMultiTaskManagerService;
    .locals 2

    .line 292
    const-string v0, "multi_task"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 293
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v1

    .line 294
    .local v1, "service":Landroid/app/mtm/IMultiTaskManagerService;
    return-object v1
.end method


# virtual methods
.method public acquirePolicyData(ILandroid/app/mtm/iaware/RSceneData;)Landroid/rms/iaware/RPolicyData;
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "scene"    # Landroid/app/mtm/iaware/RSceneData;

    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1, p2}, Landroid/app/mtm/IMultiTaskManagerService;->acquirePolicyData(ILandroid/app/mtm/iaware/RSceneData;)Landroid/rms/iaware/RPolicyData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 286
    :cond_1
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "acquirePolicyData can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public executeMultiAppClean(Ljava/util/List;Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V
    .locals 2
    .param p2, "callback"    # Landroid/app/mtm/iaware/appmng/IAppCleanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;",
            ">;",
            "Landroid/app/mtm/iaware/appmng/IAppCleanCallback;",
            ")V"
        }
    .end annotation

    .line 328
    .local p1, "appCleanInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;>;"
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->SYSTEM_MANAGER:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    invoke-virtual {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;-><init>(I)V

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->action(I)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0, p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->appCleanInfoList(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->build()Landroid/app/mtm/iaware/appmng/AppCleanParam;

    move-result-object v0

    .line 332
    .local v0, "param":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    invoke-virtual {p0, v0, p2}, Landroid/app/mtm/MultiTaskManager;->requestAppCleanWithCallback(Landroid/app/mtm/iaware/appmng/AppCleanParam;Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V

    .line 333
    return-void
.end method

.method public forcestopApps(I)Z
    .locals 3
    .param p1, "pid"    # I

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1}, Landroid/app/mtm/IMultiTaskManagerService;->forcestopApps(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 256
    :cond_1
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAppListForUserClean(Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/mtm/iaware/appmng/IAppCleanCallback;

    .line 336
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->SYSTEM_MANAGER:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    invoke-virtual {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;-><init>(I)V

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->action(I)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->build()Landroid/app/mtm/iaware/appmng/AppCleanParam;

    move-result-object v0

    .line 339
    .local v0, "param":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    invoke-virtual {p0, v0, p1}, Landroid/app/mtm/MultiTaskManager;->requestAppCleanWithCallback(Landroid/app/mtm/iaware/appmng/AppCleanParam;Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V

    .line 340
    return-void
.end method

.method public killProcess(IZ)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "restartservice"    # Z

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1, p2}, Landroid/app/mtm/IMultiTaskManagerService;->killProcess(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 237
    :cond_1
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyProcessDiedChange(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 212
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1, p2}, Landroid/app/mtm/IMultiTaskManagerService;->notifyProcessDiedChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_1
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyProcessGroupChange(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 166
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1, p2}, Landroid/app/mtm/IMultiTaskManagerService;->notifyProcessGroupChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyProcessStatusChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/mtm/IMultiTaskManagerService;->notifyProcessStatusChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyResourceStatusOverload(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resourcetype"    # I
    .param p2, "resourceextend"    # Ljava/lang/String;
    .param p3, "resourcestatus"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/mtm/IMultiTaskManagerService;->notifyResourceStatusOverload(ILjava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_1
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerObserver(Landroid/app/mtm/IMultiTaskProcessObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/app/mtm/IMultiTaskProcessObserver;

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1}, Landroid/app/mtm/IMultiTaskManagerService;->registerObserver(Landroid/app/mtm/IMultiTaskProcessObserver;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 126
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1}, Landroid/app/mtm/IMultiTaskManagerService;->registerObserver(Landroid/app/mtm/IMultiTaskProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_1
    :goto_0
    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public reportScene(ILandroid/app/mtm/iaware/RSceneData;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "scene"    # Landroid/app/mtm/iaware/RSceneData;

    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1, p2}, Landroid/app/mtm/IMultiTaskManagerService;->reportScene(ILandroid/app/mtm/iaware/RSceneData;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 272
    :cond_1
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "reportScene can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestAppClean(Ljava/util/List;Ljava/util/List;ILjava/lang/String;I)V
    .locals 2
    .param p3, "level"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 353
    .local p1, "pkgName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "userId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    invoke-direct {v0, p5}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;-><init>(I)V

    .line 354
    invoke-virtual {v0, p3}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->level(I)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->stringList(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p2}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->intList(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->build()Landroid/app/mtm/iaware/appmng/AppCleanParam;

    move-result-object v0

    .line 358
    .local v0, "param":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/mtm/MultiTaskManager;->requestAppCleanWithCallback(Landroid/app/mtm/iaware/appmng/AppCleanParam;Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V

    .line 359
    return-void
.end method

.method public requestAppCleanFromPG(Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .param p3, "level"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 299
    .local p1, "pkgName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "userId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->POWER_GENIE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    invoke-virtual {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;-><init>(I)V

    .line 300
    invoke-virtual {v0, p3}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->level(I)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0, p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->stringList(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0, p2}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->intList(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->build()Landroid/app/mtm/iaware/appmng/AppCleanParam;

    move-result-object v0

    .line 304
    .local v0, "param":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    new-instance v1, Landroid/app/mtm/MultiTaskManager$1;

    invoke-direct {v1, p0, p4}, Landroid/app/mtm/MultiTaskManager$1;-><init>(Landroid/app/mtm/MultiTaskManager;Ljava/lang/String;)V

    .line 310
    .local v1, "callback":Landroid/app/mtm/iaware/appmng/IAppCleanCallback;
    invoke-virtual {p0, v0, v1}, Landroid/app/mtm/MultiTaskManager;->requestAppCleanWithCallback(Landroid/app/mtm/iaware/appmng/AppCleanParam;Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V

    .line 311
    return-void
.end method

.method public requestAppCleanWithCallback(Landroid/app/mtm/iaware/appmng/AppCleanParam;Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V
    .locals 4
    .param p1, "param"    # Landroid/app/mtm/iaware/appmng/AppCleanParam;
    .param p2, "callback"    # Landroid/app/mtm/iaware/appmng/IAppCleanCallback;

    .line 313
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    .line 314
    .local v0, "service":Landroid/app/mtm/IMultiTaskManagerService;
    if-nez v0, :cond_1

    .line 315
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiTaskManager"

    const-string v2, "MultiTaskManager service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    return-void

    .line 319
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/mtm/IMultiTaskManagerService;->requestAppCleanWithCallback(Landroid/app/mtm/iaware/appmng/AppCleanParam;Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "MultiTaskManager"

    const-string v3, "requestAppCleanWithCallback catch RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterObserver(Landroid/app/mtm/IMultiTaskProcessObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/app/mtm/IMultiTaskProcessObserver;

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1}, Landroid/app/mtm/IMultiTaskManagerService;->unregisterObserver(Landroid/app/mtm/IMultiTaskProcessObserver;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Landroid/app/mtm/MultiTaskManager;->getService()Landroid/app/mtm/IMultiTaskManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    .line 148
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Landroid/app/mtm/MultiTaskManager;->mService:Landroid/app/mtm/IMultiTaskManagerService;

    invoke-interface {v0, p1}, Landroid/app/mtm/IMultiTaskManagerService;->unregisterObserver(Landroid/app/mtm/IMultiTaskProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_0
    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiTaskManager"

    const-string v2, "can not connect to MultiTaskManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
