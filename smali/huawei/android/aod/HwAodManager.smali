.class public Lhuawei/android/aod/HwAodManager;
.super Ljava/lang/Object;
.source "HwAodManager.java"


# static fields
.field public static final AOD_PERMISSION:Ljava/lang/String; = "com.huawei.permission.aod.UPDATE_AOD"

.field public static final TAG:Ljava/lang/String; = "HwAodManager"

.field private static volatile mInstance:Lhuawei/android/aod/HwAodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/aod/HwAodManager;->mInstance:Lhuawei/android/aod/HwAodManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/aod/HwAodManager;
    .locals 2

    const-class v0, Lhuawei/android/aod/HwAodManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lhuawei/android/aod/HwAodManager;->mInstance:Lhuawei/android/aod/HwAodManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lhuawei/android/aod/HwAodManager;

    invoke-direct {v1}, Lhuawei/android/aod/HwAodManager;-><init>()V

    sput-object v1, Lhuawei/android/aod/HwAodManager;->mInstance:Lhuawei/android/aod/HwAodManager;

    .line 23
    :cond_0
    sget-object v1, Lhuawei/android/aod/HwAodManager;->mInstance:Lhuawei/android/aod/HwAodManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lhuawei/android/aod/IAodManager;
    .locals 2

    .line 27
    const-string v0, "aod_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lhuawei/android/aod/IAodManager$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/aod/IAodManager;

    move-result-object v1

    .line 29
    .local v1, "service":Lhuawei/android/aod/IAodManager;
    return-object v1
.end method


# virtual methods
.method public beginUpdate()V
    .locals 4

    .line 114
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 116
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/aod/IAodManager;->beginUpdate()V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    goto :goto_1

    .line 119
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "beginUpdate with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    goto :goto_2

    .line 121
    :goto_1
    nop

    .line 122
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "beginUpdate binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public endUpdate()V
    .locals 4

    .line 127
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 129
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/aod/IAodManager;->endUpdate()V

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    goto :goto_1

    .line 132
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "endUpdate with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    goto :goto_2

    .line 134
    :goto_1
    nop

    .line 135
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "endUpdate binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public getDeviceNodeFD()I
    .locals 5

    .line 166
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 167
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    const v1, -0x7fffffff

    .line 169
    .local v1, "result":I
    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/aod/IAodManager;->getDeviceNodeFD()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    goto :goto_1

    .line 172
    :cond_0
    const-string v2, "HwAodManager"

    const-string v3, "getDeviceNodeFD with HwAodManager not exist!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    goto :goto_2

    .line 174
    :goto_1
    nop

    .line 175
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "HwAodManager"

    const-string v4, "getDeviceNodeFD binder error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    return v1
.end method

.method public pause()V
    .locals 4

    .line 88
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 90
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/aod/IAodManager;->pause()V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    goto :goto_1

    .line 93
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "pause with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    goto :goto_2

    .line 95
    :goto_1
    nop

    .line 96
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "pause binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public registerAodCallback(Lhuawei/android/aod/IAodCallback;)V
    .locals 4
    .param p1, "listener"    # Lhuawei/android/aod/IAodCallback;

    .line 36
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 38
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-interface {v0, p1}, Lhuawei/android/aod/IAodManager;->registerAodCallback(Lhuawei/android/aod/IAodCallback;)V

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    goto :goto_1

    .line 41
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "registerAodListener with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    goto :goto_2

    .line 43
    :goto_1
    nop

    .line 44
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "registerAodListener binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public restoreBacklightBrightnessByLcdFile(II)V
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "normalizedMaxBrightness"    # I

    .line 193
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 195
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    invoke-interface {v0, p1, p2}, Lhuawei/android/aod/IAodManager;->restoreBacklightBrightnessByLcdFile(II)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    goto :goto_1

    .line 198
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "restoreBacklightBrightnessByLcdFile with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    goto :goto_2

    .line 200
    :goto_1
    nop

    .line 201
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "restoreBacklightBrightnessByLcdFile binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public resume()V
    .locals 4

    .line 101
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 103
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/aod/IAodManager;->resume()V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_1

    .line 106
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "resume with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    goto :goto_2

    .line 108
    :goto_1
    nop

    .line 109
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "resume binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public setAodConfig(Lhuawei/android/aod/AodConfigInfo;)V
    .locals 4
    .param p1, "aodInfo"    # Lhuawei/android/aod/AodConfigInfo;

    .line 140
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 142
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    invoke-interface {v0, p1}, Lhuawei/android/aod/IAodManager;->setAodConfig(Lhuawei/android/aod/AodConfigInfo;)V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    goto :goto_1

    .line 145
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "setAodConfig with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    goto :goto_2

    .line 147
    :goto_1
    nop

    .line 148
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "setAodConfig binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public setBacklight(II)V
    .locals 4
    .param p1, "maxBright"    # I
    .param p2, "currentBright"    # I

    .line 206
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 208
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    invoke-interface {v0, p1, p2}, Lhuawei/android/aod/IAodManager;->setBacklight(II)V

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    goto :goto_1

    .line 211
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "setBacklight with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    goto :goto_2

    .line 213
    :goto_1
    nop

    .line 214
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "restoreBacklightBrightnessByLcdFile binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public setBitmapByMemoryFile(ILandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "fileSize"    # I
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 153
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 155
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    invoke-interface {v0, p1, p2}, Lhuawei/android/aod/IAodManager;->setBitmapByMemoryFile(ILandroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    goto :goto_1

    .line 158
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "setBitmapByMemoryFile with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    goto :goto_2

    .line 160
    :goto_1
    nop

    .line 161
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "setBitmapByMemoryFile binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public setPowerState(I)V
    .locals 4
    .param p1, "state"    # I

    .line 181
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 183
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    invoke-interface {v0, p1}, Lhuawei/android/aod/IAodManager;->setPowerState(I)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    goto :goto_1

    .line 186
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "setPowerState with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    goto :goto_2

    .line 188
    :goto_1
    nop

    .line 189
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "setPowerState binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public start()V
    .locals 4

    .line 62
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 64
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/aod/IAodManager;->start()V

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_1

    .line 67
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "start with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    goto :goto_2

    .line 69
    :goto_1
    nop

    .line 70
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "start binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public stop()V
    .locals 4

    .line 75
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 77
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/aod/IAodManager;->stop()V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_1

    .line 80
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "stop with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    goto :goto_2

    .line 82
    :goto_1
    nop

    .line 83
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "stop binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public unRegisterAodCallback(Lhuawei/android/aod/IAodCallback;)V
    .locals 4
    .param p1, "listener"    # Lhuawei/android/aod/IAodCallback;

    .line 49
    invoke-direct {p0}, Lhuawei/android/aod/HwAodManager;->getService()Lhuawei/android/aod/IAodManager;

    move-result-object v0

    .line 51
    .local v0, "service":Lhuawei/android/aod/IAodManager;
    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-interface {v0, p1}, Lhuawei/android/aod/IAodManager;->unRegisterAodCallback(Lhuawei/android/aod/IAodCallback;)V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_1

    .line 54
    :cond_0
    const-string v1, "HwAodManager"

    const-string v2, "unRegisterAodCallback with HwAodManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    goto :goto_2

    .line 56
    :goto_1
    nop

    .line 57
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwAodManager"

    const-string v3, "unRegisterAodListener binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method
