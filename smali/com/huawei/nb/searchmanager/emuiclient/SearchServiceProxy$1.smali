.class Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;
.super Ljava/lang/Object;
.source "SearchServiceProxy.java"

# interfaces
.implements Lcom/huawei/nb/searchmanager/emuiclient/connect/RemoteServiceConnection$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connect(Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;


# direct methods
.method constructor <init>(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    .line 71
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-static {p1}, Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->access$002(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;)Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    .line 76
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->access$102(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Z)Z

    .line 77
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-static {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->access$200(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Z)V

    .line 78
    const-string v0, "SearchServiceProxy"

    const-string v1, "Succeed to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->access$002(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;)Lcom/huawei/nb/searchmanager/emuiclient/IEmuiSearchServiceCall;

    .line 85
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->access$102(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Z)Z

    .line 86
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-static {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->access$302(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Z)Z

    .line 87
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy$1;->this$0:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-static {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->access$200(Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;Z)V

    .line 88
    const-string v0, "SearchServiceProxy"

    const-string v1, "Connection to is broken down"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
