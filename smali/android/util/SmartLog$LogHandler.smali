.class Landroid/util/SmartLog$LogHandler;
.super Landroid/os/Handler;
.source "SmartLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/SmartLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/SmartLog;


# direct methods
.method constructor <init>(Landroid/util/SmartLog;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 143
    iput-object p1, p0, Landroid/util/SmartLog$LogHandler;->this$0:Landroid/util/SmartLog;

    .line 144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 149
    iget-object v0, p0, Landroid/util/SmartLog$LogHandler;->this$0:Landroid/util/SmartLog;

    invoke-static {v0}, Landroid/util/SmartLog;->access$100(Landroid/util/SmartLog;)V

    .line 150
    iget-object v0, p0, Landroid/util/SmartLog$LogHandler;->this$0:Landroid/util/SmartLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout(>1s):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/SmartLog;->access$200(Landroid/util/SmartLog;Ljava/lang/String;)V

    .line 153
    return-void
.end method
