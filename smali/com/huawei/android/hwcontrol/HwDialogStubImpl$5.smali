.class Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;
.super Ljava/lang/Object;
.source "HwDialogStubImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->initAnimatorParams(Landroid/view/WindowManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 257
    iput-object p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    iput-object p2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->val$windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 261
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 262
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$200(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 264
    .local v1, "l":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$900(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1600(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    :goto_0
    float-to-int v2, v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1600(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    goto :goto_0

    :goto_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 265
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->val$view:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->val$windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;->val$view:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_2

    .line 273
    :catch_0
    move-exception v2

    .line 277
    :cond_1
    :goto_2
    return-void
.end method
