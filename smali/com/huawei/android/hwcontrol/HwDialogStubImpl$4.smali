.class Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;
.super Lcom/huawei/android/hardware/HwSensorActionDetectorAdapter;
.source "HwDialogStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->showDialogFactory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 187
    iput-object p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    iput-object p2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/huawei/android/hardware/HwSensorActionDetectorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChanged(I)V
    .locals 4
    .param p1, "direction"    # I

    .line 190
    invoke-super {p0, p1}, Lcom/huawei/android/hardware/HwSensorActionDetectorAdapter;->onDirectionChanged(I)V

    .line 192
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$700(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$900(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1300(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;II)Z

    move-result v0

    .line 199
    .local v0, "isShouldChange":Z
    if-nez v0, :cond_1

    .line 200
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$300(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$300(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1200(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 208
    .local v1, "orientation":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 209
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    iget-object v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->val$view:Landroid/view/View;

    invoke-static {v2, v3, p1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1400(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;I)V

    .line 210
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v3}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1000(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 211
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$000(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1000(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v3}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1500(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_4
    :goto_0
    return-void

    .line 205
    .end local v1    # "orientation":I
    :cond_5
    :goto_1
    return-void
.end method
