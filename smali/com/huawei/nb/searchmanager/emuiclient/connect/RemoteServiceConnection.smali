.class public Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;
    }
.end annotation


# static fields
.field private static final COMMAND_TYPE_EMUI:Ljava/lang/String; = "EMUI"

.field private static final TAG:Ljava/lang/String; = "RemoteServiceConnection"


# instance fields
.field private binder:Landroid/os/IBinder;

.field private connectListener:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

.field private connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private final serviceAction:Ljava/lang/String;

.field private final serviceClassName:Ljava/lang/String;

.field private final servicePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "serviceAction"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;-><init>(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)V

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->connection:Landroid/content/ServiceConnection;

    .line 65
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->serviceAction:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->servicePackageName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->serviceClassName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->binder:Landroid/os/IBinder;

    .line 70
    const-string v0, "RemoteServiceConnection"

    const-string v1, "RemoteServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "servicePackageName"    # Ljava/lang/String;
    .param p3, "serviceClassName"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;-><init>(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)V

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->connection:Landroid/content/ServiceConnection;

    .line 56
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->context:Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->serviceAction:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->servicePackageName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->serviceClassName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->binder:Landroid/os/IBinder;

    .line 61
    const-string v0, "RemoteServiceConnection"

    const-string v1, "RemoteServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    .line 13
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 13
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    .line 13
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->connectListener:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

    return-object v0
.end method

.method private createExplicitIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    return-object v0
.end method

.method private createImplicitIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    return-object v1

    .line 118
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 121
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_1

    .line 122
    return-object v1

    .line 124
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    return-object v2
.end method


# virtual methods
.method public close()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->binder:Landroid/os/IBinder;

    .line 108
    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->connectListener:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public open(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

    .line 79
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->connectListener:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

    .line 81
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->servicePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->serviceClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->servicePackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->serviceClassName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->createExplicitIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "remoteServiceIntent":Landroid/content/Intent;
    goto :goto_0

    .line 84
    .end local v0    # "remoteServiceIntent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->serviceAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->createImplicitIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    .restart local v0    # "remoteServiceIntent":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 88
    const-string v2, "RemoteServiceConnection"

    const-string v3, "Failed to find the given data service action."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 91
    :cond_1
    const-string v2, "EMUI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    return v4

    .line 96
    :cond_2
    const-string v2, "RemoteServiceConnection"

    const-string v3, "Failed to connect to data service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return v1

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "RemoteServiceConnection"

    const-string v4, "Failed to do bind service, error: %s."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v1
.end method
