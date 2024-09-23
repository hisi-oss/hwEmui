.class public Lcom/huawei/displayengine/DisplayEngineManager;
.super Ljava/lang/Object;
.source "DisplayEngineManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "DisplayEngineExService"

.field private static final TAG:Ljava/lang/String; = "DE J DisplayEngineManager"

.field private static volatile mHBMFilter:Lcom/huawei/displayengine/HBMSceneFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mLibraries:Lcom/huawei/displayengine/DisplayEngineLibraries;

.field private mLockLibraries:Ljava/lang/Object;

.field private mLockService:Ljava/lang/Object;

.field private mLockUptoXnit:Ljava/lang/Object;

.field private volatile mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

.field private volatile mUptoXnit:Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    .line 90
    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLibraries:Lcom/huawei/displayengine/DisplayEngineLibraries;

    .line 91
    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockService:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockLibraries:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockUptoXnit:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    .line 99
    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLibraries:Lcom/huawei/displayengine/DisplayEngineLibraries;

    .line 100
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockService:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockLibraries:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockUptoXnit:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public static getHBMFilter()Lcom/huawei/displayengine/HBMSceneFilter;
    .locals 2

    .line 78
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineManager;->mHBMFilter:Lcom/huawei/displayengine/HBMSceneFilter;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/huawei/displayengine/HBMSceneFilter;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineManager;->mHBMFilter:Lcom/huawei/displayengine/HBMSceneFilter;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/huawei/displayengine/HBMSceneFilter;

    invoke-direct {v1}, Lcom/huawei/displayengine/HBMSceneFilter;-><init>()V

    sput-object v1, Lcom/huawei/displayengine/DisplayEngineManager;->mHBMFilter:Lcom/huawei/displayengine/HBMSceneFilter;

    .line 83
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineManager;->mHBMFilter:Lcom/huawei/displayengine/HBMSceneFilter;

    return-object v0
.end method


# virtual methods
.method public brightnessTrainingAbort()I
    .locals 2

    .line 231
    const-string v0, "DE J DisplayEngineManager"

    const-string v1, "brightnessTrainingAbort "

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getLibraries()Lcom/huawei/displayengine/DisplayEngineLibraries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/displayengine/DisplayEngineLibraries;->brightnessTrainingAbort()I

    move-result v0

    return v0
.end method

.method public brightnessTrainingProcess()I
    .locals 2

    .line 226
    const-string v0, "DE J DisplayEngineManager"

    const-string v1, "brightnessTrainingProcess "

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getLibraries()Lcom/huawei/displayengine/DisplayEngineLibraries;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/huawei/displayengine/DisplayEngineLibraries;->brightnessTrainingProcess(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public getAllRecords(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/displayengine/DisplayEngineManager;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v1

    .line 212
    .local v1, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-eqz v1, :cond_0

    .line 213
    invoke-interface {v1, p1, p2}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 217
    .end local v1    # "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    :cond_0
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DE J DisplayEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllRecords("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") has remote exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEffect(II[BI)I
    .locals 5
    .param p1, "feature"    # I
    .param p2, "type"    # I
    .param p3, "status"    # [B
    .param p4, "length"    # I

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v1

    .line 182
    .local v1, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 187
    .end local v1    # "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    :cond_0
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DE J DisplayEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEffect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") has remote exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getLibraries()Lcom/huawei/displayengine/DisplayEngineLibraries;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLibraries:Lcom/huawei/displayengine/DisplayEngineLibraries;

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockLibraries:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLibraries:Lcom/huawei/displayengine/DisplayEngineLibraries;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/huawei/displayengine/DisplayEngineLibraries;

    invoke-direct {v1, p0}, Lcom/huawei/displayengine/DisplayEngineLibraries;-><init>(Lcom/huawei/displayengine/DisplayEngineManager;)V

    iput-object v1, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLibraries:Lcom/huawei/displayengine/DisplayEngineLibraries;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLibraries:Lcom/huawei/displayengine/DisplayEngineLibraries;

    return-object v0
.end method

.method public getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockService:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    if-nez v1, :cond_1

    .line 39
    const-string v1, "DisplayEngineExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 40
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 41
    invoke-static {v1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    .line 42
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    if-nez v2, :cond_1

    .line 43
    const-string v2, "DE J DisplayEngineManager"

    const-string v3, "service is null!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    .line 47
    const-string v2, "DE J DisplayEngineManager"

    const-string v3, "binder is null!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    return-object v0
.end method

.method public getSupported(I)I
    .locals 5
    .param p1, "feature"    # I

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v1

    .line 110
    .local v1, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1, p1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getSupported(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 115
    .end local v1    # "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    :cond_0
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DE J DisplayEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupported("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") has remote exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getUptoXnit()Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mUptoXnit:Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mLockUptoXnit:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mUptoXnit:Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;

    invoke-direct {v1, p0}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;-><init>(Lcom/huawei/displayengine/DisplayEngineManager;)V

    iput-object v1, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mUptoXnit:Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineManager;->mUptoXnit:Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;

    return-object v0
.end method

.method public imageProcess(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 222
    .local p2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getLibraries()Lcom/huawei/displayengine/DisplayEngineLibraries;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/displayengine/DisplayEngineLibraries;->imageProcess(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(ILandroid/os/Bundle;)I
    .locals 5
    .param p1, "messageID"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v1

    .line 169
    .local v1, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1, p1, p2}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->sendMessage(ILandroid/os/Bundle;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 174
    .end local v1    # "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    :cond_0
    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DE J DisplayEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") has remote exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public setData(ILandroid/os/PersistableBundle;)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/PersistableBundle;

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "ret":I
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getUptoXnit()Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;

    move-result-object v1

    const-string v2, "MinBrightness"

    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "MaxBrightness"

    invoke-virtual {p2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "brightnesslevel"

    invoke-virtual {p2, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/huawei/displayengine/HwMinLuminanceUptoXnit;->setXnit(III)I

    move-result v0

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v1

    .line 155
    .local v1, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1, p1, p2}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->setData(ILandroid/os/PersistableBundle;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 160
    .end local v1    # "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    :cond_1
    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DE J DisplayEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") has remote exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public setDataToFilter(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "ret":I
    const-string v1, "HBM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineManager;->getHBMFilter()Lcom/huawei/displayengine/HBMSceneFilter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/huawei/displayengine/HBMSceneFilter;->setData(Landroid/os/Bundle;)I

    move-result v0

    .line 241
    :cond_0
    return v0
.end method

.method public setEffect(IILandroid/os/PersistableBundle;)I
    .locals 5
    .param p1, "feature"    # I
    .param p2, "mode"    # I
    .param p3, "data"    # Landroid/os/PersistableBundle;

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v1

    .line 195
    .local v1, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-eqz v1, :cond_0

    .line 196
    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->setEffect(IILandroid/os/PersistableBundle;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 200
    .end local v1    # "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    :cond_0
    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DE J DisplayEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") has remote exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public setScene(II)I
    .locals 5
    .param p1, "scene"    # I
    .param p2, "action"    # I

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "ret":I
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineManager;->getHBMFilter()Lcom/huawei/displayengine/HBMSceneFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/huawei/displayengine/HBMSceneFilter;->check(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    return v0

    .line 125
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v1

    .line 126
    .local v1, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v1, p1, p2}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->setScene(II)I

    move-result v2

    move v0, v2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getLibraries()Lcom/huawei/displayengine/DisplayEngineLibraries;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/huawei/displayengine/DisplayEngineLibraries;->setScene(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DE J DisplayEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScene("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") has remote exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public updateLightSensorState(Z)V
    .locals 4
    .param p1, "sensorEnable"    # Z

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v0

    .line 139
    .local v0, "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->updateLightSensorState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "service":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    :cond_0
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DE J DisplayEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLightSensorState has remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
