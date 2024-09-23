.class Lhuawei/android/widget/HwActionMenuPresenter$1;
.super Ljava/lang/Object;
.source "HwActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/widget/HwActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/widget/HwActionMenuPresenter;


# direct methods
.method constructor <init>(Lhuawei/android/widget/HwActionMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/widget/HwActionMenuPresenter;

    .line 85
    iput-object p1, p0, Lhuawei/android/widget/HwActionMenuPresenter$1;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 89
    iget-object v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$1;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    invoke-static {v0}, Lhuawei/android/widget/HwActionMenuPresenter;->access$000(Lhuawei/android/widget/HwActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "over":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 92
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 95
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v1, p0, Lhuawei/android/widget/HwActionMenuPresenter$1;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    invoke-static {v1}, Lhuawei/android/widget/HwActionMenuPresenter;->access$100(Lhuawei/android/widget/HwActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lhuawei/android/widget/HwActionMenuPresenter$1;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhuawei/android/widget/HwActionMenuPresenter;->access$102(Lhuawei/android/widget/HwActionMenuPresenter;Z)Z

    .line 97
    iget-object v1, p0, Lhuawei/android/widget/HwActionMenuPresenter$1;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    invoke-virtual {v1}, Lhuawei/android/widget/HwActionMenuPresenter;->showOverflowMenu()Z

    .line 99
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
