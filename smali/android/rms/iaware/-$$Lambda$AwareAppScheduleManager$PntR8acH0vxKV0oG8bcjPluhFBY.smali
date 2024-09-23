.class public final synthetic Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$PntR8acH0vxKV0oG8bcjPluhFBY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final synthetic f$0:Landroid/rms/iaware/AwareAppScheduleManager;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$PntR8acH0vxKV0oG8bcjPluhFBY;->f$0:Landroid/rms/iaware/AwareAppScheduleManager;

    iput-object p2, p0, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$PntR8acH0vxKV0oG8bcjPluhFBY;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 2

    iget-object v0, p0, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$PntR8acH0vxKV0oG8bcjPluhFBY;->f$0:Landroid/rms/iaware/AwareAppScheduleManager;

    iget-object v1, p0, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$PntR8acH0vxKV0oG8bcjPluhFBY;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareAppScheduleManager;->lambda$reportWebViewInit$0(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
