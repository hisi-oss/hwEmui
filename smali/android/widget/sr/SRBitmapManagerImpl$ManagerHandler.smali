.class Landroid/widget/sr/SRBitmapManagerImpl$ManagerHandler;
.super Landroid/os/Handler;
.source "SRBitmapManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/sr/SRBitmapManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/sr/SRBitmapManagerImpl;


# direct methods
.method public constructor <init>(Landroid/widget/sr/SRBitmapManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 280
    iput-object p1, p0, Landroid/widget/sr/SRBitmapManagerImpl$ManagerHandler;->this$0:Landroid/widget/sr/SRBitmapManagerImpl;

    .line 281
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 282
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 286
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl$ManagerHandler;->this$0:Landroid/widget/sr/SRBitmapManagerImpl;

    invoke-static {v0}, Landroid/widget/sr/SRBitmapManagerImpl;->access$100(Landroid/widget/sr/SRBitmapManagerImpl;)V

    .line 293
    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Landroid/widget/sr/SRBitmapManagerImpl$ManagerHandler;->this$0:Landroid/widget/sr/SRBitmapManagerImpl;

    invoke-static {v0}, Landroid/widget/sr/SRBitmapManagerImpl;->access$000(Landroid/widget/sr/SRBitmapManagerImpl;)V

    .line 290
    nop

    .line 298
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
