.class final Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;
.super Landroid/os/Handler;
.source "AwareAppScheduleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AwareAppScheduleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppScheduleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/rms/iaware/AwareAppScheduleManager;


# direct methods
.method public constructor <init>(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 527
    iput-object p1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    .line 528
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 529
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 533
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 543
    :pswitch_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->access$500(Landroid/rms/iaware/AwareAppScheduleManager;)V

    .line 544
    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->access$600(Landroid/rms/iaware/AwareAppScheduleManager;)V

    .line 547
    goto :goto_0

    .line 539
    :pswitch_2
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->access$400(Landroid/rms/iaware/AwareAppScheduleManager;)V

    .line 540
    goto :goto_0

    .line 535
    :pswitch_3
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->access$200(Landroid/rms/iaware/AwareAppScheduleManager;)V

    .line 536
    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->access$300(Landroid/rms/iaware/AwareAppScheduleManager;)V

    .line 537
    nop

    .line 551
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
