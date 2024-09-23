.class Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;
.super Ljava/lang/Object;
.source "RemoteServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;


# direct methods
.method constructor <init>(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    .line 28
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 34
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-static {v0, p2}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->access$002(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 35
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-static {v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->access$100(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-static {v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->access$100(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-static {v1}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->access$000(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;->onConnect(Landroid/os/IBinder;)V

    .line 38
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 45
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-static {v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->access$000(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->access$002(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 47
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-static {v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->access$100(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;

    invoke-static {v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;->access$100(Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection;)Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;->onDisconnect()V

    .line 50
    :cond_0
    const-string v0, "RemoteServiceConnection"

    const-string v1, "Connection to data service is disconnected unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    return-void
.end method
