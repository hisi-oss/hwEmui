.class Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;
.super Ljava/lang/Object;
.source "HwFragmentBottomMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->showPopup(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    .line 591
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 594
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    invoke-static {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->access$000(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    .line 595
    .local v0, "fragmentMenuItem":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    invoke-static {v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->access$100(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    invoke-static {v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->access$100(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;

    move-result-object v1

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    invoke-static {v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->access$200(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    move-result-object v2

    .line 597
    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 596
    invoke-interface {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;->onFragmentMenuItemClick(Landroid/view/MenuItem;)Z

    .line 603
    :cond_0
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    invoke-static {v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->access$300(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    invoke-static {v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->access$300(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 605
    :cond_1
    return-void
.end method
