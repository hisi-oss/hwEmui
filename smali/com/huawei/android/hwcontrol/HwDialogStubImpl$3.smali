.class Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;
.super Ljava/lang/Object;
.source "HwDialogStubImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private screenHeight:I

.field final synthetic this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 96
    iput-object p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getScreenHeight()I
    .locals 4

    .line 138
    iget v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->screenHeight:I

    if-lez v0, :cond_0

    .line 139
    iget v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->screenHeight:I

    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1200(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 143
    .local v1, "displayHeight":I
    const v2, 0x10501a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 144
    .local v2, "statusBarHeight":I
    sub-int v3, v1, v2

    iput v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->screenHeight:I

    .line 145
    iget v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->screenHeight:I

    return v3
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 99
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$200(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$300(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$300(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a

    .line 100
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$200(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 102
    const-string v1, "DialogFactory"

    const-string v2, "OnGlobalLayoutListener view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v1, v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$400(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v1, v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$500(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)I

    move-result v1

    .line 111
    .local v1, "locationY":I
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$600(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v2

    if-nez v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v2, v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$602(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;I)I

    .line 113
    return-void

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->getScreenHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    .line 116
    .local v2, "deltLimit":I
    iget-object v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v3}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$600(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v2, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v4

    .line 117
    .local v3, "ignoreChange":Z
    :goto_0
    iget-object v6, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v6}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$600(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v6}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$600(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v6

    sub-int/2addr v6, v1

    if-le v6, v2, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v4

    .line 118
    .local v6, "isChangeY":Z
    :goto_1
    if-nez v3, :cond_7

    .line 119
    iget-object v7, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    iget-object v8, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v8}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$800(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v8, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v8, v5

    :goto_3
    invoke-static {v7, v8}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$702(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Z)Z

    .line 124
    :cond_7
    iget-object v7, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v7, v4}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$802(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Z)Z

    .line 125
    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v4}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$700(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v4}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$900(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I

    move-result v4

    if-ne v4, v5, :cond_9

    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v5}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1000(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_8

    .line 127
    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v4}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$100(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V

    goto :goto_4

    .line 129
    :cond_8
    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v4}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1000(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v5}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$1100(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 132
    :cond_9
    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v4, v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$602(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;I)I

    .line 135
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "locationY":I
    .end local v2    # "deltLimit":I
    .end local v3    # "ignoreChange":Z
    .end local v6    # "isChangeY":Z
    :cond_a
    :goto_4
    return-void
.end method
