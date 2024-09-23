.class Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$3;
.super Ljava/lang/Object;
.source "HwAISRImageViewTaskManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->postCancelTask(Landroid/widget/sr/SRTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

.field final synthetic val$taskInfo:Landroid/widget/sr/SRTaskInfo;


# direct methods
.method constructor <init>(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;Landroid/widget/sr/SRTaskInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    .line 400
    iput-object p1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$3;->this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    iput-object p2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$3;->val$taskInfo:Landroid/widget/sr/SRTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 403
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$3;->this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$3;->val$taskInfo:Landroid/widget/sr/SRTaskInfo;

    check-cast v1, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0, v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->access$500(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V

    .line 404
    return-void
.end method
