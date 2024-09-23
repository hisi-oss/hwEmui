.class public Landroid/app/ServiceConnectionUtils;
.super Ljava/lang/Object;
.source "ServiceConnectionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static connected(Ljava/lang/Object;Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 4
    .param p0, "serviceConnection"    # Ljava/lang/Object;
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "dead"    # Z

    .line 28
    :try_start_0
    instance-of v0, p0, Landroid/app/IServiceConnection;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Landroid/app/IServiceConnection;

    .line 30
    .local v0, "sc":Landroid/app/IServiceConnection;
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "sc":Landroid/app/IServiceConnection;
    :cond_0
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
