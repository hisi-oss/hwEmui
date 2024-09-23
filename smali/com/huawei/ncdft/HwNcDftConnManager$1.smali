.class Lcom/huawei/ncdft/HwNcDftConnManager$1;
.super Ljava/lang/Object;
.source "HwNcDftConnManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ncdft/HwNcDftConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ncdft/HwNcDftConnManager;


# direct methods
.method constructor <init>(Lcom/huawei/ncdft/HwNcDftConnManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ncdft/HwNcDftConnManager;

    .line 45
    iput-object p1, p0, Lcom/huawei/ncdft/HwNcDftConnManager$1;->this$0:Lcom/huawei/ncdft/HwNcDftConnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 48
    const-string v0, "HwNcDftConnManager"

    const-string v1, "service is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager$1;->this$0:Lcom/huawei/ncdft/HwNcDftConnManager;

    invoke-static {p2}, Lcom/huawei/ncdft/INcDft$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/ncdft/INcDft;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    .line 50
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager$1;->this$0:Lcom/huawei/ncdft/HwNcDftConnManager;

    invoke-static {v0}, Lcom/huawei/ncdft/HwNcDftConnManager;->access$000(Lcom/huawei/ncdft/HwNcDftConnManager;)Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager$1;->this$0:Lcom/huawei/ncdft/HwNcDftConnManager;

    invoke-static {v0}, Lcom/huawei/ncdft/HwNcDftConnManager;->access$000(Lcom/huawei/ncdft/HwNcDftConnManager;)Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;->serviceConnected()V

    .line 53
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .line 57
    const-string v0, "HwNcDftConnManager"

    const-string v1, "service is disconnceted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager$1;->this$0:Lcom/huawei/ncdft/HwNcDftConnManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    .line 59
    return-void
.end method
