.class final Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;
.super Landroid/os/Handler;
.source "AwareAppLiteSysLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AwareAppLiteSysLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SysLoadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;


# direct methods
.method public constructor <init>(Landroid/rms/iaware/AwareAppLiteSysLoadManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 195
    iput-object p1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 196
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    const/16 v0, 0xbd7

    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$600(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v2}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$700(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/rms/iaware/IAwareSdk;->asyncReportDataWithCallback(ILjava/lang/String;Landroid/os/IBinder;J)V

    .line 204
    nop

    .line 208
    :goto_0
    return-void
.end method
