.class Landroid/rms/HwSysResImpl$1;
.super Landroid/rms/IUpdateWhiteListCallback$Stub;
.source "HwSysResImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/HwSysResImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/rms/HwSysResImpl;


# direct methods
.method constructor <init>(Landroid/rms/HwSysResImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/rms/HwSysResImpl;

    .line 456
    iput-object p1, p0, Landroid/rms/HwSysResImpl$1;->this$0:Landroid/rms/HwSysResImpl;

    invoke-direct {p0}, Landroid/rms/IUpdateWhiteListCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/rms/HwSysResImpl$1;->this$0:Landroid/rms/HwSysResImpl;

    invoke-static {v0}, Landroid/rms/HwSysResImpl;->access$000(Landroid/rms/HwSysResImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IUpdateWhiteListCallback was called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v0, p0, Landroid/rms/HwSysResImpl$1;->this$0:Landroid/rms/HwSysResImpl;

    invoke-static {v0}, Landroid/rms/HwSysResImpl;->access$100(Landroid/rms/HwSysResImpl;)V

    .line 461
    iget-object v0, p0, Landroid/rms/HwSysResImpl$1;->this$0:Landroid/rms/HwSysResImpl;

    invoke-virtual {v0}, Landroid/rms/HwSysResImpl;->onWhiteListUpdate()V

    .line 462
    return-void
.end method
