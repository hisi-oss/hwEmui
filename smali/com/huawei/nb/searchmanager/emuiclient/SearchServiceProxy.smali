.class public Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;
.super Ljava/lang/Object;
.source "SearchServiceProxy.java"

# interfaces
.implements Lcom/huawei/nb/searchmanager/emuiclient/ISearchClient;


# static fields
.field private static final SEARCH_SERVICE_ACTION:Ljava/lang/String; = "com.huawei.nb.searchmanager.service.SearchService.START"

.field private static final TAG:Ljava/lang/String; = "SearchServiceProxy"

.field private static final TIMEOUT_MILLISECONDS:J = 0x1388L


# instance fields
.field private volatile callbackTimeout:J

.field private callingPkgName:Ljava/lang/String;

.field private volatile connectCallback:Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;

.field private final dsConnection:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

.field private volatile hasBinded:Z

.field private volatile hasConnected:Z

.field private final locker:Ljava/lang/Object;

.field private volatile searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    const-string v1, "com.huawei.nb.searchmanager.service.SearchService.START"

    invoke-direct {v0, p1, v1}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->dsConnection:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connectCallback:Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;

    .line 36
    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->callingPkgName:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->locker:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected:Z

    .line 40
    iput-boolean v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    .line 41
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->callbackTimeout:J

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;)Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;
    .param p1, "x1"    # Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    .line 19
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    return-object p1
.end method

.method static synthetic access$102(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;
    .param p1, "x1"    # Z

    .line 19
    invoke-direct {p0, p1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->invokeConnectCallback(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    return p1
.end method

.method private invokeConnectCallback(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connectCallback:Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connectCallback:Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;

    invoke-interface {v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;->onConnect()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connectCallback:Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connectCallback:Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;

    invoke-interface {v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;->onDisconnect()V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearUserIndexSearchData(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 157
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "SearchServiceProxy"

    const-string v1, "Failed to clearUserIndexSearchData, error: searchService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->callingPkgName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;->executeClearData(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SearchServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to executeClearData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public connect()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connect(Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;)Z

    move-result v0

    return v0
.end method

.method public connect(Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;

    .line 61
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-boolean v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 63
    monitor-exit v0

    return v2

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connectCallback:Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;

    .line 67
    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    if-eqz v1, :cond_1

    .line 68
    invoke-direct {p0, v2}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->invokeConnectCallback(Z)V

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->dsConnection:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    new-instance v2, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;

    invoke-direct {v2, p0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;-><init>(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;)V

    invoke-virtual {v1, v2}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->open(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    .line 92
    iget-boolean v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    if-nez v1, :cond_2

    .line 93
    const-string v1, "SearchServiceProxy"

    const-string v2, "Failed to open connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    iget-boolean v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    monitor-exit v0

    return v1

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-boolean v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->invokeConnectCallback(Z)V

    .line 104
    iget-object v2, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->dsConnection:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-virtual {v2}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->close()Z

    .line 105
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    .line 106
    iput-boolean v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    .line 107
    iput-boolean v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected:Z

    .line 108
    const-string v1, "SearchServiceProxy"

    const-string v2, "close connection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_0
    const-string v1, "SearchServiceProxy"

    const-string v2, "Connection has been closed already"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeDBCrawl(Ljava/lang/String;Ljava/util/List;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 130
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "SearchServiceProxy"

    const-string v1, "Failed to executeDBCrawl, error: searchService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->callingPkgName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;->executeDBCrawl(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SearchServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to executeDBCrawl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public executeSearch(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;"
        }
    .end annotation

    .line 143
    .local p3, "fieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "SearchServiceProxy"

    const-string v2, "Failed to executeSearch, error: searchService is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v1

    .line 148
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->searchService:Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    iget-object v2, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->callingPkgName:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;->executeSearch(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SearchServiceProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to executeSearch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object v1
.end method

.method public hasConnected()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected:Z

    return v0
.end method

.method public isBinded()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasBinded:Z

    return v0
.end method

.method public setExecutionTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 125
    iput-wide p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->callbackTimeout:J

    .line 126
    return-void
.end method
