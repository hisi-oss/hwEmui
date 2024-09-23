.class Landroid/app/HwActivitySplitterImpl$1;
.super Landroid/os/Handler;
.source "HwActivitySplitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/HwActivitySplitterImpl;->checkSplitHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/HwActivitySplitterImpl;


# direct methods
.method constructor <init>(Landroid/app/HwActivitySplitterImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/HwActivitySplitterImpl;

    .line 766
    iput-object p1, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 769
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 770
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v0}, Landroid/app/HwActivitySplitterImpl;->access$000(Landroid/app/HwActivitySplitterImpl;)Z

    move-result v0

    .line 771
    .local v0, "isTop":Z
    sget-boolean v2, Landroid/util/Log;->HWLog:Z

    if-eqz v2, :cond_0

    const-string v2, "HwActivitySplitterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is top ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", activity is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v4}, Landroid/app/HwActivitySplitterImpl;->access$100(Landroid/app/HwActivitySplitterImpl;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    if-nez v0, :cond_1

    .line 773
    return-void

    .line 778
    :cond_1
    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v2}, Landroid/app/HwActivitySplitterImpl;->access$200(Landroid/app/HwActivitySplitterImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v2}, Landroid/app/HwActivitySplitterImpl;->access$300(Landroid/app/HwActivitySplitterImpl;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 779
    sget-boolean v2, Landroid/util/Log;->HWLog:Z

    if-eqz v2, :cond_2

    const-string v2, "HwActivitySplitterImpl"

    const-string v3, "Try to clear entry stack."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_2
    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v2, v1}, Landroid/app/HwActivitySplitterImpl;->access$400(Landroid/app/HwActivitySplitterImpl;Z)V

    .line 783
    .end local v0    # "isTop":Z
    :cond_3
    goto :goto_2

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 785
    :try_start_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v2}, Landroid/app/HwActivitySplitterImpl;->access$500(Landroid/app/HwActivitySplitterImpl;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/HwActivitySplitterImpl;->access$600(Landroid/app/HwActivitySplitterImpl;Landroid/os/IBinder;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "addToEntryStack FAIL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_2

    .line 789
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 791
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-virtual {v0}, Landroid/app/HwActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v0

    .line 792
    .local v0, "subIntent":Landroid/content/Intent;
    if-eqz v0, :cond_6

    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/HwActivitySplitterImpl;->access$700(Landroid/app/HwActivitySplitterImpl;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/HwActivitySplitterImpl;->access$800(Landroid/app/HwActivitySplitterImpl;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 794
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/HwActivitySplitterImpl;->access$900(Landroid/app/HwActivitySplitterImpl;)V

    .line 798
    :try_start_1
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/HwActivitySplitterImpl;->access$100(Landroid/app/HwActivitySplitterImpl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 801
    goto :goto_1

    .line 799
    :catch_1
    move-exception v1

    .line 800
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HwActivitySplitterImpl"

    const-string v3, "launch activity fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .end local v0    # "subIntent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    goto :goto_2

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 805
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl$1;->this$0:Landroid/app/HwActivitySplitterImpl;

    invoke-static {v0, v1}, Landroid/app/HwActivitySplitterImpl;->access$1000(Landroid/app/HwActivitySplitterImpl;Z)V

    .line 808
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 809
    return-void
.end method
