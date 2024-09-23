.class public Landroid/rms/io/IOStatsServiceManager;
.super Ljava/lang/Object;
.source "IOStatsServiceManager.java"


# static fields
.field private static final QUERY_RESULT_FAIL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RMS.IOStatsServiceManager"

.field private static mIOStatsManager:Landroid/rms/io/IOStatsServiceManager;


# instance fields
.field private final mService:Landroid/rms/io/IIOStatsServiceManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "iostatsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 20
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/rms/io/IIOStatsServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/rms/io/IIOStatsServiceManager;

    move-result-object v1

    iput-object v1, p0, Landroid/rms/io/IOStatsServiceManager;->mService:Landroid/rms/io/IIOStatsServiceManager;

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/io/IOStatsServiceManager;
    .locals 2

    const-class v0, Landroid/rms/io/IOStatsServiceManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Landroid/rms/io/IOStatsServiceManager;->mIOStatsManager:Landroid/rms/io/IOStatsServiceManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Landroid/rms/io/IOStatsServiceManager;

    invoke-direct {v1}, Landroid/rms/io/IOStatsServiceManager;-><init>()V

    sput-object v1, Landroid/rms/io/IOStatsServiceManager;->mIOStatsManager:Landroid/rms/io/IOStatsServiceManager;

    .line 27
    :cond_0
    sget-object v1, Landroid/rms/io/IOStatsServiceManager;->mIOStatsManager:Landroid/rms/io/IOStatsServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public query(I)I
    .locals 4
    .param p1, "uid"    # I

    .line 32
    iget-object v0, p0, Landroid/rms/io/IOStatsServiceManager;->mService:Landroid/rms/io/IIOStatsServiceManager;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 33
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "RMS.IOStatsServiceManager"

    const-string v2, "query service is null "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return v1

    .line 38
    :cond_1
    move v0, v1

    .line 40
    .local v0, "queryResult":I
    :try_start_0
    iget-object v1, p0, Landroid/rms/io/IOStatsServiceManager;->mService:Landroid/rms/io/IIOStatsServiceManager;

    invoke-interface {v1, p1}, Landroid/rms/io/IIOStatsServiceManager;->query(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 46
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    if-eqz v2, :cond_2

    .line 44
    const-string v2, "RMS.IOStatsServiceManager"

    const-string v3, "query RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v0
.end method
