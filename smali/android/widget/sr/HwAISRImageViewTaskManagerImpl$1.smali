.class Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;
.super Ljava/lang/Object;
.source "HwAISRImageViewTaskManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->postNewTask(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

.field final synthetic val$taskInfo:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;


# direct methods
.method constructor <init>(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    .line 250
    iput-object p1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;->this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    iput-object p2, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;->val$taskInfo:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;->this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$1;->val$taskInfo:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    invoke-static {v0, v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->access$100(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)V

    .line 254
    return-void
.end method
