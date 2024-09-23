.class Lcom/huawei/android/hwcontrol/HwDialogStubImpl$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HwDialogStubImpl.java"


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


# direct methods
.method constructor <init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 280
    iput-object p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$6;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    iput-object p2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 283
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 284
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$6;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$6;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$6;->val$view:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$500(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$602(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;I)I

    .line 286
    return-void
.end method
