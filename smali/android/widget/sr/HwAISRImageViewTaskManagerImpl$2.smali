.class Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$2;
.super Ljava/lang/Object;
.source "HwAISRImageViewTaskManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;


# direct methods
.method constructor <init>(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    .line 376
    iput-object p1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$2;->this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 379
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$2;->this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    invoke-static {v0}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->access$400(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;)Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$2;->this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    iget-object v1, p0, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$2;->this$0:Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;

    invoke-static {v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->access$400(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;)Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;->access$200(Landroid/widget/sr/HwAISRImageViewTaskManagerImpl$SRTaskInfoImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/sr/HwAISRImageViewTaskManagerImpl;->onTimeOut(Landroid/graphics/Bitmap;)V

    .line 382
    :cond_0
    return-void
.end method
